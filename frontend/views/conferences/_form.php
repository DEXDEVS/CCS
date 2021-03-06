<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datetimepicker\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model frontend\models\Conferences */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="conferences-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'conf_name')->textInput(['maxlength' => true]) ?>
        </div>    
    </div>
    <div class="row">
        <div class="col-md-6">
            <label>Year</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_year',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy',
                    'todayBtn' => true
                ]
            ]);?>
        </div>    
        <div class="col-md-6">
            <?= $form->field($model, 'conf_venue')->textInput(['maxlength' => true]) ?>
        </div>  
    </div>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'conf_domain')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'conf_scope')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label>Start Date</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_start_date',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-mm-dd HH:ii:ss',
                    'todayBtn' => true
                ]
            ]);?>
        </div>
        <div class="col-md-6">
              <label>End Date</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_end_date',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-mm-dd HH:ii:ss',
                    'todayBtn' => true
                ]
            ]);?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <label>Abstract Deadline</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_abstract_DL',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-mm-dd HH:ii:ss',
                    'todayBtn' => true
                ]
            ]);?>
        </div>
        <div class="col-md-6">
            <label>Poster Deadline</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_poster_DL',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-mm-dd HH:ii:ss',
                    'todayBtn' => true
                ]
            ]);?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">            
            <label>FullPaper Deadline</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'conf_fullpaper_DL',
                'language' => 'en',
                'size' => 'ms',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-mm-dd HH:ii:ss',
                    'todayBtn' => true
                ]
            ]);?>
        </div>
    </div>
  
    <?php if (!Yii::$app->request->isAjax){ ?>
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>
    <?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>

