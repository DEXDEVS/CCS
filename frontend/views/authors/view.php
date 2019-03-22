<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Authors */
?>
<div class="authors-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'author_id',
            'author_fname',
            'author_mname',
            'author_lname',
            'author_country',
            'author_affiliation',
            'author_email:email',
            'author_corresponding',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
