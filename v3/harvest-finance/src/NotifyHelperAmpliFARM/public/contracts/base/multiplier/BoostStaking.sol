pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

import "./BoostStakingStorage.sol";
import "../inheritance/ControllableInit.sol";

contract BoostStaking is ControllableInit {

  using SafeERC20Upgradeable for IERC20Upgradeable;
  using SafeMathUpgradeable for uint256;

  bytes32 internal constant _STATE_REGISTRY_SLOT = 0xd16f4c6280c2dd1b1a7a6480cc08d3b41b272ca89e3be9c71deef43efb2f5544;
  bytes32 internal constant _NEXT_IMPLEMENTATION_SLOT = 0xc570e64b251693f4347e8407448121ade299a79e77064d8cd7af5ca7bfbe1892;
  bytes32 internal constant _NEXT_IMPLEMENTATION_TIMESTAMP_SLOT = 0x62b96e5ede0c36abe8acb847d9289796d4ede2397a91519c92c12bc185d24c80;
  bytes32 internal constant _NEXT_IMPLEMENTATION_DELAY_SLOT = 0x6b1147f38a74ee404fc0e0878e4855355b69311e658ad0ba321eeb355c97600f;

  modifier onlyToken() {
    require(msg.sender == tokenization(), "Only token can call this");
    _;
  }

  // only whitelisted pools can call methods with this modifier
  modifier onlyPool() {
    require(pools(msg.sender), "Only pool can use the limit");
    _;
  }

  constructor(address _storage, address _stakeToken) public {
    assert(_STATE_REGISTRY_SLOT == bytes32(uint256(keccak256("eip1967.boostStaking.stateRegistry")) - 1));
    assert(_NEXT_IMPLEMENTATION_SLOT == bytes32(uint256(keccak256("eip1967.boostStaking.nextImplementation")) - 1));
    assert(_NEXT_IMPLEMENTATION_TIMESTAMP_SLOT == bytes32(uint256(keccak256("eip1967.boostStaking.nextImplementationTimestamp")) - 1));
    assert(_NEXT_IMPLEMENTATION_DELAY_SLOT == bytes32(uint256(keccak256("eip1967.boostStaking.nextImplementationDelay")) - 1));
    // do not leave this contract uninitialized
    initalizeBoostStaking(_storage, _stakeToken);
  }

  function initalizeBoostStaking(address _storage, address _stakeToken) public initializer {
    ControllableInit.initialize(_storage);
    BoostStakingStorage boostStakingStorage = new BoostStakingStorage(_storage);
    setAddress(_STATE_REGISTRY_SLOT, address(boostStakingStorage));
    getStorage().setStakeToken(_stakeToken);
    _setNextImplementationDelay(12 hours);
  }

  function getStorage() public view returns(BoostStakingStorage) {
    return BoostStakingStorage(getAddress(_STATE_REGISTRY_SLOT));
  }

  function setAddress(bytes32 slot, address _address) private {
    // solhint-disable-next-line no-inline-assembly
    assembly {
      sstore(slot, _address)
    }
  }

  function setUint256(bytes32 slot, uint256 _value) private {
    // solhint-disable-next-line no-inline-assembly
    assembly {
      sstore(slot, _value)
    }
  }

  function getAddress(bytes32 slot) private view returns (address str) {
    // solhint-disable-next-line no-inline-assembly
    assembly {
      str := sload(slot)
    }
  }

  function getUint256(bytes32 slot) private view returns (uint256 str) {
    // solhint-disable-next-line no-inline-assembly
    assembly {
      str := sload(slot)
    }
  }

  /**
  * To be called by a reward pool only. Claims and uses up some limit for the user.
  */
  function use(address who, uint256 amount) public onlyPool {
    claim(who);
    getStorage().setAccruedLimit(who, accruedLimit(who).sub(amount));
  }

  /**
  * To be called by the user. Stakes tokens to start accruing.
  */
  function stake(uint256 amount) public {
    stakeFor(msg.sender, msg.sender, amount);
  }

  /**
  * To be called by the user (or anyone else). Stakes tokens to start accruing.
  */
  function stakeFor(address from, address who, uint256 amount) public {
    if (balance(who) == 0) {
      // start accruing claimFrom this moment, first moment of staking becomes the last unstake
      getStorage().setLastUnstake(who, now);
      getStorage().setLastClaim(who, now);
    } else {
      // claim limit accrued claimFrom last time, because now the accrual rate will increase
      claim(who);
    }

    // transfer the tokens
    IERC20Upgradeable(stakeToken()).safeTransferFrom(from, address(this), amount);
    getStorage().setBalance(who, balance(who).add(amount));
  }

  /**
  * To be called by users. Unstakes tokens and resets the penalty for unstaking.
  */
  function unstake(uint256 amount) public {
    // claim limit accrued claimFrom last time, because now the accrual rate will decrease
    claim(msg.sender);
    
    // subtraction safeguards the balance
    getStorage().setBalance(msg.sender, balance(msg.sender).sub(amount));
    
    // transfer the tokens
    IERC20Upgradeable(stakeToken()).safeTransfer(msg.sender, amount);
    getStorage().setLastUnstake(msg.sender, now);
  }

  /**
  * A convenience method for unstaking.
  */
  function exit() public {
    unstake(balance(msg.sender));
  }

  /**
  * Returns the limit of a user in real time.
  */
  function limitOf(address who) public view returns(uint256) {
    if (getLastClaim(who) == now) {
      // do not claim twice in the same block
      // do not claim anything for users without a stake
      return accruedLimit(who);
    }
    uint256 time = now.sub(getLastClaim(who));
    uint256 epochDurationIncludingPenalty = getEpochWithPenaltyForUser(who);
    uint256 delta = balance(who).mul(time).div(epochDurationIncludingPenalty);
    return accruedLimit(who).add(delta);
  }

  /**
  * Claims the accrued limit for the user.
  */
  function claim(address who) public {
    if (getLastClaim(who) == now) {
      // do not claim twice in the same block
      // do not claim anything for users without a stake
      return;
    }
    getStorage().setAccruedLimit(who, limitOf(who));
    getStorage().setLastClaim(who, now);
  }

  /**
  * Calculates the epoch duration with all penalties that should be applied to the user and a period.
  */
  function getEpochWithPenalty(uint256 firstPenalizedSecond, uint256 claimFrom, uint256 claimTo) 
  public view returns (uint256) {
    require(claimTo > claimFrom, "Invalid interval");
    uint256 lastPenalizedSecond = firstPenalizedSecond.add(penaltyDuration());
    if (claimFrom > lastPenalizedSecond) {
      // whole staking is after, return the penalty of 1 (no multiplier to the epoch)
      return epochDuration();
    } else {
      uint256 penaltyOnFirstSecond = lastPenalizedSecond.sub(claimFrom);
      uint256 penaltyOnLastSecond = claimTo >= lastPenalizedSecond ? 0 : lastPenalizedSecond.sub(claimTo);
      uint256 averagePenalty = penaltyOnFirstSecond.add(penaltyOnLastSecond).div(2);
      uint256 averageEpoch = epochDuration().mul(penaltyOnFirstSecond.add(penaltyOnLastSecond)).div(2);
      if (claimTo <= lastPenalizedSecond) {
        // claimTo is before the penalty ends
        return averagePenalty.mul(epochDuration());
      } else {
        // the penalty ends within the claim period
        // we calculate a weighted average of the time that is penalized, and the time that is penalty-free
        uint256 totalTime = claimTo.sub(claimFrom);
        uint256 penalizedTime = lastPenalizedSecond.sub(claimFrom);
        uint256 penalizedEpochDuration = penalizedTime.mul(averagePenalty.mul(epochDuration()));
        uint256 nonPenalizedTime = totalTime.sub(penalizedTime);
        uint256 nonPenalizedEpochDuration = nonPenalizedTime.mul(epochDuration());
        uint256 weightedEpoch = (penalizedEpochDuration.add(nonPenalizedEpochDuration)).div(totalTime);
        return weightedEpoch;
      }
    }
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function accruedLimit(address who) public view returns(uint256) {
    return getStorage().accruedLimit(who);
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function balance(address who) public view returns(uint256) {
    return getStorage().balance(who);
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function penaltyDuration() public view returns(uint256) {
    return getStorage().penaltyDuration();
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function epochDuration() public view returns(uint256) {
    return getStorage().epochDuration();
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function stakeToken() public view returns(address) {
    return getStorage().stakeToken();
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function tokenization() public view returns(address) {
    return getStorage().tokenization();
  }

  /**
  * A convenience pass-through to the storage contract.
  */
  function pools(address who) public view returns(bool) {
    return getStorage().pools(who);
  }

  /**
  * A convenience wrapper that calculates epoch duration applied to a user.
  */
  function getEpochWithPenaltyForUser(address who) public view returns(uint256) {
    return getEpochWithPenalty(
      getLastUnstake(who),
      getLastClaim(who),
      now
    );
  }

  /**
  * Returns when the user last claimed, or now() if they never staked.
  */
  function getLastClaim(address who) internal view returns(uint256) {
    return getStorage().lastClaim(who) == 0 ? now : getStorage().lastClaim(who);
  }

  /**
  * Returns when the user last unstaked, or now() if they never staked.
  */
  function getLastUnstake(address who) internal view returns(uint256) {
    return getStorage().lastUnstake(who) == 0 ? now : getStorage().lastUnstake(who);
  }

  /**
  * Set a contract allowed to tokenize this boosted limit.
  */
  function setTokenization(address who) public onlyGovernance {
    getStorage().setTokenization(who);
  }

  /**
  * Sets how long a penalty applies after unstaking.
  */
  function setPenaltyDuration(uint256 duration) public onlyGovernance {
    getStorage().setPenaltyDuration(duration);
  }

  /**
  * Sets how long it should take the user to earn 100% of their deposit
  * in limit, assuming no penalty.
  */
  function setEpochDuration(uint256 duration) public onlyGovernance {
    getStorage().setEpochDuration(duration);
  }

  /**
  * Allows a pool to claim limit.
  */
  function setPool(address _pool, bool _status) public onlyGovernance {
    getStorage().setPools(_pool, _status);
  }

  /**
  * For an optional tokenization in the future.
  */
  function withdrawLimit(address who, uint256 amount) public onlyToken {
    getStorage().setAccruedLimit(who, accruedLimit(who).sub(amount));
  }

  /**
  * For an optional tokenization in the future.
  */
  function depositLimit(address who, uint256 amount) public onlyToken {
    getStorage().setAccruedLimit(who, accruedLimit(who).add(amount));
  }

  /**
  * Logic for upgrades
  */
  function scheduleUpgrade(address impl) public onlyGovernance {
    _setNextImplementation(impl);
    _setNextImplementationTimestamp(block.timestamp.add(nextImplementationDelay()));
  }

  /**
  * Logic for upgrades
  */
  function shouldUpgrade() external view returns (bool, address) {
    return (
      nextImplementationTimestamp() != 0
      && block.timestamp > nextImplementationTimestamp()
      && nextImplementation() != address(0),
      nextImplementation()
    );
  }

  /**
  * Logic for upgrades
  */
  function finalizeUpgrade() external onlyGovernance {
    _setNextImplementation(address(0));
    _setNextImplementationTimestamp(0);
  }

  function _setNextImplementation(address _address) internal {
    setAddress(_NEXT_IMPLEMENTATION_SLOT, _address);
  }

  function nextImplementation() public view returns (address) {
    return getAddress(_NEXT_IMPLEMENTATION_SLOT);
  }

  function _setNextImplementationTimestamp(uint256 _value) internal {
    setUint256(_NEXT_IMPLEMENTATION_TIMESTAMP_SLOT, _value);
  }

  function nextImplementationTimestamp() public view returns (uint256) {
    return getUint256(_NEXT_IMPLEMENTATION_TIMESTAMP_SLOT);
  }

  function _setNextImplementationDelay(uint256 _value) internal {
    setUint256(_NEXT_IMPLEMENTATION_DELAY_SLOT, _value);
  }

  function nextImplementationDelay() public view returns (uint256) {
    return getUint256(_NEXT_IMPLEMENTATION_DELAY_SLOT);
  }
}
