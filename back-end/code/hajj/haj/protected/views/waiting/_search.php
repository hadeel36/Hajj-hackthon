<?php
/* @var $this WaitingController */
/* @var $model Waiting */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'action' => Yii::app()->createUrl($this->route),
        'method' => 'get',
    )); ?>

    <div class="row">
        <?php echo $form->label($model, 'id'); ?>
        <?php echo $form->textField($model, 'id'); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'user_id'); ?>
        <?php echo $form->textField($model, 'user_id', array('size' => 11, 'maxlength' => 11)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'user_order'); ?>
        <?php echo $form->textField($model, 'user_order'); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'departure_time'); ?>
        <?php echo $form->textField($model, 'departure_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'source'); ?>
        <?php echo $form->textField($model, 'source', array('size' => 60, 'maxlength' => 255)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'destination'); ?>
        <?php echo $form->textField($model, 'destination', array('size' => 60, 'maxlength' => 255)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'created_at'); ?>
        <?php echo $form->textField($model, 'created_at'); ?>
    </div>

    <div class="row buttons">
        <?php echo CHtml::submitButton('Search'); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->