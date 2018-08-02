<?php
/* @var $this BusSupervisorTripsController */
/* @var $data BusSupervisorTrips */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('bus_supervisor_id')); ?>:</b>
	<?php echo CHtml::encode($data->bus_supervisor_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('trip_id')); ?>:</b>
	<?php echo CHtml::encode($data->trip_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
	<?php echo CHtml::encode($data->created_at); ?>
	<br />


</div>