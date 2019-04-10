<?php

/* @var $this yii\web\View */

$this->title = 'CCS';
?>
<div class="site-index">
<?php 
    if(Yii::$app->session->hasFlash('success')){
        echo Yii::$app->session->getFlash('success',"message");
    }
?>
    <div class="jumbotron">
        <h1>Welcome!</h1>
        <?php if (Yii::$app->user->isGuest) { ?>
            <p class="lead">You are few steps away from submitting your publication.</p>
            <p><a class="btn btn-success" href="../user/register">Get started with CSS</a></p>
        <?php } ?>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
                <h2>What CSS is?</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="site/documentation">CSS Documentation &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>How it works?</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="#">CSS FAQ &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="#">CSS Partners &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
