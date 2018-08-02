<?php
/* @var $this BusesController */
/* @var $data Buses */
?>

<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
    <?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
    <?php echo CHtml::encode($data->name); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('number')); ?>:</b>
    <?php echo CHtml::encode($data->number); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('capacity')); ?>:</b>
    <?php echo CHtml::encode($data->capacity); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('license_number')); ?>:</b>
    <?php echo CHtml::encode($data->license_number); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('color')); ?>:</b>
    <?php echo CHtml::encode($data->color); ?>
    <br/>

    <b><?php echo CHtml::encode($data->getAttributeLabel('model')); ?>:</b>
    <?php echo CHtml::encode($data->model); ?>
    <br/>

    <?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
	<?php echo CHtml::encode($data->created_at); ?>
	<br />

	*/ ?>

</div>