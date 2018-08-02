<?php
/* @var $this WaitingController */
/* @var $model Waiting */

$this->breadcrumbs = array(
    'Waitings' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List Waiting', 'url' => array('index')),
    array('label' => 'Manage Waiting', 'url' => array('admin')),
);
?>

    <h1>Create Waiting</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>