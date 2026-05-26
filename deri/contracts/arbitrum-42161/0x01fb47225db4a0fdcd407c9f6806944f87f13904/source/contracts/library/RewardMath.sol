// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@uniswap/v3-core/contracts/libraries/FullMath.sol';
import '@openzeppelin/contracts/math/Math.sol';

/// @title Math for computing rewards
/// @notice Allows computing rewards given some parameters of stakes and incentives
library RewardMath {

    function computeRewardAmount(
        uint256 totalRewardUnclaimed,
        uint160 totalSecondsClaimedX128,
        uint256 startTime,
        uint128 liquidity,
        uint160 secondsPerLiquidityInsideInitialX128,
        uint160 secondsPerLiquidityInsideX128,
        uint256 currentTime
    ) internal pure returns (uint256 reward, uint160 secondsInsideX128) {
        // this should never be called before the start time
        assert(currentTime >= startTime);
        // this operation is safe, as the difference cannot be greater than 1/stake.liquidity
        secondsInsideX128 = (secondsPerLiquidityInsideX128 - secondsPerLiquidityInsideInitialX128) * liquidity;

        uint256 totalSecondsUnclaimedX128 =
            ((currentTime - startTime) << 128) - totalSecondsClaimedX128;

        reward = FullMath.mulDiv(totalRewardUnclaimed, secondsInsideX128, totalSecondsUnclaimedX128);
    }
}
