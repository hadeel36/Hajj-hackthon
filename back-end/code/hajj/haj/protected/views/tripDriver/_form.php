<?php
/* @var $this TripDriverController */
/* @var $model TripDriver */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'trip-driver-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'driver_id'); ?>
        <?php echo $form->textField($model, 'driver_id', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'driver_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'trip_id'); ?>
        <?php echo $form->textField($model, 'trip_id', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'trip_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'created_at'); ?>
        <?php echo $form->textField($model, 'created_at'); ?>
        <?php echo $form->error($model, 'created_at'); ?>
    </div>

    <div class="row buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->