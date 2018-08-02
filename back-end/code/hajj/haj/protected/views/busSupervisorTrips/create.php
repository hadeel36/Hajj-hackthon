<?php
/* @var $this BusSupervisorTripsController */
/* @var $model BusSupervisorTrips */

$this->breadcrumbs=array(
	'Bus Supervisor Trips'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List BusSupervisorTrips', 'url'=>array('index')),
	array('label'=>'Manage BusSupervisorTrips', 'url'=>array('admin')),
);
?>

<h1>Create BusSupervisorTrips</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>