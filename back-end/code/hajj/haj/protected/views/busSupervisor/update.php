<?php
/* @var $this BusSupervisorController */
/* @var $model BusSupervisor */

$this->breadcrumbs = array(
    'Bus Supervisors' => array('index'),
    $model->name => array('view', 'id' => $model->id),
    'Update',
);

$this->menu = array(
    array('label' => 'List BusSupervisor', 'url' => array('index')),
    array('label' => 'Create BusSupervisor', 'url' => array('create')),
    array('label' => 'View BusSupervisor', 'url' => array('view', 'id' => $model->id)),
    array('label' => 'Manage BusSupervisor', 'url' => array('admin')),
);
?>

    <h1>Update BusSupervisor <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>