<?php

class UserTripsController extends Controller
{
    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout = '//layouts/column2';

    /**
     * @return array action filters
     */
    public function filters()
    {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */
    public function accessRules()
    {
        return array(
            array('allow',  // allow all users to perform 'add', 'attend', 'index' and 'view' actions
                'actions' => array('index', 'view', 'add', 'attend'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('create', 'update'),
                'users' => array('@'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete'),
                'users' => array('admin'),
            ),
            array('deny',  // deny all users
                'users' => array('*'),
            ),
        );
    }

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id)
    {
        $this->render('view', array(
            'model' => $this->loadModel($id),
        ));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate()
    {
        $model = new UserTrips;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['UserTrips'])) {
            $model->attributes = $_POST['UserTrips'];
            if ($model->save())
                $this->redirect(array('view', 'id' => $model->id));
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id)
    {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['UserTrips'])) {
            $model->attributes = $_POST['UserTrips'];
            if ($model->save())
                $this->redirect(array('view', 'id' => $model->id));
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id)
    {
        $this->loadModel($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
    }

    /**
     * Lists all models.
     */
    public function actionIndex()
    {
        $dataProvider = new CActiveDataProvider('UserTrips');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    /**
     * Manages all models.
     */
    public function actionAdmin()
    {
        $model = new UserTrips('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['UserTrips']))
            $model->attributes = $_GET['UserTrips'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return UserTrips the loaded model
     * @throws CHttpException
     */
    public function loadModel($id)
    {
        $model = UserTrips::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param UserTrips $model the model to be validated
     */
    protected function performAjaxValidation($model)
    {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-trips-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    /**
     * Add pilgrim to trip
     * @return string
     */
    public function actionAdd()
    {
        $model = new UserTrips;
        if (isset($_POST['UserTrips'])) {
            $model->attributes = $_POST['UserTrips'];
            if ($model->save()) {
                return json_encode([
                    'success' => true,
                    'data' => null
                ]);
            }
        }

        return json_encode([
            'success' => false,
            'data' => null
        ]);
    }

    /**
     * Add pilgrim to trip
     * @return string
     */
    public function actionAttend()
    {
        if (!empty($_POST['trip_id']) && !empty($_POST['qr_code'])) {
            $tripId = $_POST['trip_id'];
            $account = AccountHelper::getAccountByQR($_POST['qr_code']);
            if (is_object($account)) {
                $accountTrip = UserTrips::model()->findByAttributes([
                    'user_id' => $account->id,
                    'trip_id' => $tripId
                ]);
                if (is_object($accountTrip)) {
                    $accountTrip->taken = true;
                    if ($accountTrip->save()) {
                        return json_encode([
                            'success' => true,
                            'data' => null
                        ]);
                    }
                } elseif (!empty($_POST['force']) && $_POST['force'] == true) {
                    $accountTrip = new UserTrips();
                    $accountTrip->trip_id = $tripId;
                    $accountTrip->user_id = $account->id;
                    $accountTrip->taken = true;
                    $accountTrip->is_forced = true;
                    if ($accountTrip->save()) {
                        if(TripsHelper::updateTripSeats($tripId, 1)) {
                            return json_encode([
                                'success' => true,
                                'data' => null
                            ]);
                        }
                    }
                }
            }
        }

        return json_encode([
            'success' => false,
            'data' => null
        ]);
    }
}
