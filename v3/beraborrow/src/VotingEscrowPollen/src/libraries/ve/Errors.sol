// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

library Errors {
    // Liquidity Mining
    error VCInactiveDen(address den);
    error VCDenAlreadyActive(address den);
    error VCZeroVePollen(address user);
    error VCExceededMaxWeight(uint256 totalWeight, uint256 maxWeight);
    error VCDenAlreadyAddAndRemoved(address den);

    error VEExceededMaxLockTime();
    error VEInsufficientLockTime();
    error VENotAllowedReduceExpiry();
    error VEZeroAmountLocked();
    error VEPositionNotExpired();
    error VEZeroPosition();
    error VEZeroSlope(uint128 bias, uint128 slope);

    error FDTotalAmountFundedNotMatch(uint256 actualTotalAmount, uint256 expectedTotalAmount);
    error FDInvalidWTimeFund(uint256 lastFunded, uint256 wTime);
    error FDNotOwner(address caller);
    error FDNotOwnerOrDistributor(address caller);
    error FDInvalidStartEpoch(uint256 startEpoch);
    error FDInvalidSource(address source);
    error FDSourceAlreadyExists(address source);
    error FDEpochLengthMismatch();

    error InvalidWTime(uint256 wTime);
    error ExpiryInThePast(uint256 expiry);
    
    // GENERIC MSG
    error ArrayLengthMismatch();
    error ArrayOutOfBounds();
    error ZeroAddress();

    error InvalidPenaltyRatio(uint128 penaltyRatio);
}