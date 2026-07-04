// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "./interfaces/IDecubateMasterChef.sol";
import "./interfaces/IDecubateStaking.sol";
import "./DCBVault.sol";

contract DecubateTiers is Ownable {
  using SafeMath for uint256;

  /**
   *
   * @dev Tier struct
   *

   * @param {minLimit} Minimum amount of dcb to be staked to join tier
   * @param {maxLimit} Maximum amount of dcb to be staked to join tier
   *
   */
  struct Tier {
    uint256 minLimit;
    uint256 maxLimit;
  }

  IDecubateMasterChef public legacyStakingContract; //Legacy staking contract instance
  IDecubateMasterChef public compoundStakingContract; // Compound Staking contract instance
  IDecubateStaking public multiAssetStakingContract; //Multi asset Staking contract instance

  DCBVault private compounderContract; //Staking contract instance
  address private dcbTokenAddress; //DCB token instance

  Tier[] public tierInfo; //Tier storage

  constructor(
    address _legacyStakingContract,
    address _compoundStakingContract,
    address _multiAssetStakingContract,
    DCBVault _vault,
    address _token
  ) {
    legacyStakingContract = IDecubateMasterChef(_legacyStakingContract);
    compoundStakingContract = IDecubateMasterChef(_compoundStakingContract);
    multiAssetStakingContract = IDecubateStaking(_multiAssetStakingContract);
    compounderContract = _vault;
    dcbTokenAddress = _token;
  }

  /**
   *
   * @dev add new tier, only available for owner
   *
   */
  function addTier(uint256 _minLimit, uint256 _maxLimit) external onlyOwner returns (bool) {
    tierInfo.push(Tier({ minLimit: _minLimit, maxLimit: _maxLimit }));
    return true;
  }

  /**
   *
   * @dev update a given tier
   *
   */
  function setTier(
    uint256 tierId,
    uint256 _minLimit,
    uint256 _maxLimit
  ) external onlyOwner returns (bool) {
    require(tierId < tierInfo.length, "Invalid tier Id");

    tierInfo[tierId].minLimit = _minLimit;
    tierInfo[tierId].maxLimit = _maxLimit;
    return true;
  }

  /**
   *
   * @dev set address of legacy staking contract
   *
   */
  function setLegacyStakingContract(address _stakingContract) external onlyOwner {
    legacyStakingContract = IDecubateMasterChef(_stakingContract);
  }

  /**
   *
   * @dev set address of compound staking contract
   *
   */
  function setCompoundingStakingContract(address _stakingContract) external onlyOwner {
    compoundStakingContract = IDecubateMasterChef(_stakingContract);
  }

  /**
   *
   * @dev set address of compound staking contract
   *
   */
  function setMultiAssetStakingContract(address _stakingContract) external onlyOwner {
    multiAssetStakingContract = IDecubateStaking(_stakingContract);
  }

  /**
   *
   * @dev set address of compounder contract
   *
   */
  function setCompounderContract(DCBVault _compounder) external onlyOwner {
    compounderContract = _compounder;
  }

  /**
   *
   * @dev set address of dcb token contract
   *
   */
  function setDCBTokenAddress(address _token) external onlyOwner {
    dcbTokenAddress = _token;
  }

  /**
   *
   * @dev get total number of the tiers
   *
   * @return len length of the pools
   *
   */
  function getTiersLength() external view returns (uint256) {
    return tierInfo.length;
  }

  /**
   *
   * @dev get info of all tiers
   *
   * @return {Tier[]} tier info struct
   *
   */
  function getTiers() external view returns (Tier[] memory) {
    return tierInfo;
  }

  /**
   *
   * @dev Get total amount of dcb staked by a user
   *
   * @param addr Address of the user
   *
   * @return amount Total amount of dcb staked
   */

  function getTotalDeposit(address addr) public view returns (uint256 amount) {
    uint256 legacyLen = legacyStakingContract.poolLength();
    uint256 tempAmt;

    for (uint256 i = 0; i < legacyLen; i++) {
      (tempAmt, , , , ) = legacyStakingContract.users(i, addr);
      amount = amount.add(tempAmt);
    }

    uint256 compoundLen = compoundStakingContract.poolLength();

    for (uint256 i = 0; i < compoundLen; i++) {
      (, , , , , , , , , address token) = compoundStakingContract.poolInfo(i);

      if (token == dcbTokenAddress) {
        (, , tempAmt, ) = compounderContract.users(i, addr);
        amount = amount.add(tempAmt);
      }
    }

    uint256 multiAssetLen = multiAssetStakingContract.poolLength();
    IDecubateStaking.PoolToken memory inputToken;

    for (uint256 i = 0; i < multiAssetLen; i++) {
      (, , , , , inputToken, , , , , ) = multiAssetStakingContract.poolInfo(i);

      if (inputToken.addr == dcbTokenAddress) {
        (tempAmt, , , , ) = multiAssetStakingContract.users(i, addr);
        amount = amount.add(tempAmt);
      }
    }
  }

  /**
   *
   * @dev Get tier of a user
   * Total deposit should be greater than or equal to minimum limit or
   * less than maximum limit. If equal to max limit, user will be given
   * next tier
   *
   * @param addr Address of the user
   *
   * @return flag Whether user belongs to any bracket or not
   * @return pos To which bracket does the user belong
   *
   */

  function getTierOfUser(address addr)
    public
    view
    returns (
      bool flag,
      uint256 pos,
      uint256 multiplier
    )
  {
    uint256 len = tierInfo.length;
    uint256 totalDeposit = getTotalDeposit(addr);
    multiplier = 1;

    for (uint256 i = 0; i < len; i++) {
      if (totalDeposit >= tierInfo[i].minLimit && totalDeposit < tierInfo[i].maxLimit) {
        pos = i;
        flag = true;
        break;
      }
    }

    // compounding effect for final bracket
    if (!flag && totalDeposit > tierInfo[len - 1].maxLimit) {
      pos = len - 1;
      flag = true;
      // multiplier is the users total deposit divided by the
      // minimum limit in the tier. For example Diamond tier is
      // 80,0000+ DCB. The max limit of the tier should be set
      // 159,999 DCB and when the limit is passed the compounding
      // effect will be used to find the number of tickets e.g 2
      // for 160,000
      multiplier = totalDeposit / (tierInfo[len - 1].minLimit);
    }

    return (flag, pos, multiplier);
  }
}
