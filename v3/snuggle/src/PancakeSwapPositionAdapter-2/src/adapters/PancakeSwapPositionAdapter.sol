// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IPositionAdapter.sol";
import "../interfaces/IPancakeSwap.sol";

/// @title PancakeSwapPositionAdapter
/// @notice Adapter for PancakeSwap V3 position management
/// @dev Implements IPositionAdapter for PancakeSwap V3 concentrated liquidity
/// @author Snuggle (snuggle.fi)
contract PancakeSwapPositionAdapter is IPositionAdapter {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The PancakeSwap V3 NonfungiblePositionManager
    IPancakeSwapNonfungiblePositionManager public immutable nftPositionManager;

    /// @notice The PancakeSwap V3 Factory
    IPancakeSwapV3Factory public immutable factory;

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
    /// @param _positionManager PancakeSwap V3 NonfungiblePositionManager address
    /// @param _factory PancakeSwap V3 Factory address
    /// @param _vault The SnuggleVault address that can call this adapter
    constructor(
        address _positionManager,
        address _factory,
        address _vault
    ) {
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_factory == address(0)) revert InvalidAddress();
        if (_vault == address(0)) revert InvalidAddress();

        nftPositionManager = IPancakeSwapNonfungiblePositionManager(_positionManager);
        factory = IPancakeSwapV3Factory(_factory);
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
    function getPool(
        address token0,
        address token1,
        uint24 fee
    ) external view override returns (address pool) {
        return factory.getPool(token0, token1, fee);
    }

    /// @inheritdoc IPositionAdapter
    function getTickSpacing(address pool) external view override returns (int24) {
        return IPancakeSwapV3Pool(pool).tickSpacing();
    }

    /// @inheritdoc IPositionAdapter
    function getCurrentTick(address pool) external view override returns (int24 tick) {
        (, tick,,,,,) = IPancakeSwapV3Pool(pool).slot0();
    }

    /// @inheritdoc IPositionAdapter
    /// @dev TWAP oracle implementation for manipulation resistance
    /// @dev Reverts on failure instead of falling back to spot price (HIGH-06 pattern)
    function getTWAPTick(address pool, uint32 twapInterval) external view override returns (int24 tick) {
        // Reject zero interval to prevent spot price usage
        if (twapInterval == 0) revert TWAPObservationFailed();

        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        try IPancakeSwapV3Pool(pool).observe(secondsAgos) returns (
            int56[] memory tickCumulatives,
            uint160[] memory
        ) {
            // Use unchecked to prevent overflow on subtraction
            int56 tickCumulativesDelta;
            int56 twapTickInt56;
            unchecked {
                tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
                twapTickInt56 = tickCumulativesDelta / int56(uint56(twapInterval));
            }

            // Revert if TWAP is out of int24 bounds instead of using spot
            if (twapTickInt56 > int56(int24(type(int24).max)) || twapTickInt56 < int56(int24(type(int24).min))) {
                revert TWAPObservationFailed();
            }

            tick = int24(twapTickInt56);

            // Always round to negative infinity
            if (tickCumulativesDelta < 0 && (tickCumulativesDelta % int56(uint56(twapInterval)) != 0)) {
                tick--;
            }
        } catch {
            // Revert instead of falling back to manipulable spot price
            revert TWAPObservationFailed();
        }
    }

    /// @inheritdoc IPositionAdapter
    function mint(
        address token0,
        address token1,
        uint24 fee,
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
        // V19-I-01: Check for zero amounts to avoid wasting gas (consistent with AerodromePositionAdapter)
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

        // Mint position with slippage protection
        (tokenId, liquidity, amount0Used, amount1Used) = nftPositionManager.mint(
            IPancakeSwapNonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                fee: fee,
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

        // V15-L-02: Reset residual allowances to follow least-privilege principle
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
            IPancakeSwapNonfungiblePositionManager.DecreaseLiquidityParams({
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
            IPancakeSwapNonfungiblePositionManager.CollectParams({
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
    function getPosition(uint256 tokenId) external view override returns (
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) {
        (,, token0, token1, fee, tickLower, tickUpper, liquidity,,,,) =
            nftPositionManager.positions(tokenId);
    }

    /// @inheritdoc IPositionAdapter
    function approvePosition(uint256 tokenId) external override onlyVault {
        // Approve vault to manage position (used when staking to MasterChef)
        nftPositionManager.approve(vault, tokenId);
    }
}
