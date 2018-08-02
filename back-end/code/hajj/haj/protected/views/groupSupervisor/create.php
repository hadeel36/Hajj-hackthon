<?php
/* @var $this GroupSupervisorController */
/* @var $model GroupSupervisor */

$this->breadcrumbs = array(
    'Group Supervisors' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List GroupSupervisor', 'url' => array('index')),
    array('label' => 'Manage GroupSupervisor', 'url' => array('admin')),
);
?>

    <h1>Create GroupSupervisor</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>