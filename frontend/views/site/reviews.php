<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Paper Reviews';
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
   				
   				<table class="table table-hover">
   					<tbody>
   						<?php 
                      $assignPaperIds = Yii::$app->db->createCommand("SELECT assign_sub_id FROM sub_assignment WHERE assign_reviewer_id = '$reviewerId'")->queryAll();
                          $count = count($assignPaperIds);
                          if($count == 0){ ?>
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 well well-sm text-center">
                                   <p>Sorry...!!! Papers are not assigned</p>
                                </div>
                            </div>
                          <?php  }
               						for ($i=0; $i <$count ; $i++) { 
               							$paperId = $assignPaperIds[$i]['assign_sub_id'];
               							$assignPaperName = Yii::$app->db->createCommand("SELECT s.sub_title,s.sub_keywords ,a.assign_deadline,a.status , a.assign_sub_status FROM submissions as s INNER JOIN sub_assignment as a ON s.sub_id = a.assign_sub_id WHERE s.sub_id = '$paperId'")->queryAll(); ?>
               						<tr>
               							<td>
               								<a href="index.php?r=site/paper-details&id=<?php echo $paperId; ?>">
               								<b><?php echo $assignPaperName[0]['sub_title']; ?></b>
               								</a><br>
               								<label>Keywords: </label>
               								<?php echo $assignPaperName[0]['sub_keywords']; ?>&nbsp;&nbsp;&nbsp;
               								<label>DeadLine: </label>
               								<?php echo $assignPaperName[0]['assign_deadline']; ?>&nbsp;&nbsp;&nbsp;
                              <label>Status: </label>
                              <?php echo $assignPaperName[0]['status']; ?>&nbsp;&nbsp;&nbsp;
                              <?php if($assignPaperName[0]['status'] == 'Reviewed') {?>
                                    <label>Publication Status: </label>
                                    <?php echo $assignPaperName[0]['assign_sub_status']; 
                                  } ?>
               							</td>
               						</tr>
   						<?php }  ?>
   					</tbody>
   				</table>
   				
   			</div>
   		</div>
   	</div>
</div>
<?php
if (isset($_POST['submit'])) {
  $comments = $_POST['text'];
  $status = $_POST['select'];
  $id = $_POST['id'];

  $transaction = \Yii::$app->db->beginTransaction();
        try {
          $reviews = Yii::$app->db->createCommand()->update('sub_assignment',[
                            'assign_reviews' => $comments,
                            'assign_sub_status'=> $status,
                            'status'=>'Reviewed'],
                            ['assign_sub_id' => $id] 
                        )->execute();
          if ($reviews) {
              $transaction->commit();
          }
      } catch (Exception $e) {
          $transaction->rollBack();
      }
}
?>