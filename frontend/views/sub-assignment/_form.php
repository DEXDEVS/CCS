<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use frontend\models\Submissions;
use frontend\models\Reviewers;
use kartik\select2\Select2;
use dosamigos\datetimepicker\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model frontend\models\SubAssignment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sub-assignment-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'sub_type')->dropDownList([ 'Abstract' => 'Abstract', 'Full Paper' => 'Full Paper', 'Poster Paper' => 'Poster Paper'], ['prompt' => 'Submission Type','id'=>'subType']) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'assign_sub_id')->widget(Select2::classname(), [
                'data' => ArrayHelper::map(Submissions::find()->all(),'sub_id','sub_title'),
                'language' => 'en',
                'options' => ['placeholder' => 'Select','id'=>'subTitle'],
                'pluginOptions' => [
                    'allowClear' => true,
                    'multiple' => true
                ],
                ]);
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'assign_reviewer_id')->widget(Select2::classname(), [
                'data' => ArrayHelper::map(Reviewers::find()->all(),'reviewer_id','reviewer_name'),
                'language' => 'en',
                'options' => ['placeholder' => 'Select'],
                'pluginOptions' => [
                    'allowClear' => true,
                    'multiple' => true
                ],
                ]);
            ?>
        </div>
        <div class="col-md-6">
            <label>Review Deadline</label>
            <?= DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'assign_deadline',
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
<?php
$script = <<< JS

//here you write all your javascript stuff
$('#subType').change(function(){
    var subType = $(this).val();
    $.get('./submissions/get-submission',{subType : subType},function(data){
        console.log(data);
        var data =  $.parseJSON(data)
        $('#subTitle').empty();
        var options = '';
            for(var i=0; i<data.length; i++) { 
                options += '<option value="'+data[i].sub_id+'">'+data[i].sub_title+'</option>';
            }
        // Append to the html
        $('#subTitle').append(options);
    });
});
JS;
$this->registerJs($script);
?>
</script>