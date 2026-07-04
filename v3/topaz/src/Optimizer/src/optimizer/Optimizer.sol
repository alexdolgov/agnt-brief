// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.20;

import {IOptimizer} from "../interfaces/IOptimizer.sol";
import {ICLFactory} from "../interfaces/ICLFactory.sol";
import {ICLPool} from "../interfaces/ICLPool.sol";

import {Path} from "../libraries/Path.sol";
import {OracleLibrary} from "../libraries/OracleLibrary.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Optimizer
/// @author Topaz Dex
/// @notice Concentrated-liquidity (Slipstream) route oracle for the Topaz Relays.
/// @dev Routes are an admin-curated table of packed Slipstream paths (`token | int24 tickSpacing | ...`).
///      On-chain route discovery is impossible because the Slipstream QuoterV2 is revert-based, so the
///      contract instead derives a TWAP-protected minimum output for whatever path is supplied (curated
///      default or keeper override). Each routing pool must have enough oracle history; the TWAP window
///      is clamped to the pool's available observations and only falls back to spot for brand-new pools.
contract Optimizer is IOptimizer, Ownable {
    using Path for bytes;

    /// @inheritdoc IOptimizer
    address public immutable clFactory;

    /// @inheritdoc IOptimizer
    uint32 public twapPeriod;

    /// @dev keccak256(tokenIn, tokenOut) => packed Slipstream path
    mapping(bytes32 => bytes) internal _routes;

    constructor(address _clFactory, uint32 _twapPeriod) {
        if (_clFactory == address(0)) revert ZeroAddress();
        if (_twapPeriod == 0) revert InvalidRoute();
        clFactory = _clFactory;
        twapPeriod = _twapPeriod;
    }

    // -------------------------------------------------
    // Views
    // -------------------------------------------------

    /// @inheritdoc IOptimizer
    function getRoute(address tokenIn, address tokenOut) external view returns (bytes memory path) {
        return _routes[_key(tokenIn, tokenOut)];
    }

    /// @inheritdoc IOptimizer
    function getAmountOutMin(
        bytes calldata path,
        uint256 amountIn,
        uint256 slippage
    ) external view returns (uint256 amountOutMin) {
        bytes memory p = path;
        if (!p.isValid()) revert InvalidRoute();

        uint256 pools = p.numPools();
        uint256 amount = amountIn;
        for (uint256 i = 0; i < pools; i++) {
            (address tokenA, int24 tickSpacing, address tokenB) = p.decodePool(i);
            address pool = ICLFactory(clFactory).getPool(tokenA, tokenB, tickSpacing);
            if (pool == address(0)) revert PoolNotFound();

            int24 tick = _meanTick(pool);
            amount = OracleLibrary.getQuoteAtTick(tick, _toUint128(amount), tokenA, tokenB);
        }

        // slippage is in basis points; reverts on underflow if slippage > 10_000
        amountOutMin = (amount * (10_000 - slippage)) / 10_000;
    }

    // -------------------------------------------------
    // Owner functions
    // -------------------------------------------------

    /// @inheritdoc IOptimizer
    function setRoute(address tokenIn, address tokenOut, bytes calldata path) external onlyOwner {
        if (tokenIn == address(0) || tokenOut == address(0)) revert ZeroAddress();

        if (path.length != 0) {
            bytes memory p = path;
            if (!p.isValid()) revert InvalidRoute();
            if (p.firstToken() != tokenIn || p.lastToken() != tokenOut) revert InvalidRoute();
            // every hop's pool must exist
            uint256 pools = p.numPools();
            for (uint256 i = 0; i < pools; i++) {
                (address tokenA, int24 tickSpacing, address tokenB) = p.decodePool(i);
                if (ICLFactory(clFactory).getPool(tokenA, tokenB, tickSpacing) == address(0)) revert PoolNotFound();
            }
        }

        _routes[_key(tokenIn, tokenOut)] = path;
        emit SetRoute(tokenIn, tokenOut, path);
    }

    /// @inheritdoc IOptimizer
    function setTwapPeriod(uint32 _twapPeriod) external onlyOwner {
        if (_twapPeriod == 0) revert InvalidRoute();
        if (_twapPeriod == twapPeriod) revert SameValue();
        twapPeriod = _twapPeriod;
        emit SetTwapPeriod(_twapPeriod);
    }

    // -------------------------------------------------
    // Internal
    // -------------------------------------------------

    /// @dev TWAP tick clamped to the pool's available oracle history; spot only for brand-new pools
    function _meanTick(address pool) internal view returns (int24 tick) {
        uint32 oldest = OracleLibrary.getOldestObservationSecondsAgo(pool);
        uint32 window = twapPeriod;
        if (oldest < window) window = oldest;
        if (window == 0) {
            (, tick, , , , ) = ICLPool(pool).slot0();
        } else {
            tick = OracleLibrary.consult(pool, window);
        }
    }

    function _toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) revert InvalidRoute();
        return uint128(value);
    }

    function _key(address tokenIn, address tokenOut) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(tokenIn, tokenOut));
    }
}
