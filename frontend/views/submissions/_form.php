<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use wbraganca\dynamicform\DynamicFormWidget;
use frontend\models\Conferences;


/* @var $this yii\web\View */
/* @var $model frontend\models\Submissions */
/* @var $form yii\widgets\ActiveForm */
?>
<?php 
    $id = $_GET['id'];
    $conference = Yii::$app->db->createCommand("SELECT * FROM conferences WHERE conf_id = $id")->queryAll();
    $startDate = date("d-M-Y", strtotime($conference[0]['conf_start_date']));
    $endDate = date("d-M-Y", strtotime($conference[0]['conf_end_date']));
?>
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading"><h3>Conference Detail</h3>
            <div class="row">
                <div class="col-md-8">
                    <b><?php echo $conference[0]['conf_name'];?> </b>
                </div>
                <br>
                <div class="col-md-4">
                    <?php echo "Year: ".$conference[0]['conf_year'];?>
                </div>
                <br>
                <div class="col-md-4">
                    <?php echo "From: ".$startDate." To: ".$endDate;?>
                </div>
                <br>
                <div class="col-md-4">
                    <?php echo "Venue: ".$conference[0]['conf_venue'];?>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="submissions-form">

    <?php $form = ActiveForm::begin(['id' => 'dynamic-form']); ?>

    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading"><h4><i class="glyphicon glyphicon-user"></i>  Authors</h4></div>
            <div class="panel-body">
            <?php DynamicFormWidget::begin([
                'widgetContainer' => 'dynamicform_wrapper', // required: only alphanumeric characters plus "_" [A-Za-z0-9_]
                'widgetBody' => '.container-items', // required: css class selector
                'widgetItem' => '.item', // required: css class
                'limit' => 10, // the maximum times, an element can be cloned (default 999)
                'min' => 1, // 0 or 1 (default 1)
                'insertButton' => '.add-item', // css class
                'deleteButton' => '.remove-item', // css class
                'model' => $authors[0],
                'formId' => 'dynamic-form',
                'formFields' => [
                    'author_fname',
                    'author_mname',  
                    'author_lname',
                    'author_country',
                    'author_affiliation',
                    'author_email',
                    'author_corresponding',
                ],
            ]); ?>

            <div class="container-items"><!-- widgetContainer -->
            <?php foreach ($authors as $i => $author): ?>
                <div class="item panel panel-default"><!-- widgetBody -->
                    <div class="panel-heading">
                        <h3 class="panel-title pull-left">Author</h3>
                        <div class="pull-right">
                            <button type="button" class="add-item btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i></button>
                            <button type="button" class="remove-item btn btn-danger btn-xs"><i class="glyphicon glyphicon-minus"></i></button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <?php
                            // necessary for update action.
                            
                        ?>
                        <div class="row">
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_fname")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_mname")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_lname")->textInput(['maxlength' => true]) ?>
                            </div>
                        </div><!-- .row -->
                        <div class="row">
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_country")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_affiliation")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($author, "[{$i}]author_email")->textInput(['maxlength' => true]) ?>
                            </div>
                        </div><!-- .row -->
                        <div class="row">
                            <div class="col-md-4">
                                <?= $form->field($author, "[{$i}]author_corresponding")->checkbox(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
            </div>
            <?php DynamicFormWidget::end(); ?>
            </div>
        </div>  
    </div>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading"><h4><i class="glyphicon glyphicon-envelope"></i> Submissions</h4></div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-4">
                        <?= $form->field($model, 'sub_type')->dropDownList([ 'Abstract' => 'Abstract', 'Full Paper' => 'Full Paper', 'Poster Paper' => 'Poster Paper', ], ['prompt' => 'Submission Type']) ?>
                    </div>
                     <div class="col-md-8">
                        <?= $form->field($model, 'sub_title')->textInput(['maxlength' => true]) ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <?= $form->field($model, 'sub_file')->fileInput() ?>
                    </div>
                    <div class="col-md-8">
                        <?= $form->field($model, 'sub_keywords')->textInput(['maxlength' => true])->label('Keywords (Comma Separated)') ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" style="padding-bottom: -10px;">
                        <?= $form->field($model, 'sub_abstract')->textarea(['rows' => 6]) ?>
                    </div>
                </div>
            </div>  
            </div> 
        </div> 
    </div>       
  
	<?php if (!Yii::$app->request->isAjax){ ?>
        <div class="form-group ">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
