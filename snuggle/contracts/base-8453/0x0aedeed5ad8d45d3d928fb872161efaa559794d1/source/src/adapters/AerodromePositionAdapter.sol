// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IPositionAdapter.sol";
import "../interfaces/IAerodrome.sol";

/// @title AerodromePositionAdapter
/// @notice Secure adapter for Aerodrome Slipstream concentrated liquidity positions
/// @dev Implements IPositionAdapter for SnuggleVault integration with Aerodrome on Base
/// @author Snuggle (snuggle.fi)
contract AerodromePositionAdapter is IPositionAdapter {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The Aerodrome NonfungiblePositionManager
    IAerodromeNonfungiblePositionManager public immutable nftPositionManager;

    /// @notice The Aerodrome CLFactory
    IAerodromeCLFactory public immutable factory;

    /// @notice The authorized vault that can call adapter functions
    address public immutable vault;

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error NotAuthorized();
    error PoolDoesNotExist();
    error InvalidAddress();
    error InvalidTWAPInterval();
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
    /// @param _positionManager Aerodrome NonfungiblePositionManager address
    /// @param _factory Aerodrome CLFactory address
    /// @param _vault The SnuggleVault address that can call this adapter
    constructor(
        address _positionManager,
        address _factory,
        address _vault
    ) {
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_factory == address(0)) revert InvalidAddress();
        if (_vault == address(0)) revert InvalidAddress();

        nftPositionManager = IAerodromeNonfungiblePositionManager(_positionManager);
        factory = IAerodromeCLFactory(_factory);
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
    /// @dev For Aerodrome, fee parameter is interpreted as tick spacing
    function getPool(
        address token0,
        address token1,
        uint24 fee
    ) external view override returns (address pool) {
        // Aerodrome uses tick spacing instead of fee tier for pool lookup
        int24 tickSpacing = int24(uint24(fee));
        return factory.getPool(token0, token1, tickSpacing);
    }

    /// @inheritdoc IPositionAdapter
    function getTickSpacing(address pool) external view override returns (int24) {
        return IAerodromeCLPool(pool).tickSpacing();
    }

    /// @inheritdoc IPositionAdapter
    function getCurrentTick(address pool) external view override returns (int24 tick) {
        (, tick,,,, ) = IAerodromeCLPool(pool).slot0();
    }

    /// @inheritdoc IPositionAdapter
    /// @dev TWAP oracle implementation for manipulation resistance
    /// @dev MEDIUM-02: Reverts on TWAP failure instead of falling back to spot price
    function getTWAPTick(address pool, uint32 twapInterval) external view override returns (int24 tick) {
        if (twapInterval == 0) revert InvalidTWAPInterval();

        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        try IAerodromeCLPool(pool).observe(secondsAgos) returns (
            int56[] memory tickCumulatives,
            uint160[] memory
        ) {
            // Use unchecked to handle potential overflow on subtraction
            int56 tickCumulativesDelta;
            int56 twapTickInt56;
            unchecked {
                tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
                twapTickInt56 = tickCumulativesDelta / int56(uint56(twapInterval));
            }

            // MEDIUM-02: Revert if TWAP is out of int24 bounds instead of using spot
            if (twapTickInt56 > int56(int24(type(int24).max)) || twapTickInt56 < int56(int24(type(int24).min))) {
                revert TWAPObservationFailed();
            }

            tick = int24(twapTickInt56);

            // Always round to negative infinity
            if (tickCumulativesDelta < 0 && (tickCumulativesDelta % int56(uint56(twapInterval)) != 0)) {
                tick--;
            }
        } catch {
            // MEDIUM-02: Revert instead of falling back to spot price
            // Spot price fallback opens manipulation vector
            revert TWAPObservationFailed();
        }
    }

    /// @inheritdoc IPositionAdapter
    /// @dev Mints position with slippage protection and proper approval handling
    function mint(
        address token0,
        address token1,
        uint24 fee, // Actually tick spacing for Aerodrome
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
        // LOW-01: Check for zero amounts to avoid wasting gas
        if (amount0Desired == 0 && amount1Desired == 0) revert ZeroAmounts();

        // Transfer tokens from vault to adapter
        if (amount0Desired > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), amount0Desired);
            // Use safeIncreaseAllowance for proper approval handling
            IERC20(token0).safeIncreaseAllowance(address(nftPositionManager), amount0Desired);
        }
        if (amount1Desired > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), amount1Desired);
            IERC20(token1).safeIncreaseAllowance(address(nftPositionManager), amount1Desired);
        }

        int24 tickSpacing = int24(uint24(fee));

        // Mint position with slippage protection
        (tokenId, liquidity, amount0Used, amount1Used) = nftPositionManager.mint(
            IAerodromeNonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                tickSpacing: tickSpacing,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                recipient: recipient,
                deadline: deadline,
                sqrtPriceX96: 0 // Use current pool price
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
            IAerodromeNonfungiblePositionManager.DecreaseLiquidityParams({
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
            IAerodromeNonfungiblePositionManager.CollectParams({
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
        int24 tickSpacing;
        (,, token0, token1, tickSpacing, tickLower, tickUpper, liquidity,,,,) =
            nftPositionManager.positions(tokenId);
        // Return tick spacing as fee (Aerodrome convention)
        fee = uint24(tickSpacing);
    }

    /// @inheritdoc IPositionAdapter
    function approvePosition(uint256 tokenId) external override onlyVault {
        // Approve vault to manage position (used when staking to gauge)
        nftPositionManager.approve(vault, tokenId);
    }
}
