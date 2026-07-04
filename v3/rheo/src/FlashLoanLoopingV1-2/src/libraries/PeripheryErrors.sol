// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/// @title PeripheryErrors
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
library PeripheryErrors {
    error INVALID_SWAP_METHOD();
    error NOT_AAVE_POOL();
    error NOT_INITIATOR();
    error INSUFFICIENT_BALANCE(uint256 balance, uint256 totalDebt);
    error GENERIC_SWAP_ROUTE_FAILED();
    error AUTO_REPAY_TOO_EARLY(uint256 dueDate, uint256 timestamp);
    error INVALID_PENDLE_MARKET(address market);
    error INVALID_PARAMS();
    error NOT_MORPHO();
    error EXPIRED(uint256 timestamp, uint256 expiresAt);
    error AMOUNT_OUT_TOO_LOW(uint256 amountOut, uint256 minAmountOut);
}
