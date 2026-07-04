// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./interfaces/IDecubateMasterChef.sol";

contract DCBVault is Ownable, Pausable {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;
  using Address for address;

  struct UserInfo {
    uint256 shares; // number of shares for a user
    uint256 lastDepositedTime; // keeps track of deposited time for potential penalty
    uint256 totalInvested; //Total amount of token invested
    uint256 totalClaimed; //Total amount of token claimed
  }

  struct PoolInfo {
    uint256 totalShares;
    uint256 lastHarvestedTime;
  }

  IDecubateMasterChef public immutable masterchef;

  uint256 public callFee = 25; // 0.25%

  mapping(uint256 => mapping(address => UserInfo)) public users;
  mapping(uint256 => PoolInfo) public pools;

  event Deposit(address indexed sender, uint256 amount, uint256 shares, uint256 lastDepositedTime);
  event Withdraw(address indexed sender, uint256 amount, uint256 shares, uint256 time);
  event Harvest(address indexed sender, uint256 poolId, uint256 time);
  event Pause();
  event Unpause();

  /**
   * @notice Checks if the msg.sender is a contract or a proxy
   */
  modifier notContract() {
    require(!msg.sender.isContract(), "contract not allowed");
    require(msg.sender == tx.origin, "proxy contract not allowed");
    _;
  }

  /**
   * @notice Constructor
   * @param _masterchef: MasterChef contract
   */
  constructor(IDecubateMasterChef _masterchef) {
    masterchef = IDecubateMasterChef(_masterchef);
  }

  /**
   * @notice Deposits funds into the DCB Vault
   * @dev Only possible when contract not paused.
   * @param _amount: number of tokens to deposit (in DCB)
   */
  function deposit(uint256 _pid, uint256 _amount) external whenNotPaused notContract {
    require(_amount > 0, "Nothing to deposit");

    PoolInfo storage pool = pools[_pid];

    IERC20 token = getTokenOfPool(_pid);

    uint256 poolBal = balanceOf(_pid);
    token.safeTransferFrom(msg.sender, address(this), _amount);
    uint256 currentShares = 0;

    if (pool.totalShares != 0) {
      currentShares = (_amount.mul(pool.totalShares)).div(poolBal);
    } else {
      currentShares = _amount;
    }

    UserInfo storage user = users[_pid][msg.sender];

    user.shares = user.shares.add(currentShares);
    user.lastDepositedTime = block.timestamp;
    user.totalInvested = user.totalInvested.add(_amount);

    pool.totalShares = pool.totalShares.add(currentShares);

    _earn(_pid);

    emit Deposit(msg.sender, _amount, currentShares, block.timestamp);
  }

  /**
   * @notice Withdraws all funds for a user
   */
  function withdrawAll(uint256 _pid) external notContract {
    withdraw(_pid, users[_pid][msg.sender].shares);
  }

  /**
   * @notice Reinvests DCB tokens into MasterChef for all pools
   * @dev Only possible when contract not paused.
   * Beware of gas!!
   */
  function harvestAll() external notContract whenNotPaused {
    uint256 poolLen = masterchef.poolLength();

    for (uint256 pid = 0; pid < poolLen; pid++) {
      harvest(pid);
    }
  }

  /**
   * @notice Sets call fee
   * @dev Only callable by the contract owner.
   */
  function setCallFee(uint256 _callFee) external onlyOwner {
    callFee = _callFee;
  }

  /**
   * @notice Triggers stopped state
   * @dev Only possible when contract not paused.
   */
  function pause() external onlyOwner whenNotPaused {
    _pause();
    emit Pause();
  }

  /**
   * @notice Returns to normal state
   * @dev Only possible when contract is paused.
   */
  function unpause() external onlyOwner whenPaused {
    _unpause();
    emit Unpause();
  }

  /**
   *
   * @dev Allow owner to transfer token from contract
   *
   * @param {address} contract address of corresponding token
   * @param {uint256} amount of token to be transferred
   *
   * This is a generalized function which can be used to transfer any accidentally
   * sent (including DCB) out of the contract to wowner
   *
   */
  function transferToken(address _addr, uint256 _amount) external onlyOwner returns (bool) {
    IERC20 token = IERC20(_addr);
    bool success = token.transfer(address(owner()), _amount);
    return success;
  }

  /**
   * @notice Calculates the total pending rewards that can be restaked
   * @return Returns total pending dcb rewards
   */
  function calculateTotalPendingRewards(uint256 _pid) external view returns (uint256) {
    uint256 amount = masterchef.payout(_pid, address(this));
    amount = amount.add(available(_pid));

    return amount;
  }

  /**
   * @notice Calculates the expected harvest reward from third party
   * @return Expected reward to collect in DCB
   */
  function calculateHarvestDcbRewards(uint256 _pid) external view returns (uint256) {
    uint256 amount = masterchef.payout(_pid, address(this));
    amount = amount.add(available(_pid));
    uint256 currentCallFee = amount.mul(callFee).div(10000);

    return currentCallFee;
  }

  /**
   * @notice Calculate total reward
   */
  function getRewardOfUser(address _user, uint256 _pid) external view returns (uint256) {
    UserInfo storage user = users[_pid][_user];
    uint256 pricePerFullShare = getPricePerFullShare(_pid);

    return ((user.shares * pricePerFullShare) / 1e18 - user.totalInvested);
  }

  /**
   * @notice Withdraws funds from the DCB Vault
   * @param _shares: Number of shares to withdraw
   */
  function withdraw(uint256 _pid, uint256 _shares) public notContract {
    harvest(_pid);

    PoolInfo storage pool = pools[_pid];
    UserInfo storage user = users[_pid][msg.sender];

    require(_shares > 0, "Nothing to withdraw");
    require(_shares <= user.shares, "Withdraw amount exceeds balance");
    require(canUnstake(msg.sender, _pid), "Stake still in locked state");

    uint256 currentAmount = (balanceOf(_pid).mul(_shares)).div(pool.totalShares);

    uint256 totalReward = currentAmount - user.totalInvested.mul(_shares).div(user.shares);

    uint256 multipliedAmount = masterchef.handleNFTMultiplier(_pid, msg.sender, totalReward);

    user.totalInvested = user.totalInvested.sub(user.totalInvested.mul(_shares).div(user.shares));
    user.shares = user.shares.sub(_shares);
    pool.totalShares = pool.totalShares.sub(_shares);
    user.totalClaimed = user.totalClaimed.add(totalReward).add(multipliedAmount); //With NFT Boost

    uint256 bal = available(_pid);
    if (bal < currentAmount) {
      uint256 balWithdraw = currentAmount.sub(bal);
      masterchef.unStake(_pid, balWithdraw);
    }

    IERC20 token = getTokenOfPool(_pid);

    token.safeTransfer(msg.sender, currentAmount);

    emit Withdraw(msg.sender, currentAmount, _shares, block.timestamp);
  }

  /**
   * @notice Reinvests DCB tokens into MasterChef for a single pool
   * @dev Only possible when contract not paused.
   */
  function harvest(uint256 _pid) public notContract whenNotPaused {
    PoolInfo storage pool = pools[_pid];

    masterchef.claim(_pid);

    IERC20 token = getTokenOfPool(_pid);

    uint256 bal = available(_pid);
    uint256 currentCallFee = bal.mul(callFee).div(10000);
    token.safeTransfer(msg.sender, currentCallFee);

    pool.lastHarvestedTime = block.timestamp;

    _earn(_pid);

    emit Harvest(msg.sender, _pid, pool.lastHarvestedTime);
  }

  /**
   * @notice Calculates the price per share
   */
  function getPricePerFullShare(uint256 _pid) public view returns (uint256) {
    PoolInfo memory pool = pools[_pid];

    return pool.totalShares == 0 ? 1e18 : balanceOf(_pid).mul(1e18).div(pool.totalShares);
  }

  /**
   * @notice Checks whether a user is allowed to unstake or not
   */
  function canUnstake(address _user, uint256 _pid) public view returns (bool) {
    UserInfo storage user = users[_pid][_user];
    (, , uint256 lockPeriod, , , , , , , ) = masterchef.poolInfo(_pid);

    return (block.timestamp >= user.lastDepositedTime.add(lockPeriod.mul(1 days)));
  }

  /**
   * @notice Custom logic for how much the vault allows to be borrowed
   * @dev The contract puts 100% of the tokens to work.
   */
  function available(uint256 _pid) public view returns (uint256) {
    IERC20 token = getTokenOfPool(_pid);
    return token.balanceOf(address(this));
  }

  /**
   * @notice Calculates the total underlying tokens
   * @dev It includes tokens held by the contract and held in MasterChef
   */
  function balanceOf(uint256 _pid) public view returns (uint256) {
    (uint256 amount, , , , ) = masterchef.users(_pid, address(this));

    return available(_pid).add(amount);
  }

  /**
   * @notice Deposits tokens into MasterChef to earn staking rewards
   */
  function _earn(uint256 _pid) internal {
    IERC20 token = getTokenOfPool(_pid);
    uint256 bal = available(_pid);
    (, , , , , uint256 endDate, , , , ) = masterchef.poolInfo(_pid);

    if (bal > 0 && block.timestamp < endDate) {
      token.approve(address(masterchef), bal);
      masterchef.stake(_pid, bal);
    }
  }

  function getTokenOfPool(uint256 _pid) internal view returns (IERC20) {
    (, , , , , , , , , address token) = masterchef.poolInfo(_pid);
    return IERC20(token);
  }
}
