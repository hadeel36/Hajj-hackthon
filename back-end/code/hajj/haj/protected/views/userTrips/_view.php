<?php
/* @var $this UserTripsController */
/* @var $data UserTrips */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('trip_id')); ?>:</b>
    <?php echo CHtml::encode($data->trip_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('user_id')); ?>:</b>
    <?php echo CHtml::encode($data->user_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('is_forced')); ?>:</b>
    <?php echo CHtml::encode($data->is_forced); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('taken')); ?>:</b>
    <?php echo CHtml::encode($data->taken); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
    <?php echo CHtml::encode($data->created_at); ?>
    <br/>


</div>