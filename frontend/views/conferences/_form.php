<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Conferences */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="conferences-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'conf_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'conf_year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'conf_start_date')->textInput() ?>

    <?= $form->field($model, 'conf_end_date')->textInput() ?>

    <?= $form->field($model, 'conf_abstract_DL')->textInput() ?>

    <?= $form->field($model, 'conf_poster_DL')->textInput() ?>

    <?= $form->field($model, 'conf_fullpaper_DL')->textInput() ?>

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
