<?php

/**
 * This is the model class for table "group_supervisor_user".
 *
 * The followings are the available columns in table 'group_supervisor_user':
 * @property string $id
 * @property string $group_supervisor_id
 * @property string $user_id
 * @property string $created_at
 *
 * The followings are the available model relations:
 * @property GroupSupervisor $groupSupervisor
 * @property Users $user
 */
class GroupSupervisorUser extends CActiveRecord
{
    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return 'group_supervisor_user';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('group_supervisor_id, user_id, created_at', 'required'),
            array('group_supervisor_id, user_id', 'length', 'max' => 10),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, group_supervisor_id, user_id, created_at', 'safe', 'on' => 'search'),
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
            'groupSupervisor' => array(self::BELONGS_TO, 'GroupSupervisor', 'group_supervisor_id'),
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
            'group_supervisor_id' => 'Group Supervisor',
            'user_id' => 'User',
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
        $criteria->compare('group_supervisor_id', $this->group_supervisor_id, true);
        $criteria->compare('user_id', $this->user_id, true);
        $criteria->compare('created_at', $this->created_at, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return GroupSupervisorUser the static model class
     */
    public static function model($className = __CLASS__)
    {
        return parent::model($className);
    }
}
