// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IAccount} from "./IAccount.sol";

/**
 * @title IBootstrapAccount
 * @notice Bootstrap-only extension of `IAccount` for managed inventory onboarding flows.
 * @dev This interface is intentionally separate from `IAccount` so generic integrations do not depend on the
 *      one-time bootstrap handoff surface.
 */
interface IBootstrapAccount is IAccount {
    /// @notice Returns the configured one-time bootstrap authority. address(0) means bootstrap is disabled.
    function bootstrapAuthority() external view returns (address);

    /// @notice Returns whether the one-time bootstrap handoff has already been consumed.
    function bootstrapUsed() external view returns (bool);

    /// @notice Performs the one-time bootstrap ownership handoff to the final owner.
    function bootstrapTransferOwnershipOnce(address newOwner) external;
}
