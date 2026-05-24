// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.18;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/utils/FixedPointMathLib.sol)
library FixedPointMathLib {
    /*//////////////////////////////////////////////////////////////
                    SIMPLIFIED FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant WAD = 1e18; // The scalar of ETH and most ERC20s.

    function mulWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD); // Equivalent to (x * y) / WAD rounded down.
    }

    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD); // Equivalent to (x * y) / WAD rounded up.
    }

    function divWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y); // Equivalent to (x * WAD) / y rounded down.
    }

    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y); // Equivalent to (x * WAD) / y rounded up.
    }

    function powWad(int256 x, int256 y) internal pure returns (int256) {
        // Equivalent to x to the power of y because x ** y = (e ** ln(x)) ** y = e ** (ln(x) * y)
        return expWad((lnWad(x) * y) / int256(WAD)); // Using ln(x) means x must be greater than 0.
    }

    function expWad(int256 x) internal pure returns (int256 r) {
        unchecked {
            // When the result is < 0.5 we return zero. This happens when
            // x <= floor(log(0.5e18) * 1e18) ~ -42e18
            if (x <= -42139678854452767551) return 0;

            // When the result is > (2**255 - 1) / 1e18 we can not represent it as an
            // int. This happens when x >= floor(log((2**255 - 1) / 1e18) * 1e18) ~ 135.
            if (x >= 135305999368893231589) revert("EXP_OVERFLOW");

            // x is now in the range (-42, 136) * 1e18. Convert to (-42, 136) * 2**96
            // for more intermediate precision and a binary basis. This base conversion
            // is a multiplication by 1e18 / 2**96 = 5**18 / 2**78.
            x = (x << 78) / 5**18;

            // Reduce range of x to (-½ ln 2, ½ ln 2) * 2**96 by factoring out powers
            // of two such that exp(x) = exp(x') * 2**k, where k is an integer.
            // Solving this gives k = round(x / log(2)) and x' = x - k * log(2).
            int256 k = ((x << 96) / 54916777467707473351141471128 + 2**95) >> 96;
            x = x - k * 54916777467707473351141471128;

            // k is in the range [-61, 195].

            // Evaluate using a (6, 7)-term rational approximation.
            // p is made monic, we'll multiply by a scale factor later.
            int256 y = x + 1346386616545796478920950773328;
            y = ((y * x) >> 96) + 57155421227552351082224309758442;
            int256 p = y + x - 94201549194550492254356042504812;
            p = ((p * y) >> 96) + 28719021644029726153956944680412240;
            p = p * x + (4385272521454847904659076985693276 << 96);

            // We leave p in 2**192 basis so we don't need to scale it back up for the division.
            int256 q = x - 2855989394907223263936484059900;
            q = ((q * x) >> 96) + 50020603652535783019961831881945;
            q = ((q * x) >> 96) - 533845033583426703283633433725380;
            q = ((q * x) >> 96) + 3604857256930695427073651918091429;
            q = ((q * x) >> 96) - 14423608567350463180887372962807573;
            q = ((q * x) >> 96) + 26449188498355588339934803723976023;

            assembly {
                // Div in assembly because solidity adds a zero check despite the unchecked.
                // The q polynomial won't have zeros in the domain as all its roots are complex.
                // No scaling is necessary because p is already 2**96 too large.
                r := sdiv(p, q)
            }

            // r should be in the range (0.09, 0.25) * 2**96.

            // We now need to multiply r by:
            // * the scale factor s = ~6.031367120.
            // * the 2**k factor from the range reduction.
            // * the 1e18 / 2**96 factor for base conversion.
            // We do this all at once, with an intermediate result in 2**213
            // basis, so the final right shift is always by a positive amount.
            r = int256((uint256(r) * 3822833074963236453042738258902158003155416615667) >> uint256(195 - k));
        }
    }

    function lnWad(int256 x) internal pure returns (int256 r) {
        unchecked {
            require(x > 0, "UNDEFINED");

            // We want to convert x from 10**18 fixed point to 2**96 fixed point.
            // We do this by multiplying by 2**96 / 10**18. But since
            // ln(x * C) = ln(x) + ln(C), we can simply do nothing here
            // and add ln(2**96 / 10**18) at the end.

            // Reduce range of x to (1, 2) * 2**96
            // ln(2^k * x) = k * ln(2) + ln(x)
            int256 k = int256(log2(uint256(x))) - 96;
            x <<= uint256(159 - k);
            x = int256(uint256(x) >> 159);

            // Evaluate using a (8, 8)-term rational approximation.
            // p is made monic, we will multiply by a scale factor later.
            int256 p = x + 3273285459638523848632254066296;
            p = ((p * x) >> 96) + 24828157081833163892658089445524;
            p = ((p * x) >> 96) + 43456485725739037958740375743393;
            p = ((p * x) >> 96) - 11111509109440967052023855526967;
            p = ((p * x) >> 96) - 45023709667254063763336534515857;
            p = ((p * x) >> 96) - 14706773417378608786704636184526;
            p = p * x - (795164235651350426258249787498 << 96);

            // We leave p in 2**192 basis so we don't need to scale it back up for the division.
            // q is monic by convention.
            int256 q = x + 5573035233440673466300451813936;
            q = ((q * x) >> 96) + 71694874799317883764090561454958;
            q = ((q * x) >> 96) + 283447036172924575727196451306956;
            q = ((q * x) >> 96) + 401686690394027663651624208769553;
            q = ((q * x) >> 96) + 204048457590392012362485061816622;
            q = ((q * x) >> 96) + 31853899698501571402653359427138;
            q = ((q * x) >> 96) + 909429971244387300277376558375;
            assembly {
                // Div in assembly because solidity adds a zero check despite the unchecked.
                // The q polynomial is known not to have zeros in the domain.
                // No scaling required because p is already 2**96 too large.
                r := sdiv(p, q)
            }

            // r is in the range (0, 0.125) * 2**96

            // Finalization, we need to:
            // * multiply by the scale factor s = 5.549…
            // * add ln(2**96 / 10**18)
            // * add k * ln(2)
            // * multiply by 10**18 / 2**96 = 5**18 >> 78

            // mul s * 5e18 * 2**96, base is now 5**18 * 2**192
            r *= 1677202110996718588342820967067443963516166;
            // add ln(2) * k * 5e18 * 2**192
            r += 16597577552685614221487285958193947469193820559219878177908093499208371 * k;
            // add ln(2**96 / 10**18) * 5e18 * 2**192
            r += 600920179829731861736702779321621459595472258049074101567377883020018308;
            // base conversion: mul 2**18 / 2**192
            r >>= 174;
        }
    }

    /*//////////////////////////////////////////////////////////////
                    LOW LEVEL FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function mulDivDown(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x == 0 || (x * y) / x == y))
            if iszero(and(iszero(iszero(denominator)), or(iszero(x), eq(div(z, x), y)))) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    function mulDivUp(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x == 0 || (x * y) / x == y))
            if iszero(and(iszero(iszero(denominator)), or(iszero(x), eq(div(z, x), y)))) {
                revert(0, 0)
            }

            // First, divide z - 1 by the denominator and add 1.
            // We allow z - 1 to underflow if z is 0, because we multiply the
            // end result by 0 if z is zero, ensuring we return 0 if z is zero.
            z := mul(iszero(iszero(z)), add(div(sub(z, 1), denominator), 1))
        }
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) internal pure returns (uint256 z) {
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    // 0 ** 0 = 1
                    z := scalar
                }
                default {
                    // 0 ** n = 0
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    // If n is even, store scalar in z for now.
                    z := scalar
                }
                default {
                    // If n is odd, store x in z for now.
                    z := x
                }

                // Shifting right by 1 is like dividing by 2.
                let half := shr(1, scalar)

                for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {
                    // Revert immediately if x ** 2 would overflow.
                    // Equivalent to iszero(eq(div(xx, x), x)) here.
                    if shr(128, x) {
                        revert(0, 0)
                    }

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)

                    // If n is even:
                    if mod(n, 2) {
                        // Compute z * x.
                        let zx := mul(z, x)

                        // If z * x overflowed:
                        if iszero(eq(div(zx, x), z)) {
                            // Revert if x is non-zero.
                            if iszero(iszero(x)) {
                                revert(0, 0)
                            }
                        }

                        // Round to the nearest number.
                        let zxRound := add(zx, half)

                        // Revert if zx + half overflowed.
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }

                        // Return properly scaled zxRound.
                        z := div(zxRound, scalar)
                    }
                }
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                        GENERAL NUMBER UTILITIES
    //////////////////////////////////////////////////////////////*/

    function sqrt(uint256 x) internal pure returns (uint256 z) {
        assembly {
            let y := x // We start y at x, which will help us make our initial estimate.

            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // We check y >= 2^(k + 8) but shift right by k bits
            // each branch to ensure that if x >= 256, then y >= 256.
            if iszero(lt(y, 0x10000000000000000000000000000000000)) {
                y := shr(128, y)
                z := shl(64, z)
            }
            if iszero(lt(y, 0x1000000000000000000)) {
                y := shr(64, y)
                z := shl(32, z)
            }
            if iszero(lt(y, 0x10000000000)) {
                y := shr(32, y)
                z := shl(16, z)
            }
            if iszero(lt(y, 0x1000000)) {
                y := shr(16, y)
                z := shl(8, z)
            }

            // Goal was to get z*z*y within a small factor of x. More iterations could
            // get y in a tighter range. Currently, we will have y in [256, 256*2^16).
            // We ensured y >= 256 so that the relative difference between y and y+1 is small.
            // That's not possible if x < 256 but we can just verify those cases exhaustively.

            // Now, z*z*y <= x < z*z*(y+1), and y <= 2^(16+8), and either y >= 256, or x < 256.
            // Correctness can be checked exhaustively for x < 256, so we assume y >= 256.
            // Then z*sqrt(y) is within sqrt(257)/sqrt(256) of sqrt(x), or about 20bps.

            // For s in the range [1/256, 256], the estimate f(s) = (181/1024) * (s+1) is in the range
            // (1/2.84 * sqrt(s), 2.84 * sqrt(s)), with largest error when s = 1 and when s = 256 or 1/256.

            // Since y is in [256, 256*2^16), let a = y/65536, so that a is in [1/256, 256). Then we can estimate
            // sqrt(y) using sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2^18.

            // There is no overflow risk here since y < 2^136 after the first branch above.
            z := shr(18, mul(z, add(y, 65536))) // A mul() is saved from starting z at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If x+1 is a perfect square, the Babylonian method cycles between
            // floor(sqrt(x)) and ceil(sqrt(x)). This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    function log2(uint256 x) internal pure returns (uint256 r) {
        require(x > 0, "UNDEFINED");

        assembly {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            r := or(r, shl(2, lt(0xf, shr(r, x))))
            r := or(r, shl(1, lt(0x3, shr(r, x))))
            r := or(r, lt(0x1, shr(r, x)))
        }
    }

    function unsafeMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // z will equal 0 if y is 0, unlike in Solidity where it will revert.
            z := mod(x, y)
        }
    }

    function unsafeDiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // z will equal 0 if y is 0, unlike in Solidity where it will revert.
            z := div(x, y)
        }
    }

    /// @dev Will return 0 instead of reverting if y is zero.
    function unsafeDivUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // Add 1 to x * y if x % y > 0.
            z := add(gt(mod(x, y), 0), div(x, y))
        }
    }
}

library CostModelAreaCalculationsLib {
  using FixedPointMathLib for uint256;

  /// @dev Thrown when the parameters to `areaUnderCurve` are invalid. See that method for more information.
  error InvalidReferencePoint();

  /// @dev Compute the area under the cost factor curve within an interval of utilization, scaled up by wad^3.
  ///
  /// For any interval, the shape of the area under the curve is:
  ///
  /// ```
  ///     ^
  ///     |
  ///  F  |           ^
  ///  a  |         / |
  ///  c  |       /   |
  ///  t  |     /     |
  ///  o  |     |     |
  ///  r  |     |     |
  ///     `-----|-----|------------>
  ///         Utilization %
  /// ```
  ///
  /// i.e. a triangle on top of a rectangle:
  ///
  /// ```
  ///                 ^
  ///               / |
  ///             /   | <-- triangle
  ///           /_____|
  ///           |     |
  ///           |     | <-- rectangle
  ///           `-----'
  /// ```
  ///
  /// @param slope_ Slope of the curve within the interval, expressed as a wad, i.e. 0.25e18 is a slope of 0.25.
  /// @param intervalLowPoint_ An X-coordinate on our cost factor curve; it is a wad percentage, i.e. 0.8e18 is 80%
  /// @param intervalHighPoint_ An X-coordinate on our cost factor curve; it is a wad percentage, i.e. 0.8e18 is 80%
  /// @param referencePointX_ The X-coordinate of a point through which the curve passes when it has `slope` slope and
  /// an x-value <= intervalLowPoint.
  /// @param referencePointY_ The Y-coordinate of the same point.
  function areaUnderCurve(
    uint256 slope_,
    uint256 intervalLowPoint_,
    uint256 intervalHighPoint_,
    uint256 referencePointX_,
    uint256 referencePointY_
  ) internal pure returns (uint256) {
    if (intervalLowPoint_ < referencePointX_) revert InvalidReferencePoint();

    uint256 length_ = intervalHighPoint_ - intervalLowPoint_;

    // The top is a triangle, so this is just == 0.5 * length * base.
    // Length and slope have both been scaled up by a wad, so areaOfTop has been
    // scaled up by wad^3 overall.
    uint256 areaOfTop_ = (length_ * (slope_ * length_)) / 2;

    // All of the variables in the line below have been scaled up by a wad. For
    // this reason, multiplying `(_intervalLowPoint - _referencePointX) * _slope`
    // produces a value that has been scaled up by wad^2, and thus can't be
    // meaningfully be added to `_referencePointY`, which has only been scaled
    // up by wad^1. Hence, we multiply the latter by another wad. This results
    // in a final areaOfBottom which has been scaled up by wad^3.
    uint256 heightOfBottom_ =
      (FixedPointMathLib.WAD * referencePointY_) + (intervalLowPoint_ - referencePointX_) * slope_;
    uint256 areaOfBottom_ = heightOfBottom_ * length_; // The bottom is a rectangle.

    return areaOfTop_ + areaOfBottom_;
  }
}

/**
 * @dev Interface that all cost models must conform to.
 */

interface ICostModel {
  /// @notice Returns the cost of purchasing protection as a percentage of the amount being purchased, as a wad.
  /// For example, if you are purchasing $200 of protection and this method returns 1e17, then the cost of
  /// the purchase is 200 * 1e17 / 1e18 = $20.
  /// @param utilization Current utilization of the market.
  /// @param newUtilization Utilization ratio of the market after purchasing protection.
  function costFactor(uint256 utilization, uint256 newUtilization) external view returns (uint256);

  /// @notice Gives the return value in assets of returning protection, as a percentage of
  /// the supplier fee pool, as a wad. For example, if the supplier fee pool currently has $100
  /// and this method returns 1e17, then you will get $100 * 1e17 / 1e18 = $10 in assets back.
  /// @param utilization Current utilization of the market.
  /// @param newUtilization Utilization ratio of the market after cancelling protection.
  function refundFactor(uint256 utilization, uint256 newUtilization) external view returns (uint256);

  /// @notice Updates the cost model's storage variables.
  function update(uint256 utilization, uint256 newUtilization) external;

  /// @notice Called in the protocol by the Set contract to register the Set associated with this cost model.
  function registerSet() external;
}

/**
 * @notice This instance of CostModel is an extention of the jump rate cost model with a dynamic level.
 *
 * For details, check out the docs:
 * https://github.com/Cozy-Finance/cozy-developer-documentation-v2-refactor/blob/main/src/dynamic-level-model-explainer.md
 */
contract CostModelDynamicLevel is ICostModel {
  using FixedPointMathLib for uint256;

  uint256 internal constant ZERO_UTILIZATION = 0;
  uint256 internal constant FULL_UTILIZATION = FixedPointMathLib.WAD; // 1 wad

  /// @notice Start of optimal utilization zone, as a wad.
  uint256 public immutable uLow;

  /// @notice End of optimal utilization zone, as a wad.
  uint256 public immutable uHigh;

  /// @notice Optimal utilization, as a wad; currently set as 0.5*(uLow + uHigh).
  uint256 public immutable uOpt;

  /// @notice Cost factor to apply at 0% utilization, as a wad.
  uint256 public immutable costFactorAtZeroUtilization;

  /// @notice Cost factor to apply at 100% utilization, as a wad.
  uint256 public immutable costFactorAtFullUtilization;

  /// @notice Rate at which the `costFactorInOptimalZone` changes, as a wad.
  uint256 public immutable optimalZoneRate;

  /// @notice Cost factor to apply in the optimal utilization zone, as a wad.
  uint256 public costFactorInOptimalZone;

  /// @notice The last time the model was updated.
  uint256 public lastUpdateTime;

  /// @notice The set associated with this model.
  address public setAddress;

  /// @dev Thrown when the current time is not after `lastUpdateTime`.
  error InvalidTime();

  /// @dev Thrown when the utilization inputs passed to a method are out of bounds.
  error InvalidUtilization();

  /// @dev Thrown when a set of cost model parameters are not within valid bounds.
  error InvalidConfiguration();

  /// @dev Thrown when the cost model's set address has already been registered.
  error SetAlreadyRegistered();

  /// @dev Thrown when the caller is not authorized to perform the action.
  error Unauthorized();

  /// @dev Emitted whenever model state variables are updated.
  event UpdatedDynamicLevelModelParameters(uint256 costFactorInOptimalZone, uint256 lastUpdateTime);

  /// @param uLow_ Start of optimal utilization zone, as a wad.
  /// @param uHigh_ End of optimal utilization zone, as a wad.
  /// @param costFactorAtZeroUtilization_ Cost factor to apply at 0% utilization, as a wad.
  /// @param costFactorAtFullUtilization_ Cost factor to apply at 100% utilization, as a wad.
  /// @param costFactorInOptimalZone_ Cost factor to apply in the optimal utilization zone, as a wad.
  /// @param optimalZoneRate_ Rate at which the `costFactorInOptimalZone` changes, as a wad.
  constructor(
    uint256 uLow_,
    uint256 uHigh_,
    uint256 costFactorAtZeroUtilization_,
    uint256 costFactorAtFullUtilization_,
    uint256 costFactorInOptimalZone_,
    uint256 optimalZoneRate_
  ) {
    if (uHigh_ > FixedPointMathLib.WAD) revert InvalidConfiguration();
    if (uLow_ > uHigh_) revert InvalidConfiguration();
    if (costFactorAtFullUtilization_ > FixedPointMathLib.WAD) revert InvalidConfiguration();
    if (costFactorAtFullUtilization_ < costFactorAtZeroUtilization_) revert InvalidConfiguration();

    uLow = uLow_;
    uHigh = uHigh_;
    uOpt = (uLow_ + uHigh_).mulDivUp(1, 2);
    costFactorAtZeroUtilization = costFactorAtZeroUtilization_;
    costFactorAtFullUtilization = costFactorAtFullUtilization_;
    optimalZoneRate = optimalZoneRate_;
    costFactorInOptimalZone = costFactorInOptimalZone_;
    lastUpdateTime = block.timestamp;
  }

  /// @notice Returns the cost of purchasing protection as a percentage of the amount being purchased, as a wad.
  /// For example, if you are purchasing $200 of protection and this method returns 1e17, then the cost of
  /// the purchase is 200 * 1e17 / 1e18 = $20.
  /// @param fromUtilization_ Initial utilization of the market.
  /// @param toUtilization_ Utilization ratio of the market after purchasing protection.
  function costFactor(uint256 fromUtilization_, uint256 toUtilization_) external view returns (uint256) {
    if (toUtilization_ < fromUtilization_) revert InvalidUtilization();
    if (toUtilization_ > FULL_UTILIZATION) revert InvalidUtilization();

    (uint256 costFactorInOptimalZone_,) = _getUpdatedStorageParams(block.timestamp, fromUtilization_);

    if (fromUtilization_ == toUtilization_) {
      return _pointOnCurve(costFactorInOptimalZone_, toUtilization_);
    } else {
      // Otherwise: divide the area under the curve by the interval of utilization
      // to get the average cost factor over that interval. We scale the
      // denominator up by another wad (which makes it wad^2 based) because the
      // numerator is going to be scaled up by wad^3 and we want the final value
      // to just be scaled up by wad^1.
      uint256 denominator_ = (toUtilization_ - fromUtilization_) * FixedPointMathLib.WAD;

      // We want to round up to favor the protocol here, since this determines the cost of protection.
      return _areaUnderCurve(fromUtilization_, toUtilization_, costFactorInOptimalZone_).mulDivUp(1, denominator_);
    }
  }

  /// @notice Gives the refund value in assets of returning protection, as a percentage of
  /// the supplier fee pool, as a wad. For example, if the supplier fee pool currently has $100
  /// and this method returns 1e17, then you will get $100 * 1e17 / 1e18 = $10 in assets back.
  /// @dev Refund factors, unlike cost factors, are defined for utilization above 100%, since markets
  /// can become over-utilized and protection can be sold in those cases.
  /// @param fromUtilization_ Initial utilization of the market.
  /// @param toUtilization_ Utilization ratio of the market after cancelling protection.
  function refundFactor(uint256 fromUtilization_, uint256 toUtilization_) external view returns (uint256) {
    if (fromUtilization_ < toUtilization_) revert InvalidUtilization();
    if (fromUtilization_ == toUtilization_) return 0;

    (uint256 costFactorInOptimalZone_,) = _getUpdatedStorageParams(block.timestamp, fromUtilization_);

    // Formula is: (area-under-return-interval / total-area-under-utilization-to-zero).
    // But we do all multiplication first so that we avoid precision loss.
    uint256 areaWithinRefundInterval_ = _areaUnderCurve(toUtilization_, fromUtilization_, costFactorInOptimalZone_);
    uint256 areaUnderFullUtilizationWindow_ =
      _areaUnderCurve(ZERO_UTILIZATION, fromUtilization_, costFactorInOptimalZone_);

    // Both areas are scaled up by wad^3, which cancels out during division. We
    // scale up by an additional wad so that the percentage resulting from their
    // division will be wad-based.
    uint256 numerator_ = areaWithinRefundInterval_ * FixedPointMathLib.WAD;
    uint256 denominator_ = areaUnderFullUtilizationWindow_;
    // We round down to favor the protocol.
    return numerator_ / denominator_;
  }

  /// @dev Returns the area under the curve between the `intervalLowPoint_` and `intervalHighPoint_`, scaled up by
  /// wad^3.
  function _areaUnderCurve(uint256 intervalLowPoint_, uint256 intervalHighPoint_, uint256 costFactorInOptimalZone_)
    internal
    view
    returns (uint256)
  {
    if (intervalHighPoint_ < intervalLowPoint_) revert InvalidUtilization();

    // Area over the x-axis range [ZERO_UTILIZATION, uLow).
    uint256 firstArea_ = intervalLowPoint_ > uLow
      ? 0
      : CostModelAreaCalculationsLib.areaUnderCurve(
        _slopeAtUtilizationPoint(costFactorInOptimalZone_, intervalLowPoint_),
        intervalLowPoint_,
        (intervalHighPoint_ > uLow ? uLow : intervalHighPoint_),
        ZERO_UTILIZATION,
        costFactorAtZeroUtilization
      );

    // Area over the x-axis range [uLow, uHigh].
    uint256 secondArea_ = ((intervalHighPoint_ < uLow) || (intervalLowPoint_ > uHigh))
      ? 0
      : CostModelAreaCalculationsLib.areaUnderCurve(
        0,
        (intervalLowPoint_ > uLow ? intervalLowPoint_ : uLow),
        (intervalHighPoint_ < uHigh ? intervalHighPoint_ : uHigh),
        uLow,
        costFactorInOptimalZone_
      );

    // Area over the x-axis range (uHigh, FULL_UTILIZATION].
    uint256 thirdArea_ = intervalHighPoint_ < uHigh
      ? 0
      : CostModelAreaCalculationsLib.areaUnderCurve(
        _slopeAtUtilizationPoint(costFactorInOptimalZone_, intervalHighPoint_),
        (intervalLowPoint_ > uHigh ? intervalLowPoint_ : uHigh),
        intervalHighPoint_,
        uHigh,
        costFactorInOptimalZone_
      );

    return firstArea_ + secondArea_ + thirdArea_;
  }

  /// @dev Returns slope at the specified `_utilization` as a wad.
  function _slopeAtUtilizationPoint(uint256 costFactorInOptimalZone_, uint256 utilization_)
    internal
    view
    returns (uint256)
  {
    // The cost factor is just the slope of the curve where x-axis=utilization and y-axis=cost.
    // slope = delta y / delta x = change in cost factor / change in utilization.
    if (utilization_ < uLow) {
      return uLow == ZERO_UTILIZATION
        ? 0
        : (costFactorInOptimalZone_ - costFactorAtZeroUtilization).divWadUp(uLow - ZERO_UTILIZATION);
    } else if (utilization_ <= uHigh) {
      return 0;
    } else {
      return uHigh == FULL_UTILIZATION
        ? 0
        : (costFactorAtFullUtilization - costFactorInOptimalZone_).divWadUp(FULL_UTILIZATION - uHigh);
    }
  }

  /// @dev Returns the cost factor (y-coordinate) of the point where the utilization equals the given `utilization_`
  /// (x-coordinate).
  function _pointOnCurve(uint256 costFactorInOptimalZone_, uint256 utilization_) internal view returns (uint256) {
    if (utilization_ > uHigh) {
      return (utilization_ - uHigh).mulWadUp(_slopeAtUtilizationPoint(costFactorInOptimalZone_, utilization_))
        + costFactorInOptimalZone_;
    } else if (utilization_ >= uLow) {
      return costFactorInOptimalZone_;
    } else {
      return utilization_.mulWadUp(_slopeAtUtilizationPoint(costFactorInOptimalZone_, utilization_))
        + costFactorAtZeroUtilization;
    }
  }

  /// @dev Returns the value of the dynamically updated `costFactorInOptimalZone`.
  /// @param utilization_ Current utilization.
  /// @param timeDelta_ Time since last update.
  function _computeNewCostFactorInOptimalZone(uint256 utilization_, uint256 timeDelta_) internal view returns (uint256) {
    uint256 currentCostFactorInOptimalZone_ = costFactorInOptimalZone;
    if (utilization_ >= uOpt) {
      // Cost factor increases with `timeDelta` and `utilization - uOpt`, but with a ceiling set at
      // `costFactorAtFullUtilization`.
      return _min(
        currentCostFactorInOptimalZone_ + optimalZoneRate.mulWadUp((utilization_ - uOpt) * timeDelta_),
        costFactorAtFullUtilization
      );
    } else {
      // Cost factor decreases with `timeDelta` and `utilization - uOpt`, but with a floor set at
      // `costFactorAtZeroUtilization`.
      uint256 delta_ = optimalZoneRate.mulWadUp((uOpt - utilization_) * timeDelta_);
      if (delta_ > currentCostFactorInOptimalZone_ - costFactorAtZeroUtilization) return costFactorAtZeroUtilization;
      else return currentCostFactorInOptimalZone_ - delta_;
    }
  }

  /// @dev Returns the  values of the dynamically updated storage variables, `costFactorInOptimalZone` and
  /// `lastUpdateTime`.
  /// @param currentTime_ Current timestamp.
  /// @param utilization_ Current utilization.
  function _getUpdatedStorageParams(uint256 currentTime_, uint256 utilization_)
    internal
    view
    returns (uint256 newCostFactorInOptimalZone_, uint256 newLastUpdateTime_)
  {
    uint256 lastUpdateTime_ = lastUpdateTime;
    if (currentTime_ < lastUpdateTime_) revert InvalidTime();
    newCostFactorInOptimalZone_ = _computeNewCostFactorInOptimalZone(utilization_, currentTime_ - lastUpdateTime_);
    newLastUpdateTime_ = currentTime_;
  }

  /// @dev Called by the Cozy protocol to update the model's storage variables.
  function update(uint256 utilization_, uint256 newUtilization_) external onlySet {
    (costFactorInOptimalZone, lastUpdateTime) = _getUpdatedStorageParams(block.timestamp, newUtilization_);
    emit UpdatedDynamicLevelModelParameters(costFactorInOptimalZone, lastUpdateTime);
  }

  /// @dev Called in the protocol by the Set contract to register the Set associated with this cost model.
  function registerSet() external {
    address setAddress_ = setAddress;
    if (setAddress_ != address(0) && setAddress_ != msg.sender) revert SetAlreadyRegistered();
    setAddress = msg.sender;
  }

  /// @dev Checks that msg.sender is the set address.
  modifier onlySet() {
    if (msg.sender != setAddress) revert Unauthorized();
    _;
  }

  function _min(uint256 a, uint256 b) public pure returns (uint256) {
    return a >= b ? b : a;
  }
}

/**
 * @notice Base class for model factories.
 */
abstract contract BaseModelFactory {
  /// @dev We have a default salt for computing the resulting address of a create2 call.
  /// This is ok due to a combination of two reasons:
  /// (1) for a given configuration, only a single instance of that model needs to exist, and
  /// (2) models have constructor args and therefore each configuration has a different initcode hash.
  /// As a result, the differing initcode is sufficient to make sure each model
  /// is at a unique address and the salt is unnecessary here.
  bytes32 internal constant DEFAULT_SALT = keccak256("0");

  /// @notice The set of all Models that have been deployed from this factory.
  /// The created Models should always have addresses that are deterministic with
  /// the model creation parameters, so if the model exists then it will be in this mapping.
  /// Use getModel(/*params*/) to check if the model exists in the mapping and return
  /// the address directly.
  mapping(address => bool) public isDeployed;
}

library Create2 {
  /// @notice Computes the address that would result from a CREATE2 call for a contract according
  /// to the spec in https://eips.ethereum.org/EIPS/eip-1014
  /// @return The CREATE2 address as computed using the params.
  /// @param _creationCode The creation code bytes of the specified contract.
  /// @param _constructorArgs The abi encoded constructor args.
  /// @param _deployer The address of the deployer of the contract.
  /// @param _salt The salt used to compute the create2 address.
  function computeCreate2Address(
    bytes memory _creationCode,
    bytes memory _constructorArgs,
    address _deployer,
    bytes32 _salt
  ) internal pure returns (address) {
    bytes32 _bytecodeHash = keccak256(bytes.concat(_creationCode, _constructorArgs));
    bytes32 _data = keccak256(bytes.concat(bytes1(0xff), bytes20(_deployer), _salt, _bytecodeHash));
    return address(uint160(uint256(_data)));
  }
}

/**
 * @notice The factory for deploying a CostModelDynamicLevel contract.
 */
contract CostModelDynamicLevelFactory is BaseModelFactory {
  /// @notice Event that indicates a CostModelDynamicLevel has been deployed.
  event DeployedCostModelDynamicLevel(
    address indexed costModel,
    uint256 uLow,
    uint256 uHigh,
    uint256 costFactorAtZeroUtilization,
    uint256 costFactorAtFullUtilization,
    uint256 costFactorInOptimalZone,
    uint256 optimalZoneRate
  );

  /// @notice Deploys a CostModelDynamicLevel contract and emits a
  /// DeployedCostModelDynamicLevel event that indicates what the params from the deployment are.
  /// @return model_ which has an address.
  function deployModel(
    uint256 uLow_,
    uint256 uHigh_,
    uint256 costFactorAtZeroUtilization_,
    uint256 costFactorAtFullUtilization_,
    uint256 costFactorInOptimalZone_,
    uint256 optimalZoneRate_
  ) external returns (CostModelDynamicLevel model_) {
    model_ = new CostModelDynamicLevel({
          uLow_: uLow_,
          uHigh_: uHigh_,
          costFactorAtZeroUtilization_: costFactorAtZeroUtilization_,
          costFactorAtFullUtilization_: costFactorAtFullUtilization_,
          costFactorInOptimalZone_: costFactorInOptimalZone_,
          optimalZoneRate_: optimalZoneRate_
        }
    );
    emit DeployedCostModelDynamicLevel(
      address(model_),
      uLow_,
      uHigh_,
      costFactorAtZeroUtilization_,
      costFactorAtFullUtilization_,
      costFactorInOptimalZone_,
      optimalZoneRate_
      );
  }
}