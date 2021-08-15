<?php
    // 修改個人資料的表單製作20210812090115-12:25~35:05

    // ↓資料表要增加一個存放圖片檔名的欄位
    // ALTER TABLE `members` ADD `avatar` VARCHAR(255) NULL DEFAULT '' AFTER `id`;

    include __DIR__. '/partials/init.php';
    $title = '修改個人資料';

    if(! isset($_SESSION['user'])){      // 1.先判斷是否有無登入
        header('Location: index_.php');  // 如果沒有登入就轉到首頁
        exit;
    }

    // 2.如果有登入就透過$_SESSION裡的['user']['id']去拿到資料
    $sql = "SELECT * FROM `address_book` WHERE sid=". intval($_SESSION['user']['sid']);

    $r = $pdo->query($sql)->fetch();  // 3.拿到個人資料

    if(empty($r)){
        header('Location: index_.php');
        exit;
    }
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
                    <h5 class="card-title">修改個人資料</h5>

                    <form name="form1" onsubmit="checkForm(); return false;">

                    <div class="form-group">
                            <label for="account">帳號(登入的帳號不可以修改)</label>
                            <input type="text" class="form-control" id="account" name="account"
                                   value="<?= htmlentities($r['account']) ?>" disabled>
                            <small class="form-text "></small>
                        </div>

                        <div class="form-group">
                            <label for="password">密碼</label>
                            <input type="text" class="form-control" id="password" name="password"
                                   value="<?= htmlentities($r['password']) ?>">
                            <small class="form-text "></small>
                        </div>

                        <div class="form-group">
                            <label for="name">姓名</label>
                            <input type="text" class="form-control" id="name" name="name"
                                   value="<?= htmlentities($r['name']) ?>">
                            <small class="form-text "></small>
                        </div>

                        <div class="form-group">
                            <label for="idnumber">身份證字號</label>
                            <input type="text" class="form-control" id="idnumber" name="idnumber"
                                   value="<?= htmlentities($r['idnumber']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="text" class="form-control"
                                   value="<?= htmlentities($r['email']) ?>">
                            <small class="form-text "></small><!-- disabled:input的屬性之一，會讓該input失去功能-->
                        </div>
                        <div class="form-group">
                            <label for="mobile">手機號碼</label>
                            <input type="text" class="form-control" id="mobile" name="mobile"
                                   value="<?= htmlentities($r['mobile']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="birthday">生日</label>
                            <input type="date" class="form-control" id="birthday" name="birthday"
                                   value="<?= htmlentities($r['birthday']) ?>">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="address">地址</label>
                            <input type="text" class="form-control" id="address" name="address"
                                   value="<?= htmlentities($r['address']) ?>">
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

    function checkForm(){

            const fd = new FormData(document.form1);
            fetch('profile-edit-api.php', {
                method: 'POST',
                body: fd
            })
                .then(r=>r.json())
                .then(obj=>{
                    console.log(obj);
                    if(obj.success){
                        alert('修改成功');
                        location.href = 'profile-edit.php'; // 修改成功後就重新導向該頁面
                    } else {
                        alert(obj.error);
                    }
                })
                .catch(error=>{
                    console.log('error:', error);
                });


    }
</script>
<?php include __DIR__. '/partials/html-foot.php'; ?>
