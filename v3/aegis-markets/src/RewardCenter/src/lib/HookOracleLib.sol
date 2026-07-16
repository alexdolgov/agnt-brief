// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "@uniswap/v4-core/src/types/PoolId.sol";
import {FullMath} from "@uniswap/v4-core/src/libraries/FullMath.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {IAegisHook} from "aegis-engine/contracts/interfaces/IAegisHook.sol";
import {IOracleManager} from "aegis-engine/contracts/interfaces/IOracleManager.sol";
import {ISpot} from "AEGIS_DFM/src/interfaces/ISpot.sol";
import {TruncGeoOracleMulti} from "AEGIS_DFM/src/TruncGeoOracleMulti.sol";

import {Constants} from "./Constants.sol";

/// @notice Minimal oracle helpers shared between Engine and DFM hook pools.
/// @dev Oracle consultation functions convert any oracle errors to StaleOracle.
library HookOracleLib {
    error StaleOracle();
    function engineOracle(address hookAddr) internal view returns (address oracle) {
        if (hookAddr == address(0)) return address(0);
        return address(IAegisHook(hookAddr).ORACLE_MANAGER());
    }

    function dfmOracle(address hookAddr) internal view returns (address oracle) {
        if (hookAddr == address(0)) return address(0);
        return address(ISpot(hookAddr).truncGeoOracle());
    }

    function consultTicksEngine(address oracle, PoolKey memory key)
        internal
        view
        returns (int24 tShort, int24 tMed, int24 tLong)
    {
        PoolId poolId = PoolIdLibrary.toId(key);
        try IOracleManager(oracle).consult(poolId, Constants.TWAP_WINDOW_SHORT) returns (int24 t, uint128) {
            tShort = t;
        } catch {
            revert StaleOracle();
        }
        try IOracleManager(oracle).consult(poolId, Constants.TWAP_WINDOW_MEDIUM) returns (int24 t, uint128) {
            tMed = t;
        } catch {
            revert StaleOracle();
        }
        try IOracleManager(oracle).consult(poolId, Constants.TWAP_WINDOW_LONG) returns (int24 t, uint128) {
            tLong = t;
        } catch {
            revert StaleOracle();
        }
    }

    function consultTicksDfm(address oracle, PoolKey memory key)
        internal
        view
        returns (int24 tShort, int24 tMed, int24 tLong)
    {
        try TruncGeoOracleMulti(oracle).consult(key, Constants.TWAP_WINDOW_SHORT) returns (int24 t, uint128) {
            tShort = t;
        } catch {
            revert StaleOracle();
        }
        try TruncGeoOracleMulti(oracle).consult(key, Constants.TWAP_WINDOW_MEDIUM) returns (int24 t, uint128) {
            tMed = t;
        } catch {
            revert StaleOracle();
        }
        try TruncGeoOracleMulti(oracle).consult(key, Constants.TWAP_WINDOW_LONG) returns (int24 t, uint128) {
            tLong = t;
        } catch {
            revert StaleOracle();
        }
    }

    /// @notice Generic anchor valuation helper: returns `base` amount given anchor amount and a pool tick.
    /// @dev Uses two-step Q96 multiplication/division to avoid overflow at extreme ticks.
    function anchorValueBase(uint256 anchorAmount, int24 tick, bool baseIsCurrency1)
        internal
        pure
        returns (uint256)
    {
        if (anchorAmount == 0) {
            return 0;
        }
        // sqrtP is Q96; avoid sqrtP^2 (Q192) overflow by two-step mul/div in Q96.
        uint160 sqrtP = TickMath.getSqrtPriceAtTick(tick);
        uint256 q96 = 1 << 96;
        if (baseIsCurrency1) {
            // amount1 = amount0 * price = amount0 * (sqrtP/Q96) * (sqrtP/Q96)
            uint256 value = FullMath.mulDiv(anchorAmount, uint256(sqrtP), q96);
            return FullMath.mulDiv(value, uint256(sqrtP), q96);
        } else {
            // amount0 = amount1 / price = amount1 * (Q96/sqrtP) * (Q96/sqrtP)
            uint256 value = FullMath.mulDiv(anchorAmount, q96, uint256(sqrtP));
            return FullMath.mulDiv(value, q96, uint256(sqrtP));
        }
    }
}
