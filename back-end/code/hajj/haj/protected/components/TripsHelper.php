<?php
/**
 * Created by PhpStorm.
 * User: malak
 * Date: 8/2/18
 * Time: 3:05 AM
 */

class TripsHelper
{
    /**
     * @param object $account
     * @param string $accountType
     * @return array
     */
    public static function getTripsIds($account, $accountType)
    {
        if ($accountType == AccountTypesEnum::DRIVER) {
            $driverTrips = TripDriver::model()->findAllByAttributes(['driver_id' => $account->id]);
            $tripsIds = [];
            foreach ($driverTrips as $driverTrip) {
                $tripsIds[] = $driverTrip->id;
            }
            return $tripsIds;
        }

        if ($accountType == AccountTypesEnum::USER) {
            $userTrips = UserTrips::model()->findAllByAttributes(['user_id' => $account->id]);
            $tripsIds = [];
            foreach ($userTrips as $userTrip) {
                $tripsIds[] = $userTrip->id;
            }
            return $tripsIds;
        }

        if ($accountType == AccountTypesEnum::BUS_SUPERVISOR) {
            $supervisorTrips = BusSupervisorTrips::model()->findAllByAttributes(['bus_supervisor_id' => $account->id]);
            $tripsIds = [];
            foreach ($supervisorTrips as $userTrip) {
                $tripsIds[] = $userTrip->id;
            }
            return $tripsIds;
        }
    }

    /**
     * @param object $account
     * @param string $accountType
     * @return array|mixed|null
     */
    public static function getAccountTrips($account, $accountType)
    {
        $tripsIds = self::getTripsIds($account, $accountType);
        $trips = [];
        if (!empty($tripsIds)) {
            $trips = Trips::model()->findAll(array(
                'condition' => 'id IN :tripsIds AND arrival_time >= NOW()',
                'order' => 'departure_time ASC',
                'params' => array(
                    ':tripsIds' => json_encode($tripsIds),
                ),
            ));
        }

        $aTrips = [];
        foreach ($trips as $trip) {
            $aTrips[] = $trip->getAttributes();
        }
        return $aTrips;
    }
}