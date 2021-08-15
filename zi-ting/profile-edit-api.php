<?php

// 20210812090115-40:53 ~ 20210812102753-20:23

include __DIR__. '/partials/init.php';

header('Content-Type: application/json');

// 1.決定要存放圖檔的資料夾
$folder = __DIR__. '/imgs/';

// 2.決定允許的上傳檔案類型
$imgTypes = [
    'image/jpeg' => '.jpg',
    'image/png' => '.png',
];

$output = [
    'success' => false,
    'error' => '資料欄位不足',
    'code' => 0,
    'postData' => $_POST,
];

// 3.查看是否有暱稱的資料進來
if(empty($_POST['nickname'])){
    echo json_encode($output);
    exit;
}

// 4.預設是沒有上傳資料或沒有上傳成功
$isSaved = false;


// 3.如果有上傳檔案並且上傳的檔案名為'avatar'
if(! empty($_FILES) and !empty($_FILES['avatar'])){

    $ext = isset($imgTypes[$_FILES['avatar']['type']]) ? $imgTypes[$_FILES['avatar']['type']] : null ; // 取得副檔名，如果沒拿到副檔名(就等於沒上傳圖片)的話就回傳null

    // 如果上傳的檔案是允許的檔案類型的話就執行if程式碼
    if(! empty($ext)){
        // ↓決定上傳檔案的「檔名」
        $filename = sha1( $_FILES['avatar']['name']. rand()). $ext;
        // sha1()函數的定義:https://reurl.cc/Gm0ykv

        if(move_uploaded_file(
            $_FILES['avatar']['tmp_name'],
            $folder. $filename
        )){
            $sql = "UPDATE `members` SET `avatar`=?, `nickname`=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([
                $filename,
                $_POST['nickname'],
                $_SESSION['user']['id'],
            ]);

            if($stmt->rowCount()) {   // 如果有資料的話代表新增成功
                $isSaved = true;      //預設為false，如果有新增成功則為true

                $_SESSION['user']['avatar'] = $filename; // 上傳成功後再更新SESSION一次，這樣就可以抓到最新的資料
                $_SESSION['user']['nickname'] = $_POST['nickname'];

                $output['filename'] = $filename;
                $output['error'] = '';
                $output['success'] = true;
                echo json_encode($output);
                exit;
            }

        }
    }

};

if(! $isSaved){  // 如果只改nickname沒上傳照片的話就只更新nickname
    $sql = "UPDATE `members` SET `nickname`=? WHERE id=?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['nickname'],
        $_SESSION['user']['id'],
    ]);

    if($stmt->rowCount()) {
        $_SESSION['user']['nickname'] = $_POST['nickname'];
        $output['error'] = '';
        $output['success'] = true;
    }
}

echo json_encode($output);


// 跨網站請求偽造:從非該頁面的地方不斷地送資料給到此頁面的表單，塞爆資料庫https://reurl.cc/j80jny 20210812090115-41:59~