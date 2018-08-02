<?php
/* @var $this WaitingController */
/* @var $model Waiting */

$this->breadcrumbs = array(
    'Waitings' => array('index'),
    $model->id => array('view', 'id' => $model->id),
    'Update',
);

$this->menu = array(
    array('label' => 'List Waiting', 'url' => array('index')),
    array('label' => 'Create Waiting', 'url' => array('create')),
    array('label' => 'View Waiting', 'url' => array('view', 'id' => $model->id)),
    array('label' => 'Manage Waiting', 'url' => array('admin')),
);
?>

    <h1>Update Waiting <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>