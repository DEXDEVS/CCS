<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Submissions */
?>
<div class="submissions-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'sub_id',
            'conf_id',
            'sub_type',
            'sub_title',
            'sub_abstract:ntext',
            'sub_keywords',
            'sub_file',
            'sub_status',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
