// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

pragma solidity 0.8.26;

/// Utils /////
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "src/utils/Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IEarningPowerCalculator} from "src/interfaces/IEarningPowerCalculator.sol";

struct Deposit {
    uint128 balance;
    uint128 earningPower;
    uint256 rewardPerTokenCheckpoint;
    uint256 scaledUnclaimedRewardCheckpoint;
}

struct DepositCheckpoint {
    uint128 amount;
    uint128 timestamp;
}

/// @title Staker
/// @notice A staking contract that distributes rewards based on earning power.
/// Users stake GIZA tokens to earn rewards over time, with earning power determined by stake amount.
/// Rewards are streamed continuously over a fixed duration, with each staker
/// earning proportionally to their share of total earning power.
///
/// Key features:
/// - Time-based reward distribution inspired by Synthetix StakingRewards
/// - Customizable earning power calculation via an external calculator module
/// - Early withdrawal fees that decrease linearly over 30 days
/// - Reward bumping mechanism to incentivize earning power updates

contract Staker is Ownable {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/
    event AuthorizedStakerOnBehalfSet(address indexed authorizedStakerOnBehalf, bool isEnabled);
    event RewardNotifierSet(address indexed rewardNotifier, bool isEnabled);
    event BumpTipSet(uint256 oldBumpTip, uint256 newBumpTip);
    event EarlyWithdrawFee(uint256 fee);
    event Stake(address indexed user, uint256 amount);
    event RewardClaimed(address indexed user, uint256 amount);
    event RewardNotified(address indexed notifier, uint256 amount);
    event RewardDurationSet(uint256 oldRewardDuration, uint256 newRewardDuration);
    event StakeWithdrawn(address indexed user, uint256 amount, uint256 fee);
    event EarningPowerBumped(address indexed staker, uint256 newEarningPower, uint256 oldEarningPower);
    event EarningPowerCalculatorSet(address indexed earningPowerCalculator);
    event EarlyWithdrawFeePeriodSet(uint256 oldEarlyWithdrawFeePeriod, uint256 newEarlyWithdrawFeePeriod);

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error MaxBumpTipExceeded();
    error ZeroInput();
    error InvalidRewardRate();
    error InsufficientRewardBalance();
    error NoActiveDeposit();
    error BumpNotQualified();
    error InsufficientUnclaimedRewards();
    error InvalidEarlyWithdrawFee();
    error InvalidEarlyWithdrawFeePeriod();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The GIZA token
    IERC20 public immutable GIZA;

    /// @notice The earning power calculator
    IEarningPowerCalculator public earningPowerCalculator;

    /// @notice Maximum early withdraw fee.
    uint256 public constant MAX_EARLY_WITHDRAW_FEE = 1000; // 10%

    /// @notice Early withdraw fee.
    uint256 public earlyWithdrawFee;

    /// @notice Early withdraw fee period.
    uint256 public earlyWithdrawFeePeriod;

    /// @notice Scale factor used in reward calculation math to reduce rounding errors caused by
    /// truncation during division.
    uint256 public constant FEE_BPS = 10000; // If fee is 500e18, then 500e18 / 100e18 = 0.05 = 5%

    /// @notice Scale factor used in reward calculation math to reduce rounding errors caused by
    /// truncation during division.
    uint256 public constant SCALE_FACTOR = 1e36;

    /// @notice Length of time over which rewards sent to this contract are distributed to stakers.
    uint256 public reward_duration = 30 days;

    /// @notice Maximum tip a bumper can request.
    uint256 public bumpTip;

    /// @notice Total fee to be collected from early withdrawals.
    uint256 public feeToCollect;

    /// @notice Global amount currently staked across all deposits.
    uint256 public totalStaked;

    /// @notice Global amount of earning power for all deposits.
    uint256 public totalEarningPower;

    /// @notice Time at which rewards distribution will complete if there are no new rewards.
    uint256 public rewardEndTime;

    /// @notice Last time at which the global rewards accumulator was updated.
    uint256 public lastCheckpointTime;

    /// @notice Global rate at which rewards are currently being distributed to stakers,
    /// denominated in scaled reward tokens per second, using the SCALE_FACTOR.
    uint256 public scaledRewardRate;

    /// @notice Checkpoint value of the global reward per token accumulator.
    uint256 public rewardPerTokenAccumulatedCheckpoint;

    /// @notice List of depositors.
    /// @dev This is used to iterate over all depositors, for off chain automations.
    address[] depositorsList;

    /// @notice Tracks the total staked by a depositor across all unique deposits.
    mapping(address depositor => Deposit) public deposits;

    /// @notice Tracks the total staked by a depositor across all unique deposits.
    mapping(address depositor => DepositCheckpoint[]) public userDepositsCheckpoint;

    /// @notice Maps addresses to whether they are authorized to call `notifyRewardAmount`.
    mapping(address rewardNotifier => bool) public isRewardNotifier;

    /// @notice Maps addresses to whether they are authorized to call `stakeOnBehalf`.
    mapping(address authorizedStakerOnBehalf => bool) public isAuthorizedStakerOnBehalf;

    constructor(address _owner, address _giza, address _earningPowerCalculator) Ownable(_owner) {
        GIZA = IERC20(_giza);
        _setEarningPowerCalculator(address(_earningPowerCalculator));
        emit EarningPowerCalculatorSet(_earningPowerCalculator);

        _setBumpTip(1e18);
        earlyWithdrawFee = 500;
        emit EarlyWithdrawFee(500);

        earlyWithdrawFeePeriod = 30 days;
        emit EarlyWithdrawFeePeriodSet(0, 30 days);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNER
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the authorized staker on behalf address.
    /// @param _authorizedStakerOnBehalf The address of the authorized staker on behalf.
    /// @param _isEnabled `true` to enable the `_authorizedStakerOnBehalf`, or `false` to disable.
    function setAuthorizedStakerOnBehalf(address _authorizedStakerOnBehalf, bool _isEnabled) external onlyOwner {
        isAuthorizedStakerOnBehalf[_authorizedStakerOnBehalf] = _isEnabled;
        emit AuthorizedStakerOnBehalfSet(_authorizedStakerOnBehalf, _isEnabled);
    }

    /// @notice Set the early withdraw fee period.
    /// @param _newEarlyWithdrawFeePeriod The new early withdraw fee period.
    function setEarlyWithdrawFeePeriod(uint256 _newEarlyWithdrawFeePeriod) external onlyOwner {
        if (_newEarlyWithdrawFeePeriod > 60 days) revert InvalidEarlyWithdrawFeePeriod();
        emit EarlyWithdrawFeePeriodSet(earlyWithdrawFeePeriod, _newEarlyWithdrawFeePeriod);
        earlyWithdrawFeePeriod = _newEarlyWithdrawFeePeriod;
    }

    /// @notice Set the earning power calculator address.
    /// @param _newEarningPowerCalculator The address of the new earning power calculator.
    function setEarningPowerCalculator(address _newEarningPowerCalculator) external onlyOwner {
        _setEarningPowerCalculator(_newEarningPowerCalculator);
        emit EarningPowerCalculatorSet(_newEarningPowerCalculator);
    }

    /// @notice Set the max bump tip.
    /// @param _newBumpTip Value of the new max bump tip.
    /// @dev Caller must be the current admin.
    function setBumpTip(uint256 _newBumpTip) external onlyOwner {
        _setBumpTip(_newBumpTip);
    }

    /// @notice Enables or disables a reward notifier address.
    /// @param _rewardNotifier Address of the reward notifier.
    /// @param _isEnabled `true` to enable the `_rewardNotifier`, or `false` to disable.
    /// @dev Caller must be the current admin.
    function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external onlyOwner {
        isRewardNotifier[_rewardNotifier] = _isEnabled;
        emit RewardNotifierSet(_rewardNotifier, _isEnabled);
    }

    /// @notice Set the reward duration.
    /// @param _newRewardDuration Value of the new reward duration.
    /// @dev Caller must be the current admin.
    function setRewardDuration(uint256 _newRewardDuration) external onlyOwner {
        if (_newRewardDuration == 0) revert ZeroInput();
        reward_duration = _newRewardDuration;
        emit RewardDurationSet(reward_duration, _newRewardDuration);
    }

    /// @notice Set the early withdraw fee.
    /// @param _newEarlyWithdrawFee Value of the new early withdraw fee.
    /// @dev Caller must be the current admin.
    function setEarlyWithdrawFee(uint256 _newEarlyWithdrawFee) external onlyOwner {
        if (_newEarlyWithdrawFee > MAX_EARLY_WITHDRAW_FEE) revert InvalidEarlyWithdrawFee();
        earlyWithdrawFee = _newEarlyWithdrawFee;
        emit EarlyWithdrawFee(earlyWithdrawFee);
    }

    /// @notice Collect the fee to be collected from early withdrawals.
    function collectFee() external onlyOwner {
        uint256 _feeToCollect = feeToCollect;
        feeToCollect = 0;
        GIZA.safeTransfer(owner, _feeToCollect);
    }

    /*//////////////////////////////////////////////////////////////
                         ENTRYPOINTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Called by an authorized rewards notifier to alert the staking contract that a new
    /// reward has been transferred to it. It is assumed that the reward has already been
    /// transferred to this staking contract before the rewards notifier calls this method.
    /// @param _amount Quantity of reward tokens the staking contract is being notified of.
    /// @dev It is critical that only well behaved contracts are approved by the admin to call this
    /// method, for two reasons.
    ///
    /// 1. A misbehaving contract could grief stakers by frequently notifying this contract of tiny
    ///    rewards, thereby continuously stretching out the time duration over which real rewards are
    ///    distributed. It is required that reward notifiers supply reasonable rewards at reasonable
    ///    intervals.
    //  2. A misbehaving contract could falsely notify this contract of rewards that were not actually
    ///    distributed, creating a shortfall for those claiming their rewards after others. It is
    ///    required that a notifier contract always transfers the `_amount` to this contract before
    ///    calling this method.
    function notifyRewardAmount(uint256 _amount) external virtual {
        if (!isRewardNotifier[msg.sender]) revert Unauthorized();

        // We checkpoint the accumulator without updating the timestamp at which it was updated,
        // because that second operation will be done after updating the reward rate.
        rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();

        if (block.timestamp >= rewardEndTime) {
            scaledRewardRate = (_amount * SCALE_FACTOR) / reward_duration;
        } else {
            uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
            scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / reward_duration;
        }

        rewardEndTime = block.timestamp + reward_duration;
        lastCheckpointTime = block.timestamp;

        if ((scaledRewardRate / SCALE_FACTOR) == 0) revert InvalidRewardRate();

        GIZA.safeTransferFrom(msg.sender, address(this), _amount);

        emit RewardNotified(msg.sender, _amount);
    }

    /// @notice Stake a given amount of GIZA tokens.
    /// @param amount The amount of GIZA tokens to stake.
    function stake(uint256 amount) external {
        _stake(msg.sender, amount);
    }

    /// @notice Stake a given amount of GIZA tokens on behalf of a user.
    /// @param user The address of the user to stake for.
    /// @param amount The amount of GIZA tokens to stake.
    function stakeOnBehalf(address user, uint256 amount) external {
        if (!isAuthorizedStakerOnBehalf[msg.sender]) revert Unauthorized();
        _stake(user, amount);
    }

    /// @notice Claim reward tokens earned by a given deposit.
    function claimReward() external {
        _claimReward(msg.sender);
    }

    /// @notice Withdraw a given amount of GIZA tokens.
    /// @dev This function allow only for a full withdraw
    function withdraw() external {
        if (deposits[msg.sender].balance == 0) revert NoActiveDeposit();

        // Calculate reward without updating earning power
        uint256 reward = _calculateReward(msg.sender);

        uint256 fee = calculateWithdrawalFee(msg.sender);
        uint256 amount = deposits[msg.sender].balance;

        // Update state variables before transfer
        totalStaked -= amount;
        totalEarningPower = _calculateTotalEarningPower(deposits[msg.sender].earningPower, 0, totalEarningPower);

        // Clean up user data
        delete deposits[msg.sender];
        delete userDepositsCheckpoint[msg.sender];

        // Update fee to collect
        feeToCollect += fee;

        // Combine transfers - send both reward and deposit amount (minus fee) in one transfer
        emit RewardClaimed(msg.sender, reward);
        emit StakeWithdrawn(msg.sender, amount - fee, fee);

        // Single transfer of both reward and withdrawn amount
        GIZA.safeTransfer(msg.sender, reward + amount - fee);
    }

    /// @notice A function that a bumper can call to update a deposit's earning power when a
    /// qualifying change in the earning power is returned by the earning power calculator. A
    /// deposit's earning power may change as determined by the algorithm of the current earning power
    /// calculator. In order to incentivize bumpers to trigger these updates a portion of deposit's
    /// unclaimed rewards are sent to the bumper.
    function bumpEarningPower(address _user) external {
        Deposit storage deposit = deposits[_user];

        _checkpointGlobalReward();
        _checkpointReward(deposit);

        uint256 _unclaimedRewards = deposit.scaledUnclaimedRewardCheckpoint / SCALE_FACTOR;

        (uint256 _newEarningPower, bool _isQualifiedForBump) =
            earningPowerCalculator.getNewEarningPower(deposit.balance, _user, deposit.earningPower);

        if (!_isQualifiedForBump) {
            revert BumpNotQualified();
        }

        if (_unclaimedRewards < bumpTip) {
            revert InsufficientUnclaimedRewards();
        }

        emit EarningPowerBumped(_user, _newEarningPower, deposit.earningPower);

        // Update global earning power & deposit earning power based on this bump
        totalEarningPower = _calculateTotalEarningPower(deposit.earningPower, _newEarningPower, totalEarningPower);
        deposit.earningPower = _newEarningPower.toUint96();

        // Send tip to the receiver
        deposit.scaledUnclaimedRewardCheckpoint = deposit.scaledUnclaimedRewardCheckpoint - (bumpTip * SCALE_FACTOR);
        GIZA.safeTransfer(msg.sender, bumpTip);
    }

    /*//////////////////////////////////////////////////////////////
                             VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the list of depositors.
    /// @return List of depositors.
    /// @dev This is used for off chain automations => for bumping logic
    function getDepositorsList() external view returns (address[] memory) {
        return depositorsList;
    }

    /// @notice Returns the voting power of a user
    /// @param user the user to get the voting power of
    /// @return the voting power of the user
    /// @dev This is used for voting and governance purposes and intented to be called offchain by Snapshot, this take into account the earning power of the user
    function votingPower(address user) external view returns (uint256) {
        return deposits[user].earningPower;
    }

    /// @notice Timestamp representing the last time at which rewards have been distributed, which is
    /// either the current timestamp (because rewards are still actively being streamed) or the time
    /// at which the reward duration ended (because all rewards to date have already been streamed).
    /// @return Timestamp representing the last time at which rewards have been distributed.
    function lastTimeRewardDistributed() public view returns (uint256) {
        if (rewardEndTime <= block.timestamp) return rewardEndTime;
        else return block.timestamp;
    }

    /// @notice Live value of the global reward per token accumulator. It is the sum of the last
    /// checkpoint value with the live calculation of the value that has accumulated in the interim.
    /// This number should monotonically increase over time as more rewards are distributed.
    /// @return Live value of the global reward per token accumulator.
    function rewardPerTokenAccumulated() public view returns (uint256) {
        if (totalEarningPower == 0) return rewardPerTokenAccumulatedCheckpoint;

        return rewardPerTokenAccumulatedCheckpoint
            + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalEarningPower;
    }

    /// @notice Live value of the unclaimed rewards earned by a given deposit. It is the
    /// sum of the last checkpoint value of the unclaimed rewards with the live calculation of the
    /// rewards that have accumulated for this account in the interim. This value can only increase,
    /// until it is reset to zero once the unearned rewards are claimed.
    ///
    /// Note that the contract tracks the unclaimed rewards internally with the scale factor
    /// included, in order to avoid the accrual of precision losses as users takes actions that
    /// cause rewards to be checkpointed. This external helper method is useful for integrations, and
    /// returns the value after it has been scaled down to the reward token's raw decimal amount.
    /// @param user Address of the user in question.
    /// @return Live value of the unclaimed rewards earned by a given deposit.
    function unclaimedReward(address user) external view virtual returns (uint256) {
        return _scaledUnclaimedReward(deposits[user]) / SCALE_FACTOR;
    }

    /// @notice Get the user checkpoint history
    /// @param user The address of the user to get the checkpoint history for
    /// @return The checkpoint history for the user
    function getUserCheckpointHistory(address user) external view returns (DepositCheckpoint[] memory) {
        return userDepositsCheckpoint[user];
    }

    /// @notice Get a specific checkpoint from the user's checkpoint history
    /// @param user The address of the user to get the checkpoint from
    /// @param index The index of the checkpoint to get
    /// @return The checkpoint at the given index
    function getUserCheckPointHistory(address user, uint256 index) external view returns (DepositCheckpoint memory) {
        return userDepositsCheckpoint[user][index];
    }

    /// @notice Get a specific deposit from the user's deposit history
    /// @param user The address of the user to get the deposit from
    /// @return The deposit at the given index
    function getUserDeposit(address user) external view returns (Deposit memory) {
        return deposits[user];
    }

    /// @notice Public function to calculate the total withdrawal fee for a user
    /// @param user Address of the user to calculate fee for
    /// @return totalFee Total fee amount that would be charged on withdrawal
    function calculateWithdrawalFee(address user) public view returns (uint256) {
        DepositCheckpoint[] memory checkpoints = userDepositsCheckpoint[user];

        // If no checkpoints or no active deposit, return 0
        if (checkpoints.length == 0 || deposits[user].balance == 0) {
            return 0;
        }

        uint256 totalFee = 0;

        for (uint256 i = 0; i < checkpoints.length; i++) {
            totalFee += _calculateFeeForDeposit(checkpoints[i].amount, checkpoints[i].timestamp);
        }

        return totalFee;
    }

    /// @notice Get the list of depositors
    /// @return The list of depositors
    function getDepositorList() external view returns (address[] memory) {
        return depositorsList;
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL
    //////////////////////////////////////////////////////////////*/

    /// @notice Stake a given amount of GIZA tokens.
    /// @param _user The address of the user to stake for.
    /// @param _amount The amount of GIZA tokens to stake.
    function _stake(address _user, uint256 _amount) internal {
        if (_amount == 0 || _user == address(0)) revert ZeroInput();

        _checkpointGlobalReward();

        // Check if the user already has a deposit
        Deposit storage userDeposit = deposits[_user];
        // We add the checkpoint to the user's deposit history, EarningPower will use it to calculate the earning power
        userDepositsCheckpoint[_user].push(
            DepositCheckpoint({amount: _amount.toUint128(), timestamp: block.timestamp.toUint128()})
        );

        if (userDeposit.balance == 0) {
            // New deposit
            uint256 _earningPower = earningPowerCalculator.getEarningPower(_amount, _user);
            totalStaked += _amount;
            totalEarningPower += _earningPower;
            deposits[_user] = Deposit({
                balance: _amount.toUint128(),
                earningPower: _earningPower.toUint128(),
                rewardPerTokenCheckpoint: rewardPerTokenAccumulatedCheckpoint,
                scaledUnclaimedRewardCheckpoint: 0
            });
            depositorsList.push(_user);
        } else {
            // Existing deposit - update with additional stake
            _checkpointReward(userDeposit);

            uint256 _newBalance = userDeposit.balance + _amount;
            uint256 _newEarningPower = earningPowerCalculator.getEarningPower(_newBalance, _user);

            totalStaked += _amount;
            totalEarningPower = totalEarningPower - userDeposit.earningPower + _newEarningPower;

            userDeposit.balance = _newBalance.toUint128();
            userDeposit.earningPower = _newEarningPower.toUint128();
        }
        GIZA.safeTransferFrom(msg.sender, address(this), _amount);
        emit Stake(_user, _amount);
    }

    function _claimReward(address _claimer) internal {
        uint256 _reward = _calculateReward(_claimer);
        Deposit storage deposit = deposits[_claimer];

        // Only update earning power when claiming rewards (not during withdrawal)
        uint256 _newEarningPower = earningPowerCalculator.getEarningPower(deposit.balance, _claimer);
        totalEarningPower = _calculateTotalEarningPower(deposit.earningPower, _newEarningPower, totalEarningPower);
        deposit.earningPower = _newEarningPower.toUint96();

        emit RewardClaimed(_claimer, _reward);
        GIZA.safeTransfer(_claimer, _reward);
    }

    /// @notice Internal helper method which calculates reward tokens earned by a given deposit without updating earning power.
    /// @param _claimer The address of the claimer
    /// @return _reward The amount of reward tokens earned
    function _calculateReward(address _claimer) internal returns (uint256 _reward) {
        Deposit storage deposit = deposits[_claimer];
        _checkpointGlobalReward();
        _checkpointReward(deposit);

        _reward = deposit.scaledUnclaimedRewardCheckpoint / SCALE_FACTOR;

        // Reset the scaled unclaimed reward checkpoint, retaining sub-wei dust
        deposit.scaledUnclaimedRewardCheckpoint = deposit.scaledUnclaimedRewardCheckpoint - (_reward * SCALE_FACTOR);

        return _reward;
    }

    /// @notice Checkpoints the global reward per token accumulator.
    function _checkpointGlobalReward() internal {
        rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
        lastCheckpointTime = lastTimeRewardDistributed();
    }

    /// @notice Internal helper method which calculates and returns an updated value for total
    /// earning power based on the old and new earning power of a deposit which is being changed.
    /// @param _depositOldEarningPower The earning power of the deposit before a change is applied.
    /// @param _depositNewEarningPower The earning power of the deposit after a change is applied.
    /// @return _newTotalEarningPower The new total earning power.
    function _calculateTotalEarningPower(
        uint256 _depositOldEarningPower,
        uint256 _depositNewEarningPower,
        uint256 _totalEarningPower
    ) internal pure returns (uint256 _newTotalEarningPower) {
        return _totalEarningPower + _depositNewEarningPower - _depositOldEarningPower;
    }

    /// @notice Live value of the unclaimed rewards earned by a given deposit with the
    /// scale factor included. Used internally for calculating reward checkpoints while minimizing
    /// precision loss.
    /// @return Live value of the unclaimed rewards earned by a given deposit with the
    /// scale factor included.
    /// @dev See documentation for the public, non-scaled `unclaimedReward` method for more details.
    function _scaledUnclaimedReward(Deposit storage deposit) internal view virtual returns (uint256) {
        return deposit.scaledUnclaimedRewardCheckpoint
            + (deposit.earningPower * (rewardPerTokenAccumulated() - deposit.rewardPerTokenCheckpoint));
    }

    /// @notice Checkpoints the unclaimed rewards and reward per token accumulator of a given deposit.
    /// @param deposit The deposit for which the reward parameters will be checkpointed.
    /// @dev This method calculates and updates the unclaimed rewards for a deposit.
    function _checkpointReward(Deposit storage deposit) internal {
        uint256 scaledUnclaimedReward = deposit.scaledUnclaimedRewardCheckpoint
            + (deposit.earningPower * (rewardPerTokenAccumulated() - deposit.rewardPerTokenCheckpoint));

        deposit.scaledUnclaimedRewardCheckpoint = scaledUnclaimedReward;
        deposit.rewardPerTokenCheckpoint = rewardPerTokenAccumulatedCheckpoint;
    }

    /// @notice Internal helper method which sets the bump tip.
    /// @param _newBumpTip Value of the new bump tip.
    function _setBumpTip(uint256 _newBumpTip) internal {
        emit BumpTipSet(bumpTip, _newBumpTip);
        bumpTip = _newBumpTip;
    }

    /// @notice Internal helper method which sets the earning power calculator address.
    function _setEarningPowerCalculator(address _newEarningPowerCalculator) internal {
        if (_newEarningPowerCalculator == address(0)) revert ZeroInput();
        earningPowerCalculator = IEarningPowerCalculator(_newEarningPowerCalculator);
    }

    /// @notice Calculate fee for a single deposit based on time elapsed
    /// @param depositAmount The amount of the deposit
    /// @param depositTimestamp When the deposit was made
    /// @return Fee amount to be charged
    function _calculateFeeForDeposit(uint256 depositAmount, uint256 depositTimestamp) internal view returns (uint256) {
        uint256 timeElapsed = block.timestamp - depositTimestamp;

        if (timeElapsed >= earlyWithdrawFeePeriod) {
            return 0;
        }

        // Linear decay
        uint256 remainingFeePercentage =
            earlyWithdrawFee - ((timeElapsed * earlyWithdrawFee) / (earlyWithdrawFeePeriod));

        // Calculate fee: amount * percentage / 10000 (for basis points)
        return (depositAmount * remainingFeePercentage) / FEE_BPS;
    }
}
