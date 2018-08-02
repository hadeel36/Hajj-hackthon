<?php

/**
 * This is the model class for table "trips".
 *
 * The followings are the available columns in table 'trips':
 * @property string $id
 * @property string $bus_id
 * @property string $source_station_id
 * @property string $destination
 * @property string $departure_time
 * @property string $arrival_time
 * @property string $free_seats
 * @property string $occupied_seats
 * @property string $created_at
 *
 * The followings are the available model relations:
 * @property Buses $bus
 * @property UserTrips[] $userTrips
 */
class Trips extends CActiveRecord
{
    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return 'trips';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
//            array('bus_id, source_station_id, destination, free_seats, occupied_seats, created_at', 'required'),
//            array('bus_id, source_station_id, free_seats, occupied_seats', 'length', 'max' => 10),
//            array('destination', 'length', 'max' => 255),
//            array('departure_time, arrival_time', 'safe'),
//            // The following rule is used by search().
//            // @todo Please remove those attributes that should not be searched.
//            array('id, bus_id, source_station_id, destination, departure_time, arrival_time, free_seats, occupied_seats, created_at', 'safe', 'on' => 'search'),
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
            'bus' => array(self::BELONGS_TO, 'Buses', 'bus_id'),
            'userTrips' => array(self::HAS_MANY, 'UserTrips', 'trip_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
            'id' => 'ID',
            'bus_id' => 'Bus',
            'source_station_id' => 'Source Station',
            'destination' => 'Destination',
            'departure_time' => 'Departure Time',
            'arrival_time' => 'Arrival Time',
            'free_seats' => 'Free Seats',
            'occupied_seats' => 'Occupied Seats',
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
        $criteria->compare('bus_id', $this->bus_id, true);
        $criteria->compare('source_station_id', $this->source_station_id, true);
        $criteria->compare('destination', $this->destination, true);
        $criteria->compare('departure_time', $this->departure_time, true);
        $criteria->compare('arrival_time', $this->arrival_time, true);
        $criteria->compare('free_seats', $this->free_seats, true);
        $criteria->compare('occupied_seats', $this->occupied_seats, true);
        $criteria->compare('created_at', $this->created_at, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Trips the static model class
     */
    public static function model($className = __CLASS__)
    {
        return parent::model($className);
    }
}
