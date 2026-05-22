// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

library Errors {
    error PermissionDenied();
    error InvalidAddr();
    error InvalidVersion();
    error InvalidtypeId();
    error InvalidApr();
    error EigenLayerOperatorAlreadyDelegated();
    error DepositRootMismatch();
    error InvalidParameter();
    error InvalidAmount();
    error UpdateTimelocked();
    error InsufficientFunds();
    error ValidatorRegistered();
    error InvalidLength();
    error InvalidRequestId();
    error ClaimTooEarly();
    error DelayTooLarge();
    error TransferFailed();
    error WithdrawalsRequestExist();
    error CanUnstakeETH();
    error WithrawalsRequestCannotClaimed();
    error InvalidMsgVaule();
    error DepositdataNotEnough();
    error OperatorNotFound();
    error InvalidCommissionRate();
    error PubkeyRegistered();
    error UnstakeNotEnabled();
    error EigenPodMismatch();
    error RestakingPodNotFound();
    error PoolAlreadyExist();
    error PoolDoesNotExist();
}
