<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Previous Submissions';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
    <?php $userId = Yii::$app->user->identity->id; ?>
   	<div class="container">
   		<div class="row">
   			<div class="col-md-12">
   				<table class="table table-hover">
   					<tbody>
   						<?php
   							$submissions = Yii::$app->db->createCommand("SELECT * FROM submissions WHERE created_by = '$userId'")->queryAll();
   							$count = count($submissions);
   							for ($i=0; $i < $count ; $i++) { ?>
   						<tr>
   							<td>
   								<a href="index.php?r=submissions/submission-details&id=<?php echo $submissions[$i]['sub_id']; ?>">
   								<b><?php echo $submissions[$i]['sub_title']; ?></b>
   								</a><br>
   								<label>Keywords: </label>
   								<?php echo $submissions[$i]['sub_keywords']; ?>&nbsp;&nbsp;&nbsp;
   							</td>
   						</tr>
   						<?php } ?>
   					</tbody>
   				</table>
   			</div>
   		</div>
   	</div>
</div>
