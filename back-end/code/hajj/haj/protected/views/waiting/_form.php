<?php
/* @var $this WaitingController */
/* @var $model Waiting */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'waiting-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'user_id'); ?>
        <?php echo $form->textField($model, 'user_id', array('size' => 11, 'maxlength' => 11)); ?>
        <?php echo $form->error($model, 'user_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'user_order'); ?>
        <?php echo $form->textField($model, 'user_order'); ?>
        <?php echo $form->error($model, 'user_order'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'departure_time'); ?>
        <?php echo $form->textField($model, 'departure_time'); ?>
        <?php echo $form->error($model, 'departure_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'source'); ?>
        <?php echo $form->textField($model, 'source', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'source'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'destination'); ?>
        <?php echo $form->textField($model, 'destination', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'destination'); ?>
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