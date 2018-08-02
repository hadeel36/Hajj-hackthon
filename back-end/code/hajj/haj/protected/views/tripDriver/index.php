<?php
/* @var $this TripDriverController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs = array(
    'Trip Drivers',
);

$this->menu = array(
    array('label' => 'Create TripDriver', 'url' => array('create')),
    array('label' => 'Manage TripDriver', 'url' => array('admin')),
);
?>

<h1>Trip Drivers</h1>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_view',
)); ?>
