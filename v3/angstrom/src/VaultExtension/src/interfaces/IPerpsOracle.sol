// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";

interface IPerpsOracle {
    /// @notice The base unit of values reported by this oracle.
    function ASSET() external view returns (ERC20);

    /// @notice Current NAV of the perps position.
    function perpsValue() external view returns (uint128);

    /// @notice UTC timestamp of the last update to the perps value.
    function lastUpdated() external view returns (uint32);

    /// @notice Called by the vault to inform this contract of a movement of assets in/out of the
    /// vault to/from the perps venue.
    /// @dev If `deltaOutOfVault` is negative, this represents a movement of funds into the vault.
    /// @dev Does not change the value of `lastUpdated()`.
    function informOfPerpsTransfer(
        int256 deltaOutOfVault
    ) external;
}
