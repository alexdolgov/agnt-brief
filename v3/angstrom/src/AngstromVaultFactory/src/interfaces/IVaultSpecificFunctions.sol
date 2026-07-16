// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { IUnlockCallback } from "@uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol";

/// @notice Interface capturing functions uniquely implemented in the Vault contract.
/// Inherited by the combined IVault interface.
interface IVaultSpecificFunctions is IUnlockCallback {
    // ----------------------------------------------------------------------
    //  Perps collateral
    // ----------------------------------------------------------------------

    /// @notice Adjust perps collateral allocation
    /// @dev Positive delta: send funds to perps, push funds to `perpsWallet`
    //      Negative delta: return funds from perps, pulls funds from `perpsWallet`
    function adjustPerpsCollateral(
        int256 delta
    ) external;

    // ----------------------------------------------------------------------
    //  Liquidity
    // ----------------------------------------------------------------------

    /// @notice Modify liquidity for a position in the pool
    /// @param tickLower The lower tick of the position
    /// @param tickUpper The upper tick of the position
    /// @param liquidityDelta The amount of liquidity to add (positive) or remove (negative)
    /// @param salt Position salt. Use a previously unused salt to create a new position, otherwise use the salt
    /// of an existing position
    /// @dev We interact directly with PoolManager for gas efficiency and assume that curators don't need/use the
    /// subscriber infrastructure that PositionManager provides
    function modifyLiquidity(
        int24 tickLower,
        int24 tickUpper,
        int256 liquidityDelta,
        bytes32 salt
    ) external;

    // ----------------------------------------------------------------------
    //  Vestibule hooks
    // ----------------------------------------------------------------------

    /// @notice Sets the vestibule contract address, only initialized once by the factory during vault deployment.
    /// @param newVestibule The address of the vestibule contract to set.
    function setVestibule(
        address newVestibule
    ) external;

    function fulfillDepositFromVestibule(
        address receiver,
        uint256 assets,
        uint256 shares
    ) external;

    function fulfillRedemptionFromVestibule(
        address receiver,
        uint256 shares,
        uint256 assets
    ) external;

    function transferSharesFromVestibule(
        address from,
        address to,
        uint256 shares
    ) external;
}
