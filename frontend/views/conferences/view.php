<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Conferences */
?>
<div class="conferences-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'conf_id',
            'conf_name',
            'conf_year',
            'conf_start_date',
            'conf_end_date',
            'conf_abstract_DL',
            'conf_poster_DL',
            'conf_fullpaper_DL',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
