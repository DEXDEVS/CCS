<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="shortcut icon" href="uploads/CCS_logo.jpg" type="image/jpg">
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    if (Yii::$app->user->isGuest) {
        NavBar::begin([
            'brandLabel' => 'Conference Submission Studio (CSS)',
            'brandUrl' => Yii::$app->homeUrl,
            'options' => [
                'class' => 'navbar-inverse navbar-fixed-top',
            ],
        ]);
            $menuItems[] = ['label' => 'Home', 'url' => ['/index']];
            $menuItems[] = ['label' => 'Contact', 'url' => ['/site/contact']];
            array_push($menuItems,['label' => 'Sign In', 'url' => ['/user/login']],['label' => 'Sign Up', 'url' => ['/user/register']]);
            //$menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
            //$menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
        
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav navbar-right'],
            'items' => $menuItems,
        ]);
        NavBar::end();
    } 
    if(!empty(Yii::$app->user->identity->email)){
        // $email = Yii::$app->user->identity->email;
        // $domain = substr($email, strpos($email, '@')+1);
        if(Yii::$app->user->identity->usertype == 'Admin'){
            NavBar::begin([
                'brandLabel' => 'Conference Submission Studio (CSS)',
                'brandUrl' => Yii::$app->homeUrl,
                'options' => [
                    'class' => 'navbar-inverse navbar-fixed-top',
                ],
            ]);
            $menuItems = [
                ['label' => 'Home', 'url' => ['/index']],
                ['label' => 'Conferences', 'url' => ['/conferences']],
                ['label' => 'All Submissions', 'url' => ['/submissions']],
                ['label' => 'Submission Assignment', 'url' => ['/sub-assignment']],
                ['label' => 'Reviewers', 'url' => ['/reviewers']],
                //['label' => 'Signup', 'url' => ['/site/signup']],
            ];
            $menuItems[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>';
        
            echo Nav::widget([
                'options' => ['class' => 'navbar-nav navbar-right'],
                'items' => $menuItems,
            ]);
            NavBar::end();
        } else if(Yii::$app->user->identity->usertype == 'Reviewer'){
            NavBar::begin([
                'brandLabel' => 'Conference Submission Studio (CSS)',
                'brandUrl' => Yii::$app->homeUrl,
                'options' => [
                    'class' => 'navbar-inverse navbar-fixed-top',
                ],
            ]);
            $menuItems = [
                ['label' => 'Home', 'url' => ['/index']],
                //['label' => 'Contact', 'url' => ['/site/contact']],
                ['label' => 'Your Assignments', 'url' => ['site/reviews']],
                
            ];
            $menuItems[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>';
        
            echo Nav::widget([
                'options' => ['class' => 'navbar-nav navbar-right'],
                'items' => $menuItems,
            ]);
            NavBar::end();
        } else if (Yii::$app->user->identity->usertype == 'superadmin') {
            NavBar::begin([
                'brandLabel' => 'Conference Submission Studio (CSS)',
                'brandUrl' => Yii::$app->homeUrl,
                'options' => [
                    'class' => 'navbar-inverse navbar-fixed-top',
                ],
            ]);
                $menuItems[] = ['label' => 'Home', 'url' => ['/index']];
                $menuItems[] = ['label' => 'Admin Sign Up', 'url' => ['/user/register']];
                
                $menuItems[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>';
        
            echo Nav::widget([
                'options' => ['class' => 'navbar-nav navbar-right'],
                'items' => $menuItems,
            ]);
            NavBar::end();
        } else {
            NavBar::begin([
                'brandLabel' => 'Conference Submission Studio (CSS)',
                'brandUrl' => Yii::$app->homeUrl,
                'options' => [
                    'class' => 'navbar-inverse navbar-fixed-top',
                ],
            ]);
            $menuItems = [
                ['label' => 'Home', 'url' => ['/index']],
                ['label' => 'Submissions', 'url' => ['/submissions/search-conference']],
                ['label' => 'Your Submissions', 'url' => ['/submissions/previous-submission']],
                ['label' => 'Contact', 'url' => ['/site/contact']],
            ];
            // array_push($menuItems,['label' => 'Logout (' . Yii::$app->user->identity->username . ')',
            //    'url' => ['/site/logout'],
            //    'linkOptions' => ['data-method' => 'post']]
            // );
            $menuItems[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>';
        
            echo Nav::widget([
                'options' => ['class' => 'navbar-nav navbar-right'],
                'items' => $menuItems,
            ]);
            NavBar::end();
        }
    }
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; CSS <?= date('Y') ?></p>

        <p class="pull-right">Powered by <a href="http://www.dexdevs.com" target="_blank"><b><i>DEXDEVS</i></b></a></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
<?php /* 
 
*/?>