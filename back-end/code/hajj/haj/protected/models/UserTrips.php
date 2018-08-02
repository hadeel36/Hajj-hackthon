<?php

/**
 * This is the model class for table "user_trips".
 *
 * The followings are the available columns in table 'user_trips':
 * @property string $id
 * @property string $trip_id
 * @property string $user_id
 * @property integer $is_coming
 * @property string $created_at
 *
 * The followings are the available model relations:
 * @property Trips $trip
 * @property Users $user
 */
class UserTrips extends CActiveRecord
{
    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return 'user_trips';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('trip_id, user_id, is_coming, created_at', 'required'),
            array('is_coming', 'numerical', 'integerOnly' => true),
            array('trip_id, user_id', 'length', 'max' => 10),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, trip_id, user_id, is_coming, created_at', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations()
    {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'trip' => array(self::BELONGS_TO, 'Trips', 'trip_id'),
            'user' => array(self::BELONGS_TO, 'Users', 'user_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
            'id' => 'ID',
            'trip_id' => 'Trip',
            'user_id' => 'User',
            'is_coming' => 'Is Coming',
            'created_at' => 'Created At',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search()
    {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id, true);
        $criteria->compare('trip_id', $this->trip_id, true);
        $criteria->compare('user_id', $this->user_id, true);
        $criteria->compare('is_coming', $this->is_coming);
        $criteria->compare('created_at', $this->created_at, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return UserTrips the static model class
     */
    public static function model($className = __CLASS__)
    {
        return parent::model($className);
    }
}
