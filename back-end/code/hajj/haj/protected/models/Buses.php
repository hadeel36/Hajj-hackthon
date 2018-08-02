<?php

/**
 * This is the model class for table "buses".
 *
 * The followings are the available columns in table 'buses':
 * @property string $id
 * @property string $name
 * @property string $number
 * @property integer $capacity
 * @property string $license_number
 * @property string $color
 * @property string $model
 * @property string $created_at
 *
 * The followings are the available model relations:
 * @property Trips[] $trips
 */
class Buses extends CActiveRecord
{
    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return 'buses';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
//            array('name, number, capacity, license_number, color, model, created_at', 'required'),
//            array('capacity', 'numerical', 'integerOnly' => true),
//            array('name, number, license_number, color, model', 'length', 'max' => 255),
//            // The following rule is used by search().
//            // @todo Please remove those attributes that should not be searched.
//            array('id, name, number, capacity, license_number, color, model, created_at', 'safe', 'on' => 'search'),
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
            'trips' => array(self::HAS_MANY, 'Trips', 'bus_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
            'id' => 'ID',
            'name' => 'Name',
            'number' => 'Number',
            'capacity' => 'Capacity',
            'license_number' => 'License Number',
            'color' => 'Color',
            'model' => 'Model',
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
        $criteria->compare('name', $this->name, true);
        $criteria->compare('number', $this->number, true);
        $criteria->compare('capacity', $this->capacity);
        $criteria->compare('license_number', $this->license_number, true);
        $criteria->compare('color', $this->color, true);
        $criteria->compare('model', $this->model, true);
        $criteria->compare('created_at', $this->created_at, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Buses the static model class
     */
    public static function model($className = __CLASS__)
    {
        return parent::model($className);
    }
}
