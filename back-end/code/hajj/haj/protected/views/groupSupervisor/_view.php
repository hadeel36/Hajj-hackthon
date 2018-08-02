<?php
/* @var $this GroupSupervisorController */
/* @var $data GroupSupervisor */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
    <?php echo CHtml::encode($data->name); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('national_id')); ?>:</b>
    <?php echo CHtml::encode($data->national_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
    <?php echo CHtml::encode($data->email); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('qr_code')); ?>:</b>
    <?php echo CHtml::encode($data->qr_code); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
    <?php echo CHtml::encode($data->created_at); ?>
    <br/>


</div>