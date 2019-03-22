<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\PaperAuthors */
?>
<div class="paper-authors-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'pa_id',
            'pa_sub_id',
            'pa_author_id',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
