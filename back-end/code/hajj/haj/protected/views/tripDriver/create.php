<?php
/* @var $this TripDriverController */
/* @var $model TripDriver */

$this->breadcrumbs = array(
    'Trip Drivers' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List TripDriver', 'url' => array('index')),
    array('label' => 'Manage TripDriver', 'url' => array('admin')),
);
?>

    <h1>Create TripDriver</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>