// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { DepositId } from "../types/DepositId.sol";
import { DepositRequest } from "../types/DepositRequest.sol";

/// @title IAsyncDeposit
/// @notice Two-phase async deposit interface: users request deposits (transferring tokens upfront),
///         then an approver fulfills them in batches, minting vault shares at the prevailing exchange rate.
///         The exchange rate is determined off-chain; `minSharesOut` provides on-chain slippage protection.
interface IAsyncDeposit {
    /// @notice Total asset currently held by the vault for pending (unfulfilled) deposit requests.
    /// @dev Excluded from `totalAssets()` since corresponding shares have not yet been minted.
    function totalPendingDeposits() external view returns (uint256);

    /// @notice Maximum allowed share amount for a single deposit request.
    /// @dev Enforced on deposit creation, i.e. within `_createDepositRequest()`, but not enforced on fulfillment,
    /// i.e. within `_fulfillDepositRequest()`.
    function minDepositAmount() external view returns (uint128);

    /// @notice Minimum allowed share amount for a single deposit request.
    /// @dev Enforced on deposit creation, i.e. within `_createDepositRequest()`, but not enforced on fulfillment,
    /// i.e. within `_fulfillDepositRequest()`.
    function maxDepositAmount() external view returns (uint128);

    /// @notice Returns the full deposit request state for a given identifier.
    /// @param id The deposit request identifier to query.
    /// @return The `DepositRequest` struct containing depositor, amount, minSharesOut, and status.
    function getDepositRequest(
        DepositId id
    ) external view returns (DepositRequest memory);
}
