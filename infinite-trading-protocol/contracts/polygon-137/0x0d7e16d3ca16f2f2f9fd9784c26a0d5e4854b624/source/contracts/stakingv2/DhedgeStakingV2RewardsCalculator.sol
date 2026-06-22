//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// Copyright (c) 2021 dHEDGE DAO
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/math/SafeMath.sol";
import "./interfaces/IDhedgeStakingV2.sol";

pragma solidity 0.7.6;
pragma abicoder v2;

/**
 * @title A library for Calculating DHT rewards for a stake.
 */
contract DhedgeStakingV2RewardsCalculator {
  using SafeMath for uint256;

  uint256 public constant UNIT = 10**18;

  /// @notice Calculates how many DHT a staker should recieve
  /// @dev This should take into account:
  /// @param vDHTAmount the amount of dht staked
  /// @param poolTokensStaked the number of pool tokens staked
  /// @param tokenPriceStart the price of the dhedge pool when the stake started
  /// @param tokenPriceFinish the price of the dhedge pool when the stake finished (unstaked)
  /// @param stakeStartTime when the DHPT stake started
  /// @param stakeFinishTime when the DHPT stake finished
  /// @param stakeEmissionsRate the emissions rate when the stake was created
  /// @param rewardParams current rewards configuration
  function calculateDhtRewardAmount(
    uint256 vDHTAmount,
    uint256 poolTokensStaked,
    uint256 tokenPriceStart,
    uint256 tokenPriceFinish,
    uint256 stakeStartTime,
    uint256 stakeFinishTime,
    uint256 stakeEmissionsRate,
    IDhedgeStakingV2Storage.RewardParams memory rewardParams
  ) public pure returns (uint256) {
    uint256 performanceMultiplier = calculatePerformanceMultiplier(
      tokenPriceStart,
      tokenPriceFinish,
      rewardParams.maxPerformanceBoostNumerator,
      rewardParams.maxPerformanceBoostDenominator
    );
    uint256 stakeDurationMultiplier = calculateStakeDurationMultiplier(
      stakeStartTime,
      stakeFinishTime,
      rewardParams.stakeDurationDelaySeconds,
      rewardParams.maxDurationBoostSeconds
    );

    // Could be argued that we use the tokenPriceFinish here
    uint256 totalValueStaked = tokenPriceStart.mul(poolTokensStaked).div(10**18);
    uint256 maxVDHTAllowed = calculateMaxVDHTAllowed(vDHTAmount, totalValueStaked, rewardParams.stakingRatio);
    return
      (maxVDHTAllowed)
        .mul(performanceMultiplier)
        .div(UNIT)
        .mul(stakeDurationMultiplier)
        .div(UNIT)
        .mul(stakeEmissionsRate)
        .div(rewardParams.emissionsRateDenominator);
  }

  /// @notice Calculates the max vDHT a staker can receive based on the amount of DHPT value staked
  /// @dev The amount of vDHT is capped by the STAKING_RATIO
  /// @param vDHTAmount the amount of dht staked
  /// @param totalValue the number of pool tokens staked
  /// @param stakingRatio the price of the dhedge pool when the stake started
  function calculateMaxVDHTAllowed(
    uint256 vDHTAmount,
    uint256 totalValue,
    uint256 stakingRatio
  ) public pure returns (uint256) {
    uint256 maxVDHTForValue = totalValue.mul(stakingRatio);
    return vDHTAmount > maxVDHTForValue ? maxVDHTForValue : vDHTAmount;
  }

  /// @notice Calculates the performance multiplier
  /// @dev The real multiplier is between 0 and 1 and calculated relative to MAX_PERFORMANCE_BOOST_PERCENT
  /// @param tokenPriceStart the price of the dhedge pool when the stake started
  /// @param tokenPriceFinish the price of the dhedge pool when the stake finished (unstaked)
  /// @param maxPerformanceBoostNumerator The change in tokenPrice to acheive the maximum multiplier denominated by maxPerformanceBoostDenominator
  /// @param maxPerformanceBoostDenominator the denominator of multiplier
  function calculatePerformanceMultiplier(
    uint256 tokenPriceStart,
    uint256 tokenPriceFinish,
    uint256 maxPerformanceBoostNumerator,
    uint256 maxPerformanceBoostDenominator
  ) public pure returns (uint256) {
    if (tokenPriceFinish <= tokenPriceStart) {
      return 0;
    }

    uint256 diff = (tokenPriceFinish)
      .sub(tokenPriceStart)
      .mul(maxPerformanceBoostDenominator)
      .div(tokenPriceStart)
      .mul(UNIT)
      .div(maxPerformanceBoostNumerator);

    if (diff > UNIT) {
      return UNIT;
    } else {
      return diff;
    }
  }

  /// @notice Calculates the DHPT stake duration multiplier
  /// @dev The real multiplier is between 0 and 1 and calculated relative to MAX_DURATION_BOOST_SECONDS
  /// @param stakeStartTime when the DHPT stake started
  /// @param stakeFinishTime when the DHPT stake finished
  /// @param maxDurationBoostSeconds The amount of time to stake to acheive the maximum multiplier
  function calculateStakeDurationMultiplier(
    uint256 stakeStartTime,
    uint256 stakeFinishTime,
    uint256 stakeDurationDelay,
    uint256 maxDurationBoostSeconds
  ) public pure returns (uint256) {
    if (stakeFinishTime <= stakeStartTime) {
      return 0;
    }
    uint256 stakeDuration = stakeFinishTime.sub(stakeStartTime);
    // N.B. The stakeDurationDelay is not subtracted from the stakeDuration
    // It only delays the multiplier, not sure if this is desired.
    if (stakeDuration <= stakeDurationDelay) {
      return 0;
    } else if (stakeDuration >= maxDurationBoostSeconds) {
      return UNIT;
    } else {
      return stakeDuration.mul(UNIT).div(maxDurationBoostSeconds);
    }
  }
}
