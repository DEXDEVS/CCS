<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\SubAssignment */
?>
<div class="sub-assignment-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'assign_id',
            'assign_sub_id',
            'assign_reviewer_id',
            'assign_deadline',
            'assign_reviews:ntext',
            'assign_sub_status',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
