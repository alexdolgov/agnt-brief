// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";

/**
 * @title IAlphixPro
 * @notice Interface for the AlphixPro asymmetric dynamic fee hook.
 */
interface IAlphixPro {
    /// @notice Emitted when both buy and sell fees are updated for a pool.
    event FeePoked(PoolId indexed poolId, uint24 buyFee, uint24 sellFee);

    /// @notice Emitted when only the buy fee is updated.
    event BuyFeePoked(PoolId indexed poolId, uint24 buyFee);

    /// @notice Emitted when only the sell fee is updated.
    event SellFeePoked(PoolId indexed poolId, uint24 sellFee);

    /// @notice Emitted when a pool's quote token side is configured.
    event PoolConfigured(PoolId indexed poolId, bool isToken0Quote);

    /// @notice Sets both buy and sell fees for a pool.
    /// @param key The pool key.
    /// @param buyFee Fee (hundredths of bip) when buying the project token.
    /// @param sellFee Fee (hundredths of bip) when selling the project token.
    function poke(PoolKey calldata key, uint24 buyFee, uint24 sellFee) external;

    /// @notice Sets only the buy fee for a pool.
    function pokeBuyFee(PoolKey calldata key, uint24 buyFee) external;

    /// @notice Sets only the sell fee for a pool.
    function pokeSellFee(PoolKey calldata key, uint24 sellFee) external;

    /// @notice Configures which token is the quote asset for a pool.
    /// @param key The pool key.
    /// @param isToken0Quote True if token0 is the quote asset (USDC/ETH).
    function configurePool(PoolKey calldata key, bool isToken0Quote) external;

    /// @notice Returns the full config for a pool.
    function getPoolConfig(PoolId poolId) external view returns (uint24 buyFee, uint24 sellFee, bool isToken0Quote);

    /// @notice Pauses poke functions. Swaps continue with last set fees.
    function pause() external;

    /// @notice Unpauses poke functions.
    function unpause() external;
}
