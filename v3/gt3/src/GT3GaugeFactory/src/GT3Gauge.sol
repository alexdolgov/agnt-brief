// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IGT3Gauge} from "src/interfaces/IGT3Gauge.sol";
import {IGT3Voter} from "src/interfaces/IGT3Voter.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPair} from "src/interfaces/IPair.sol";
import {IGT3Bribe} from "src/interfaces/IGT3Bribe.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

// solhint-disable max-states-count

/// @title GT3Gauge
/// @author gt3.finance
/// @notice Contract for managing deposits, rewards, and fees for users in the GT3 ecosystem.
contract GT3Gauge is IGT3Gauge, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /// @notice Precision factor used for reward calculations.
    uint256 internal constant _PRECISION = 10 ** 18;

    /// @inheritdoc IGT3Gauge
    address public gt3;

    /// @inheritdoc IGT3Gauge
    address public voter;

    /// @inheritdoc IGT3Gauge
    address public pair;

    /// @inheritdoc IGT3Gauge
    address public bribe;

    /// @inheritdoc IGT3Gauge
    uint256 public rewardRate;

    /// @inheritdoc IGT3Gauge
    uint256 public periodFinish;

    /// @inheritdoc IGT3Gauge
    uint256 public lastUpdateTime;

    /// @inheritdoc IGT3Gauge
    uint256 public rewardPerTokenStored;

    /// @inheritdoc IGT3Gauge
    uint256 public totalSupply;

    /// @inheritdoc IGT3Gauge
    uint256 public fees0;

    /// @inheritdoc IGT3Gauge
    uint256 public fees1;

    /// @inheritdoc IGT3Gauge
    mapping(address => uint256) public balanceOf;

    /// @inheritdoc IGT3Gauge
    mapping(address => uint256) public userRewardPerTokenPaid;

    /// @inheritdoc IGT3Gauge
    mapping(address => uint256) public rewards;

    /// @inheritdoc IGT3Gauge
    mapping(uint256 => uint256) public rewardRateByEpoch;

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3Gauge
    function initialize(address pair_, address voter_, address bribe_) public initializer {
        __ReentrancyGuard_init();
        if (pair_ == address(0)) revert GT3GaugeZeroPair();
        if (voter_ == address(0)) revert GT3GaugeZeroVoter();
        if (bribe_ == address(0)) revert GT3GaugeZeroBribe();
        pair = pair_;
        voter = voter_;
        gt3 = IGT3Voter(voter_).gt3();
        if (gt3 == address(0)) revert GT3GaugeZeroGT3();
        bribe = bribe_;
    }

    /// @inheritdoc IGT3Gauge
    function left() external view returns (uint256) {
        if (block.timestamp >= periodFinish) return 0;
        uint256 _remaining = periodFinish - block.timestamp;
        return _remaining * rewardRate;
    }

    /// @inheritdoc IGT3Gauge
    function lastTimeRewardApplicable() public view returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    /// @inheritdoc IGT3Gauge
    function rewardPerToken() public view returns (uint256) {
        if (totalSupply == 0) {
            return rewardPerTokenStored;
        }
        return rewardPerTokenStored
            + (
                (lastTimeRewardApplicable() - Math.min(lastUpdateTime, periodFinish)) * rewardRate * _PRECISION
                    / totalSupply
            );
    }

    /// @inheritdoc IGT3Gauge
    function earned(address _account) public view returns (uint256) {
        return (balanceOf[_account] * (rewardPerToken() - userRewardPerTokenPaid[_account])) / _PRECISION
            + rewards[_account];
    }

    /// @inheritdoc IGT3Gauge
    function notifyRewardAmount(uint256 amount_) external nonReentrant {
        if (msg.sender != voter) revert GT3GaugeOnlyVoter(msg.sender);
        if (amount_ == 0) revert GT3GaugeAmountZero();
        _claimFees();
        rewardPerTokenStored = rewardPerToken();
        uint256 timestamp = block.timestamp;
        uint256 timeUntilNext = ProtocolTimeLibrary.epochNext(timestamp) - timestamp;
        if (timestamp >= periodFinish) {
            IERC20(gt3).safeTransferFrom(msg.sender, address(this), amount_);
            rewardRate = amount_ / timeUntilNext;
        } else {
            uint256 _remaining = periodFinish - timestamp;
            uint256 _left = _remaining * rewardRate;
            IERC20(gt3).safeTransferFrom(msg.sender, address(this), amount_);
            rewardRate = (amount_ + _left) / timeUntilNext;
        }
        rewardRateByEpoch[ProtocolTimeLibrary.epochStart(timestamp)] = rewardRate;
        if (rewardRate == 0) revert GT3GaugeRewardRateZero();
        uint256 balance = IERC20(gt3).balanceOf(address(this));
        if (rewardRate > balance / timeUntilNext) revert GT3GaugeRewardTooHigh();
        lastUpdateTime = timestamp;
        periodFinish = block.timestamp + timeUntilNext;
        emit NotifyReward(msg.sender, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function depositAll() external {
        _depositFor(msg.sender, IERC20(pair).balanceOf(msg.sender));
    }

    /// @inheritdoc IGT3Gauge
    function deposit(uint256 amount_) external {
        _depositFor(msg.sender, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function deposit(uint256 amount_, uint256 deadline_, uint8 v_, bytes32 r_, bytes32 s_) external {
        IERC20Permit(pair).permit(msg.sender, address(this), amount_, deadline_, v_, r_, s_);
        _depositFor(msg.sender, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function depositFor(address account_, uint256 amount_) external {
        _depositFor(account_, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function depositFor(address account_, uint256 amount_, uint256 deadline_, uint8 v_, bytes32 r_, bytes32 s_)
        external
    {
        IERC20Permit(pair).permit(msg.sender, address(this), amount_, deadline_, v_, r_, s_);
        _depositFor(account_, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function withdraw(uint256 amount_) external {
        if (balanceOf[msg.sender] < amount_) revert GT3GaugeInsufficientBalance(balanceOf[msg.sender], amount_);
        _updateRewards(msg.sender);
        totalSupply -= amount_;
        balanceOf[msg.sender] -= amount_;
        IERC20(pair).safeTransfer(msg.sender, amount_);
        emit Withdraw(msg.sender, amount_);
    }

    /// @inheritdoc IGT3Gauge
    function getReward(address account_) external nonReentrant {
        address sender = msg.sender;
        if (sender != account_ && sender != voter) revert GT3GaugeOnlyAccountOrVoter(msg.sender);
        _updateRewards(account_);
        uint256 reward = rewards[account_];
        if (reward > 0) {
            rewards[account_] = 0;
            IERC20(gt3).safeTransfer(account_, reward);
            emit ClaimRewards(account_, reward);
        }
    }

    /// @notice Internal function to handle deposits for a specific account.
    /// @param account_ The address of the account to deposit for.
    /// @param amount_ The amount of tokens to deposit.
    function _depositFor(address account_, uint256 amount_) internal nonReentrant {
        if (amount_ == 0) revert GT3GaugeDepositZero();
        _updateRewards(account_);
        IERC20(pair).safeTransferFrom(msg.sender, address(this), amount_);
        totalSupply += amount_;
        balanceOf[account_] += amount_;
        emit Deposit(msg.sender, account_, amount_);
    }

    /// @notice Internal function to claim fees from the liquidity pair.
    /// @return claimed0 The amount of token 0 fees claimed.
    /// @return claimed1 The amount of token 1 fees claimed.
    function _claimFees() internal returns (uint256 claimed0, uint256 claimed1) {
        (claimed0, claimed1) = IPair(pair).claimFees();

        if (claimed0 > 0 || claimed1 > 0) {
            uint256 fees0_ = fees0 + claimed0;
            uint256 fees1_ = fees1 + claimed1;
            (address token0_, address token1_) = IPair(pair).tokens();

            if (fees0_ > ProtocolTimeLibrary.DURATION) {
                fees0 = 0;
                IERC20(token0_).forceApprove(bribe, fees0_);
                IGT3Bribe(bribe).notifyRewardAmount(token0_, fees0_);
            } else {
                fees0 = fees0_;
            }

            if (fees1_ > ProtocolTimeLibrary.DURATION) {
                fees1 = 0;
                IERC20(token1_).forceApprove(bribe, fees1_);
                IGT3Bribe(bribe).notifyRewardAmount(token1_, fees1_);
            } else {
                fees1 = fees1_;
            }

            emit ClaimFees(msg.sender, claimed0, claimed1);
        }
    }

    /// @notice Internal function to update rewards for a specific account.
    /// @param _account The address of the account to update rewards for.
    function _updateRewards(address _account) internal {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        rewards[_account] = earned(_account);
        userRewardPerTokenPaid[_account] = rewardPerTokenStored;
    }
}
