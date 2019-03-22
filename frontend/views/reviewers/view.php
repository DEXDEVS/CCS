<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Reviewers */
?>
<div class="reviewers-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'reviewer_id',
            'reviewer_name',
            'reviewer_cnic',
            'reviewer_designation',
            'reviewer_email:email',
            'reviewer_domain',
            'reviewer_contact_no',
            'reviewer_website',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
        ],
    ]) ?>

</div>
