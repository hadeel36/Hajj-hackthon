<?php
/* @var $this UserTripsController */
/* @var $model UserTrips */

$this->breadcrumbs = array(
    'User Trips' => array('index'),
    $model->id => array('view', 'id' => $model->id),
    'Update',
);

$this->menu = array(
    array('label' => 'List UserTrips', 'url' => array('index')),
    array('label' => 'Create UserTrips', 'url' => array('create')),
    array('label' => 'View UserTrips', 'url' => array('view', 'id' => $model->id)),
    array('label' => 'Manage UserTrips', 'url' => array('admin')),
);
?>

    <h1>Update UserTrips <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>