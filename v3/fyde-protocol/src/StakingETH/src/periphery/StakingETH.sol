// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

/// Import from Utils /////
import {Ownable} from "src/utils/Ownable.sol";

import "forge-std/Test.sol";

/// Import from Interfaces /////

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

///@title StakingETH
///@notice This contract allow for staking ETH and staker earn points that will be used
///        to distribute future airdrops farmed by the strategies.
///        WARNING : This contract do not allow withdraw of ETH, only deposit, withdraw will be
/// allow later once
///        the strategies will be done.
contract StakingETH is Ownable, Test {
  using SafeERC20 for IERC20;
  /*//////////////////////////////////////////////////////////////
                            EVENTS
  //////////////////////////////////////////////////////////////*/

  event Staked(address indexed user, uint256 amount);

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

  ///@notice The fee rate for depositing ETH
  uint256 public constant FEE_RATE = 1e18;

  ///@notice The fee that can be collected by owner
  uint256 public feeToCollect;

  ///@notice The ETH that can be collected by multisig
  uint256 public ethToCollect;

  /// @notice WETH interface
  IERC20 public immutable WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

  /// @notice The address of the multisig that is allow to withdraw to deploy capital in strategies
  address public multisig;

  /// @notice The Unix timestamp (in seconds) at which staking begins
  uint64 public start_date;

  /// @notice The Unix timestamp (in seconds) at which the current reward period ends
  uint64 public period_finish;

  /// @notice The last Unix timestamp (in seconds) when rewardPerTokenStored was updated
  uint64 public lastUpdateTime;

  /// @notice The last stored rewardPerToken value
  uint256 public rewardPerTokenStored;

  /// @notice The last stored rewardPerToken value
  uint256 public rewardPerTokenStoredFyde;

  /// @notice The total tokens staked in the pool
  uint256 public totalSupply;

  /// @notice The amount of tokens staked by an account
  mapping(address => uint256) public balanceOf;

  /// @notice The rewardPerToken value when an account last staked/withdrew
  mapping(address => uint256) public userRewardPerTokenPaid;

  /// @notice The rewardPerToken value when an account last staked/withdrew
  mapping(address => uint256) public userRewardPerTokenPaidFyde;

  /// @notice The earned() value when an account last staked/withdrew
  mapping(address => uint256) public rewards;

  /// @notice The earned() value when an account last staked/withdrew
  mapping(address => uint256) public rewardsFyde;

    struct BoostPeriod {
    uint32 timeStamp; // timestamp when boost starts
    uint16 multiplier; // 1000 = 1x
  }

  /// @notice Periods in which the fyde points are boosted by a multiplier
  /// @dev populate highest timestamp first
  BoostPeriod[] public boostPeriods;

  /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  ///@notice Collect the WETH fees from the staking contract and send it to the recipient
  ///@param _recipient The address of the recipient
  function collectFee(address _recipient) external onlyOwner {
    uint256 feeToTransfer = feeToCollect;
    feeToCollect = 0;
    WETH.safeTransfer(_recipient, feeToTransfer);
  }

  ///@notice Collect the ETH from the staking contract and send it to the multisig
  function collectEth() external {
    require(msg.sender == multisig, "Not multisig");
    uint256 ethToTransfer = ethToCollect;
    ethToCollect = 0;
    WETH.safeTransfer(multisig, ethToTransfer);
  }

  ///@notice set the boost periods for extra fyde points
  function setBoostPeriods(BoostPeriod[] calldata _boostPeriods) external onlyOwner {
    delete boostPeriods;
    for (uint256 i; i < _boostPeriods.length; ++i)
      boostPeriods.push(_boostPeriods[i]);
  }

  /*//////////////////////////////////////////////////////////////
                            USER FUNCTIONS
  //////////////////////////////////////////////////////////////*/

  constructor(address _owner, address _multisig) Ownable(_owner) {
    lastUpdateTime = uint64(block.timestamp);
    multisig = _multisig;
  }

  function setStartAndEndTime(uint64 _start_date, uint64 _period_finish) external onlyOwner {
    start_date = _start_date;
    period_finish = _period_finish;
  }

  /// @notice Stake WETH
  /// @param amount The amount of WETH tokens to stake
  function stake(uint256 amount) external {
    if (block.timestamp < start_date || block.timestamp > period_finish) revert NotAllowed();
    if (amount == 0) revert ZeroAmount();

    // Apply fees
    uint256 fee = amount * FEE_RATE / 100e18;
    uint256 amountAfterFee = amount - fee;

    // We load var
    uint256 rewardPerETH = rewardPerToken();
    uint256 rewardPerETHFyde = rewardPerTokenFyde();

    // Perform state update for eth points
    rewardPerTokenStored = rewardPerETH;
    rewards[msg.sender] =
      earned(msg.sender, balanceOf[msg.sender], rewardPerETH, rewards[msg.sender]);
    userRewardPerTokenPaid[msg.sender] = rewardPerETH;

    // Perform state update for fyde points
    rewardPerTokenStoredFyde = rewardPerETHFyde;
    rewardsFyde[msg.sender] =
      earnedFyde(msg.sender, balanceOf[msg.sender], rewardPerETHFyde, rewardsFyde[msg.sender]);
    userRewardPerTokenPaidFyde[msg.sender] = rewardPerETHFyde;

    // general
    lastUpdateTime = lastTimeRewardApplicable();
    totalSupply += amountAfterFee;
    balanceOf[msg.sender] += amountAfterFee;
    feeToCollect += fee;
    ethToCollect += amountAfterFee;

    // Transfer WETH
    WETH.safeTransferFrom(msg.sender, address(this), amount);
    emit Staked(msg.sender, amount);
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
        + (PRECISION * (lastTimeRewardApplicable() - lastUpdateTime) * REWARD_RATE / 1e18);
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

  /// @notice The amount of reward tokens each staked token has earned so far
  function rewardPerTokenFyde() public view returns (uint256) {
    return totalSupply == 0
      ? rewardPerTokenStoredFyde
      : rewardPerTokenStoredFyde
        + (PRECISION * (lastTimeRewardApplicable() - lastUpdateTime) * rewardRateFyde() / totalSupply);
  }

  function earnedFyde(
    address _user,
    uint256 _userBalance,
    uint256 _rewardPerToken,
    uint256 _userReward
  ) public view returns (uint256) {
    return
      _userReward + _userBalance * (_rewardPerToken - userRewardPerTokenPaidFyde[_user]) / PRECISION;
  }

  function getRewardFyde(address user) external view returns (uint256) {
    return earnedFyde(user, balanceOf[user], rewardPerTokenFyde(), rewardsFyde[user]);
  }

  function rewardRateFyde() public view returns (uint256) {

    uint256 rateMultiplier;
    uint256 totalTime;
    uint256 timeInPeriod;
    uint256 currTime = block.timestamp;
    for (uint256 i; i < boostPeriods.length; ++i) {
      currTime = currTime - timeInPeriod;
      uint256 nextTimeStamp = currTime  > boostPeriods[i].timeStamp ? currTime : boostPeriods[i].timeStamp;
      uint256 lastUpdate = boostPeriods[i].timeStamp > lastUpdateTime ? boostPeriods[i].timeStamp : lastUpdateTime;
      timeInPeriod = nextTimeStamp - lastUpdate;
      totalTime += timeInPeriod;
      
      rateMultiplier += timeInPeriod * boostPeriods[i].multiplier;
      if (lastUpdateTime > boostPeriods[i].timeStamp) break;
    }
    return totalTime == 0 ? 0 : REWARD_RATE * rateMultiplier / totalTime / 1000;
    
  }

}
