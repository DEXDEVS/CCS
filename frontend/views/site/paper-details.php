<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Review Details';
$this->params['breadcrumbs'][] = $this->title;
?>
<?php 

	$id = $_GET['id'];

	$paperDetails= Yii::$app->db->createCommand("SELECT * FROM submissions WHERE sub_id = '$id'")->queryAll();
	//var_dump($paperDetails);
	$conf_id = $paperDetails[0]['conf_id'];

	$confDetails = Yii::$app->db->createCommand("SELECT conf_name FROM conferences WHERE conf_id = '$conf_id'")->queryAll();
	

 ?>
<div class="container-fluid">
	 <div class="row">
	 	<div class="col-md-8">
	 		<div class="panel panel-default">
			 	<div class="panel-heading">
			 		<h3>Details</h3>
			 	</div>
			 	<div class="panel-body">
			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Conference Name</p>
			 		<li style="list-style-type: none;">
			 			<?php echo $confDetails[0]['conf_name']; ?>
			 		</li><br>

			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Sub Title</p>
			 		<li style="list-style-type: none;">
			 			<?php echo $paperDetails[0]['sub_title']; ?>
			 		</li><br>

			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Sub Type</p>
			 		<li style="list-style-type: none;">
			 			<?php echo $paperDetails[0]['sub_type']; ?>
			 		</li><br>

			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Sub Abstract</p>
			 		<li style="list-style-type: none;">
			 			<?php echo $paperDetails[0]['sub_abstract']; ?>
			 		</li><br>

			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Sub Keywords</p>
			 		<li style="list-style-type: none;">
			 			<?php echo $paperDetails[0]['sub_keywords']; ?>
			 		</li><br>

			 		<p style="font-weight: bolder;color:#337AB7;font-size:20px;"><i class="glyphicon glyphicon-circle-arrow-right"></i> Sub File</p>
			 		<li style="list-style-type: none;">
			 			<?= Html::a('<span class = ""></span> Click here to download file', ['site/download-doc', 'sub_id' => $paperDetails[0]['sub_id']], ['class' => '', 'title' => 'Download Document', 'data' => ['method' => 'post']]) ?>
			 		</li><br>
			 	</div>
	 		</div>
	 	</div>
	 	<div class="col-md-4">
	 		<div class="panel panel-primary">
			 	<div class="panel-heading">
			 		<h3 style="text-align: center;font-family: georgia;">For Acceptance</h3>
			 	</div>
			 	<div class="panel-body">
			 		<form method="post">
			 			<div class="form-group">
			 				<label>Comments</label>
			 				<textarea class="form-control" name="text" cols="4" rows="4">
			 				</textarea>
			 			</div>
			 			<div class="form-group">
			 				<label>Select</label>
			 				<select name="select" class="form-control">
			 					<option value="Accepted">Accepted</option>
			 					<option value="Rejected">Rejected</option>
			 				</select>
			 			</div>
			 			<button type="submit" name="submit" class="btn btn-success btn-xs pull-right">Send</button>
			 		</form>
			 	</div>
	 		</div>
	 	</div>
	 </div>
</div>