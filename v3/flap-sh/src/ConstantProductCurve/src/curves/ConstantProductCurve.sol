// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ICurve} from "../interfaces/ICurve.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";

/// @title constant product bonding curve
/// @author The Flap Team
/// @dev v1
///
/// Spec:
///   - max supply: 1 Billion tokens
///   - The constant product equation is :
///         (1e9 - supply) * (reserve + 15) = 15e9
///   - Price: 15e9 / ((supply - 1e9)^2)
contract ConstantProductCurve is ICurve {
    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 ether;
    uint256 public constant K = 15e9 ether;
    uint256 public constant INITIAL_VIRTUAL_RESERVE = 15 ether;

    function estimateSupply(uint256 reserve) external pure override returns (uint256 supply) {
        // round down
        supply = TOTAL_SUPPLY - FixedPointMathLib.divWadUp(K, INITIAL_VIRTUAL_RESERVE + reserve);
    }

    function estimateReserve(uint256 supply) external pure override returns (uint256 reserve) {
        if (supply > TOTAL_SUPPLY) {
            revert SupplyExceedsTotalSupply(supply);
        }

        // round up
        reserve = FixedPointMathLib.divWadUp(K, TOTAL_SUPPLY - supply) - INITIAL_VIRTUAL_RESERVE;
    }

    function price(uint256 supply) external pure override returns (uint256) {
        return FixedPointMathLib.divWad(K, FixedPointMathLib.mulWad(TOTAL_SUPPLY - supply, TOTAL_SUPPLY - supply));
    }
}
