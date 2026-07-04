// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ContractBaseUpgradeable} from "./commons/ContractBaseUpgradeable.sol";
import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";
import {IAccessManager} from "./interfaces/IAccessManager.sol";
import {ILoAZND} from "./interfaces/ILoAZND.sol";
import {Errors} from "./commons/Errors.sol";

/**
 * @title RewardDistributor
 * @author Mu Digital
 * @notice Distributes AZND rewards to the LoAZND vault on a fixed interval schedule
 */
contract RewardDistributor is ContractBaseUpgradeable, IRewardDistributor {
    using SafeERC20 for IERC20;

    /**
     * @notice AZND token used for reward distribution
     */
    IERC20 public rewardToken;

    /**
     * @notice Destination vault that receives the rewards
     */
    address public vault;

    /**
     * @notice Current active schedule, if any
     */
    RewardSchedule public rewardSchedule;

    /**
     * @notice Minimum interval between installments (1 hour)
     */
    uint256 public constant MIN_INTERVAL_SECS = 1 hours;

    /**
     * @notice Minimum number of installments
     */
    uint256 public constant MIN_NUM_PAYMENTS = 1;

    /**
     * @notice Maximum number of installments
     */
    uint256 public constant MAX_NUM_PAYMENTS = 168;

    /**
     * @notice Initialize the contract
     * @param manager Address of the access manager
     * @param rewardToken_ Address of the AZND token
     * @param vault_ Address of the LoAZND vault
     */
    function initialize(address manager, address rewardToken_, address vault_) external initializer {
        if (manager == address(0) || rewardToken_ == address(0) || vault_ == address(0)) revert Errors.ZeroAddress();
        _initContractBaseUpgradeable();
        accessManager = manager;
        rewardToken = IERC20(rewardToken_);
        vault = vault_;
    }

    /**
     * @dev Restrict functions to the reward distributor manager role
     */
    modifier onlyAdmin() override {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_REWARD_DISTRIBUTOR"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @notice Schedule a new reward distribution
     * @param amount Total AZND amount to distribute
     * @param numPayments Number of installments
     * @param intervalSecs Interval in seconds between installments
     */
    function schedule(uint256 amount, uint256 numPayments, uint256 intervalSecs) external onlyAdmin {
        RewardSchedule storage s = rewardSchedule;
        if (s.paymentsRemaining != 0) revert Errors.ScheduleActive();
        if (amount == 0) revert Errors.InvalidAmount();
        if (numPayments < MIN_NUM_PAYMENTS || numPayments > MAX_NUM_PAYMENTS) revert Errors.InvalidNumberOfPayments();
        if (intervalSecs < MIN_INTERVAL_SECS) revert Errors.InvalidInterval();

        uint256 installment = amount / numPayments;
        if (installment == 0) revert Errors.InvalidAmount();

        s.totalAmount = amount;
        s.releasedAmount = 0;
        s.installmentAmount = installment;
        s.totalPayments = numPayments;
        s.paymentsExecuted = 0;
        s.paymentsRemaining = numPayments;
        s.interval = intervalSecs;
        s.nextRelease = block.timestamp + intervalSecs;

        rewardToken.safeTransferFrom(_msgSender(), address(this), amount);

        emit RewardScheduled(amount, numPayments, intervalSecs);
    }

    /**
     * @notice Cancel the active schedule and return remaining funds
     * @param to Address receiving the remaining AZND
     */
    function cancelSchedule(address to) external onlyAdmin {
        if (to == address(0)) revert Errors.ZeroAddress();
        RewardSchedule storage s = rewardSchedule;
        if (s.paymentsRemaining == 0) revert Errors.NoActiveSchedule();

        uint256 remainingAmount = s.totalAmount - s.releasedAmount;
        delete rewardSchedule;

        rewardToken.safeTransfer(to, remainingAmount);

        emit RewardCanceled(remainingAmount, block.timestamp);
    }

    /**
     * @notice Reschedule the remaining installments
     * @param newNumPayments New number of installments
     * @param newIntervalSecs New interval in seconds
     */
    function rescheduleRemaining(uint256 newNumPayments, uint256 newIntervalSecs) external onlyAdmin {
        RewardSchedule storage s = rewardSchedule;
        if (s.paymentsRemaining == 0) revert Errors.NoActiveSchedule();
        if (pendingInstallments(block.timestamp) != 0) revert Errors.PaymentsDue();
        if (newNumPayments < MIN_NUM_PAYMENTS || newNumPayments > MAX_NUM_PAYMENTS)
            revert Errors.InvalidNumberOfPayments();
        if (newIntervalSecs < MIN_INTERVAL_SECS) revert Errors.InvalidInterval();

        uint256 remainingAmount = s.totalAmount - s.releasedAmount;
        uint256 newInstallment = remainingAmount / newNumPayments;
        if (newInstallment == 0) revert Errors.InvalidAmount();

        s.installmentAmount = newInstallment;
        s.totalPayments = s.paymentsExecuted + newNumPayments;
        s.paymentsRemaining = newNumPayments;
        s.interval = newIntervalSecs;
        s.nextRelease = block.timestamp + newIntervalSecs;

        emit RewardRescheduled(remainingAmount, newNumPayments, newIntervalSecs);
    }

    /**
     * @notice Update the destination vault address
     * @param newVault Address of the new vault
     */
    function setVault(address newVault) external onlyAdmin {
        if (newVault == address(0)) revert Errors.ZeroAddress();
        vault = newVault;

        emit VaultUpdated(newVault);
    }

    /**
     * @notice Recover unintended token balances
     * @param token Address of the token to sweep
     * @param to Recipient of the swept tokens
     */
    function sweepDust(address token, address to) external onlyAdmin {
        if (token == address(0) || to == address(0)) revert Errors.ZeroAddress();

        uint256 amount;
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (token == address(rewardToken)) {
            uint256 locked = remaining();
            if (balance == locked) revert Errors.AmountLocked();
            amount = balance - locked;
        } else {
            amount = balance;
            if (amount == 0) revert Errors.InvalidAmount();
        }

        IERC20(token).safeTransfer(to, amount);

        emit DustSwept(token, to, amount);
    }

    /**
     * @notice Release due installments up to the provided cap
     * @param maxPayments Maximum number of installments to process
     * @return released Total amount of AZND released
     */
    function tick(uint256 maxPayments) external onlyAdmin whenNotPaused nonReentrant returns (uint256 released) {
        RewardSchedule storage s = rewardSchedule;
        if (s.paymentsRemaining == 0) revert Errors.NoActiveSchedule();
        if (maxPayments == 0) revert Errors.InvalidAmount();

        uint256 due = pendingInstallments(block.timestamp);
        if (due == 0) revert Errors.NoPaymentsDue();

        uint256 toProcess = due < maxPayments ? due : maxPayments;

        // Calculate total amount to release
        if (toProcess == s.paymentsRemaining) {
            // Processing all remaining payments - use exact remaining amount
            released = s.totalAmount - s.releasedAmount;
        } else {
            // Processing partial payments
            released = s.installmentAmount * toProcess;
        }

        // Update storage once
        s.releasedAmount += released;
        s.paymentsRemaining -= toProcess;
        s.paymentsExecuted += toProcess;

        // Update next release time or clear schedule
        if (s.paymentsRemaining == 0) {
            delete rewardSchedule;
        } else {
            s.nextRelease = s.nextRelease + (s.interval * toProcess);
        }

        // Batch operations: single allowance increase and deposit
        rewardToken.safeIncreaseAllowance(vault, released);
        ILoAZND(vault).depositRewards(released);

        emit RewardReleased(released, block.timestamp);

        return released;
    }

    /**
     * @notice Get the current schedule details
     * @return total Total amount scheduled
     * @return releasedAmount Amount already released
     * @return paymentsLeft Payments remaining
     * @return installment Base installment amount
     * @return intervalSecs Interval between payments
     * @return nextReleaseTimestamp Timestamp of the next release
     */
    function getSchedule()
        external
        view
        returns (
            uint256 total,
            uint256 releasedAmount,
            uint256 paymentsLeft,
            uint256 installment,
            uint256 intervalSecs,
            uint256 nextReleaseTimestamp
        )
    {
        RewardSchedule memory s = rewardSchedule;
        return (s.totalAmount, s.releasedAmount, s.paymentsRemaining, s.installmentAmount, s.interval, s.nextRelease);
    }

    /**
     * @notice Remaining unreleased AZND amount
     * @return Remaining amount
     */
    function remaining() public view returns (uint256) {
        RewardSchedule memory s = rewardSchedule;
        if (s.paymentsRemaining == 0) {
            return 0;
        }
        return s.totalAmount - s.releasedAmount;
    }

    /**
     * @notice Calculate how many installments are due at a given timestamp
     * @param atTimestamp Timestamp to check
     * @return Number of installments due
     */
    function pendingInstallments(uint256 atTimestamp) public view returns (uint256) {
        RewardSchedule memory s = rewardSchedule;
        if (s.paymentsRemaining == 0) {
            return 0;
        }
        if (atTimestamp < s.nextRelease) {
            return 0;
        }

        uint256 elapsed = atTimestamp - s.nextRelease;
        uint256 intervalsElapsed = elapsed / s.interval;
        uint256 due = intervalsElapsed + 1;
        if (due > s.paymentsRemaining) {
            return s.paymentsRemaining;
        }
        return due;
    }
}
