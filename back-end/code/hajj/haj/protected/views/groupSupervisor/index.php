<?php
/* @var $this GroupSupervisorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs = array(
    'Group Supervisors',
);

$this->menu = array(
    array('label' => 'Create GroupSupervisor', 'url' => array('create')),
    array('label' => 'Manage GroupSupervisor', 'url' => array('admin')),
);
?>

<h1>Group Supervisors</h1>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_view',
)); ?>
