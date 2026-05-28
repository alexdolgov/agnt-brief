// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.24;

import { FixedPoint } from "./FixedPoint.sol";

// solhint-disable max-line-length
// slither-disable-start dead-code

/// @dev Partway through the dev process, Balancer updated their ScalingHelpers lib.  This takes pieces from both libs.
/// Both the new and old versions are linked below
/// https://github.com/balancer/balancer-v3-monorepo/blob/6055c6b86df03677a74e743cb61def58146c44ab/pkg/solidity-utils/contracts/helpers/ScalingHelpers.sol
/// https://github.com/balancer/balancer-v3-monorepo/blob/4fe82ee91071b6581a8e509d848a794be612480d/pkg/solidity-utils/contracts/helpers/ScalingHelpers.sol

/// @dev Functionality taken from BalV3 monorepo. Original here -
/// https://github.com/balancer/balancer-v3-monorepo/blob/73708b75898a62dac0535f38d1bf471ac0e538c6/pkg/solidity-utils/contracts/helpers/ScalingHelpers.sol

/**
 * @notice Helper functions to apply/undo token decimal and rate adjustments, rounding in the direction indicated.
 * @dev To simplify Pool logic, all token balances and amounts are normalized to behave as if the token had
 * 18 decimals. When comparing DAI (18 decimals) and USDC (6 decimals), 1 USDC and 1 DAI would both be
 * represented as 1e18. This allows us to not consider differences in token decimals in the internal Pool
 * math, simplifying it greatly.
 *
 * The Vault does not support tokens with more than 18 decimals (see `_MAX_TOKEN_DECIMALS` in `VaultStorage`),
 * or tokens that do not implement `IERC20Metadata.decimals`.
 *
 * These helpers can also be used to scale amounts by other 18-decimal floating point values, such as rates.
 */
library ScalingHelpers {
    using FixedPoint for *;
    using ScalingHelpers for uint256;

    /**
     *
     *                             Single Value Functions
     *
     */

    /**
     * @notice Applies `scalingFactor` and `tokenRate` to `amount`.
     * @dev This may result in a larger or equal value, depending on whether it needed scaling/rate adjustment or not.
     * The result is rounded down.
     *
     * @param amount Amount to be scaled up to 18 decimals
     * @param scalingFactor The token decimal scaling factor, `10^(18-tokenDecimals)`
     * @param tokenRate The token rate scaling factor
     * @return result The final 18-decimal precision result, rounded down
     */
    function toScaled18ApplyRateRoundDown(
        uint256 amount,
        uint256 scalingFactor,
        uint256 tokenRate
    ) internal pure returns (uint256) {
        return (amount * scalingFactor).mulDown(tokenRate);
    }

    /**
     * @notice Applies `scalingFactor` and `tokenRate` to `amount`.
     * @dev This may result in a larger or equal value, depending on whether it needed scaling/rate adjustment or not.
     * The result is rounded up.
     *
     * @param amount Amount to be scaled up to 18 decimals
     * @param scalingFactor The token decimal scaling factor, `10^(18-tokenDecimals)`
     * @param tokenRate The token rate scaling factor
     * @return result The final 18-decimal precision result, rounded up
     */
    function toScaled18ApplyRateRoundUp(
        uint256 amount,
        uint256 scalingFactor,
        uint256 tokenRate
    ) internal pure returns (uint256) {
        return (amount * scalingFactor).mulUp(tokenRate);
    }

    /**
     * @notice Reverses the `scalingFactor` and `tokenRate` applied to `amount`.
     * @dev This may result in a smaller or equal value, depending on whether it needed scaling/rate adjustment or not.
     * The result is rounded down.
     *
     * @param amount Amount to be scaled down to native token decimals
     * @param scalingFactor The token decimal scaling factor, `10^(18-tokenDecimals)`
     * @param tokenRate The token rate scaling factor
     * @return result The final native decimal result, rounded down
     */
    function toRawUndoRateRoundDown(
        uint256 amount,
        uint256 scalingFactor,
        uint256 tokenRate
    ) internal pure returns (uint256) {
        // Do division last. Scaling factor is not a FP18, but a FP18 normalized by FP(1).
        // `scalingFactor * tokenRate` is a precise FP18, so there is no rounding direction here.
        return FixedPoint.divDown(amount, scalingFactor * tokenRate);
    }

    /**
     * @notice Reverses the `scalingFactor` and `tokenRate` applied to `amount`.
     * @dev This may result in a smaller or equal value, depending on whether it needed scaling/rate adjustment or not.
     * The result is rounded up.
     *
     * @param amount Amount to be scaled down to native token decimals
     * @param scalingFactor The token decimal scaling factor, `10^(18-tokenDecimals)`
     * @param tokenRate The token rate scaling factor
     * @return result The final native decimal result, rounded up
     */
    function toRawUndoRateRoundUp(
        uint256 amount,
        uint256 scalingFactor,
        uint256 tokenRate
    ) internal pure returns (uint256) {
        // Do division last. Scaling factor is not a FP18, but a FP18 normalized by FP(1).
        // `scalingFactor * tokenRate` is a precise FP18, so there is no rounding direction here.
        return FixedPoint.divUp(amount, scalingFactor * tokenRate);
    }

    /**
     * @notice Applies `scalingFactor` to `amount`.
     * @dev This may result in a larger or equal value, depending on whether it needed scaling or not. The result
     * is rounded down.
     *
     * @param amount Amount to be scaled up to 18 decimals
     * @param scalingFactor The token decimal scaling factor
     * @return result The final 18-decimal precision result, rounded down
     */
    function toScaled18RoundDown(uint256 amount, uint256 scalingFactor) internal pure returns (uint256) {
        return FixedPoint.mulDown(amount, scalingFactor);
    }

    /**
     * @notice Reverses the `scalingFactor` applied to `amount`.
     * @dev This may result in a smaller or equal value, depending on whether it needed scaling or not. The result
     * is rounded down.
     *
     * @param amount Amount to be scaled down to native token decimals
     * @param scalingFactor The token decimal scaling factor
     * @return result The final native decimal result, rounded down
     */
    function toRawRoundDown(uint256 amount, uint256 scalingFactor) internal pure returns (uint256) {
        return FixedPoint.divDown(amount, scalingFactor);
    }
}
// slither-disable-end dead-code
