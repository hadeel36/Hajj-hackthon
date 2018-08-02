<?php
/* @var $this BusSupervisorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs = array(
    'Bus Supervisors',
);

$this->menu = array(
    array('label' => 'Create BusSupervisor', 'url' => array('create')),
    array('label' => 'Manage BusSupervisor', 'url' => array('admin')),
);
?>

<h1>Bus Supervisors</h1>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_view',
)); ?>
