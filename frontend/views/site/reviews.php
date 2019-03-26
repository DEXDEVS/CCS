<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Reviews';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
    <?php 
   	$reviewerEmail = Yii::$app->user->identity->email;
   	$Id = Yii::$app->db->createCommand("SELECT reviewer_id FROM reviewers WHERE reviewer_email = '$reviewerEmail'")->queryAll();
   	$reviewerId = $Id[0]['reviewer_id'];
   	?>
   	<div class="container">
   		<div class="row">
   			<div class="col-md-12">
   				<ul>
   					<?php 
   						$assignPaperIds = Yii::$app->db->createCommand("SELECT assign_sub_id FROM sub_assignment WHERE assign_reviewer_id = '$reviewerId'")->queryAll();
   						$count = count($assignPaperIds);
   						for ($i=0; $i <$count ; $i++) { 
   							$paperId = $assignPaperIds[$i]['assign_sub_id'];
   							$assignPaperName = Yii::$app->db->createCommand("SELECT sub_title FROM submissions WHERE sub_id = '$paperId'")->queryAll(); ?>
   							<li>
   								<a href="" title=""> 
   									<?php echo $assignPaperName[0]['sub_title']; ?>
   								</a> 
   							</li>
   						<?php } ?>
   				</ul>
   				
   			</div>
   		</div>
   	</div>
</div>
