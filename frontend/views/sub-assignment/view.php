<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\SubAssignment */
?>
<div class="sub-assignment-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'assign_id',
            'sub_type',
            //'assign_sub_id',
            'assignSub.sub_title',
            //'assign_reviewer_id',
            'assignReviewer.reviewer_name',
            'assign_deadline',
            'assign_reviews:ntext',
            'assign_sub_status',
            'status',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
