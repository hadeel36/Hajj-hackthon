<?php
/* @var $this DriversController */
/* @var $model Drivers */

$this->breadcrumbs = array(
    'Drivers' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List Drivers', 'url' => array('index')),
    array('label' => 'Manage Drivers', 'url' => array('admin')),
);
?>

    <h1>Create Drivers</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>