pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/access/Ownable.sol";
import "../inheritance/Governable.sol";

contract BoostStakingStorage is Ownable, Governable {

  // the mapping of pools that are allowed to decrease accrued limit
  mapping(address => bool) public pools;

  // the limit accrued by users
  mapping(address => uint256) public accruedLimit;

  // the staked balance per user
  mapping(address => uint256) public balance;

  // the last time when a user claimed their limit (in seconds)
  mapping(address => uint256) public lastClaim;

  // the last time when a user unstaked (in seconds)
  mapping(address => uint256) public lastUnstake;

  // the token that the users should stake
  address public stakeToken;

  // within 1 epoch, the user should get 1x of their stake in limit
  // the longer the epoch duration is, the slower accrual rate it
  uint256 public epochDuration = 2 * 365 days;

  // a user reaches the maximum accrual rate in this number of days
  // on the first second of staking, the epoch duration for the user is epochDuration * penaltyDuration
  // after the last second of penalized period, the epoch duration is epochDuration
  uint256 public penaltyDuration = 30 days;

  // for future possible tokenization
  address public tokenization;

  constructor(address _storage) Governable(_storage) public {
  }

  function changeOwner(address _newOwner) public onlyGovernance {
    _transferOwnership(_newOwner);
  }

  function setTokenization(address _value) public onlyOwner {
    tokenization = _value;
  }

  function setPenaltyDuration(uint256 _value) public onlyOwner {
    penaltyDuration = _value;
  }

  function setEpochDuration(uint256 _value) public onlyOwner {
    epochDuration = _value;
  }

  function setStakeToken(address _value) public onlyOwner {
    stakeToken = _value;
  }

  function setLastUnstake(address _key, uint256 _value) public onlyOwner {
    lastUnstake[_key] = _value;
  }

  function setLastClaim(address _key, uint256 _value) public onlyOwner {
    lastClaim[_key] = _value;
  }

  function setBalance(address _key, uint256 _value) public onlyOwner {
    balance[_key] = _value;
  }

  function setAccruedLimit(address _key, uint256 _value) public onlyOwner {
    accruedLimit[_key] = _value;
  }

  function setPools(address _key, bool _value) public onlyOwner {
    pools[_key] = _value;
  }
}
