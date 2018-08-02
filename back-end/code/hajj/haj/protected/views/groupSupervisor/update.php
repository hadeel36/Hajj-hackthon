<?php
/* @var $this GroupSupervisorController */
/* @var $model GroupSupervisor */

$this->breadcrumbs = array(
    'Group Supervisors' => array('index'),
    $model->name => array('view', 'id' => $model->id),
    'Update',
);

$this->menu = array(
    array('label' => 'List GroupSupervisor', 'url' => array('index')),
    array('label' => 'Create GroupSupervisor', 'url' => array('create')),
    array('label' => 'View GroupSupervisor', 'url' => array('view', 'id' => $model->id)),
    array('label' => 'Manage GroupSupervisor', 'url' => array('admin')),
);
?>

    <h1>Update GroupSupervisor <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>