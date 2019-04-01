<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php 
use yii\helpers\Html;

	$subid = $_GET['id'];
	$submissions = Yii::$app->db->createCommand("SELECT * FROM submissions WHERE sub_id = '$subid'")->queryAll();
	$conf_id = $submissions[0]['conf_id'];
	$conferenceName = Yii::$app->db->createCommand("SELECT conf_name FROM conferences WHERE conf_id = '$conf_id'")->queryAll();

	

?>
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="panel panel-default">
				<div class="panel-heading" style="background-color:#222222;color:white;text-align: center;font-family: georgia;">
					<h3 style="font-size:30px;">Publication</h3>
				</div>
				<div class="panel-body">
					<p style="box-shadow:1px 1px 1px 1px;font-family:verdana;font-weight: bolder;color:#337AB7;font-size:17px;text-align: center;"><i class="glyphicon glyphicon-hand-right"></i> Conference Name</p>
			 		<li style="list-style-type: none;text-align: center;font-size:20px;font-family: georgia">
			 			<?php echo $conferenceName[0]['conf_name']; ?>
			 		</li><br><!-- <hr style="border-color:#337AB7;"> -->
			 			<?php

			 				$authorIds = Yii::$app->db->createCommand("SELECT pa_author_id FROM paper_authors
							INNER JOIN submissions
							ON paper_authors.pa_sub_id = submissions.sub_id
							WHERE paper_authors.pa_sub_id = '$subid'")->queryAll();
							$count = count($authorIds);
			 				for ($i=0; $i <$count ; $i++) { 
			 					$authId = $authorIds[$i]['pa_author_id'];
			 					//echo $authId;
			 					$authorName = Yii::$app->db->createCommand("SELECT * FROM authors WHERE author_id = '$authId'")->queryAll();
			 				}
			 			 ?>
			 		</li><br>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="background-color: #D0CFCF;font-family: georgia;">
							<h3 style="font-size: 30px;">Author Details</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered table-hover table-condensed table-striped">
					            <tbody>

					              <?php
					              $authorIds = Yii::$app->db->createCommand("SELECT pa_author_id FROM paper_authors
							INNER JOIN submissions
							ON paper_authors.pa_sub_id = submissions.sub_id
							WHERE paper_authors.pa_sub_id = '$subid'")->queryAll();
							$count = count($authorIds);
			 				for ($i=0; $i <$count ; $i++) { 
			 					$authId = $authorIds[$i]['pa_author_id'];
			 					$authorName = Yii::$app->db->createCommand("SELECT * FROM authors WHERE author_id = '$authId'")->queryAll();
					              ?>
					                <thead>
					                  <tr>
					                  <th colspan="4" style="text-align: center;background-color:#F5F5F5;color:#337AB7;">
					                  	<i class="glyphicon glyphicon-user"></i>
					                    <?php echo $authorName[0]['author_fname'].$authorName[0]['author_mname'].$authorName[0]['author_lname']; ?>
					                  </th>
					                </tr>  
					                <tr>
					                  <th style="width: 60px;">Country</th>
					                  <td><?php echo  $authorName[0]['author_country']; ?></td>
					                </tr>
					                <tr>
					                  <th style="width: 200px">Affiliation</th>
					                  <td><?php echo  $authorName[0]['author_affiliation']; ?></td>
					                </tr>
					                <tr>
					                  <th style="width: 200px">Email</th>
					                  <td><?php echo  $authorName[0]['author_email']; ?></td>
					                </tr>
					                <tr>
					                  <th style="width: 200px">Corressppnding</th>
					                  <td>
					                  	<?php
					                  	if ($authorName[0]['author_corresponding'] == 0) {
					                  	 	echo "NO";
					                  	 }else{
					                  	 	echo "Yes";
					                  	 }
					                  	?>
					                  </td>
					                </tr>
					                </thead>
					              <?php } ?>
					            </tbody>
          					</table>
						</div>
					</div>
				</div>	
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="background-color: #D0CFCF;font-family: georgia;">
							<h3 style="font-size: 30px;">Submission Details</h3>
						</div>
						<div class="panel-body">
							<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Title</p>
					 		<li style="list-style-type: none;">
					 			<?php echo $submissions[0]['sub_title']; ?>
					 		</li><br>

					 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Type</p>
					 		<li style="list-style-type: none;">
					 			<?php echo $submissions[0]['sub_type']; ?>
					 		</li><br>

					 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Abstract</p>
					 		<li style="list-style-type: none;">
					 			<?php echo $submissions[0]['sub_abstract']; ?>
					 		</li><br>

					 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Keywords</p>
					 		<li style="list-style-type: none;">
					 			<?php echo $submissions[0]['sub_keywords']; ?>
					 		</li><br>

					 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> File</p>
					 		<li style="list-style-type: none;font-size:15px;">
					 			<?= Html::a('<span class ="glyphicon glyphicon glyphicon-save-file" style="font-size: 100px; color: #CCCCCC;"></span>', ['submissions/download-doc', 'sub_id' => $subid], ['class' => 'fa fa-user', 'title' => 'Click here to download paper', 'data' => ['method' => 'post']]) ?>
					 		</li><br>

						</div>
					</div>
				</div>	
			</div>
		</div>
	</div>
</div>
</body>
</html>