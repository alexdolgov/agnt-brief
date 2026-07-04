// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";

/// @title constant product bonding curve
/// @author The Flap Team
/// @dev v1
///
/// Spec:
///   - max supply: 1 Billion tokens
///   - The constant product equation is :
///         (1e9 - supply) * (reserve + r) = r*1e9
///   - Price: r*1e9 / ((supply - 1e9)^2)
library LibCurve {
    /// @notice The curve type is represented by an uint256
    /// which is the initial virtual reserve of the curve
    type Curve is uint256;

    // custom error type

    /// @notice error if the difference between the current supply and the new supply is too small
    error SupplyDiffTooSmall(uint256 currSupply, uint256 newSupply);

    /// @notice error if the new supply is greater than the total supply
    error SupplyExceedsTotalSupply(uint256 newSupply);

    /// @notice error if reserve is greater than the max reserve
    error ReserveExceedsMaxReserve(uint256 reserve);

    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 ether;

    // @notice Return the estimate supply given the reserve amount
    /// @param reserve  The reserve amount
    /// @dev The resulting supply is rounded down and may even subtract small amount
    ///
    ///      This function is used when a user wants to buy tokens,
    ///      a rounded down value is more favorable to the protocol.
    function estimateSupply(Curve r, uint256 reserve) internal pure returns (uint256 supply) {
        uint256 K = FixedPointMathLib.mulWad(TOTAL_SUPPLY, Curve.unwrap(r));

        // round down
        supply = TOTAL_SUPPLY - FixedPointMathLib.divWadUp(K, Curve.unwrap(r) + reserve);
    }

    /// @notice estimate the reserve given the supply
    /// @dev This function returns a roundup value, because we want the following invariant to hold:
    ///         currReserve >= estimateReserve_without_roudup(currSupply)
    ///
    ///      This function is used when a user wants to sell tokens, a rounded up value
    ///      is more favorable to the protocol.
    function estimateReserve(Curve r, uint256 supply) internal pure returns (uint256 reserve) {
        uint256 K = FixedPointMathLib.mulWad(TOTAL_SUPPLY, Curve.unwrap(r));

        if (supply > TOTAL_SUPPLY) {
            revert SupplyExceedsTotalSupply(supply);
        }

        // round up
        reserve = FixedPointMathLib.divWadUp(K, TOTAL_SUPPLY - supply) - Curve.unwrap(r);
    }

    /// @notice price (wei) of a token (1e18) if you buy/sell inifinitesimal amount at current supply
    function price(Curve r, uint256 supply) internal pure returns (uint256) {
        uint256 K = FixedPointMathLib.mulWad(TOTAL_SUPPLY, Curve.unwrap(r));

        if (TOTAL_SUPPLY - supply < 1e9 + 1) {
            return type(uint256).max;
        }
        return FixedPointMathLib.divWad(K, FixedPointMathLib.mulWad(TOTAL_SUPPLY - supply, TOTAL_SUPPLY - supply));
    }

    // helper to convert the curve to uint256
    function toUint256(Curve r) internal pure returns (uint256) {
        return Curve.unwrap(r);
    }

    // helper from uint256 to curve
    function fromUint256(uint256 r) internal pure returns (Curve) {
        return Curve.wrap(r);
    }
}
