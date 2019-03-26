<?php
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PurchaseOrderItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

?>
<div class="">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
                
                
                //     [
                //     'class'=>'\kartik\grid\DataColumn',
                //     'attribute'=>'pa_id',
                // ],
                [
                    'class'=>'\kartik\grid\DataColumn',
                    'attribute'=>'pa_sub_id',
                    'value'=>'paSub.sub_title',
                ],
                [
                    'class'=>'\kartik\grid\DataColumn',
                    'attribute'=>'pa_author_id',
                    'value'=>'paAuthor.author_fname',
                ],
            ],    
        ]); 
    ?>
</div>

