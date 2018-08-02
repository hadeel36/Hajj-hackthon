<?php
/* @var $this BusSupervisorTripsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Bus Supervisor Trips',
);

$this->menu=array(
	array('label'=>'Create BusSupervisorTrips', 'url'=>array('create')),
	array('label'=>'Manage BusSupervisorTrips', 'url'=>array('admin')),
);
?>

<h1>Bus Supervisor Trips</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
