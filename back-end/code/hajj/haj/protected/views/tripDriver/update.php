<?php
/* @var $this TripDriverController */
/* @var $model TripDriver */

$this->breadcrumbs = array(
    'Trip Drivers' => array('index'),
    $model->id => array('view', 'id' => $model->id),
    'Update',
);

$this->menu = array(
    array('label' => 'List TripDriver', 'url' => array('index')),
    array('label' => 'Create TripDriver', 'url' => array('create')),
    array('label' => 'View TripDriver', 'url' => array('view', 'id' => $model->id)),
    array('label' => 'Manage TripDriver', 'url' => array('admin')),
);
?>

    <h1>Update TripDriver <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>