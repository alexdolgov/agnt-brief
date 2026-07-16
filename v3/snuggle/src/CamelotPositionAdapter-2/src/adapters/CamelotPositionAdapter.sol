// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IPositionAdapter.sol";
import "../interfaces/ICamelot.sol";

/// @title CamelotPositionAdapter
/// @notice Adapter for Camelot V3 (Algebra V1.9) position management on Arbitrum
/// @dev Implements IPositionAdapter for SnuggleVault integration with Camelot DEX.
///      Key differences from Uniswap V3:
///      - ONE pool per token pair (no fee tiers) — fee param ignored in getPool()
///      - globalState() instead of slot0() for current tick
///      - getTimepoints() instead of observe() for TWAP (extra return values discarded)
///      - MintParams has NO fee field
///      - positions() returns 11 values instead of 12 (no fee)
/// @author Snuggle (snuggle.fi)
contract CamelotPositionAdapter is IPositionAdapter {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The Camelot V3 (Algebra) NonfungiblePositionManager
    IAlgebraNonfungiblePositionManager public immutable nftPositionManager;

    /// @notice The Camelot V3 (Algebra) Factory
    IAlgebraFactory public immutable factory;

    /// @notice The authorized vault that can call adapter functions
    address public immutable vault;

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error NotAuthorized();
    error PoolDoesNotExist();
    error InvalidAddress();
    error TWAPObservationFailed();
    error ZeroAmounts();

    // ═══════════════════════════════════════════════════════════════════════════
    // MODIFIERS
    // ═══════════════════════════════════════════════════════════════════════════

    modifier onlyVault() {
        if (msg.sender != vault) revert NotAuthorized();
        _;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Initialize the adapter
    /// @param _positionManager Camelot V3 (Algebra) NonfungiblePositionManager address
    /// @param _factory Camelot V3 (Algebra) Factory address
    /// @param _vault The SnuggleVault address that can call this adapter
    constructor(
        address _positionManager,
        address _factory,
        address _vault
    ) {
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_factory == address(0)) revert InvalidAddress();
        if (_vault == address(0)) revert InvalidAddress();

        nftPositionManager = IAlgebraNonfungiblePositionManager(_positionManager);
        factory = IAlgebraFactory(_factory);
        vault = _vault;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // IPositionAdapter IMPLEMENTATION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @inheritdoc IPositionAdapter
    function positionManager() external view override returns (address) {
        return address(nftPositionManager);
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Camelot has ONE pool per token pair — fee parameter is ignored.
    ///      When calling addPool() for Camelot, pass fee=0. The poolId hash includes
    ///      adapter address, so no collision with Uni V3 pools that use fee=500/3000.
    function getPool(
        address token0,
        address token1,
        uint24 /* fee — ignored, Camelot has one pool per pair */
    ) external view override returns (address pool) {
        return factory.poolByPair(token0, token1);
    }

    /// @inheritdoc IPositionAdapter
    function getTickSpacing(address pool) external view override returns (int24) {
        return IAlgebraPool(pool).tickSpacing();
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Uses Algebra's globalState() instead of Uniswap's slot0()
    function getCurrentTick(address pool) external view override returns (int24 tick) {
        (, tick,,,,,,) = IAlgebraPool(pool).globalState();
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Uses Algebra's getTimepoints() instead of Uniswap's observe().
    ///      getTimepoints() returns 4 arrays — extra 2 (volatility, volume) are discarded.
    ///      TWAP math is identical: (tickCumulative[1] - tickCumulative[0]) / interval
    function getTWAPTick(
        address pool,
        uint32 twapInterval
    ) external view override returns (int24 tick) {
        // Reject zero interval to prevent spot price usage
        if (twapInterval == 0) revert TWAPObservationFailed();

        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        try IAlgebraPool(pool).getTimepoints(secondsAgos) returns (
            int56[] memory tickCumulatives,
            uint160[] memory,   // secondsPerLiquidityCumulatives — unused
            uint112[] memory,   // volatilityCumulatives — Algebra-specific, unused
            uint256[] memory    // volumePerAvgLiquiditys — Algebra-specific, unused
        ) {
            // Use unchecked to prevent overflow on subtraction
            // (stale fork data can cause extreme cumulative tick values)
            int56 tickCumulativesDelta;
            int56 twapTickInt56;
            unchecked {
                tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
                twapTickInt56 = tickCumulativesDelta / int56(uint56(twapInterval));
            }

            // Revert if TWAP is out of int24 bounds instead of using spot
            if (
                twapTickInt56 > int56(int24(type(int24).max))
                    || twapTickInt56 < int56(int24(type(int24).min))
            ) {
                revert TWAPObservationFailed();
            }

            tick = int24(twapTickInt56);

            // Always round to negative infinity
            if (
                tickCumulativesDelta < 0
                    && (tickCumulativesDelta % int56(uint56(twapInterval)) != 0)
            ) {
                tick--;
            }
        } catch {
            // Revert instead of falling back to manipulable spot price
            revert TWAPObservationFailed();
        }
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Mints position using Algebra's MintParams (NO fee field).
    ///      The fee parameter from IPositionAdapter is ignored during mint.
    function mint(
        address token0,
        address token1,
        uint24, /* fee — ignored, Camelot has one pool per pair */
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        uint256 deadline
    ) external override onlyVault returns (
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Used,
        uint256 amount1Used
    ) {
        // Check for zero amounts to avoid wasting gas
        if (amount0Desired == 0 && amount1Desired == 0) revert ZeroAmounts();

        // Transfer tokens from vault to adapter
        if (amount0Desired > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), amount0Desired);
            IERC20(token0).safeIncreaseAllowance(address(nftPositionManager), amount0Desired);
        }
        if (amount1Desired > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), amount1Desired);
            IERC20(token1).safeIncreaseAllowance(address(nftPositionManager), amount1Desired);
        }

        // Mint position — Algebra MintParams has NO fee field
        (tokenId, liquidity, amount0Used, amount1Used) = nftPositionManager.mint(
            IAlgebraNonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                recipient: recipient,
                deadline: deadline
            })
        );

        // Refund unused tokens back to vault
        if (amount0Desired > amount0Used) {
            IERC20(token0).safeTransfer(msg.sender, amount0Desired - amount0Used);
        }
        if (amount1Desired > amount1Used) {
            IERC20(token1).safeTransfer(msg.sender, amount1Desired - amount1Used);
        }

        // Reset residual allowances to follow least-privilege principle
        if (amount0Desired > 0) IERC20(token0).forceApprove(address(nftPositionManager), 0);
        if (amount1Desired > 0) IERC20(token1).forceApprove(address(nftPositionManager), 0);
    }

    /// @inheritdoc IPositionAdapter
    function decreaseLiquidity(
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 deadline
    ) external override onlyVault returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = nftPositionManager.decreaseLiquidity(
            IAlgebraNonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidity,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: deadline
            })
        );
    }

    /// @inheritdoc IPositionAdapter
    function collect(
        uint256 tokenId,
        address recipient
    ) external override onlyVault returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = nftPositionManager.collect(
            IAlgebraNonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: recipient,
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
    }

    /// @inheritdoc IPositionAdapter
    function burn(uint256 tokenId) external override onlyVault {
        nftPositionManager.burn(tokenId);
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Algebra positions() returns 11 values (no fee field).
    ///      Returns fee=0 since Camelot pools have dynamic fees, not fixed tiers.
    function getPosition(uint256 tokenId) external view override returns (
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) {
        (,, token0, token1, tickLower, tickUpper, liquidity,,,,) =
            nftPositionManager.positions(tokenId);
        // Return fee=0 — Camelot has dynamic fees, not fixed tiers.
        // Pools are registered with fee=0 in addPool(), so this is consistent.
        fee = 0;
    }

    /// @inheritdoc IPositionAdapter
    function approvePosition(uint256 tokenId) external override onlyVault {
        // No-op for Camelot V3 — vault holds the NFT directly (no staking for MVP)
    }
}
