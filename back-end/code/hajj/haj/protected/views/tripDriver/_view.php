<?php
/* @var $this TripDriverController */
/* @var $data TripDriver */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('driver_id')); ?>:</b>
    <?php echo CHtml::encode($data->driver_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('trip_id')); ?>:</b>
    <?php echo CHtml::encode($data->trip_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
    <?php echo CHtml::encode($data->created_at); ?>
    <br/>


</div>