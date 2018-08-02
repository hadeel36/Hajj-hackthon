<?php
/* @var $this BusSupervisorTripsController */
/* @var $model BusSupervisorTrips */

$this->breadcrumbs=array(
	'Bus Supervisor Trips'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List BusSupervisorTrips', 'url'=>array('index')),
	array('label'=>'Create BusSupervisorTrips', 'url'=>array('create')),
	array('label'=>'View BusSupervisorTrips', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage BusSupervisorTrips', 'url'=>array('admin')),
);
?>

<h1>Update BusSupervisorTrips <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>