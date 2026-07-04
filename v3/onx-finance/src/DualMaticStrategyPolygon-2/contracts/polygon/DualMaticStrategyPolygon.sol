pragma solidity 0.7.3;

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "../interface/SushiBar.sol";
import "./interface/IStakingRewards.sol";
import "./interface/IStakingDualRewards.sol";
import "../interface/IVault.sol";
import "hardhat/console.sol";

contract DualMaticStrategyPolygon is OwnableUpgradeable {

  using SafeMath for uint256;
  using SafeERC20 for IERC20;

  address public multisigWallet;
  address public treasury;
  address public rewardManager;

  mapping(address => uint256) public userDQuickDebt;

  uint256 public accDQuickPerShare;
  uint256 public lastPendingDQuick;
  uint256 public curPendingDQuick;

  mapping(address => uint256) public userRewardDebt;

  uint256 public accRewardPerShare;
  uint256 public lastPendingReward;
  uint256 public curPendingReward;

  uint256 keepFee;
  uint256 keepFeeMax;

  uint256 keepReward;
  uint256 keepRewardMax;

  address public vault;
  address public underlying;
  address public quickRewardPool;
  address public dQuick;
  address public externalRewardToken;
  bool public sell;

  address public dQuickExternalRewardsPool;

  constructor() public {
  }

  function initializeAlphaStrategy(
    address _multisigWallet,
    address _rewardManager,
    address _underlying,
    address _vault,
    address _quickRewardPool,
    address _dQuickExternalRewardsPool
  ) public initializer {
    underlying = _underlying;
    vault = _vault;
    quickRewardPool = _quickRewardPool;

    rewardManager = _rewardManager;

    dQuick = getRewardsToken(_quickRewardPool);

    dQuickExternalRewardsPool = _dQuickExternalRewardsPool;
    externalRewardToken = getRewardsToken(_dQuickExternalRewardsPool);

    sell = true;

    __Ownable_init();

    address _lpt;

    _lpt = IStakingRewards(_quickRewardPool).stakingToken();
    require(_lpt == underlying, "Pool Info does not match underlying");
    
    keepFee = 10;
    keepFeeMax = 100;

    keepReward = 10;
    keepRewardMax = 100;

    multisigWallet = _multisigWallet;

    treasury = address(0xc109a7ccC7413F19a3F6C4a3DD70868E69aAaAfc);
  }

  // keep fee functions
  function setKeepFee(uint256 _fee, uint256 _feeMax) external onlyOwner {
    require(_feeMax > 0, "feeMax should be bigger than zero");
    require(_fee < _feeMax, "fee can't be bigger than feeMax");
    keepFee = _fee;
    keepFeeMax = _feeMax;
  }

  // keep reward functions
  function setKeepReward(uint256 _fee, uint256 _feeMax) external onlyMultisigOrOwner {
    require(_feeMax > 0, "Reward feeMax should be bigger than zero");
    require(_fee < _feeMax, "Reward fee can't be bigger than feeMax");
    keepReward = _fee;
    keepRewardMax = _feeMax;
  }

  // Salvage functions
  function unsalvagableTokens(address token) public view returns (bool) {
    return (token == underlying);
  }

  /**
  * Salvages a token.
  */
  function salvage(address recipient, address token, uint256 amount) public onlyOwner {
    // To make sure that governance cannot come in and take away the coins
    require(!unsalvagableTokens(token), "token is defined as not salvagable");
    IERC20(token).safeTransfer(recipient, amount);
  }

  // Reward time based model functions

  modifier onlyVault() {
    require(msg.sender == vault, "Not a vault");
    _;
  }

  modifier onlyMultisig() {
    require(msg.sender == multisigWallet , "The sender has to be the multisig wallet");
    _;
  }

  modifier onlyMultisigOrOwner() {
    require(msg.sender == multisigWallet || msg.sender == owner() , "The sender has to be the multisig wallet or owner");
    _;
  }

  function setMultisig(address _wallet) public onlyMultisig {
    multisigWallet = _wallet;
  }

  function updateAccPerShare(address user) public onlyVault {
    updateAccDQuickPerShare(user);
    updateAccRewardPerShare(user);
  }

  function updateAccRewardPerShare(address user) internal {
    curPendingReward = pendingReward();
    uint256 totalSupply = IERC20(vault).totalSupply();

    if (lastPendingReward > 0 && curPendingReward < lastPendingReward) {
      curPendingReward = 0;
      lastPendingReward = 0;
      accRewardPerShare = 0;
      userRewardDebt[user] = 0;
      return;
    }

    if (totalSupply == 0) {
      accRewardPerShare = 0;
      return;
    }

    uint256 addedReward = curPendingReward.sub(lastPendingReward);
    accRewardPerShare = accRewardPerShare.add(
      (addedReward.mul(1e36)).div(totalSupply)
    );
  }

  function updateAccDQuickPerShare(address user) internal {
    // For XSushi
    curPendingDQuick = pendingDQuick();
    uint256 totalSupply = IERC20(vault).totalSupply();

    if (lastPendingDQuick > 0 && curPendingDQuick < lastPendingDQuick) {
      curPendingDQuick = 0;
      lastPendingDQuick = 0;
      accDQuickPerShare = 0;
      userDQuickDebt[user] = 0;
      return;
    }

    if (totalSupply == 0) {
      accDQuickPerShare = 0;
      return;
    }

    uint256 addedReward = curPendingDQuick.sub(lastPendingDQuick);
    accDQuickPerShare = accDQuickPerShare.add(
      (addedReward.mul(1e36)).div(totalSupply)
    );
  }

  function updateUserRewardDebts(address user) public onlyVault {
    userDQuickDebt[user] = IERC20(vault).balanceOf(user)
      .mul(accDQuickPerShare)
      .div(1e36);

    userRewardDebt[user] = IERC20(vault).balanceOf(user)
      .mul(accRewardPerShare)
      .div(1e36);
  }


  function pendingDQuick() public view returns (uint256) {
    uint256 dQuickBalance = IERC20(dQuick).balanceOf(address(this));

    uint256 stakedDquick = IStakingRewards(dQuickExternalRewardsPool).balanceOf(address(this));

    return dQuickBalance.add(stakedDquick);
  }

  function pendingReward() public view returns (uint256) {
    uint256 balance = IERC20(externalRewardToken).balanceOf(address(this));

    return balance;
  }

  function pendingRewardOfUser(address user) external view returns (uint256, uint256) {
    return (pendingDQuickOfUser(user), pendingRewardTokenOfUser(user));
  }

  function pendingDQuickOfUser(address user) public view returns (uint256) {
    uint256 totalSupply = IERC20(vault).totalSupply();
    uint256 userBalance = IERC20(vault).balanceOf(user);

    if (totalSupply == 0) return 0;

    // pending dQuick
    uint256 allPendingDQuick = pendingDQuick();

    if (allPendingDQuick < lastPendingDQuick) return 0;

    uint256 addedReward = allPendingDQuick.sub(lastPendingDQuick);

    uint256 newAccDQuickPerShare = accDQuickPerShare.add(
        (addedReward.mul(1e36)).div(totalSupply)
    );

    uint256 _pendingDQuick = userBalance.mul(newAccDQuickPerShare).div(1e36).sub(
      userDQuickDebt[user]
    );

    return _pendingDQuick;
  }

  function pendingRewardTokenOfUser(address user) public view returns (uint256) {
    uint256 totalSupply = IERC20(vault).totalSupply();
    uint256 userBalance = IERC20(vault).balanceOf(user);

    if (totalSupply == 0) return 0;

    // pending RewardToken
    uint256 allPendingReward = pendingReward();
    if (allPendingReward < lastPendingReward) return 0;

    uint256 addedReward = allPendingReward.sub(lastPendingReward);

    uint256 newAccRewardPerShare = accRewardPerShare.add(
      (addedReward.mul(1e36)).div(totalSupply)
    );

    uint256 _pendingReward = userBalance.mul(newAccRewardPerShare).div(1e36).sub(
      userRewardDebt[user]
    );

    return _pendingReward;
  }

  function getPendingShare(address user, uint256 perShare, uint256 debt) internal returns (uint256 share) {
    uint256 current = IERC20(vault).balanceOf(user)
      .mul(perShare)
      .div(1e36);

    if(current < debt){
      return 0;
    }

    return current.sub(debt);
  }

  function withdrawReward(address user) public onlyVault {
    // withdraw pending dQuick
    uint256 _pendingDQuick = getPendingShare(user, accDQuickPerShare, userDQuickDebt[user]);

    uint256 _dQuickBalance = IERC20(dQuick).balanceOf(address(this));

    if (_dQuickBalance < _pendingDQuick) {
      uint256 remaining = _pendingDQuick.sub(_dQuickBalance);

      uint256 dQuckBalanceInRewardsPool = IStakingRewards(dQuickExternalRewardsPool).balanceOf(address(this));

      if(remaining > dQuckBalanceInRewardsPool){
        remaining = dQuckBalanceInRewardsPool;
      }

      IStakingRewards(dQuickExternalRewardsPool).withdraw(remaining);

      _dQuickBalance = IERC20(dQuick).balanceOf(address(this));
    }

    _pendingDQuick = MathUpgradeable.min(_dQuickBalance, _pendingDQuick);

    // send reward to user
    if(_pendingDQuick > 0 && _pendingDQuick <= curPendingDQuick) {
      IERC20(dQuick).safeTransfer(user, _pendingDQuick);

      lastPendingDQuick = curPendingDQuick.sub(_pendingDQuick);
    }

    // withdraw pending rewards token
    uint256 _pending = getPendingShare(user, accRewardPerShare, userRewardDebt[user]);

    uint256 _balance = IERC20(externalRewardToken).balanceOf(address(this));

    if (_balance < _pending) {
      getRewardForPool(dQuickExternalRewardsPool);

      _balance = IERC20(externalRewardToken).balanceOf(address(this));
    }

    _pending = MathUpgradeable.min(_balance, _pending);

    if(_pending > 0 && _pending <= curPendingReward){
      // send reward to user
      IERC20(externalRewardToken).safeTransfer(user, _pending);
      lastPendingReward = curPendingReward.sub(_pending);
    }
  }

  function getRewardsToken(address pool) public view returns (address token) {
    return IStakingRewards(pool).rewardsToken();
  }

  function withdrawAllToVault() public onlyVault {
    if (address(quickRewardPool) != address(0)) {
      exitQuickRewardPool();
    }

    IERC20(underlying).safeTransfer(vault, IERC20(underlying).balanceOf(address(this)));
  }

  function withdrawToVault(uint256 amount) public onlyVault {
    // Typically there wouldn't be any amount here
    // however, it is possible because of the emergencyExit
    uint256 entireBalance = IERC20(underlying).balanceOf(address(this));

    if(amount > entireBalance){
      // While we have the check above, we still using SafeMath below
      // for the peace of mind (in case something gets changed in between)
      uint256 needToWithdraw = amount.sub(entireBalance);
      uint256 toWithdraw = Math.min(quickRewardPoolBalance(), needToWithdraw);
      IStakingRewards(quickRewardPool).withdraw(toWithdraw);
    }

    IERC20(underlying).safeTransfer(vault, amount);
  }

  /*
  *   Note that we currently do not have a mechanism here to include the
  *   amount of reward that is accrued.
  */
  function investedUnderlyingBalance() external view returns (uint256) {
    if (quickRewardPool == address(0)) {
      return IERC20(underlying).balanceOf(address(this));
    }
    // Adding the amount locked in the reward pool and the amount that is somehow in this contract
    // both are in the units of "underlying"
    // The second part is needed because there is the emergency exit mechanism
    // which would break the assumption that all the funds are always inside of the reward pool
    return quickRewardPoolBalance().add(IERC20(underlying).balanceOf(address(this)));
  }

  function quickRewardPoolBalance() internal view returns (uint256 bal) {
      bal = IStakingRewards(quickRewardPool).balanceOf(address(this));
  }


  function dQuickRewardPoolBalance() internal view returns (uint256 bal) {
    bal = IStakingRewards(dQuickExternalRewardsPool).balanceOf(address(this));
  }

  function exitQuickRewardPool() internal {
      uint256 bal = quickRewardPoolBalance();
      if (bal != 0) {
          IStakingRewards(quickRewardPool).exit();
      }
  }


  function exitDQuickRewardPool() internal {
    uint256 bal = dQuickRewardPoolBalance();
    if (bal != 0) {
      IStakingRewards(dQuickExternalRewardsPool).exit();
    }
  }

  function enterQuickRewardPool() internal {
    uint256 entireBalance = IERC20(underlying).balanceOf(address(this));
    if (entireBalance > 0) {
      IERC20(underlying).safeApprove(quickRewardPool, 0);
      IERC20(underlying).safeApprove(quickRewardPool, entireBalance);

      IStakingRewards(quickRewardPool).stake(entireBalance);
    }
  }

  function stakeQuickFarm() external {
    enterQuickRewardPool();
  }

  function withdrawFees(uint256 added, address token) internal{
    if (added != 0) {
      uint256 fee = added.mul(keepFee).div(keepFeeMax);
      IERC20(token).safeTransfer(treasury, fee);

      uint256 feeReward = added.mul(keepReward).div(keepRewardMax);
      IERC20(token).safeTransfer(rewardManager, feeReward);
    }
  }

  function calculatedAndWithdrawFees(address pool, address rewardToken) internal {
    uint256 balanceBefore = IERC20(rewardToken).balanceOf(address(this));

    IStakingRewards(pool).getReward();

    uint256 balanceAfter = IERC20(rewardToken).balanceOf(address(this));

    uint256 added = balanceAfter.sub(balanceBefore);

    withdrawFees(added, rewardToken);
  }

  function getDualRewardForPool(address pool) internal {
    uint256 earnedA = IStakingDualRewards(pool).earnedA(address(this));
    uint256 earnedB = IStakingDualRewards(pool).earnedB(address(this));

    if(earnedA != 0){
      address rewardTokenA = IStakingDualRewards(pool).rewardsTokenA();

      calculatedAndWithdrawFees(pool, rewardTokenA);
    }

    if(earnedB != 0){
      address rewardTokenB = IStakingDualRewards(pool).rewardsTokenB();

      calculatedAndWithdrawFees(pool, rewardTokenB);
    }
  }

  function getRewardForPool(address pool) internal {
    uint256 earned = IStakingRewards(pool).earned(address(this));

    if(earned != 0){
      address rewardToken = getRewardsToken(pool);

      calculatedAndWithdrawFees(pool, rewardToken);
    }
  }

  function enterRewardPool() internal {
    getDualRewardForPool(quickRewardPool);

    uint256 entireBalance = IERC20(dQuick).balanceOf(address(this));

    if (entireBalance != 0) {
      IERC20(dQuick).safeApprove(dQuickExternalRewardsPool, 0);
      IERC20(dQuick).safeApprove(dQuickExternalRewardsPool, entireBalance);

      IStakingRewards(dQuickExternalRewardsPool).stake(entireBalance);
    }

    getRewardForPool(dQuickExternalRewardsPool);
  }

  function stakeExternalRewards() external {
    enterRewardPool();
  }

  function setDquickRewardsPool(address _dQuickExternalRewardsPool) public onlyMultisig {
    exitDQuickRewardPool();

    dQuickExternalRewardsPool = _dQuickExternalRewardsPool;
    externalRewardToken = getRewardsToken(_dQuickExternalRewardsPool);

    enterRewardPool();
  }

  function setOnxTreasuryFundAddress(address _address) public onlyMultisigOrOwner {
    treasury = _address;
  }

  function setRewardManagerAddress(address _address) public onlyMultisigOrOwner {
    rewardManager = _address;
  }
}
