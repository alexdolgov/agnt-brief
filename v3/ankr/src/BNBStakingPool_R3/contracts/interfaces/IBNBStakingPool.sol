// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.16;

interface IBNBStakingPool {
    event Delegated(address indexed validatorAddress, uint256 amount);

    event Redelegated(
        address indexed validatorSrc,
        address indexed validatorDst,
        uint256 amount
    );

    event Undelegated(address indexed validatorAddress, uint256 amount);

    event StakingContractChanged(address oldValue, address newValue);

    /// Rewards
    event DailyRewardsClaimed(uint256 rewards);

    /// Flash unstake

    event FlashUntakeFeeChanged(uint256 oldValue, uint256 newValue);

    event FlashUnstakeFeeCollectedClaimed(
        address indexed claimerAddress,
        uint256 amount
    );

    event FlashPoolMinCapacityChanged(uint256 oldValue, uint256 newValue);

    event FlashFeeAmount(uint256 amount);

    event PartnersContractChanged(address oldValue, address newValue);

    /// Validators

    // event ValidatorAdded(address indexed validatorAddress, uint256 apr);

    // event ValidatorRemoved(address indexed validatorAddress);

    // event ValidatorsAprUpdated(address[] validators, uint256[] aprs);
}
