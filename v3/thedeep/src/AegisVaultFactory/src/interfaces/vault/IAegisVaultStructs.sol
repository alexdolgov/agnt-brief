// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

/// @title Aegis Vault Structs Interface
/// @notice Defines the structures used in the Aegis vault system
interface IAegisVaultStructs {
    /// @notice Struct to hold withdrawal slippage data
    /// @dev Used to specify minimum acceptable amounts for withdrawals and to return actual withdrawn amounts
    struct WithdrawSlippageData {
        uint256 depositTokenAmount;
        uint256 targetTokenAmount;
        // NB: depositSharesAmount in the case of WithdrawType.TargetOnly is NOT the depositShares minted
        // but is rather the aegisShares representing the value of depositTokenAmount that was re-deposited
        uint256 depositSharesAmount;
        uint256 targetSharesAmount;
    }
}
