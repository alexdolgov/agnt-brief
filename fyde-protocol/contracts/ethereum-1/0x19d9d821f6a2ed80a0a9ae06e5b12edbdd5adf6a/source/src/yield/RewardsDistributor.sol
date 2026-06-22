// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

/// Import from Utils /////
import {sTRSY} from "./sTRSY.sol";
import {Ownable} from "src/utils/Ownable.sol";

/// Import from Interfaces /////
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

///@title RewardsDistributor
///@notice Stake TRSY to receive yield accruing sTRSY. Send TRSY to this contract and set vesting
/// period to distribute yield in TRSY over time.
///        Activate Fyde rewards to receveive Fyde token emissions for sTRSY balance.
contract RewardsDistributor is Ownable {
  /*//////////////////////////////////////////////////////////////
                            ERRORs
  //////////////////////////////////////////////////////////////*/

  error ZeroAmount();
  error NotAllowed();

  event RewardPaid(address indexed user, uint256 reward);

  /*//////////////////////////////////////////////////////////////
                            STORAGE VAR 
  //////////////////////////////////////////////////////////////*/

  /// @notice WETH interface
  IERC20 public immutable FYDE;
  IERC20 public strsy;

  uint256 constant PRECISION = 1e30;

  /// @notice The per-second rate at which rewardPerToken increases (1e18 is 1 point per second)
  uint256 public rewardRate;

  /// @notice The last Unix timestamp (in seconds) when rewardPerTokenStored was updated
  uint256 public lastUpdateTime;

  /// @notice The last stored rewardPerToken value
  uint256 public rewardPerTokenStored;

  /// @notice The total tokens staked in the pool
  uint256 public totalSupply;

  /// @notice The amount of tokens staked by an account
  mapping(address => uint256) public balanceOf;

  /// @notice The rewardPerToken value when an account last staked/withdrew
  mapping(address => uint256) public userRewardPerTokenPaid;

  /// @notice The earned() value when an account last staked/withdrew
  mapping(address => uint256) public rewards;

  mapping(address => bool) public activatedEmissions;

  /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  /// @notice Sets the reward rate for Fyde emissions
  /// @param _rewardRate The new reward rate per second
  function setRewardRate(uint256 _rewardRate) external onlyOwner {
    // update how much fyde earned so far with old rate
    rewardPerTokenStored = rewardPerToken();
    lastUpdateTime = block.timestamp;
    // update rate
    rewardRate = _rewardRate;
  }

  /*//////////////////////////////////////////////////////////////
                            USER FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  constructor(address _fydeToken, address _strsy) Ownable(msg.sender) {
    lastUpdateTime = uint64(block.timestamp);
    FYDE = IERC20(_fydeToken);
    strsy = IERC20(_strsy);
  }

  /// @notice Activate Fyde emission for your sTRSY balance
  /// @dev sTrsy activates for any user upon staking. If user received strsy via transfer they can
  /// activate for themseles and _user is ignored.
  function activateFydeEmissions(address _user) external {
    if (msg.sender != address(strsy)) _user = msg.sender;
    activatedEmissions[_user] = true;
    _updateAccounting(_user);
  }

  function updateAccounting(address _user1, address _user2) public {
    _updateAccounting(_user1);
    _updateAccounting(_user2);
  }

  function _updateAccounting(address _user) internal {
    if (!activatedEmissions[_user]) return;

    // We load var
    uint256 rewardPerSTRSY = rewardPerToken();

    // Perform state update for fyde points
    rewardPerTokenStored = rewardPerSTRSY;
    rewards[_user] = earned(_user, balanceOf[_user], rewardPerSTRSY, rewards[_user]);
    userRewardPerTokenPaid[_user] = rewardPerSTRSY;

    // general
    lastUpdateTime = block.timestamp;
    totalSupply -= balanceOf[_user];
    balanceOf[_user] = strsy.balanceOf(_user);
    totalSupply += balanceOf[_user];
  }

  /// @notice Withdraws all earned rewards
  function claimFydeEmissions() external {
    /// -----------------------------------------------------------------------
    /// Storage loads
    /// -----------------------------------------------------------------------

    uint256 accountBalance = balanceOf[msg.sender];
    uint256 rewardPerToken_ = rewardPerToken();

    /// -----------------------------------------------------------------------
    /// State updates
    /// -----------------------------------------------------------------------

    uint256 reward = earned(msg.sender, accountBalance, rewardPerToken_, rewards[msg.sender]);

    // accrue rewards
    rewardPerTokenStored = rewardPerToken_;
    lastUpdateTime = block.timestamp;
    userRewardPerTokenPaid[msg.sender] = rewardPerToken_;

    // withdraw rewards
    if (reward > 0) {
      rewards[msg.sender] = 0;

      /// -----------------------------------------------------------------------
      /// Effects
      /// -----------------------------------------------------------------------

      FYDE.transfer(msg.sender, reward);
      emit RewardPaid(msg.sender, reward);
    }
  }

  /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  /// @notice The amount of reward tokens each staked token has earned so far
  function rewardPerToken() public view returns (uint256) {
    return totalSupply == 0
      ? rewardPerTokenStored
      : rewardPerTokenStored
        + (PRECISION * (block.timestamp - lastUpdateTime) * rewardRate / totalSupply);
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
