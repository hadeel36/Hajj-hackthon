<?php
/* @var $this TripsController */
/* @var $model Trips */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'trips-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'bus_id'); ?>
        <?php echo $form->textField($model, 'bus_id', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'bus_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'source_station_id'); ?>
        <?php echo $form->textField($model, 'source_station_id', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'source_station_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'destination'); ?>
        <?php echo $form->textField($model, 'destination', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'destination'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'departure_time'); ?>
        <?php echo $form->textField($model, 'departure_time'); ?>
        <?php echo $form->error($model, 'departure_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'arrival_time'); ?>
        <?php echo $form->textField($model, 'arrival_time'); ?>
        <?php echo $form->error($model, 'arrival_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'free_seats'); ?>
        <?php echo $form->textField($model, 'free_seats', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'free_seats'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'occupied_seats'); ?>
        <?php echo $form->textField($model, 'occupied_seats', array('size' => 10, 'maxlength' => 10)); ?>
        <?php echo $form->error($model, 'occupied_seats'); ?>
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