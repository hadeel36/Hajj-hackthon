<?php
/* @var $this WaitingController */
/* @var $data Waiting */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('user_id')); ?>:</b>
    <?php echo CHtml::encode($data->user_id); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('user_order')); ?>:</b>
    <?php echo CHtml::encode($data->user_order); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('departure_time')); ?>:</b>
    <?php echo CHtml::encode($data->departure_time); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('source')); ?>:</b>
    <?php echo CHtml::encode($data->source); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('destination')); ?>:</b>
    <?php echo CHtml::encode($data->destination); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
    <?php echo CHtml::encode($data->created_at); ?>
    <br/>


</div>