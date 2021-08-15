<?php
include __DIR__. '/partials/init.php';

header('Content-Type: application/json');

$output = [
    'success' => false,
    'error' => '',
    'code' => 0,
    'rowCount' => 0,
    'postData' => $_POST,
];

// 練習題：避免直接拜訪時的錯誤訊息
// 我的解答:判斷有無姓名和E-mail，如果沒有就執行下方程式碼，拜訪此login-api.php時，就會出現下方資訊
// if(!isset($_POST['name']) or !isset($_POST['email'])){
//     $output['error'] = '沒有姓名或沒有輸入E-mil';
//     $output['code'] = 399;
//     echo json_encode($output, JSON_UNESCAPED_UNICODE);
//     exit; // 直接離開 (中斷) 程式
// };
// 以下是老師的練習題解答
// if(
//     empty($_POST['sid']) or
//     empty($_POST['name']) or
//     empty($_POST['email']) or
//     empty($_POST['mobile']) or
//     empty($_POST['birthday']) or
//     empty($_POST['address'])
// ){
//     echo json_encode($output);
//     exit;
// };







// 後端的姓名資料格式檢查
// 如果姓名少於兩個字符的話就執行if裡面的程式碼

if(mb_strlen($_POST['name'])<2){
    $output['error'] = '姓名長度太短';
    $output['code'] = 410;
    echo json_encode($output);
    exit;
};

// 後端的E-mail資料格式檢查
// FILTER_VALIDATE_EMAIL過濾器:把值作為e-mail 地址來驗證
// 如果$_POST['email'不是E-mail的格式的話，就執行if裡面的程式碼
if(! filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
    $output['error'] = 'email 格式錯誤';
    $output['code'] = 420;
    echo json_encode($output);
    exit;
};


// 檢查 email 格式
//var_dump(filter_var('bob@example.com', FILTER_VALIDATE_EMAIL));


/*
// ↓錯誤範例: 可能受到 SQL injection攻擊(SQL隱碼/注入攻擊)，所以不要這樣寫
$sql = "INSERT INTO `address_book`(
               `name`, `email`, `mobile`,
               `birthday`, `address`, `created_at`
               ) VALUES (
                    '{$_POST['name']}', '{$_POST['email']}', '{$_POST['mobile']}',
                    '{$_POST['birthday']}', '{$_POST['address']}', NOW()
               )";

$stmt = $pdo->query($sql);

// 如果有用戶在任何欄位上加上「'」單引號，就會被帶進sql語法裡面與其他單引號做配對，導致sql語法錯誤，無法新增資料
*/


// ↓正確範例:透過這樣的方式就可以把「'」做跳脫，而不影響原本的sql語法
$sql = "INSERT INTO `address_book`(
               `name`, `email`, `mobile`,
               `birthday`, `address`, `created_at`
               ) VALUES (
                    ?, ?, ?,
                    ?, ?, NOW()   /* 這邊與sprintf寫法雷同 */
               )";

/* PDO::prepare:好處是可以先寫好 SQL 碼，並且在稍後自動帶入我們要的資料，比起直接利用 query 可以減少許多安全性的問題  */
$stmt = $pdo->prepare($sql); 

/* execute:執行一條待處理的語句 */
/* 依照上方「?」的順序依序將變數帶入進去 */  
// 「->」瘦箭頭的代表意義就如同js的「點語法」例如 stmt.execute(中文解說:execute為stmt這個物件的「方法」)
// 而php裡的「.」是拿來當作字串連結的功能，例如 uniqid(). '@test.com'
$stmt->execute([
    $_POST['name'],
    $_POST['email'],
    $_POST['mobile'],
    $_POST['birthday'],
    $_POST['address'],
]);

$output['rowCount'] = $stmt->rowCount(); // 新增的筆數
if($stmt->rowCount()==1){
    $output['success'] = true;
};

echo json_encode($output);

/*
PDO query和execute區別:https://reurl.cc/R03dzr

PDO::query:執行一條SQL語句,如果通過,則返回一個PDOStatement物件，query函式有個「非常好用的地方」就是可以直接遍歷這個返回的記錄集。

PDO::prepare:好處是可以先寫好 SQL 碼，並且在稍後自動帶入我們要的資料，比起直接利用 query 可以減少許多安全性的問題，缺點是無法echo 看到執行sql語法新增資料後的樣子

PDO::execute:用於執行已經預處理過的語句,只是返回執行結果成功或失敗。也就是說execute需要配合prepare函式使用


*/
