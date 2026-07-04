// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "../library/ExternalContractAddresses.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "../interfaces/IStakingWithEpochs.sol";
import "../interfaces/IOCHI.sol";
import "../staking/RewardController.sol";
import "../staking/ChiStaking.sol";
import "../staking/ChiLocking.sol";
import "../staking/LPStaking.sol";
import "../staking/ChiVesting.sol";
import "../dso/PoolHelper.sol";
import "../dso/OCHI.sol";
import "../interfaces/IOCHI.sol";
import "../staking/USCStaking.sol";
import "../ReserveHolder.sol";

/// @title Data provider
/// @notice Data provider containing view functions used by frontend
contract DataProvider {
  function POLdata(
    OCHI dso,
    IUniswapV2Pair uniPair,
    IPriceFeedAggregator priceFeed
  ) external view returns (uint256 polUsdValue, uint256 polPercent) {
    uint256 lpAmount = uniPair.balanceOf(address(dso.lpRewards(uniPair)));
    polUsdValue = PoolHelper.getUSDValueForLP(lpAmount, uniPair, priceFeed);
    polPercent = Math.mulDiv(lpAmount, 10 ** 18, uniPair.totalSupply());
  }

  function getLPTokenPrice(
    IUniswapV2Pair pair,
    IPriceFeedAggregator priceFeedAggregator
  ) public view returns (uint256) {
    return PoolHelper.getUSDValueForLP(1 ether, pair, priceFeedAggregator);
  }

  function getTotalPoolValue(
    IUniswapV2Pair pair,
    IPriceFeedAggregator priceFeedAggregator
  ) public view returns (uint256) {
    return PoolHelper.getTotalPoolUSDValue(pair, priceFeedAggregator);
  }

  function chiStakingAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  ) public view returns (uint256) {
    uint256 stEthPrice = priceFeedAggregator.peek(ExternalContractAddresses.stETH);
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalStakedChi = chiStaking.getStakedChi() +
      chiLocking.getStakedChi() +
      uscStaking.getStakedChi() +
      uscEthLpStaking.getStakedChi() +
      chiEthLpStaking.getStakedChi() +
      chiVesting.getLockedChi();
    uint256 chiStakedValue = Math.mulDiv(totalStakedChi, chiPrice, 1e8);

    uint256 currentEpoch = chiStaking.currentEpoch();

    (, uint256 totalRewardsTwoEpochsAgo) = currentEpoch >= 2 ? rewardController.epochs(currentEpoch - 2) : (0, 0);
    (, uint256 totalRewardsLastEpoch) = rewardController.epochs(currentEpoch - 1);

    uint256 totalEthReward;
    if (currentEpoch < 4) {
      totalEthReward = (reserveHolder.totalStEthDeposited() * 4) / 100 / 52;
    } else {
      totalEthReward = totalRewardsLastEpoch - totalRewardsTwoEpochsAgo;
    }

    uint256 totalEthRewardValue = Math.mulDiv(totalEthReward, stEthPrice, 1e8);

    return Math.mulDiv(totalEthRewardValue * 52, 1e18, chiStakedValue);
  }

  function uscStakingAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  ) external view returns (uint256 totalApr, uint256 uscApr, uint256 chiApr, uint256 boostedStChiApr) {
    uint256 currentEpoch = rewardController.currentEpoch();
    uint256 stChiApr = chiStakingAPR(
      chi,
      chiStaking,
      chiLocking,
      uscStaking,
      uscEthLpStaking,
      chiEthLpStaking,
      chiVesting,
      rewardController,
      priceFeedAggregator,
      reserveHolder
    );
    uint256 chiEmissions = rewardController.chiIncentivesForUscStaking();
    uint256 totalUscStaked = uscStaking.totalSupply();
    boostedStChiApr = (stChiApr * chiEmissions * 52) / totalUscStaked;

    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 chiEmissionsValue = Math.mulDiv(chiEmissions, chiPrice, 1e8);
    chiApr = Math.mulDiv(chiEmissionsValue * 52, 1e18, totalUscStaked);

    (uint256 uscRewardAmount, ) = rewardController.epochs(currentEpoch - 1);
    uscApr = Math.mulDiv(uscRewardAmount * 52, 1e18, totalUscStaked);

    return (boostedStChiApr + chiApr + uscApr, uscApr, chiApr, boostedStChiApr);
  }

  function chiLockingAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  ) public view returns (uint256 totalApr, uint256 chiApr, uint256 stChiApr, uint256 boostedStChiApr) {
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedChiValue = Math.mulDiv(chiLocking.getLockedChi() + chiVesting.getLockedChi(), chiPrice, 1e8);
    uint256 chiEmissions = rewardController.chiIncentivesForChiLocking();
    uint256 chiEmissionsValue = Math.mulDiv(chiEmissions, chiPrice, 1e8);
    chiApr = Math.mulDiv(chiEmissionsValue * 52, 1e18, totalLockedChiValue);
    stChiApr = chiStakingAPR(
      chi,
      chiStaking,
      chiLocking,
      uscStaking,
      uscEthLpStaking,
      chiEthLpStaking,
      chiVesting,
      rewardController,
      priceFeedAggregator,
      reserveHolder
    );

    boostedStChiApr = Math.mulDiv(chiEmissionsValue, stChiApr * 52, totalLockedChiValue);

    return (chiApr + stChiApr + boostedStChiApr, chiApr, stChiApr, boostedStChiApr);
  }

  function dsoAPR(address chi, OCHI ochi, IPriceFeedAggregator priceFeedAggregator) external view returns (uint256) {
    int256 totalProfitPrevWeek = ochi.getLastEpochTotalReward();
    if (totalProfitPrevWeek < 0) {
      return 0;
    }

    uint256 totalChiLocked = ochi.totalOCHIlocked();
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalChiLockedValue = Math.mulDiv(totalChiLocked, chiPrice, 1e18);
    return Math.mulDiv(uint256(totalProfitPrevWeek) * 52, 1e18, totalChiLockedValue);
  }

  function uscEthLPAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    IUniswapV2Pair uscEthPair,
    ReserveHolder reserveHolder
  ) external view returns (uint256 totalApr, uint256 chiApr, uint256 stChiApr) {
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 chiEmissions = rewardController.chiIncentivesForUscEthLPStaking();
    uint256 chiEmissionsValue = Math.mulDiv(chiEmissions, chiPrice, 1e8);

    uint256 totalStaked = uscEthLpStaking.totalSupply();
    uint256 uscEthPairPrice = getLPTokenPrice(uscEthPair, priceFeedAggregator);
    uint256 totalStakedValue = Math.mulDiv(totalStaked, uscEthPairPrice, 1e8);
    chiApr = Math.mulDiv(chiEmissionsValue * 52, 1e18, totalStakedValue);

    uint256 chiStakingAPR = chiStakingAPR(
      chi,
      chiStaking,
      chiLocking,
      uscStaking,
      uscEthLpStaking,
      chiEthLpStaking,
      chiVesting,
      rewardController,
      priceFeedAggregator,
      reserveHolder
    );
    stChiApr = Math.mulDiv(chiEmissionsValue, chiStakingAPR * 52, totalStakedValue);

    return (chiApr + stChiApr, chiApr, stChiApr);
  }

  function chiEthLPAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    IUniswapV2Pair chiEthPair,
    ReserveHolder reserveHolder
  ) external view returns (uint256 totalApr, uint256 chiApr, uint256 stChiApr) {
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 chiEmissions = rewardController.chiIncentivesForChiEthLPStaking();
    uint256 chiEmissionsValue = Math.mulDiv(chiEmissions, chiPrice, 1e8);

    uint256 totalStaked = chiEthLpStaking.totalSupply();
    uint256 chiEthPairPrice = getLPTokenPrice(chiEthPair, priceFeedAggregator);
    uint256 totalStakedValue = Math.mulDiv(totalStaked, chiEthPairPrice, 1e8);
    chiApr = Math.mulDiv(chiEmissionsValue * 52, 1e18, totalStakedValue);

    uint256 chiStakingAPR = chiStakingAPR(
      chi,
      chiStaking,
      chiLocking,
      uscStaking,
      uscEthLpStaking,
      chiEthLpStaking,
      chiVesting,
      rewardController,
      priceFeedAggregator,
      reserveHolder
    );
    stChiApr = Math.mulDiv(chiEmissionsValue, chiStakingAPR * 52, totalStakedValue);

    return (chiApr + stChiApr, chiApr, stChiApr);
  }

  function estimatedYieldPerWeek(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardController rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  ) external view returns (uint256) {
    (uint256 chiLockingApr, , , ) = chiLockingAPR(
      chi,
      chiStaking,
      chiLocking,
      uscStaking,
      uscEthLpStaking,
      chiEthLpStaking,
      chiVesting,
      rewardController,
      priceFeedAggregator,
      reserveHolder
    );
    uint256 totalLockedChi = chiLocking.getLockedChi();
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedChiValue = Math.mulDiv(totalLockedChi, chiPrice, 1e18);
    uint256 chiLockingWeeklyAPR = chiLockingApr / 52;

    return Math.mulDiv(totalLockedChiValue, chiLockingWeeklyAPR, 1e18);
  }

  function totalValueOfLockedChi(
    IPriceFeedAggregator priceFeedAggregator,
    ChiLocking chiLocking,
    ChiVesting chiVesting,
    address chi,
    address account
  ) external view returns (uint256) {
    IChiLocking.AllLockedPositionsOutput[] memory lockedPositions = chiLocking.getAllLockedPositions(account);

    uint256 totalChi;
    for (uint256 i = 0; i < lockedPositions.length; i++) {
      totalChi += lockedPositions[i].totalAccumulatedChi;
    }

    (uint256 totalVestedChi, , , , , ) = chiVesting.vestingData(account);
    totalChi += totalVestedChi;

    uint256 chiPrice = priceFeedAggregator.peek(address(chi));

    return Math.mulDiv(totalChi, chiPrice, 1e18);
  }
}
