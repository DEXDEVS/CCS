<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Authors */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="authors-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'author_fname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_mname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_lname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_country')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_affiliation')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author_corresponding')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
