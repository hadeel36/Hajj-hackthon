<?php
/**
 * Created by PhpStorm.
 * User: malak
 * Date: 8/2/18
 * Time: 1:25 AM
 */

class AccountHelper
{
    /**
     * @param string $accountType
     * @return bool
     */
    public static function checkAccountType($accountType)
    {
        return in_array($accountType, AccountTypesEnum::getTypes());
    }

    /**
     * @param string $qr_code
     * @return bool
     */
    public static function getId($qr_code)
    {
        $accountDetails = explode('_', $qr_code);
        return $accountDetails[1];
    }

    /**
     * @param string $qr_code
     * @return bool
     */
    public static function getAccountType($qr_code)
    {
        $accountDetails = explode('_', $qr_code);
        if(self::checkAccountType($accountDetails[1]))
        {
            return $accountDetails[1];
        }
        return null;
    }

    /**
     * @param string $accountType
     * @param int $accountId
     * @return bool|BusSupervisor|GroupSupervisor|Drivers|Users|null
     */
    public static function findAccount($accountType, $accountId)
    {
        switch ($accountType) {
            case (AccountTypesEnum::USER):
                {
                    return Users::model()->findByPk($accountId);
                }
            case (AccountTypesEnum::BUS_SUPERVISOR):
                {
                    return BusSupervisor::model()->findByPk($accountId);
                }
            case (AccountTypesEnum::GROUP_SUPERVISOR):
                {
                    return GroupSupervisor::model()->findByPk($accountId);
                }
            case (AccountTypesEnum::DRIVER):
                {
                    return Drivers::model()->findByPk($accountId);
                }
            default:
                {
                    return false;
                    break;
                }
        }
    }

    /**
     * @param $qr_code
     * @return bool|BusSupervisor|Drivers|GroupSupervisor|Users|null
     */
    public static function getAccountByQR($qr_code)
    {
        $accountDetails = explode('_', $qr_code);
        return self::findAccount($accountDetails[0], $accountDetails[1]);
    }
}