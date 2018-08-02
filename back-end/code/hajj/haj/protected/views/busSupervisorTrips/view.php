<?php
/* @var $this BusSupervisorTripsController */
/* @var $model BusSupervisorTrips */

$this->breadcrumbs=array(
	'Bus Supervisor Trips'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List BusSupervisorTrips', 'url'=>array('index')),
	array('label'=>'Create BusSupervisorTrips', 'url'=>array('create')),
	array('label'=>'Update BusSupervisorTrips', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete BusSupervisorTrips', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage BusSupervisorTrips', 'url'=>array('admin')),
);
?>

<h1>View BusSupervisorTrips #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'bus_supervisor_id',
		'trip_id',
		'created_at',
	),
)); ?>
