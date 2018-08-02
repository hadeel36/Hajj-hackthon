<?php
/* @var $this TripsController */
/* @var $model Trips */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'action' => Yii::app()->createUrl($this->route),
        'method' => 'get',
    )); ?>

    <div class="row">
        <?php echo $form->label($model, 'id'); ?>
        <?php echo $form->textField($model, 'id', array('size' => 10, 'maxlength' => 10)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'bus_id'); ?>
        <?php echo $form->textField($model, 'bus_id', array('size' => 10, 'maxlength' => 10)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'source_station_id'); ?>
        <?php echo $form->textField($model, 'source_station_id', array('size' => 10, 'maxlength' => 10)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'destination'); ?>
        <?php echo $form->textField($model, 'destination', array('size' => 60, 'maxlength' => 255)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'departure_time'); ?>
        <?php echo $form->textField($model, 'departure_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'arrival_time'); ?>
        <?php echo $form->textField($model, 'arrival_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'free_seats'); ?>
        <?php echo $form->textField($model, 'free_seats', array('size' => 10, 'maxlength' => 10)); ?>
    </div>

    <div class="row">
        <?php echo $form->label($model, 'occupied_seats'); ?>
        <?php echo $form->textField($model, 'occupied_seats', array('size' => 10, 'maxlength' => 10)); ?>
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