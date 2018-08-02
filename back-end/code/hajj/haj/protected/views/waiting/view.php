<?php
/* @var $this WaitingController */
/* @var $model Waiting */

$this->breadcrumbs = array(
    'Waitings' => array('index'),
    $model->id,
);

$this->menu = array(
    array('label' => 'List Waiting', 'url' => array('index')),
    array('label' => 'Create Waiting', 'url' => array('create')),
    array('label' => 'Update Waiting', 'url' => array('update', 'id' => $model->id)),
    array('label' => 'Delete Waiting', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
    array('label' => 'Manage Waiting', 'url' => array('admin')),
);
?>

<h1>View Waiting #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'attributes' => array(
        'id',
        'user_id',
        'user_order',
        'departure_time',
        'source',
        'destination',
        'created_at',
    ),
)); ?>
