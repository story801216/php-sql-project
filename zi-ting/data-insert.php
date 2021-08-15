<?php
    include __DIR__. '/partials/init.php';
    $title = '新增資料';
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
                    <h5 class="card-title">新增資料</h5>

                                  <!-- onsubmit:在表單送出之前觸發   return false:取消預設行為     -->
                    <form name="form1" onsubmit="checkForm(); return false;">
                        <div class="form-group">
                            <label for="name">姓名 *</label>
                            <input type="text" class="form-control" id="name" name="name">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="email">email *</label>
                            <input type="text" class="form-control" id="email" name="email">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="mobile">mobile</label>
                            <input type="text" class="form-control" id="mobile" name="mobile">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="birthday">birthday</label>
                            <input type="date" class="form-control" id="birthday" name="birthday">
                            <small class="form-text "></small>
                        </div>
                        <div class="form-group">
                            <label for="address">address</label>
                            <input type="text" class="form-control" id="address" name="address">
                            <small class="form-text "></small>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
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
        // 欄位的外觀要回復原來的狀態(從紅色的錯誤狀態回到初始化)
        name.nextElementSibling.innerHTML = '';
        name.style.border = '1px #CCCCCC solid';
        email.nextElementSibling.innerHTML = '';
        email.style.border = '1px #CCCCCC solid';

        let isPass = true;  // 預設:通過檢查
        if(name.value.length < 2){  // 檢查'name'字串是否有超過兩個字以上
            isPass = false;         // 如果沒有的話就不通過
            name.nextElementSibling.innerHTML = '請填寫正確的姓名'; //不通過的話就show出請填寫'正確的姓名'的字樣
            name.style.border = '1px red solid';// 不通過就將border改為紅色
        }

        if(! email_re.test(email.value)){  //驗證E-mail格式是否正確
            isPass = false;
            email.nextElementSibling.innerHTML = '請填寫正確的 Email 格式';
            email.style.border = '1px red solid';
        }

        if(isPass){                      //如果以上都通過了，才發ajax
            const fd = new FormData(document.form1);
            fetch('data-insert-api.php', {
                method: 'POST',
                body: fd
            })
                .then(r=>r.json())
                .then(obj=>{
                    console.log(obj);
                    if(obj.success){
                        location.href = 'data-list.php';
                    } else {
                        alert(obj.error);
                    }
                })
                .catch(error=>{
                    console.log('error:', error);
                }); //.catch:捕捉錯誤資訊，必須搭配call back function;js的錯誤訊息如果沒有捕捉的話，就會一直往外層丟，最後導致後面js程式無法正常執行，如果有捕捉到錯誤訊息的話，最少後面的js程式碼可以正常執行
        }
    }
</script>
<?php include __DIR__. '/partials/html-foot.php'; ?>