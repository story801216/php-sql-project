<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="data-list.php">資料列表</a>
                </li>


            </ul>

            <ul class="navbar-nav">
                <?php if(isset($_SESSION['user'])): ?>
                    <li class="nav-item active">
                         <a class="nav-link" ><?= $_SESSION['user']['name'] ?></a> <!--把href拿掉的用意在於登入後['nickname']就沒有可點入的部分 -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="data-edit.php">編輯個人資料</a> <!--編輯個人資料按鈕製作20210812090115-09:20~ -->
                    </li> 

                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">登出</a>
                    </li>
                <?php else: ?>
                    <li class="nav-item active">
                        <a class="nav-link" href="login.php">登入</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="data-insert.php">註冊</a>
                    </li>
                <?php endif; ?>
            </ul>

        </div>
    </div>
</nav>
