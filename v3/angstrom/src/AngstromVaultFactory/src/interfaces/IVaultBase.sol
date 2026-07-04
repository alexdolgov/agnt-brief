// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";

import { IPerpsOracle } from "./IPerpsOracle.sol";
import { IPriceOracle } from "./IPriceOracle.sol";
import { ISwapper } from "./ISwapper.sol";
import { ITransferPolicy } from "./ITransferPolicy.sol";

/// @notice Interface capturing functions uniquely implemented in the VaultBase contract.
/// Inherited by the combined IVault interface.
interface IVaultBase {
    // ──────────────────────────────────────────────────────────────────────
    //  Immutable getters
    // ──────────────────────────────────────────────────────────────────────

    function asset() external view returns (ERC20);
    function POOL() external view returns (PoolId);
    function POOL_MANAGER() external view returns (IPoolManager);
    function CURRENCY0() external view returns (Currency);
    function CURRENCY1() external view returns (Currency);
    function TICK_SPACING() external view returns (int24);
    function FEE() external view returns (uint24);
    function HOOKS() external view returns (IHooks);

    // ──────────────────────────────────────────────────────────────────────
    //  Vault storage getters
    // ──────────────────────────────────────────────────────────────────────

    function swapper() external view returns (ISwapper);
    function perpsOracle() external view returns (IPerpsOracle);
    function perpsWallet() external view returns (address);
    function priceOracle() external view returns (IPriceOracle);
    function transferPolicy() external view returns (ITransferPolicy);
    function intentsRouter() external view returns (address);
    function vestibule() external view returns (address);

    // ──────────────────────────────────────────────────────────────────────
    //  Vault asset accounting
    // ──────────────────────────────────────────────────────────────────────

    /// @notice Returns the present value -- in the `asset` of the holdings presently managed by this vault
    /// @dev Pending deposits have already been received by this contract but are excluded from total assets
    ///      because no shares have been issued for them yet
    /// @dev Returns the total amount of the underlying asset managed by the Vault.
    ///
    /// - SHOULD include any compounding that occurs from the yield.
    /// - MUST be inclusive of any fees that are charged against assets in the Vault.
    /// - MUST NOT revert.
    function totalAssets() external view returns (uint256);

    /// @dev Returns the amount of assets that the Vault will exchange for the amount of
    /// shares provided, in an ideal scenario where all conditions are met.
    ///
    /// - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
    /// - MUST NOT show any variations depending on the caller.
    /// - MUST NOT reflect slippage or other on-chain conditions, during the actual exchange.
    /// - MUST NOT revert.
    ///
    /// Note: This calculation MAY NOT reflect the "per-user" price-per-share, and instead
    /// should reflect the "average-user's" price-per-share, i.e. what the average user should
    /// expect to see when exchanging to and from.
    /// @dev Uses a single "virtual share" to address the possibility of "inflation attacks".
    /// See https://github.com/OpenZeppelin/openzeppelin-contracts/issues/3706 for context.
    function convertToAssets(
        uint256 shares
    ) external view returns (uint256);

    /// @dev Returns the amount of shares that the Vault will exchange for the amount of
    /// assets provided, in an ideal scenario where all conditions are met.
    ///
    /// - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
    /// - MUST NOT show any variations depending on the caller.
    /// - MUST NOT reflect slippage or other on-chain conditions, during the actual exchange.
    /// - MUST NOT revert.
    ///
    /// Note: This calculation MAY NOT reflect the "per-user" price-per-share, and instead
    /// should reflect the "average-user's" price-per-share, i.e. what the average user should
    /// expect to see when exchanging to and from.
    /// @dev Uses a single "virtual share" to address the possibility of "inflation attacks".
    /// See https://github.com/OpenZeppelin/openzeppelin-contracts/issues/3706 for context.
    function convertToShares(
        uint256 assets
    ) external view returns (uint256);

    /// @notice Calculates the total amount of tokens in all of this vault's currently held Angstrom Liquidity Positions
    function convertLiquidityPositionsToConstituentTokens()
        external
        view
        returns (uint256 currency0Amount, uint256 currency1Amount);

    /// @notice Converts the `amount` of `currency` to an equivalent amount of the `asset` of this vault
    function convertCurrencyToAsset(
        address currency,
        uint256 amount
    ) external view returns (uint256);
}
