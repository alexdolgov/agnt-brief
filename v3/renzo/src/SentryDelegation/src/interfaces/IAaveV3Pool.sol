// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title IAaveV3Pool
/// @notice Minimal interface for the Aave V3 Pool — only the functions
///         SentryDelegation needs (flash-loan dispatch + premium readout).
interface IAaveV3Pool {
    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes calldata params,
        uint16 referralCode
    ) external;

    function FLASHLOAN_PREMIUM_TOTAL() external view returns (uint128);
}
