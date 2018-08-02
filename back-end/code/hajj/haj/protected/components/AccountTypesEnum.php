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

    /**
     * @param string|null $exclude
     * @return array
     */
    public static function getTypesWithLabels($exclude = null)
    {
        $typesWithLabels = [
            self::BUS_SUPERVISOR => 'Bus supervisor',
            self::DRIVER => 'Driver',
            self::GROUP_SUPERVISOR => 'Group supervisor',
            self::USER => 'Pilgrim'
        ];

        if (!is_null($exclude)) {
            unset($typesWithLabels[$exclude]);
        }

        return $typesWithLabels;
    }
}