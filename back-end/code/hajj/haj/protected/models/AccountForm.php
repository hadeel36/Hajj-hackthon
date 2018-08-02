<?php

/**
 * AccountForm class.
 */
class AccountForm extends CFormModel
{
    public $first_name;
    public $middle_name;
    public $last_name;
    public $email;
    public $photo;
    public $phone;
    public $job;
    public $birth_date;
    public $nationality;
    public $national_id;
    public $account_type;

    public function createAccount()
    {
        $newAccount = null;
        if (!empty($this->account_type) && in_array($this->account_type, AccountTypesEnum::getTypes())) {
            switch ($this->account_type) {
                case AccountTypesEnum::USER:
                    {
                        $account = new User();
                        $account->setAttributes($this->getAttributes());
                        if ($account->save()) {
                            $newAccount = $account;
                        }
                        break;
                    }
                case AccountTypesEnum::DRIVER:
                    {
                        $account = new Drivers();
                        $account->setAttributes($this->getAttributes());
                        if ($account->save()) {
                            $newAccount = $account;
                        }
                        break;
                    }
                case AccountTypesEnum::BUS_SUPERVISOR:
                    {
                        $account = new BusSupervisor();
                        $account->setAttributes($this->getAttributes());
                        if ($account->save()) {
                            $newAccount = $account;
                        }
                        break;
                    }
                case AccountTypesEnum::GROUP_SUPERVISOR:
                    {
                        $account = new GroupSupervisor();
                        $account->setAttributes($this->getAttributes());
                        if ($account->save()) {
                            $newAccount = $account;
                        }
                        break;
                    }
                default:
                    break;
            }
        }


        return $newAccount;

    }
}