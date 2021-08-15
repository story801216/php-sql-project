<?php
// 修改會員資料

    include __DIR__. '/partials/init.php';
    $title = '修改資料';


    // 步驟1.拿到sid的值 20210811090106-34:23 ~ 43:44
    $sid = isset($_GET['sid']) ? intval($_GET['sid']) : 0;

    $sql = "SELECT * FROM `address_book` WHERE sid=$sid";

    //  echo $sql; exit;   -->  可作為除錯用  SELECT * FROM `address_book` WHERE sid=$sid

    $r = $pdo->query($sql)->fetch(); // 可透過fetch()得到單筆資料的關聯式陣列，但如果輸入錯誤的sid值的話(沒有該筆資料)，就會回傳false

    if(empty($r)){   // 如果$r為空值的話就轉回列表頁(data-list.php)
        header('Location: data-list.php');
        exit;
    };
    // echo json_encode($r, JSON_UNESCAPED_UNICODE);exit; --> 會得到該筆的完整會員資料
?>
<?php include __DIR__. '/partials/html-head.php'; ?>
<?php include __DIR__. '/partials/navbar.php'; ?>
<style>
    form .form-group small {
        color: red;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">修改資料</h5> <!-- 步驟2.製作修改表單20210811090106-50:10~59:50 -->

                    <form name="form1" onsubmit="checkForm(); return false;">
                        <input type="hidden" name="sid" value="<?= $r['sid'] ?>">  
                        <!-- ↑多增加一個要包在Header的值(sid)，這樣就可以透過Header告訴後端目前要更改的是哪一筆資料，但因為頁面上不需要顯示，所以用 type="hidden"隱藏起來，20210811101636-07:28~10:20 -->
                        <div class="form-group">
                            <label for="name">姓名 *</label>
                            <input type="text" class="form-control" id="name" name="name"
                                value="<?= htmlentities($r['name']) ?>">
                                <!-- 將資料裡原本的值顯示出來 -->
                                <!--如果原本的值有加上「""」雙引號的話(ex留"梓庭" 再頁面上就只會出現「留"」剩下的無效值就是「梓庭"」)，會被html本來的雙引號給截斷就不會顯示出來了(無效的值，出BUG)，但是如果再input輸出之前加上htmlentities()去做跳脫所有含有對應“html實體”的特殊字元，就可以把「留"梓庭"」完整的顯示出來20210811101636-00:00~01:10  -->
                                <!-- php過濾輸入操作之htmlentities用法:https://reurl.cc/mLKVkV -->
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="email">email *</label>
                            <input type="text" class="form-control" id="email" name="email"
                                   value="<?= htmlentities($r['email']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="mobile">mobile</label>
                            <input type="text" class="form-control" id="mobile" name="mobile"
                                   value="<?= htmlentities($r['mobile']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="birthday">birthday</label>
                            <input type="date" class="form-control" id="birthday" name="birthday"
                                   value="<?= htmlentities($r['birthday']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="address">address</label>
                            <textarea class="form-control" id="address" name="address" cols="30" rows="3"
                                 ><?= htmlentities($r['address']) ?></textarea> <!-- textarea接PHP時，中間不要留空白20210811101636-01:13~07:19 -->
                            <small class="form-text "></small>
                        </div>

                        <button type="submit" class="btn btn-primary">修改</button>
                    </form>


                </div>
            </div>
        </div>
    </div>


</div>
<?php include __DIR__. '/partials/scripts.php'; ?>
<script>
    const email_re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    const mobile_re = /^09\d{2}-?\d{3}-?\d{3}$/;

    const name = document.querySelector('#name');
    const email = document.querySelector('#email');

    function checkForm(){
        // 欄位的外觀要回復原來的狀態
        name.nextElementSibling.innerHTML = '';
        name.style.border = '1px #CCCCCC solid';
        email.nextElementSibling.innerHTML = '';
        email.style.border = '1px #CCCCCC solid';

        let isPass = true;
        if(name.value.length < 2){
            isPass = false;
            name.nextElementSibling.innerHTML = '請填寫正確的姓名';
            name.style.border = '1px red solid';
        }

        if(! email_re.test(email.value)){
            isPass = false;
            email.nextElementSibling.innerHTML = '請填寫正確的 Email 格式';
            email.style.border = '1px red solid';
        }

        if(isPass){
            const fd = new FormData(document.form1);
            fetch('data-edit-api.php', {
                method: 'POST',
                body: fd
            })
                .then(r=>r.json())
                .then(obj=>{
                    console.log(obj);
                    if(obj.success){
                        alert('修改成功');
                    } else {
                        alert(obj.error);
                    }
                })
                .catch(error=>{
                    console.log('error:', error);
                });
        }
    }
</script>
<?php include __DIR__. '/partials/html-foot.php'; ?>
