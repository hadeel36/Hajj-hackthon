<?php
/* @var $this BusSupervisorController */
/* @var $model BusSupervisor */

$this->breadcrumbs = array(
    'Bus Supervisors' => array('index'),
    $model->name,
);

$this->menu = array(
    array('label' => 'List BusSupervisor', 'url' => array('index')),
    array('label' => 'Create BusSupervisor', 'url' => array('create')),
    array('label' => 'Update BusSupervisor', 'url' => array('update', 'id' => $model->id)),
    array('label' => 'Delete BusSupervisor', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
    array('label' => 'Manage BusSupervisor', 'url' => array('admin')),
);
?>

<h1>View BusSupervisor #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'attributes' => array(
        'id',
        'name',
        'national_id',
        'email',
        'qr_code',
        'created_at',
    ),
)); ?>
