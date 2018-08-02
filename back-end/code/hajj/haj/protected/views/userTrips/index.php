<?php
/* @var $this UserTripsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs = array(
    'User Trips',
);

$this->menu = array(
    array('label' => 'Create UserTrips', 'url' => array('create')),
    array('label' => 'Manage UserTrips', 'url' => array('admin')),
);
?>

<h1>User Trips</h1>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_view',
)); ?>
