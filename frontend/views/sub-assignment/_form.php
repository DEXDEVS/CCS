<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\SubAssignment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sub-assignment-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'assign_sub_id')->textInput() ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'assign_reviewer_id')->textInput() ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'assign_deadline')->textInput() ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'assign_sub_status')->dropDownList([ 'Accepted' => 'Accepted', 'Rejected' => 'Rejected', ], ['prompt' => '']) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'assign_reviews')->textarea(['rows' => 6]) ?> 
        </div>
    </div>
  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
