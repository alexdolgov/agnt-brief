// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IPair } from './interfaces/IPair.sol';
import { IBribe } from './interfaces/IBribe.sol';
import { IGauge } from './interfaces/IGauge.sol';
import {IRewarder} from './interfaces/IRewarder.sol';
import { Math } from "./libraries/Math.sol";
import { Constants } from "./Constants.sol";
import { IVoterV5 } from './interfaces/IVoterV5.sol';

contract GaugeV2 is ReentrancyGuard, Ownable2Step {

    using SafeERC20 for IERC20;

    bool public immutable isForPair;
    bool public emergency;


    IERC20 public rewardToken;
    IERC20 public immutable stakeToken;

    address public VE;
    address public DISTRIBUTION;
    address public gaugeRewarder;
    address public internal_bribe;
    address public external_bribe;

    uint256 public immutable DURATION;
    uint internal constant MAX_REWARD_TOKENS = 6;

    address[] public rewards;
    mapping(address => bool) public isReward;

    mapping(address => uint) public rewardRate;
    mapping(address => uint) public periodFinishToken;
    mapping(address => uint) public lastUpdateTime;
    mapping(address => uint) public rewardPerTokenStored;

    mapping(address => mapping(address => uint)) public lastEarn;
    mapping(address => mapping(address => uint)) public userRewardPerTokenStored;
    mapping(address => mapping(address => uint)) public userRewardPerTokenPaid;

    uint256 internal _totalSupply;
    mapping(address => uint256) internal _balances;

    mapping(address => uint) public balanceWithLock;
    mapping(address => uint) public lockEnd;

    /// @dev Events

    event RewardAdded(uint256 reward);
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event Harvest(address indexed user, uint256 reward);

    event ClaimFees(address indexed from, uint256 claimed0, uint256 claimed1);
    event EmergencyActivated(address indexed gauge, uint256 timestamp);
    event EmergencyDeactivated(address indexed gauge, uint256 timestamp);
    event SetDistribution(address newDistribution);
    event SetRewarder(address newRewarder);
    event NotifyReward(address sender, address token, uint256 amount);

    /// @dev Errors
    error OnlyDistributor();
    error IsEmergency(bool emergency);
    error ZeroAddress();
    error SameAddress();
    error OnlyAllowed();
    error InvalidAmount();
    error NoBalances();

    modifier updateReward(address account) {
        _updateRewardForAllTokens(account);
        _;
    }

    modifier onlyDistribution() {
        if(msg.sender != DISTRIBUTION) revert OnlyDistributor();
        _;
    }

    modifier isNotEmergency() {
        if(emergency == true) revert IsEmergency(emergency);
        _;
    }

    constructor(address _rewardToken,address _ve,address _token,address _distribution, address _internal_bribe, address _external_bribe, bool _isForPair) {
        rewardToken = IERC20(_rewardToken);     // main reward
        VE = _ve;                               // vested
        stakeToken = IERC20(_token);             // underlying (LP)
        DISTRIBUTION = _distribution;           // distribution address (voter)
        DURATION = Constants.EPOCH;              // distribution time

        internal_bribe = _internal_bribe;       // lp fees goes here
        external_bribe = _external_bribe;       // bribe fees goes here

        isForPair = _isForPair;                 // pair boolean, if false no claim_fees

        emergency = false;
        
        isReward[_rewardToken] = true;
        rewards.push(_rewardToken);                       // emergency flag

    }


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    ONLY OWNER
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    ///@notice set distribution address (should be voter)
    function setDistribution(address _distribution) external onlyOwner {
        if(_distribution == address(0)) revert ZeroAddress();
        if(_distribution == DISTRIBUTION) revert SameAddress();
        DISTRIBUTION = _distribution;
        emit SetDistribution(DISTRIBUTION);
    }

    ///@notice set gauge rewarder address
    function setGaugeRewarder(address _gaugeRewarder) external onlyOwner {
        if(_gaugeRewarder == gaugeRewarder) revert SameAddress();
        gaugeRewarder = _gaugeRewarder;
        emit SetRewarder(gaugeRewarder);
    }


    ///@notice set new internal bribe contract (where to send fees)
    function setInternalBribe(address _int) external onlyOwner {
        if(_int == address(0)) revert ZeroAddress();
        internal_bribe = _int;
    }

    function activateEmergencyMode() external onlyOwner {
        if(emergency == true) revert IsEmergency(emergency);
        emergency = true;
        emit EmergencyActivated(address(this), block.timestamp);
    }

    function stopEmergencyMode() external onlyOwner {
        if(emergency == false) revert IsEmergency(emergency);
        emergency = false;
        emit EmergencyDeactivated(address(this), block.timestamp);
    }

    /// @notice Update rewardToken address to match with Voter contract
    function updateRewardToken() external onlyOwner {
        isReward[address(rewardToken)] = false;
        address rewardAddress = IVoterV5(DISTRIBUTION).oLynx();
        if (rewardAddress == address(0)) {
            rewardAddress = IVoterV5(DISTRIBUTION).base();
        }

        if (!isReward[rewardAddress]) {
            isReward[rewardAddress] = true;
        }
        rewards.push(rewardAddress);
        rewardToken = IERC20(rewardAddress);
    }

    /// @notice Owner can add reward tokens beyond limit
    function addRewardToken(address _rewardTokn) external onlyOwner {
        if (!isReward[_rewardTokn]) {
            isReward[_rewardTokn] = true;
            rewards.push(_rewardTokn);
        } else {
            revert("Already added");
        }
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    VIEW FUNCTIONS
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    ///@notice total supply held
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    ///@notice balance of a user
    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    function availableBalance(address account) public view returns (uint) {
        if (block.timestamp >= lockEnd[account]) return _balances[account];
        return _balances[account] - balanceWithLock[account];
    }

    function lastTimeRewardApplicable(address rewardAddress) public view returns (uint256) {
        return Math.min(block.timestamp, periodFinishToken[rewardAddress]);
    }

    function rewardPerToken(address rewardAddress) public view returns (uint256) {
        if (_totalSupply == 0) {
            return rewardPerTokenStored[rewardAddress];
        } else {
            return rewardPerTokenStored[rewardAddress] + (lastTimeRewardApplicable(rewardAddress) - lastUpdateTime[rewardAddress]) * rewardRate[rewardAddress] * 1e18 / _totalSupply; 
        }
    }

    ///@notice see earned rewards for user
    function earned(address account) external view returns (uint256) {
        return earned(account, address(rewardToken));
    }

    ///@notice see earned rewards for user
    function earned(address account, address rewardAddress) public view returns (uint256) {
        return userRewardPerTokenStored[rewardAddress][account] + _balances[account] * (rewardPerToken(rewardAddress) - userRewardPerTokenPaid[rewardAddress][account]) / 1e18;  
    }
    
    ///@notice get total reward for the duration
    function rewardForDuration(address rewardAddress) public view returns (uint256) {
        return rewardRate[rewardAddress] * DURATION;
    }

    function periodFinish(address rewardAddress) public view returns (uint256) {
        return periodFinishToken[rewardAddress];
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    USER INTERACTION
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */


    ///@notice deposit all stakeToken of msg.sender
    function depositAll() external {
        _deposit(stakeToken.balanceOf(msg.sender), msg.sender);
    }

    ///@notice deposit amount stakeToken
    function deposit(uint256 amount) external {
        _deposit(amount, msg.sender);
    }

    ///@notice deposits a locked LP position. Generally called from oToken
    function depositWithLock(address account, uint256 amount, uint256 _lockDuration) external {
        require(msg.sender == account || msg.sender == address(rewardToken) || IVoterV5(DISTRIBUTION).isGaugeDepositor(msg.sender), "Not allowed to deposit with lock"); 
        _deposit(amount, account);

        if(block.timestamp >= lockEnd[account]) { 
            // if the current lock is expired release the tokens from that lock before locking again
            delete lockEnd[account];
            delete balanceWithLock[account];
        }

        balanceWithLock[account] += amount;
        uint256 currentLockEnd = lockEnd[account];
        uint256 newLockEnd = block.timestamp + _lockDuration ;
        if (currentLockEnd > newLockEnd) {
            // The lock end can only be extended
            revert("The current lock end > new lock end");
        } 
        lockEnd[account] = newLockEnd;
    }

    ///@notice deposit internal
    function _deposit(uint256 amount, address account) internal nonReentrant isNotEmergency updateReward(account) {
        if(amount <= 0) revert InvalidAmount();

        _balances[account] = _balances[account] + amount;
        _totalSupply = _totalSupply + amount;

        if (address(gaugeRewarder) != address(0)) {
            IRewarder(gaugeRewarder).onReward(account, account, _balances[account]);
        }

        stakeToken.safeTransferFrom(msg.sender, address(this), amount);

        emit Deposit(account, amount);
    }

    ///@notice withdraw all token
    function withdrawAll() external {
        _withdraw(_balances[msg.sender]);
    }

    ///@notice withdraw a certain amount of stakeToken
    function withdraw(uint256 amount) external {
        _withdraw(amount);
    }

    ///@notice withdraw internal
    function _withdraw(uint256 amount) internal nonReentrant isNotEmergency updateReward(msg.sender) {
        if(amount <= 0) revert InvalidAmount();        
        if(_balances[msg.sender] <= 0) revert NoBalances();

        if(block.timestamp >= lockEnd[msg.sender]) { 
            // if the current lock is expired, release the tokens
            delete lockEnd[msg.sender];
            delete balanceWithLock[msg.sender];
        }

        uint256 totalBalance = _balances[msg.sender];
        uint256 lockedAmount = balanceWithLock[msg.sender];
        uint256 freeAmount = totalBalance - lockedAmount;

        // Update lock related mappings when withdraw amount greater than free amount
        if (amount > freeAmount) {
            revert("Cannot withdraw more than free amount");
        }

        _totalSupply -= amount;
        _balances[msg.sender] -= amount;

        if (address(gaugeRewarder) != address(0)) {
            IRewarder(gaugeRewarder).onReward(msg.sender, msg.sender,_balances[msg.sender]);
        }

        stakeToken.safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, amount);
    }

    function emergencyWithdraw() external nonReentrant {
        if(!emergency) revert IsEmergency(emergency);
        if(_balances[msg.sender] <= 0) revert NoBalances();

        uint256 _amount = _balances[msg.sender];
        _totalSupply = _totalSupply - _amount;
        _balances[msg.sender] = 0;

        if (gaugeRewarder != address(0)) {
            IRewarder(gaugeRewarder).onEmergencyWithdrawAmount(msg.sender, _amount);
        }

        stakeToken.safeTransfer(msg.sender, _amount);

        emit Withdraw(msg.sender, _amount);
    }
    function emergencyWithdrawAmount(uint256 _amount) external nonReentrant {
        if(!emergency) revert IsEmergency(emergency);
        if(_balances[msg.sender] < _amount) revert NoBalances();

        _totalSupply = _totalSupply - _amount;
        _balances[msg.sender] -= _amount;

        if (gaugeRewarder != address(0)) {
            IRewarder(gaugeRewarder).onEmergencyWithdrawAmount(msg.sender, _amount);
        }

        stakeToken.safeTransfer(msg.sender, _amount);
        emit Withdraw(msg.sender, _amount);
    }

    ///@notice withdraw all stakeToken and harvest rewardToken
    function withdrawAllAndHarvest() external {
        _withdraw(_balances[msg.sender]);
        getReward();
    }

 
    /// @notice User harvest function called from distribution (voter allows harvest on multiple gauges)
    function getReward(address _user) external onlyDistribution {
        address[] memory tokens = new address[](1);
        tokens[0] = address(rewardToken);
        return _getReward(_user, tokens);
    }

    /// @notice User harvest function
    /// Enables backward compatibility and focuses on harvesting main reward tokern
    function getReward() public {
        address[] memory tokens = new address[](1);
        tokens[0] = address(rewardToken);
        return _getReward(msg.sender, tokens);
    }

    ///@notice User harvest function called from distribution (voter allows harvest on multiple gauges)
    function getReward(address _user, address[] memory tokens) external  {
        require(msg.sender == _user || msg.sender == DISTRIBUTION);
        return _getReward(_user, tokens);
    }

    function _getReward(address _user, address[] memory tokens) internal nonReentrant updateReward(_user) {
        uint length = tokens.length;
        for (uint i = 0; i < length; i++) { 
            address rewardAddress = tokens[i];
            uint256 reward = userRewardPerTokenStored[rewardAddress][_user];
            if (reward > 0) {
                userRewardPerTokenStored[rewardAddress][_user] = 0;
                IERC20(rewardAddress).safeTransfer(_user, reward);
                emit Harvest(_user, reward);
            }
        }
        if (gaugeRewarder != address(0)) {
            IRewarder(gaugeRewarder).onReward(_user, _user, _balances[_user]);
        }
    }

    function left(address token) external view returns (uint) {
        if (block.timestamp >= periodFinishToken[token]) return 0;
        uint _remaining = periodFinishToken[token] - block.timestamp;
        return _remaining * rewardRate[token];
    }

    function _updateRewardForAllTokens(address account) internal {
      uint256 length = rewards.length;
      for (uint i; i < length; i++) {
        address rewardAddress = rewards[i];
        rewardPerTokenStored[rewardAddress] = rewardPerToken(rewardAddress);
        lastUpdateTime[rewardAddress] = lastTimeRewardApplicable(rewardAddress);
        if (account != address(0)) {
            userRewardPerTokenStored[rewardAddress][account] = earned(account, rewardAddress);
            userRewardPerTokenPaid[rewardAddress][account] = rewardPerTokenStored[rewardAddress];
        }
      }
      
    }


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    DISTRIBUTION
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */


    /// @dev Receive rewards
    function notifyRewardAmount(address rewardAddress, uint256 rewardAmount) external virtual nonReentrant isNotEmergency updateReward(address(0)) {
        uint256 balanceBefore = IERC20(rewardAddress).balanceOf(address(this));
        IERC20(rewardAddress).safeTransferFrom(msg.sender, address(this), rewardAmount);
        uint256 balanceAfter = IERC20(rewardAddress).balanceOf(address(this));
        rewardAmount = balanceAfter - balanceBefore;

        _notifyRewardAmount(rewardAddress, rewardAmount);
    }

    function _notifyRewardAmount(address rewardAddress, uint rewardAmount) internal {
        require(rewardAddress != address(stakeToken), "Can't add stake token as reward");
        require(rewardAmount > 0, "Reward amount needs to be higher than 0");
        if (!isReward[rewardAddress]) {
            require(IVoterV5(DISTRIBUTION).isWhitelisted(rewardAddress), "rewards tokens must be whitelisted");
            if (rewardAddress != IVoterV5(DISTRIBUTION).oLynx() && rewardAddress != IVoterV5(DISTRIBUTION).base())
            require(rewards.length < MAX_REWARD_TOKENS, "too many rewards tokens");
        }
        if (block.timestamp >= periodFinishToken[rewardAddress]) {
            rewardRate[rewardAddress] = rewardAmount / DURATION;
        } else {
            uint256 remaining = periodFinishToken[rewardAddress] - block.timestamp;
            uint256 leftover = remaining * rewardRate[rewardAddress];
            /// @dev: This will spread the remaining rewards over the new period.
            rewardRate[rewardAddress] = (rewardAmount + leftover) / DURATION;
        }

        // Ensure the provided reward amount is not more than the balance in the contract.
        // This keeps the reward rate in the right range, preventing overflows due to
        // very high values of rewardRate in the earned and rewardsPerToken functions;
        // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
        uint256 balance = IERC20(rewardAddress).balanceOf(address(this));
        require(rewardRate[rewardAddress] <= balance / DURATION, "Provided reward too high");

        lastUpdateTime[rewardAddress] = block.timestamp;
        periodFinishToken[rewardAddress] = block.timestamp + DURATION;
        if (!isReward[rewardAddress]) {
            isReward[rewardAddress] = true;
            rewards.push(rewardAddress);
        }

        emit NotifyReward(msg.sender, rewardAddress, rewardAmount);
    }

    function claimFees() external nonReentrant returns (uint256 claimed0, uint256 claimed1) {
        return _claimFees();
    }

     function _claimFees() internal virtual returns (uint256 claimed0, uint256 claimed1) {
        if (!isForPair) {
            return (0, 0);
        }
        address _token = address(stakeToken);
        (claimed0, claimed1) = IPair(_token).claimFees();
        if (claimed0 > 0 || claimed1 > 0) {

            uint256 _fees0 = claimed0;
            uint256 _fees1 = claimed1;

            (address _token0, address _token1) = IPair(_token).tokens();

            if (_fees0  > 0) {
                IERC20(_token0).approve(internal_bribe, 0);
                IERC20(_token0).approve(internal_bribe, _fees0);
                IBribe(internal_bribe).notifyRewardAmount(_token0, _fees0);
            } 
            if (_fees1  > 0) {
                IERC20(_token1).approve(internal_bribe, 0);
                IERC20(_token1).approve(internal_bribe, _fees1);
                IBribe(internal_bribe).notifyRewardAmount(_token1, _fees1);
            } 
            emit ClaimFees(msg.sender, claimed0, claimed1);
        }
    }

}
