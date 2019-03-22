<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Submissions */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="submissions-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'conf_id')->textInput() ?>

    <?= $form->field($model, 'sub_type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sub_title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sub_abstract')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'sub_keywords')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sub_file')->textInput(['maxlength' => true]) ?>

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
