<?php
/* @var $this UsersController */
/* @var $model Users */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'users-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'first_name'); ?>
        <?php echo $form->textField($model, 'first_name', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'first_name'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'middle_name'); ?>
        <?php echo $form->textField($model, 'middle_name', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'middle_name'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'last_name'); ?>
        <?php echo $form->textField($model, 'last_name', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'last_name'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'email'); ?>
        <?php echo $form->textField($model, 'email', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'email'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'photo'); ?>
        <?php echo $form->textField($model, 'photo', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'photo'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'phone'); ?>
        <?php echo $form->textField($model, 'phone', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'phone'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'job'); ?>
        <?php echo $form->textField($model, 'job'); ?>
        <?php echo $form->error($model, 'job'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'birth_date'); ?>
        <?php echo $form->textField($model, 'birth_date'); ?>
        <?php echo $form->error($model, 'birth_date'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'nationality'); ?>
        <?php echo $form->textField($model, 'nationality', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'nationality'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'qr_code'); ?>
        <?php echo $form->textField($model, 'qr_code', array('size' => 60, 'maxlength' => 255)); ?>
        <?php echo $form->error($model, 'qr_code'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'is_enabled'); ?>
        <?php echo $form->textField($model, 'is_enabled'); ?>
        <?php echo $form->error($model, 'is_enabled'); ?>
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