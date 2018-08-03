<?php
/* @var $this UserTripsController */
/* @var $model UserTrips */

$this->breadcrumbs = array(
    'User Trips' => array('index'),
    $model->id,
);

$this->menu = array(
    array('label' => 'List UserTrips', 'url' => array('index')),
    array('label' => 'Create UserTrips', 'url' => array('create')),
    array('label' => 'Update UserTrips', 'url' => array('update', 'id' => $model->id)),
    array('label' => 'Delete UserTrips', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
    array('label' => 'Manage UserTrips', 'url' => array('admin')),
);
?>

<h1>View UserTrips #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'attributes' => array(
        'id',
        'trip_id',
        'user_id',
        'is_forced',
        'created_at',
    ),
)); ?>
