<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

if(!empty(Yii::$app->user->identity->email)){
    $this->title = 'Reviewer Signup';
} else {
    $this->title = 'Signup';
}

$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to signup:</p>

    <div class="row">
        <div class="col-lg-6">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>
                <?php  

                    if(!empty(Yii::$app->user->identity->email)){
                    $email = Yii::$app->user->identity->email;
                    $domain = substr($email, strpos($email, '@')+1);
                    if($domain == 'dskdconf.org'){ ?>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_name')->textInput(['maxlength' => true]) ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_cnic')->widget(yii\widgets\MaskedInput::class, [
                        'mask' => '99999-9999999-9',
                        ]) ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_designation')->textInput(['maxlength' => true]) ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_domain')->textInput(['maxlength' => true]) ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_contact_no')->widget(yii\widgets\MaskedInput::class, [ 'mask' => '+99-999-9999999', ]) ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($reviewers, 'reviewer_website')->textInput(['maxlength' => true]) ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'email') ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'usertype')->dropDownList([ 'Reviewer' => 'Reviewer' ], ['prompt' => 'User Type']) ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'password')->passwordInput() ?> 
                        </div>
                    </div>    
                
                <?php }  } else { ?>
                        <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                        <?= $form->field($model, 'email') ?>

                        <?= $form->field($model, 'password')->passwordInput() ?> 
                <?php   } ?>

                

                <div class="form-group">
                    <?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
