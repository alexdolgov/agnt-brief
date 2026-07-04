// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { IPerformanceFees } from "./IPerformanceFees.sol";
import { IManagementFees } from "./IManagementFees.sol";
import { IAngstromVaultFactory } from "./IAngstromVaultFactory.sol";

/// @title IFees
/// @notice Interface for the Fees vault submodule.
interface IFees is IPerformanceFees, IManagementFees {
    /// @notice Factory contract which deployed this contract.
    function ANGSTROM_VAULT_FACTORY() external view returns (IAngstromVaultFactory);

    /// @notice Exchange rate of 1e36 shares to assets, at the last fee update, i.e. the last invocation of
    /// `accrueFees()`, indicated by `managementFeesAccruedUntil`.
    function exchangeRateE36Last() external view returns (uint256);

    /// @notice Returns the totalSupply of issued shares plus any `provisionalShares`
    /// @dev Provisional shares dilute increases in exchange rate, and are burnt to dilute decreases in exchange rate.
    function totalSharesIncludingProvisional() external view returns (uint256);

    /// @notice Permissionless function to update the `provisionalShares` value to reflect crossing an epoch boundary
    /// and/or a change in the exchange rate of shares to assets, and calculate + distribute management fees.
    function accrueFees() external;
}
