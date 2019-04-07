<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Previous Submissions';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode('Your Submissions') ?></h1>
    <?php $userId = Yii::$app->user->identity->id; ?>
    <br>
   	<div class="">
   		<div class="row">
   			<div class="col-md-12">
   				<table class="table table-hover">
   					<tbody>
   						<?php
   							$submissions = Yii::$app->db->createCommand("SELECT * FROM submissions WHERE created_by = '$userId'")->queryAll();
   							$count = count($submissions);
                        if ($count == 0) {?>
                             <div class="row">
                                <div class="col-md-6 col-md-offset-3 well well-sm text-center">
                                   <p>Sorry...!!! No previous submissions were available</p>
                                </div>
                             </div>
                       <?php }
   							for ($i=0; $i < $count ; $i++) { ?>
                  
   						<tr>
   							<td>
   								<a href="submission-details?id=<?php echo $submissions[$i]['sub_id']; ?>">
   								<b><?php echo $submissions[$i]['sub_title']; ?></b>
   								</a><br>
   								<label>Type: </label>
   								<?php echo $submissions[$i]['sub_type']; ?>&nbsp;&nbsp;&nbsp;
                  <label>Submitted on: </label>
                  <?php $created_at = date('d-M-Y', strtotime($submissions[$i]['created_at'])); 
                        echo $created_at; ?>&nbsp;&nbsp;&nbsp;
                  <label>Status: </label>
                  <?php echo $submissions[$i]['sub_status']; ?>&nbsp;&nbsp;&nbsp;
   							</td>
   						</tr>
   						<?php } ?>
   					</tbody>
   				</table>
   			</div>
   		</div>
   	</div>
</div>
<?php /*
$created_at = date('Y-m-d', strtotime($submissions[$i]['created_at'])); 
                  if($created_at ==  new \yii\db\Expression('NOW()')){ ?>
                    <h3> Current Submission </h3>
                  <?php } else { ?>
                    <h3> Previous Submissions </h3>
                  <?php } ?>
*/ ?>

