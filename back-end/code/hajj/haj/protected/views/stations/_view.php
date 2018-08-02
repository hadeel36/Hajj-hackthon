<?php
/* @var $this StationsController */
/* @var $data Stations */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
    <?php echo CHtml::encode($data->name); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:</b>
    <?php echo CHtml::encode($data->address); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('number_of_buses')); ?>:</b>
    <?php echo CHtml::encode($data->number_of_buses); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('notes')); ?>:</b>
    <?php echo CHtml::encode($data->notes); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
    <?php echo CHtml::encode($data->created_at); ?>
    <br/>


</div>