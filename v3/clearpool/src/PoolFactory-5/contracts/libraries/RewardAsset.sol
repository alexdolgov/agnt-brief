// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SafeCastUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol';

library RewardAsset {
  using SafeCastUpgradeable for uint256;
  using SafeCastUpgradeable for int256;

  struct RewardAssetData {
    address asset; // the addess of the reward asset
    uint256 rate; // the reward rate of the asset
  }

  struct Data {
    mapping(address => bool) flags; // tracks whether the reward has already been added or not.
    mapping(address => uint256) addressIndex; // saves the index of each reward asset
    mapping(address => uint256) magnifiedRewardPerShare; // rewardAsset -> magnifiedRewardPerShare
    mapping(uint256 => uint256) roundLastDistribution; //Timestamp when last round staking reward distribution occurred
    mapping(address => mapping(address => int256)) magnifiedRewardCorrections; // rewardAsset -> account -> magnifiedReward correction
    mapping(address => mapping(address => uint256)) rewardWithdrawals; // rewardAsset -> lender -> amount
    mapping(uint256 => mapping(address => uint256)) magnifiedRoundRewardPerShare; // round bond ID -> rewardAsset -> magnifiedRewardPerShare
    RewardAssetData[] rewardAssetData; // the array of the rewardAssetData
    uint256 id; //a number that increments when a new reward asset is added
    uint256 lastRewardDistribution; //Timestamp when last staking reward distribution occurred
  }

  /**
   * @notice used to insert new reward asset with rate
   * @param self see {Data}
   * @param asset the address of the reward asset 
   * @param rate  the reward rate of the asset
   */
  function insert(Data storage self, address asset, uint256 rate) internal returns (bool) {
    if (self.flags[asset]) {
      uint256 index = self.addressIndex[asset];

      if (self.rewardAssetData[index].rate == rate) {
        return false;
      }
      self.rewardAssetData[index].rate = rate;
      return true;
    }

    self.flags[asset] = true;
    self.rewardAssetData.push(RewardAssetData(asset, rate));
    self.addressIndex[asset] = self.id;
    self.id++;
    return true;
  }
  /**
   * see {decreaseRewardCorrection}
   */
  function decreaseRewardCorrection(
    Data storage self,
    address asset,
    address account,
    uint256 amount
  ) internal {
    return
      decreaseRewardCorrection(self, asset, account, amount, self.magnifiedRewardPerShare[asset]);
  }

   /**
    * @notice decreases the reward of the specified asset for the given account
    * @param self see {Data}
    * @param asset the address of the reward asset
    * @param account the address of the lender
    * @param amount the number of reward per share
    * @param share the number of shares held by the lender
    */
  function decreaseRewardCorrection(
    Data storage self,
    address asset,
    address account,
    uint256 amount,
    uint256 share
  ) internal {
    self.magnifiedRewardCorrections[asset][account] -= (share * amount).toInt256();
  }

  /**
   * see {increaseRewardCorrection}
   */
  function increaseRewardCorrection(
    Data storage self,
    address asset,
    address account,
    uint256 amount
  ) internal {
    return
      increaseRewardCorrection(self, asset, account, amount, self.magnifiedRewardPerShare[asset]);
  }

   /**
    * @notice increases the reward of the specified asset for the given account
    * @param self see {Data}
    * @param asset the address of the reward asset
    * @param account the address of the lender
    * @param amount the number of reward per share
    * @param share the number of shares held by the lender
    */ 
  function increaseRewardCorrection(
    Data storage self,
    address asset,
    address account,
    uint256 amount,
    uint256 share
  ) internal {
    self.magnifiedRewardCorrections[asset][account] += (share * amount).toInt256();
  }

  /**
   * @notice used to calculate and save the reward per share
   * @param self see {Data}
   * @param asset the address of the asset
   * @param period the duration of time between now and the last reward distribution date
   * @param rate the number of the reward rate
   * @param rewardMagnitude value by which all rewards are magnified for calculation
   * @param totalSupply the total supply of pool tokens
   */
  function updateMagnifiedRewardPerShare(
    Data storage self,
    address asset,
    uint256 period,
    uint256 rate,
    uint256 rewardMagnitude,
    uint256 totalSupply
  ) internal {
    uint256 _rewardPerShare = ((rewardMagnitude * period * rate)) / totalSupply;
    self.magnifiedRewardPerShare[asset] += _rewardPerShare;
  }

   /**
   * @notice used to calculate and save the reward per share for the given round
   * @param self see {Data}
   * @param asset the address of the asset
   * @param roundBondId the round bond Id
   * @param period the duration of time between now and the last reward distribution date
   * @param rate the number of the reward rate
   * @param rewardMagnitude value by which all rewards are magnified for calculation
   * @param totalSupply the total supply of pool tokens
   */
  function updateMagnifiedRoundRewardPerShare(
    Data storage self,
    address asset,
    uint256 roundBondId,
    uint256 period,
    uint256 rate,
    uint256 rewardMagnitude,
    uint256 totalSupply
  ) internal {
    uint256 _rewardPerShare = ((rewardMagnitude * period * rate)) / totalSupply;
    self.magnifiedRoundRewardPerShare[roundBondId][asset] += _rewardPerShare;
  }

  /**
   * @notice used to update the reward withdrawn by the lender for the specified asset
   * @param self see {Data}
   * @param asset the address of the asset
   * @param account the address of the lender
   * @param amount the amount of reward withdrawn
   */
  function updateRewardWithdrawals(
    Data storage self,
    address asset,
    address account,
    uint256 amount
  ) internal {
    self.rewardWithdrawals[asset][account] += amount;
  }

  /**
   * @notice used to retrieve the list of available reward assets
   * @param self see {Data}
   * @return returns the array of the reward assets
   */
  function getList(Data storage self) internal view returns (RewardAssetData[] memory) {
    return self.rewardAssetData;
  }
}
