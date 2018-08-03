<?php

class QrcodeController extends Controller
{
    const LIMIT = 10;

    public function actionIndex()
    {
        // Generate QR for all users (pilgrims)
        $this->generateUsersQR();

        // Generate QR for all bus supervisors
        $this->generateBusSupervisorQR();

        // Generate QR for all drivers
        $this->generateDriversQR();

        // Generate QR for all group supervisors
        $this->generateGroupSupervisorQR();
    }

    private function generateUsersQR()
    {
        $accounts = null;
        $type = AccountTypesEnum::USER;
        do {
            $accounts = Users::model()->findAllByAttributes(
                ['qr_code' => null],
                [
                    'order' => 'id asc',
                    'limit' => 10
                ]
            );
            foreach ($accounts as $account) {
                if (empty($account->qr_code)) {
                    $account->qr_code = $type . '_' . $account->id;
                    $account->save();
                }
            }
        } while (!empty($accounts));
    }

    private function generateBusSupervisorQR()
    {
        $accounts = null;
        $type = AccountTypesEnum::BUS_SUPERVISOR;

        do {
            $accounts = BusSupervisor::model()->findAllByAttributes(
                ['qr_code' => null],
                [
                    'order' => 'id asc',
                    'limit' => 10
                ]
            );
            foreach ($accounts as $account) {
                if (empty($account->qr_code)) {
                    $account->qr_code = $type . '_' . $account->id;
                    $account->save();
                }
            }
        } while (!empty($accounts));
    }

    private function generateDriversQR()
    {
        $accounts = null;
        $type = AccountTypesEnum::DRIVER;
        do {
            $accounts = Drivers::model()->findAllByAttributes(
                ['qr_code' => null],
                [
                    'order' => 'id asc',
                    'limit' => 10
                ]
            );

            foreach ($accounts as $account) {
                if (empty($account->qr_code)) {
                    $account->qr_code = $type . '_' . $account->id;
                    $account->save();
                }
            }
        } while (!empty($accounts));
    }

    private function generateGroupSupervisorQR()
    {
        $accounts = null;
        $type = AccountTypesEnum::GROUP_SUPERVISOR;
        do {
            $accounts = Drivers::model()->findAllByAttributes(
                ['qr_code' => null],
                [
                    'order' => 'id asc',
                    'limit' => 10
                ]
            );

            foreach ($accounts as $account) {
                if (empty($account->qr_code)) {
                    $account->qr_code = $type . '_' . $account->id;
                    $account->save();
                }
            }
        } while (!empty($accounts));
    }
}