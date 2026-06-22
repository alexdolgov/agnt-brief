// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../library/ExternalContractAddresses.sol";
import "../stUSC.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "../interfaces/IStakingWithEpochs.sol";
import "../interfaces/IOCHI.sol";
import "../staking/RewardControllerV2.sol";
import "../staking/ChiStaking.sol";
import "../staking/ChiLocking.sol";
import "../staking/LPStaking.sol";
import "../staking/ChiVesting.sol";
import "../dso/PoolHelper.sol";
import "../dso/OCHI.sol";
import "../interfaces/IOCHI.sol";
import "../staking/USCStaking.sol";
import "../staking/StakingManager.sol";
import "../staking/LockingManager.sol";
import "../deprecated/ReserveHolder.sol";
import "../dso/LPRewards.sol";

/// @title Data provider
/// @notice Data provider containing view functions used by frontend
contract DataProvider {
  using SafeCast for uint256;

  uint256 public constant DAYS_IN_YEAR = 365;
  uint256 public constant SECOND_IN_YEAR = 31536000;

  struct StEthReward {
    uint256 tokenValue;
    uint256 usdValue;
  }

  struct ChiReward {
    uint256 tokenValue;
    uint256 usdValue;
  }

  struct UscReward {
    uint256 tokenValue;
    uint256 usdValue;
  }

  struct Reward {
    StEthReward stEthReward;
    ChiReward chiReward;
    UscReward uscReward;
    uint256 totalReward;
  }

  struct Rewards {
    Reward stUscRewards;
    Reward stChiRewards;
    Reward veChiRewards;
    Reward uscEthLpRewards;
    Reward chiEthLpRewards;
    uint256 totalStEthReward;
    uint256 totalStEthRewardUsd;
    uint256 totalChiReward;
    uint256 totalChiRewardUsd;
  }

  function uscStakingApr(stUSC _stUSC) public view returns (uint256) {
    return (_stUSC.emissionPerSecond() * SECOND_IN_YEAR) / _stUSC.totalSupply();
  }

  function lpStakingApr(
    address chi,
    StakingManager lpStaking, 
    IPriceFeedAggregator priceFeedAggregator,
    IUniswapV2Pair uscEthLpToken,
    IUniswapV2Pair chiEthLpToken 
  ) public view returns (
    uint256 stEthAprUscEthLp, 
    uint256 weEthAprUscEthLp, 
    uint256 chiAprUscEthLp, 
    uint256 totalUscEthLpApr, 
    uint256 stEthAprChiEthLp, 
    uint256 weEthAprChiEthLp, 
    uint256 chiAprChiEthLp, 
    uint256 totalChiEthLpApr
  ) {
    uint256 stEthRewardsPerSecond = (lpStaking.getRewardTokenConfig(address(uscEthLpToken), ExternalContractAddresses.stETH)).emissionPerSecond;
    uint256 weEthRewardsPerSecond = lpStaking.getRewardTokenConfig(address(uscEthLpToken), ExternalContractAddresses.weETH).emissionPerSecond;
    uint256 chiRewardsPerSecond = lpStaking.getRewardTokenConfig(address(uscEthLpToken), chi).emissionPerSecond;

    uint256 stEthPrice = priceFeedAggregator.peek(ExternalContractAddresses.stETH);
    uint256 weEthPrice = priceFeedAggregator.peek(ExternalContractAddresses.weETH);
    uint256 chiPrice = priceFeedAggregator.peek(chi);

    uint256 uscEthLpTokenPrice = getLPTokenPrice(uscEthLpToken, priceFeedAggregator);
    uint256 chiEthLpTokenPrice = getLPTokenPrice(chiEthLpToken, priceFeedAggregator);

    stEthAprUscEthLp = ((stEthRewardsPerSecond * SECOND_IN_YEAR * stEthPrice) / (lpStaking.getTotalStaked(address(uscEthLpToken)) * uscEthLpTokenPrice)) * 100;
    weEthAprUscEthLp = ((weEthRewardsPerSecond * SECOND_IN_YEAR * weEthPrice) / (lpStaking.getTotalStaked(address(uscEthLpToken)) * uscEthLpTokenPrice)) * 100;
    chiAprUscEthLp = ((chiRewardsPerSecond * SECOND_IN_YEAR * chiPrice) / (lpStaking.getTotalStaked(address(uscEthLpToken)) * uscEthLpTokenPrice)) * 100;

    totalUscEthLpApr = stEthAprUscEthLp + weEthAprUscEthLp + chiAprUscEthLp;

    stEthRewardsPerSecond = lpStaking.getRewardTokenConfig(address(chiEthLpToken), ExternalContractAddresses.stETH).emissionPerSecond;
    weEthRewardsPerSecond = lpStaking.getRewardTokenConfig(address(chiEthLpToken), ExternalContractAddresses.weETH).emissionPerSecond;
    chiRewardsPerSecond = lpStaking.getRewardTokenConfig(address(chiEthLpToken), chi).emissionPerSecond;

    stEthAprChiEthLp = ((stEthRewardsPerSecond * SECOND_IN_YEAR * stEthPrice) / (lpStaking.getTotalStaked(address(chiEthLpToken)) * chiEthLpTokenPrice)) * 100;
    weEthAprChiEthLp = ((weEthRewardsPerSecond * SECOND_IN_YEAR * weEthPrice) / (lpStaking.getTotalStaked(address(chiEthLpToken)) * chiEthLpTokenPrice)) * 100;
    chiAprChiEthLp = ((chiRewardsPerSecond * SECOND_IN_YEAR * chiPrice) / (lpStaking.getTotalStaked(address(chiEthLpToken)) * chiEthLpTokenPrice)) * 100;

    totalChiEthLpApr = stEthAprChiEthLp + weEthAprChiEthLp + chiAprChiEthLp;

    return (stEthAprUscEthLp, weEthAprUscEthLp, chiAprUscEthLp, totalUscEthLpApr, stEthAprChiEthLp, weEthAprChiEthLp, chiAprChiEthLp, totalChiEthLpApr);
  }

  // dodaj funkcije za lp staking koje su vec uradjene
  function chiLockingAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardControllerV2 rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  ) public view returns (uint256 totalApr, uint256 chiApr, uint256 stChiApr) {
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedChiValue = Math.mulDiv(chiLocking.getLockedChi() + chiVesting.getLockedChi(), chiPrice, 1e8);
    uint256 chiEmissions = rewardController.chiIncentivesForChiLocking();
    uint256 chiEmissionsValue = Math.mulDiv(chiEmissions, chiPrice, 1e8);
    chiApr = Math.mulDiv(chiEmissionsValue * 52, 1e18, totalLockedChiValue);
    (, stChiApr, , , ) = chiStakingAPR(
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

    return (chiApr + stChiApr, chiApr, stChiApr);
  }

  function chiStakingAPR(
    address chi,
    ChiStaking chiStaking,
    ChiLocking chiLocking,
    USCStaking uscStaking,
    LPStaking uscEthLpStaking,
    LPStaking chiEthLpStaking,
    ChiVesting chiVesting,
    RewardControllerV2 rewardController,
    IPriceFeedAggregator priceFeedAggregator,
    ReserveHolder reserveHolder
  )
    public
    view
    returns (
      uint256 chiStakingAprInStEth,
      uint256 chiLockingAprInStEth,
      uint256 uscStakingAprInStEth,
      uint256 uscEthLpStakingAprInStEth,
      uint256 chiEthLpStakingAprInStEth
    )
  {
    uint256 stEthPrice = priceFeedAggregator.peek(ExternalContractAddresses.stETH);
    uint256 currentEpoch = chiStaking.currentEpoch();

    (, uint256 totalRewardsTwoEpochsAgo) = currentEpoch >= 2 ? rewardController.epochs(currentEpoch - 2) : (0, 0);
    (, uint256 totalRewardsLastEpoch) = rewardController.epochs(currentEpoch - 1);

    uint256 totalEthReward;
    if (currentEpoch < 4) {
      totalEthReward = (reserveHolder.totalStEthDeposited() * 4) / 100 / 52;
    } else {
      totalEthReward = totalRewardsLastEpoch - totalRewardsTwoEpochsAgo;
    }

    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalEthRewardValue = Math.mulDiv(totalEthReward, stEthPrice, 1e8);

    uint256 stEthForChiStaking = Math.mulDiv(
      totalEthRewardValue,
      rewardController.stEthPercentageForChiStaking(),
      10000
    );
    uint256 chiStakedValue = Math.mulDiv(chiStaking.getStakedChi(), chiPrice, 1e8);
    chiStakingAprInStEth = Math.mulDiv(stEthForChiStaking * 52, 1e18, chiStakedValue);

    uint256 stEthForChiLocking = Math.mulDiv(
      totalEthRewardValue,
      rewardController.stEthPercentageForChiLocking(),
      10000
    );
    uint256 chiLockedValue = Math.mulDiv(chiLocking.getStakedChi(), chiPrice, 1e8);
    chiLockingAprInStEth = Math.mulDiv(stEthForChiLocking * 52, 1e18, chiLockedValue);

    uint256 stEthForUscStaking = Math.mulDiv(
      totalEthRewardValue,
      rewardController.stEthPercentageForUscStaking(),
      10000
    );
    uint256 uscStakedValue = uscStaking.totalSupply();
    uscStakingAprInStEth = Math.mulDiv(stEthForUscStaking * 52, 1e18, uscStakedValue);

    uint256 uscEthLpTokenPrice = getLPTokenPrice(
      IUniswapV2Pair(address(uscEthLpStaking.stakeToken())),
      priceFeedAggregator
    );
    uint256 stEthForUscEthLPStaking = Math.mulDiv(
      totalEthRewardValue,
      rewardController.stEthPercentageForUscEthLPStaking(),
      10000
    );
    uint256 uscEthLPStakedValue = Math.mulDiv(uscEthLpStaking.totalSupply(), uscEthLpTokenPrice, 1e8);
    uscEthLpStakingAprInStEth = Math.mulDiv(stEthForUscEthLPStaking * 52, 1e18, uscEthLPStakedValue);

    uint256 chiEthLpTokenPrice = getLPTokenPrice(
      IUniswapV2Pair(address(chiEthLpStaking.stakeToken())),
      priceFeedAggregator
    );
    uint256 stEthForChiEthLPStaking = Math.mulDiv(
      totalEthRewardValue,
      rewardController.stEthPercentageForChiEthLPStaking(),
      10000
    );
    uint256 chiEthLPStakedValue = Math.mulDiv(chiEthLpStaking.totalSupply(), chiEthLpTokenPrice, 1e8);
    chiEthLpStakingAprInStEth = Math.mulDiv(stEthForChiEthLPStaking * 52, 1e18, chiEthLPStakedValue);

    return (
      chiStakingAprInStEth,
      chiLockingAprInStEth,
      uscStakingAprInStEth,
      uscEthLpStakingAprInStEth,
      chiEthLpStakingAprInStEth
    );
  }

  function getLPTokenPrice(
    IUniswapV2Pair pair,
    IPriceFeedAggregator priceFeedAggregator
  ) public view returns (uint256) {
    return PoolHelper.getUSDValueForLP(1 ether, pair, priceFeedAggregator);
  }

  function chiEthLpLockingApr(
    address chi,
    LockingManager lockingManager,
    StakingManager lpStaking,
    IPriceFeedAggregator priceFeedAggregator,
    IUniswapV2Pair uscEthLpToken,
    IUniswapV2Pair chiEthLpToken
  ) public view returns (uint256 baseApr, uint256 extraApr, uint256 totalApr) {
    ( , , , , , , ,uint256 totalChiEthLpApr) = lpStakingApr(chi, lpStaking, priceFeedAggregator, uscEthLpToken, chiEthLpToken);
    uint256 chiRewardsPerEpoch = lockingManager.rewardsPerEpoch();
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedAmount = lockingManager.totalLockedAmount();

    baseApr = totalChiEthLpApr;
    extraApr = chiRewardsPerEpoch * DAYS_IN_YEAR * chiPrice / totalLockedAmount * 100;

    return (baseApr, extraApr, baseApr + extraApr);
  }

  function uscEthLpLockingApr(
    address chi,
    LockingManager lockingManager,
    StakingManager lpStaking,
    IPriceFeedAggregator priceFeedAggregator,
    IUniswapV2Pair uscEthLpToken,
    IUniswapV2Pair chiEthLpToken
  ) public view returns (uint256 baseApr, uint256 extraApr, uint256 totalApr) {
    ( , , , uint256 totalUscEthLpApr, , , , ) = lpStakingApr(chi, lpStaking, priceFeedAggregator, uscEthLpToken, chiEthLpToken);
    uint256 chiRewardsPerEpoch = lockingManager.rewardsPerEpoch();
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedAmount = lockingManager.totalLockedAmount();

    baseApr = totalUscEthLpApr;
    extraApr = chiRewardsPerEpoch * DAYS_IN_YEAR * chiPrice / totalLockedAmount * 100;

    return (baseApr, extraApr, baseApr + extraApr); 
  }

  function wstUscLockingApr(
    LockingManager lockingManager,
    address chi,
    stUSC _stUSC,
    IPriceFeedAggregator priceFeedAggregator
  ) public view returns (uint256 baseApr, uint256 extraApr, uint256 totalApr) {
    uint256 uscStakingApr = uscStakingApr(_stUSC);
    uint256 wstUSCLockingRewardsPerEpoch = lockingManager.rewardsPerEpoch();
    uint256 chiPrice = priceFeedAggregator.peek(chi);
    uint256 totalLockedAmount = lockingManager.totalLockedAmount();

    baseApr = uscStakingApr;
    extraApr = Math.mulDiv(wstUSCLockingRewardsPerEpoch * DAYS_IN_YEAR, chiPrice, totalLockedAmount) * 100;

    return (baseApr, extraApr, baseApr + extraApr);
  }
}
