<?php

//use AccountTypesEnum;
use AccountHelper;

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class TQRUserIdentity extends UserIdentity
{
    /**
     * @var string
     */
    public $qr_code;

    /**
     * Constructor.
     * @param string $qr_code
     */
    public function __construct($qr_code)
    {
        $this->qr_code = $qr_code;
    }


    /**
     * Returns the unique identifier for the identity.
     * The default implementation simply returns {@link username}.
     * This method is required by {@link IUserIdentity}.
     * @return string the unique identifier for the identity.
     */
    public function getId()
    {
        return $this->qr_code;
    }

    /**
     * Returns the display name for the identity.
     * The default implementation simply returns {@link username}.
     * This method is required by {@link IUserIdentity}.
     * @return string the display name for the identity.
     */
    public function getName()
    {
        return $this->qr_code;
    }

    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */
    public function authenticate()
    {
        // check empty
        if (empty($this->qr_code))
            $this->errorCode = self::ERROR_USERNAME_INVALID;

        // check type
        $accountDetails = explode('_', $this->qr_code);
        if (!AccountHelper::checkAccountType($accountDetails[0])) {
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        }

        // find account
        $account = AccountHelper::findAccount($accountDetails[0], $accountDetails[1]);
        if (!is_object($account)) {
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        }

        // check no errors
        if (empty($this->errorCode)) {
            $this->errorCode = self::ERROR_NONE;
        }
        return !$this->errorCode;
    }


}