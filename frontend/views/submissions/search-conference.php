<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use frontend\models\Conferences;
use kartik\select2\Select2;


/* @var $this yii\web\View */
/* @var $model frontend\models\Submissions */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="submissions-form">

    <?php $form = ActiveForm::begin(); ?>
    	<div class="col-md-8 col-md-offset-2" style="margin-top: 180px;">
            <?= $form->field($model, 'search_conference')->widget(Select2::classname(), [
                'data' => ArrayHelper::map(Conferences::find()->all(),'conf_id','conf_name'),
                'language' => 'en',
                'options' => ['placeholder' => 'Search Conference','id'=>'search'],
                'pluginOptions' => [
                    'allowClear' => true,
                    //'multiple' => true
                ],
                ])->label('<h1 class="text-primary">Search Conference</h1>');
            ?>
        </div>
        <div class="col-md-1" style="margin-top: 255px;">
        	<?= Html::a('<i class="glyphicon glyphicon-plus"></i>', ['submissions/create'],
                    ['role'=>'modal-remote','title'=> 'Create new Sub Assignments','class'=>'btn btn-success','id'=>'btn']) ?>
        </div>

	<?php ActiveForm::end(); ?>
    
</div>
<?php
//$url = \yii\helpers\Url::to("submissions/create");
$script = <<< JS
//here you write all your javascript stuff

$('#search').change(function(){
    var search = $('#search').val();
    window.location.href = "http://localhost/CCS/frontend/web/index.php?r=submissions/create&id="+search;
});
JS;
$this->registerJs($script);
?>