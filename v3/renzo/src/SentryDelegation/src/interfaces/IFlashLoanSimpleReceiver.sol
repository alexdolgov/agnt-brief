// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title IFlashLoanSimpleReceiver
/// @notice Aave V3 single-asset flash-loan receiver callback interface.
interface IFlashLoanSimpleReceiver {
    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external returns (bool);
}
