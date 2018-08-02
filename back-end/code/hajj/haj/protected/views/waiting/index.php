<?php
/* @var $this WaitingController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs = array(
    'Waitings',
);

$this->menu = array(
    array('label' => 'Create Waiting', 'url' => array('create')),
    array('label' => 'Manage Waiting', 'url' => array('admin')),
);
?>

<h1>Waitings</h1>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_view',
)); ?>
