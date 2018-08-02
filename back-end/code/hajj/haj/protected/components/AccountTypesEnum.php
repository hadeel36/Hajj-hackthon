<?php
/**
 * Created by PhpStorm.
 * User: malak
 * Date: 8/2/18
 * Time: 12:56 AM
 */

class AccountTypesEnum
{
    const USER = 'us';
    const GROUP_SUPERVISOR = 'gs';
    const BUS_SUPERVISOR = 'bs';
    const DRIVER = 'dr';

    /**
     * @return string[]
     */
    public static function getTypes()
    {
        return [
            self::BUS_SUPERVISOR,
            self::DRIVER,
            self::GROUP_SUPERVISOR,
            self::USER
        ];
    }
}