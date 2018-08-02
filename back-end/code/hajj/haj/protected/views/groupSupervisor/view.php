<?php
/* @var $this GroupSupervisorController */
/* @var $model GroupSupervisor */

$this->breadcrumbs = array(
    'Group Supervisors' => array('index'),
    $model->name,
);

$this->menu = array(
    array('label' => 'List GroupSupervisor', 'url' => array('index')),
    array('label' => 'Create GroupSupervisor', 'url' => array('create')),
    array('label' => 'Update GroupSupervisor', 'url' => array('update', 'id' => $model->id)),
    array('label' => 'Delete GroupSupervisor', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
    array('label' => 'Manage GroupSupervisor', 'url' => array('admin')),
);
?>

<h1>View GroupSupervisor #<?php echo $model->id; ?></h1>

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
