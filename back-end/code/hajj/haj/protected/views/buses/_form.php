<?php
/* @var $this BusesController */
/* @var $model Buses */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'buses-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'name'); ?>
        <?php echo $form->textField($model, 'name', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'name'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'number'); ?>
        <?php echo $form->textField($model, 'number', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'number'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'capacity'); ?>
        <?php echo $form->textField($model, 'capacity'); ?>
        <?php echo $form->error($model, 'capacity'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'license_number'); ?>
        <?php echo $form->textField($model, 'license_number', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'license_number'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'color'); ?>
        <?php echo $form->textField($model, 'color', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'color'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'model'); ?>
        <?php echo $form->textField($model, 'model', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'model'); ?>
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