<?php
/* @var $this TripDriverController */
/* @var $model TripDriver */

$this->breadcrumbs = array(
    'Trip Drivers' => array('index'),
    $model->id,
);

$this->menu = array(
    array('label' => 'List TripDriver', 'url' => array('index')),
    array('label' => 'Create TripDriver', 'url' => array('create')),
    array('label' => 'Update TripDriver', 'url' => array('update', 'id' => $model->id)),
    array('label' => 'Delete TripDriver', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
    array('label' => 'Manage TripDriver', 'url' => array('admin')),
);
?>

<h1>View TripDriver #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'attributes' => array(
        'id',
        'driver_id',
        'trip_id',
        'created_at',
    ),
)); ?>
