<?php
/* @var $this BusSupervisorController */
/* @var $model BusSupervisor */

$this->breadcrumbs = array(
    'Bus Supervisors' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List BusSupervisor', 'url' => array('index')),
    array('label' => 'Manage BusSupervisor', 'url' => array('admin')),
);
?>

    <h1>Create BusSupervisor</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>