<?php
/* @var $this UserTripsController */
/* @var $model UserTrips */

$this->breadcrumbs = array(
    'User Trips' => array('index'),
    'Create',
);

$this->menu = array(
    array('label' => 'List UserTrips', 'url' => array('index')),
    array('label' => 'Manage UserTrips', 'url' => array('admin')),
);
?>

    <h1>Create UserTrips</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>