// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

/// Import from Utils /////
import {Ownable} from "src/utils/Ownable.sol";

/// Import from Interfaces /////

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

///@title StakingTRSY
///@notice This contract is used to stake TRSY tokens and earn rewards that are queried offchain
///        User can at any time withdraw their TRSY tokens
///        Each second 1e18 points are earned by the pool and splitted between stakers
///        The longer you stake and the bigger your stake is, the more rewards you earn
contract StakingTRSY is Ownable {
  using SafeERC20 for IERC20;
  /*//////////////////////////////////////////////////////////////
                            EVENTS
  //////////////////////////////////////////////////////////////*/

  event Staked(address indexed user, uint256 amount);
  event Withdrawn(address indexed user, uint256 amount);

  /*//////////////////////////////////////////////////////////////
                            ERRORs
  //////////////////////////////////////////////////////////////*/

  error ZeroAmount();
  error NotAllowed();

  /*//////////////////////////////////////////////////////////////
                            STORAGE VAR 
  //////////////////////////////////////////////////////////////*/

  uint256 constant PRECISION = 1e30;

  /// @notice The per-second rate at which rewardPerToken increases (1e18 is 1 point per second)
  uint256 public constant REWARD_RATE = 10e18;

  /// @notice TRSY interface
  IERC20 public immutable TRSY = IERC20(0x87Cc45fFF5c0933bb6aF6bAe7Fc013b7eC7df2Ee);

  /// @notice The Unix timestamp (in seconds) at which staking begins
  uint64 public start_date = 1_705_338_000;

  /// @notice The Unix timestamp (in seconds) at which the current reward period ends
  uint64 public period_finish = 1_720_368_000;

  /// @notice The last Unix timestamp (in seconds) when rewardPerTokenStored was updated
  uint64 public lastUpdateTime;

  /// @notice The last stored rewardPerToken value
  uint256 public rewardPerTokenStored;

  /// @notice The total tokens staked in the pool
  uint256 public totalSupply;

  /// @notice Allow emergency withdraw
  bool public emergencyWithdrawAllowed;

  /// @notice The amount of tokens staked by an account
  mapping(address => uint256) public balanceOf;

  /// @notice The rewardPerToken value when an account last staked/withdrew
  mapping(address => uint256) public userRewardPerTokenPaid;

  /// @notice The earned() value when an account last staked/withdrew
  mapping(address => uint256) public rewards;

  /*//////////////////////////////////////////////////////////////
                            USER FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  constructor(address _owner) Ownable(_owner) {
    lastUpdateTime = uint64(block.timestamp);
  }

  function setStartAndEndTime(uint64 _start_date, uint64 _period_finish) external onlyOwner {
    start_date = _start_date;
    period_finish = _period_finish;
  }

  function setEmergencyWithdraw(bool _allow) external onlyOwner {
    emergencyWithdrawAllowed = _allow;
  }

  /// @notice Stake TRSY tokens
  /// @param amount The amount of TRSY tokens to stake
  function stake(uint256 amount) external {
    if (emergencyWithdrawAllowed) revert NotAllowed();
    if (block.timestamp < start_date || block.timestamp > period_finish) revert NotAllowed();
    if (amount == 0) revert ZeroAmount();

    // We load var
    uint256 rewardPerTRSY = rewardPerToken();

    // Perform state update
    rewardPerTokenStored = rewardPerTRSY;
    lastUpdateTime = lastTimeRewardApplicable();
    rewards[msg.sender] =
      earned(msg.sender, balanceOf[msg.sender], rewardPerTRSY, rewards[msg.sender]);
    userRewardPerTokenPaid[msg.sender] = rewardPerTRSY;
    totalSupply += amount;
    balanceOf[msg.sender] += amount;

    // Transfer TRSY tokens
    TRSY.safeTransferFrom(msg.sender, address(this), amount);
    emit Staked(msg.sender, amount);
  }

  /// @notice Withdraw TRSY tokens
  function withdraw(uint256 amount) external {
    if (emergencyWithdrawAllowed) revert NotAllowed();
    if (amount == 0) revert ZeroAmount();

    // We load var
    uint256 rewardPerTRSY = rewardPerToken();

    // Perform state update
    rewardPerTokenStored = rewardPerTRSY;
    lastUpdateTime = lastTimeRewardApplicable();
    rewards[msg.sender] =
      earned(msg.sender, balanceOf[msg.sender], rewardPerTRSY, rewards[msg.sender]);
    userRewardPerTokenPaid[msg.sender] = rewardPerTRSY;
    balanceOf[msg.sender] -= amount;
    totalSupply -= amount;

    // Transfer TRSY tokens
    TRSY.safeTransfer(msg.sender, amount);
    emit Withdrawn(msg.sender, amount);
  }

  ///@notice Force withdraw in case overflow error happens
  ///@dev If this happens reward will be calculated offchain and disable deposit/withdraw
  function emergencyWithdraw() external {
    if (!emergencyWithdrawAllowed) revert NotAllowed();
    uint256 amount = balanceOf[msg.sender];
    balanceOf[msg.sender] = 0;
    totalSupply -= amount;
    TRSY.safeTransfer(msg.sender, amount);
    emit Withdrawn(msg.sender, amount);
  }

  /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  /// @notice The latest time at which stakers are earning rewards.
  function lastTimeRewardApplicable() public view returns (uint64) {
    return block.timestamp < period_finish ? uint64(block.timestamp) : period_finish;
  }

  /// @notice The amount of reward tokens each staked token has earned so far
  function rewardPerToken() public view returns (uint256) {
    return totalSupply == 0
      ? rewardPerTokenStored
      : rewardPerTokenStored
        + (PRECISION * (lastTimeRewardApplicable() - lastUpdateTime) * REWARD_RATE / totalSupply);
  }

  function earned(address _user, uint256 _userBalance, uint256 _rewardPerToken, uint256 _userReward)
    public
    view
    returns (uint256)
  {
    return
      _userReward + _userBalance * (_rewardPerToken - userRewardPerTokenPaid[_user]) / PRECISION;
  }

  function getReward(address user) external view returns (uint256) {
    return earned(user, balanceOf[user], rewardPerToken(), rewards[user]);
  }
}
