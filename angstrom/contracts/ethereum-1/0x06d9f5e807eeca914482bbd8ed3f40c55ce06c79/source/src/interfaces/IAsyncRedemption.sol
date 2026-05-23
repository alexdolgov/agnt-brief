// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { RedemptionId } from "../types/RedemptionId.sol";
import { RedemptionRequest } from "../types/RedemptionRequest.sol";

/// @title IAsyncRedemption
/// @notice Interface for the AsyncRedemption vault submodule.
interface IAsyncRedemption {
    /// @notice Maximum allowed share amount for a single redemption request.
    /// @dev Enforced on redemption creation, i.e. within `_createRedemptionRequest()`, but not enforced on fulfillment,
    /// i.e. within `_fulfillRedemptionRequest()`.
    function minRedemptionAmount() external view returns (uint128);

    /// @notice Minimum allowed share amount for a single redemption request.
    /// @dev Enforced on redemption creation, i.e. within `_createRedemptionRequest()`, but not enforced on fulfillment,
    /// i.e. within `_fulfillRedemptionRequest()`.
    function maxRedemptionAmount() external view returns (uint128);

    /// @notice Total share amount of all pending redemption requests.
    function totalPendingRedemptions() external view returns (uint256);

    /// @notice Returns the RedemptionRequest with RedemptionId `id`.
    function getRedemptionRequest(
        RedemptionId id
    ) external view returns (RedemptionRequest memory);
}
