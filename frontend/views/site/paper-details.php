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
	  <h1><?= Html::encode($this->title) ?></h1>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th>Conference Name</th>
						<th>Sub Type</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><?php echo $confDetails[0]['conf_name']; ?></td>
						<td><?php echo $paperDetails[0]['sub_type']; ?></td>
						<td>
							<?= Html::a('<span class = "glyphicon glyphicon-download"></span> Download', ['site/download-doc', 'sub_id' => $paperDetails[0]['sub_id']], ['class' => 'btn btn-primary btn-xs btn-flat', 'title' => 'Download Document', 'data' => ['method' => 'post']]) ?>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>