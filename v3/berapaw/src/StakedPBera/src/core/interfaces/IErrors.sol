// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @notice Standard errors for berapaw contracts
 */
interface IErrors {
    error ZeroAddress();
    error InvalidInput();
    error InvalidTokenOrder();
    error ZeroAmount();
    error PayoutAmountIsZero();
    error InvalidFee(uint16 _fee);
    error InsufficientBalance();
    error InvalidAuctionId();

    /**
     * @dev Revert when the function is not called by the BeraPaw vault.
     */
    error OnlyBeraPawForge();
    error OnlyBeraStaker();
    error InsufficientRedeem();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    BeraPaw Forge                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error NotUser(address user);
    error NotUserOrManager(address user, address rewardsVault);
    error IncorrectBGTReward();
    error RedeemNotAvailable(uint128 amount);
    error AlreadyQueued();
    error NotEnoughTimeHasPassed();
    error NotPositionOwner();
    error AmountExceedsIncentives(uint256 amount);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        StakedPaw                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error BelowMinBoost();
    error NotAuthorized();
    error LBGTDepositNotEnabled();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      Fee Distributor                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Thrown if the total of the fee recipients doesn't equal 100%.
     * @dev This error is thrown when the total of the fee recipients doesn't equal 100%.
     */
    error InvalidFeeRecipients();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         Treasury                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error InvalidRate();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       PolController                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    //error ValidatorAlreadyRegistered();
    //error ValidatorNotRegistered();
    error WeightsDoNotAddToOneHundredPercent();
    error AlreadyCalledThisEpoch();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         StakedPaw                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error ContractExpired();
    error LockNotExpired();
    error ZeroBias();
    error NotDistributor();
    error RewardPeriodNotFinished();
    error LockExists();
    error OnlyIncreaseLockLength();
    error OnlyFutureLockEnd();
    error ExceededMaxTime();
    error LockExpired();
    error NoLock();
    error DelegateeHasNoLock();
    error DelegateeLockExpired();
    error SelfTransferNotAllowed();
    error ReceiverHasSmallerLockEnd();
    error LockDelegated();
    error AlreadyDelegated();
    error OnlyDelegateToLongerLock();
    error AlreadyUndelegated();
    error FutureLookUp();
    error Disabled();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    StakedPawRewards                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error NotStaker();
    error NotFeeCollector();
    error CannotRecoverRewardToken();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     StakeCompounder                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error NotAdmin(address account);
    error NotCurator(address account);
    error NotCompounder(address account);
    error Dead();
    error InvalidPayoutAmount(uint256 amount);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      BeraPawStaker                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error AmountLowerThanMinimumWithdrawal(uint256 amount);
    error InsuficientAvailableWithdrawal(uint256 amount);
    error ValidatorAlreadyExited(bytes pubkey);
    error ValidatorAlreadyRegistered(bytes pubkey);
    error ValidatorNotRegistered(bytes pubkey);
    error BeaconDepositFailed(bytes pubkey, bytes credentials, bytes signature, address operator, uint256 amount);
    error BeaconWithdrawalFailed(bytes pubkey, uint256 amount);
    error StakeLowerThanMinimum(uint256 amount);
    error InsuficientStakeToProcess(uint256 amount);
    error NotConsensusCaller();
    error InsuficientFee(uint256 fee, uint256 requiredFee);
    error InsuficientPBeraBalance(uint256 amount);
    error ValidatorOperatorChangeFailed(bytes pubkey, address newOperator);
    error SWBeraDepositDisabled();
}
