// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

library StakeErrors {

    string constant public ERR_INVALID_AMOUNT = "Invalid amount";
    string constant public ERR_INSUFFICIENT_STAKE = "Insufficient stake amount";
    string constant public ERR_MIN_VALIDATOR_STAKE = "Below minimum validator stake";
    string constant public ERR_MIN_USER_STAKE = "Below minimum user stake";
    string constant public ERR_NOT_OWNER = "Not validator owner";
    string constant public ERR_NOT_DISTRIBUTOR = "Not reward distributor";
    string constant public ERR_INVALID_EPOCH = "Invalid epoch";
    string constant public ERR_ALREADY_SETTLED = "Epoch already settled";
    string constant public ERR_CAN_NOT_SETTLED = "Epoch can not settle";
    string constant public ERR_EPOCH_NOT_START = "Epoch not start";
    string constant public ERR_VALIDATOR_NOT_ACTIVE = "Validator not active";
    string constant public ERR_VALIDATOR_NOT_REGISTERED = "Validator not registered";
    string constant public ERR_VALIDATOR_ALREADY_REGISTERED = "Validator already registered";
    string constant public ERR_INVALID_SHARING_RATIO = "Invalid sharing ratio";
    string constant public ERR_INVALID_UNLOCK_DURATION = "Invalid unlock duration";
    string constant public ERR_SETTLEMENT_IN_PROGRESS = "Settlement in progress";
    string constant public ERR_NOT_SETTLEMENT_TIME = "Not settlement time";
    string constant public ERR_NO_ACTIVE_VALIDATORS = "No active validators";
    string constant public ERR_ALREADY_ELECTED = "Validators already elected";
    string constant public ERR_INVALID_VALIDATOR_COUNT = "Invalid validator count";
    string constant public ERR_INVALID_ACCOUNT = "Invalid account";
    string constant public ERR_INVALID_ROLE = "Not stake system caller";
    string constant public ERR_ACTIVITY_ENDED = "Activity ended";

}
