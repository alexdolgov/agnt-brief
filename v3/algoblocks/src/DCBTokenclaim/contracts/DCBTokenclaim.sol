// SPDX-License-Identifier: MIT

//** Decubate Token claim Contract */
//** Author: Aceson 2022.3 */

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IDecubateTiers.sol";
import "./interfaces/IDecubateWalletStore.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "./interfaces/IDecubateInvestments.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract DCBTokenclaim is Ownable {
  using SafeMath for uint256;
  using SafeMath for uint8;

  struct UserAllocation {
    uint256 shares; //Shares owned by user
    uint8 registeredTier; //Tier of user while registering
    bool active; //Is active or not
    uint256 claimedAmount; //Claimed amount from event
  }

  struct ClaimInfo {
    uint8 minTier; //Minimum tier required for users while registering
    uint32 createDate; //Created date
    uint32 startDate; //Event start date
    uint32 endDate; //Event end date
    uint256 distAmount; //Total distributed amount
  }

  struct Tiers {
    uint256 minLimit; //Minimum amount to be held for reaching this tier
    uint16 multi; //Multiplier for this tier.
    //If multiplier is 10%, input 1100 (1100 / 1000 = 1.1x = 10%)
  }

  IDecubateTiers private _tiers; //Tiers contract
  IDecubateWalletStore private _walletStore; //Walletstore contract
  IDecubateInvestments private _investment; //Investments contract
  IERC20 private _rewardToken; //Token to be used for tier calc

  //Keccack(<hidden answer>)

  /* solhint-disable var-name-mixedcase */
  bytes32 public ANSWER_HASH;

  uint256 public totalShares; //Total shares for the event

  mapping(address => UserAllocation) public userAllocation; //Allocation per user

  ClaimInfo public claimInfo;
  Tiers[] public tierInfo;

  uint8[] public weights = [5, 10, 20, 50, 100, 200]; //Weights per tier

  address[] private participants;
  address[] private registeredUsers;

  constructor(
    address _rewardTokenAddr,
    address _walletStoreAddr,
    bytes32 _answerHash,
    address _investmentAddr,
    address _tiersAddr,
    uint256 _distAmount,
    uint8 _minTier,
    uint32 _startDate,
    uint32 _endDate
  ) {
    _walletStore = IDecubateWalletStore(_walletStoreAddr);
    _investment = IDecubateInvestments(_investmentAddr);
    _tiers = IDecubateTiers(_tiersAddr);
    _rewardToken = IERC20(_rewardTokenAddr);

    /** Generate the new Claim Event */
    claimInfo.minTier = _minTier;
    claimInfo.distAmount = _distAmount;
    claimInfo.createDate = uint32(block.timestamp);
    claimInfo.startDate = _startDate;
    claimInfo.endDate = _endDate;

    ANSWER_HASH = _answerHash;

    tierInfo.push(Tiers({ minLimit: 0, multi: 1000 })); //For users with no tier
  }

  function registerForAllocation(bytes memory _sig) external returns (bool) {
    address user = ECDSA.recover(ECDSA.toEthSignedMessageHash(ANSWER_HASH), _sig);
    require(msg.sender == user, "Invalid signer");

    (, uint256 _tier, uint256 _multi) = _tiers.getTierOfUser(msg.sender);

    require(_tier >= claimInfo.minTier, "Minimum tier required");
    require(_walletStore.isVerified(msg.sender), "User is not verified");
    require(!userAllocation[msg.sender].active, "Already registered");
    require(
      block.timestamp <= claimInfo.endDate && block.timestamp >= claimInfo.startDate,
      "Registration closed"
    );

    uint256 shares = weights[_tier].mul(_multi);
    (, uint16 _holdMulti) = getTier(msg.sender);
    shares = shares.mul(_holdMulti).div(1000);

    userAllocation[msg.sender].active = true;
    userAllocation[msg.sender].shares = shares;
    userAllocation[msg.sender].registeredTier = uint8(_tier);

    registeredUsers.push(msg.sender);

    totalShares = totalShares.add(shares);
    return true;
  }

  function claimTokens() external returns (bool) {
    UserAllocation storage user = userAllocation[msg.sender];

    require(user.active, "User not registered / Already claimed");
    require(block.timestamp >= claimInfo.endDate, "Claim not open yet");

    uint256 amount = getClaimableAmount(msg.sender);

    if (amount > 0) {
      participants.push(msg.sender);
      _investment.setUserInvestment(msg.sender, address(this), amount);
    }

    user.shares = 0;
    user.claimedAmount = amount;
    user.active = false;

    return true;
  }
  
  //Actual tiers start from tierInfo[1]
  function addTier(uint256 _minLimit, uint16 _multi) external onlyOwner returns (bool) {
    require(_minLimit > tierInfo[tierInfo.length - 1].minLimit, "Invalid limit");

    tierInfo.push(Tiers({ minLimit: _minLimit, multi: _multi }));
    return true;
  }

  function setTier(
    uint8 _tierId,
    uint256 _minLimit,
    uint16 _multi
  ) external onlyOwner returns (bool) {
    Tiers storage tier = tierInfo[_tierId];

    tier.minLimit = _minLimit;
    tier.multi = _multi;

    return true;
  }

  function setWeights(uint8[] calldata _values) external onlyOwner returns (bool) {
    weights = _values;
    return true;
  }

  function setAnswerHash(bytes32 _newHash) external onlyOwner returns (bool) {
    ANSWER_HASH = _newHash;
    return true;
  }

  function setClaimInfo(
    uint8 _minTier,
    uint256 _distAmount,
    uint32 _startDate,
    uint32 _endDate
  ) external onlyOwner returns (bool) {
    claimInfo.minTier = _minTier;
    claimInfo.distAmount = _distAmount;
    claimInfo.startDate = _startDate;
    claimInfo.endDate = _endDate;

    return true;
  }

  function transferToken(
    address _token,
    uint256 _amount,
    address _to
  ) external onlyOwner returns (bool) {
    require(IERC20(_token).balanceOf(address(this)) >= _amount, "Not enough funds in contract");
    IERC20(_token).transfer(_to, _amount);

    return true;
  }

  function setTiersAddress(address _contract) external onlyOwner returns (bool) {
    _tiers = IDecubateTiers(_contract);
    return true;
  }

  function setInvestmentAddress(address _contract) external onlyOwner returns (bool) {
    _investment = IDecubateInvestments(_contract);
    return true;
  }

  function setWalletStoreAddress(address _contract) external onlyOwner returns (bool) {
    _walletStore = IDecubateWalletStore(_contract);
    return true;
  }

  function getParticipants() external view returns (address[] memory) {
    return participants;
  }

  function getRegisteredUsers() external view returns (address[] memory) {
    return registeredUsers;
  }

  function getWeights() external view returns (uint8[] memory) {
    return weights;
  }

  function getClaimForTier(uint8 _tier, uint8 _multi) public view returns (uint256) {
    return ((weights[_tier].mul(_multi).mul(claimInfo.distAmount)).div(totalShares));
  }

  function getClaimableAmount(address _address) public view returns (uint256) {
    return ((userAllocation[_address].shares.mul(claimInfo.distAmount)).div(totalShares));
  }

  function getTier(address _user) public view returns (uint256 _tier, uint16 _holdMulti) {
    uint256 len = tierInfo.length;
    uint256 amount = _rewardToken.balanceOf(_user);

    for (uint256 i = len - 1; i >= 0; i--) {
      if (amount >= tierInfo[i].minLimit) {
        return (i, tierInfo[i].multi);
      }
    }
  }
}
