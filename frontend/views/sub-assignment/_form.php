<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\SubAssignment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sub-assignment-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'assign_sub_id')->textInput() ?>

    <?= $form->field($model, 'assign_reviewer_id')->textInput() ?>

    <?= $form->field($model, 'assign_deadline')->textInput() ?>

    <?= $form->field($model, 'assign_reviews')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'assign_sub_status')->dropDownList([ 'Accepted' => 'Accepted', 'Rejected' => 'Rejected', ], ['prompt' => '']) ?>

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
