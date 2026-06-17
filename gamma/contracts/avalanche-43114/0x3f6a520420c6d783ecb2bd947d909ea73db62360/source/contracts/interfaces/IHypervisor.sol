// SPDX-License-Identifier: GPL-3.0-only
pragma solidity =0.8.20;
pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IERC20Minimal.sol";
import "@cryptoalgebra/integral-farming/contracts/interfaces/IFarmingCenter.sol";
import "./IMultiFeeDistribution.sol";

interface IHypervisor {

  function deposit(
      uint256,
      uint256,
      address,
      address,
      uint256[4] memory minIn
  ) external returns (uint256);

  function depositAndStake(
      uint256 deposit0,
      uint256 deposit1,
      address to,
      address from,
      uint256[4] memory inMin
  ) external returns (uint256 shares);

  function withdraw(
    uint256,
    address,
    address,
    uint256[4] memory
  ) external returns (uint256, uint256);


  function compound(uint256[4] memory inMin) external;

  function zeroBurn() external returns(uint256 owed0, uint256 owed1);

  function rebalance(
    int24 _baseLower,
    int24 _baseUpper,
    int24 _limitLower,
    int24 _limitUpper,
    address _feeRecipient,
    uint256[4] memory minIn, 
    uint256[4] memory outMin
    ) external;


  function pool() external view returns (IAlgebraPool);
  function farmingCenter() external view returns (IFarmingCenter);
  function receiver() external view returns (IMultiFeeDistribution);
  function currentTick() external view returns (int24 tick);
  function tickSpacing() external view returns (int24 spacing);
  function fee() external view returns (uint8 fee);
  function baseLower() external view returns (int24 tick);
  function baseUpper() external view returns (int24 tick);
  function limitLower() external view returns (int24 tick);
  function limitUpper() external view returns (int24 tick);
  function token0() external view returns (IERC20);
  function token1() external view returns (IERC20);
  function rewardToken() external view returns (IERC20);
  function bonusRewardToken() external view returns (IERC20);
  function baseNftId() external view returns (uint256);
  function limitNftId() external view returns (uint256);
  function balanceOf(address) external view returns (uint256);
  function approve(address, uint256) external returns (bool);
  function transferFrom(address, address, uint256) external returns (bool);
  function transfer(address, uint256) external returns (bool);
  function getTotalAmounts() external view returns (uint256 total0, uint256 total1);
  function getUnclaimedFees() external view returns (uint256 fees0, uint256 fees1);
  function getTotalAmountsPlusFees() external view returns (uint256 total0, uint256 total1);
  function getBasePosition() external view returns (uint256 liquidity, uint256 total0, uint256 total1);
  function getLimitPosition() external view returns (uint128 liquidity, uint256 amount0, uint256 amount1);
  function deposit0Max() external view returns (uint256);
  function deposit1Max() external view returns (uint256);
  function totalSupply() external view returns (uint256 );
  function owner() external view returns (address);
  function getReward() external;

  // Owner functions

  function setWhitelist(address _address) external;
  function setFee(uint8 newFee) external; 
  function removeWhitelisted() external;
  function transferOwnership(address newOwner) external;
  function toggleDirectDeposit() external;
  function setTickSpacing(int24 newTickSpacing) external;
  function transferReceiver(address _receiver) external;
  function setProtocolAddresses(address _pool, address _nonfungiblePositionManager, address _farmingCenter) external;
  function setIncentiveKey(address _rewardToken, address _bonusRewardToken, address _pool, uint256 _nonce) external;
  function setNftIds(uint256 _baseNftId, uint256 _limitNftId) external;
  function pause() external;
  function unpause() external;
  function emergencyClaimReward(IERC20Minimal rewardToken, uint256 amount) external;

  function decreaseLiquidity(
    uint256 tokenId,
    uint128 liquidity,
    uint256 amount0Min,
    uint256 amount1Min
  ) external returns (uint256 amount0, uint256 amount1);

  function mintLiquidity(
      int24 tickLower,
      int24 tickUpper,
      uint256 amount0Desired,
      uint256 amount1Desired,
      address recipient,
      uint256 amount0Min,
      uint256 amount1Min
  ) external returns (uint256 tokenId);


}