// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {CustomRevert} from "./libs/CustomRevert.sol";
import {ITreasury} from "./interfaces/ITreasury.sol";

/**
 * @title Treasury
 * @notice A contract that manages schedules of reserved tokens for multiple vesting
 *         contracts (beneficiaries). The owner can create/delete schedules, release them,
 *         and deposit tokens. Each vesting contract can pull only its released tokens.
 */
contract Treasury is Ownable, Pausable, ReentrancyGuard, ITreasury {
    using SafeERC20 for IERC20;
    using CustomRevert for bytes4;

    /**
     * @notice The ERC20 token this Treasury manages.
     */
    IERC20 public immutable token;

    /**
     * @notice Total amount of tokens reserved across all schedules
     */
    uint256 public totalReservedTokens;

    /**
     * @notice Flag to prevent schedule index reuse after deletion, keyed by (vestingContract => scheduleIndex).
     */
    mapping(address => mapping(uint256 => bool)) public isScheduleDeleted;

    /**
     * @notice Holds an array of vesting schedules for each vesting contract (beneficiary).
     *         Using an array allows the same address to have multiple schedules.
     */
    mapping(address => VestingSchedule[]) public schedules;

    /**
     * @notice Constructor that sets the token managed by this contract.
     * @param _token The address of the ERC20 token to manage.
     * @param _admin The address that can create/delete schedules and release them.
     */
    constructor(address _token, address _admin) Ownable(_admin) {
        if (_token == address(0))
            ITreasury.ErrorZeroAddress.selector.revertWith();
        if (_admin == address(0))
            ITreasury.ErrorZeroAddress.selector.revertWith();

        token = IERC20(_token);
    }

    receive() external payable {
        ITreasury.ErrorNoEtherAccepted.selector.revertWith();
    }

    fallback() external payable {
        ITreasury.ErrorNoEtherAccepted.selector.revertWith();
    }

    /**
     * @notice Creates a new vesting schedule for a given vesting contract (beneficiary).
     *         Tokens do not immediately leave the Treasury; they are reserved.
     *         They can only be pulled once the schedule is released.
     *
     * @param _vestingContract      The vesting contract (beneficiary) address for this schedule.
     * @param _reservedTokenAmount  Amount of tokens to reserve for this schedule.
     * @return scheduleIndex        The index of the newly created schedule in schedules[_vestingContract].
     */
    function createSchedule(
        address _vestingContract,
        uint256 _reservedTokenAmount
    ) external onlyOwner returns (uint256 scheduleIndex) {
        if (_vestingContract == address(0))
            ITreasury.ErrorZeroAddress.selector.revertWith();
        if (_reservedTokenAmount == 0)
            ITreasury.ErrorZeroAmount.selector.revertWith();
        uint256 balance = token.balanceOf(address(this));
        if (balance < totalReservedTokens + _reservedTokenAmount) {
            ITreasury.ErrorInsufficientTreasuryBalance.selector.revertWith();
        }
        if (_reservedTokenAmount > balance - totalReservedTokens) {
            ITreasury.ErrorExceedsAvailableBalance.selector.revertWith();
        }

        VestingSchedule memory newSchedule = VestingSchedule({
            reservedTokenAmount: _reservedTokenAmount,
            createdAt: block.timestamp,
            validUntil: 0,
            lastClaimedTimestamp: 0,
            isReleased: false
        });

        schedules[_vestingContract].push(newSchedule);
        totalReservedTokens += _reservedTokenAmount;

        scheduleIndex = schedules[_vestingContract].length - 1;
        emit ScheduleCreated(
            _vestingContract,
            scheduleIndex,
            _reservedTokenAmount
        );

        return scheduleIndex;
    }

    /**
     * @notice Releases a vesting schedule so that the vesting contract can pull its tokens.
     *         Sets an optional expiry timestamp. If _validUntil is 0, there's effectively
     *         no expiration on pulling tokens.
     *
     * @param _vestingContract   The vesting contract (beneficiary) address.
     * @param _scheduleIndex     Index of the schedule in schedules[_vestingContract].
     * @param _validUntil        Timestamp until which the schedule is valid (0 if unlimited).
     */
    function releaseSchedule(
        address _vestingContract,
        uint256 _scheduleIndex,
        uint256 _validUntil
    ) external onlyOwner {
        if (_vestingContract == address(0))
            ITreasury.ErrorZeroAddress.selector.revertWith();
        if (_scheduleIndex >= schedules[_vestingContract].length) {
            ITreasury.ErrorInvalidScheduleIndex.selector.revertWith();
        }
        if (_validUntil != 0 && _validUntil <= block.timestamp) {
            ITreasury.ErrorInvalidValidUntil.selector.revertWith();
        }

        VestingSchedule storage vestingSchedule = schedules[_vestingContract][
            _scheduleIndex
        ];
        if (vestingSchedule.isReleased)
            ITreasury.ErrorScheduleAlreadyReleased.selector.revertWith();
        if (
            token.balanceOf(address(this)) < vestingSchedule.reservedTokenAmount
        ) {
            ITreasury.ErrorInsufficientTreasuryBalance.selector.revertWith();
        }

        vestingSchedule.isReleased = true;
        vestingSchedule.validUntil = _validUntil;

        emit ScheduleReleased(_vestingContract, _scheduleIndex, _validUntil);
    }

    /**
     * @notice Deletes (cancels) a vesting schedule before it is released or after it expires.
     *
     * @param _vestingContract  The vesting contract (beneficiary) address.
     * @param _scheduleIndex    Index of the schedule to delete.
     */
    function deleteSchedule(
        address _vestingContract,
        uint256 _scheduleIndex
    ) external nonReentrant onlyOwner {
        if (_vestingContract == address(0))
            ITreasury.ErrorZeroAddress.selector.revertWith();
        if (_scheduleIndex >= schedules[_vestingContract].length) {
            ITreasury.ErrorInvalidScheduleIndex.selector.revertWith();
        }

        VestingSchedule memory vestingSchedule = schedules[_vestingContract][
            _scheduleIndex
        ];

        bool canDelete = (!vestingSchedule.isReleased ||
            (vestingSchedule.isReleased &&
                vestingSchedule.validUntil > 0 &&
                block.timestamp > vestingSchedule.validUntil &&
                vestingSchedule.reservedTokenAmount > 0));
        if (!canDelete)
            ITreasury.ErrorCannotDeleteSchedule.selector.revertWith();

        isScheduleDeleted[_vestingContract][_scheduleIndex] = true;
        totalReservedTokens -= vestingSchedule.reservedTokenAmount;

        _deleteArrayElement(_vestingContract, _scheduleIndex);

        emit ScheduleDeleted(_vestingContract, _scheduleIndex);
    }

    /**
     * @notice Pulls (transfers) the reserved tokens from this Treasury into the calling
     *         vesting contract, but only if the schedule is released.
     *
     * @param _scheduleIndex   The index of the schedule to pull.
     * @return amountToSend    The amount of tokens sent to the vesting contract.
     */
    function pullForVesting(
        uint256 _scheduleIndex
    ) external nonReentrant whenNotPaused returns (uint256) {
        address _vestingContract = msg.sender;
        if (_scheduleIndex >= schedules[_vestingContract].length) {
            ITreasury.ErrorInvalidScheduleIndex.selector.revertWith();
        }
        if (isScheduleDeleted[_vestingContract][_scheduleIndex]) {
            ITreasury.ErrorScheduleDeleted.selector.revertWith();
        }

        VestingSchedule storage vestingSchedule = schedules[_vestingContract][
            _scheduleIndex
        ];
        if (!vestingSchedule.isReleased)
            ITreasury.ErrorScheduleNotReleased.selector.revertWith();
        if (
            vestingSchedule.validUntil != 0 &&
            block.timestamp > vestingSchedule.validUntil
        ) {
            ITreasury.ErrorScheduleExpired.selector.revertWith();
        }
        if (vestingSchedule.reservedTokenAmount == 0)
            ITreasury.ErrorNoTokensToPull.selector.revertWith();
        if (
            token.balanceOf(address(this)) < vestingSchedule.reservedTokenAmount
        ) {
            ITreasury.ErrorInsufficientTreasuryBalance.selector.revertWith();
        }

        uint256 amountToSend = vestingSchedule.reservedTokenAmount;

        vestingSchedule.lastClaimedTimestamp = block.timestamp;
        vestingSchedule.reservedTokenAmount = 0;
        totalReservedTokens -= amountToSend;

        token.safeTransfer(msg.sender, amountToSend);

        emit TokensPulled(msg.sender, _scheduleIndex, amountToSend);

        return amountToSend;
    }

    /**
     * @notice Deposits tokens into this Treasury from the caller's wallet.
     * @param _amount The amount of tokens to deposit.
     */
    function deposit(uint256 _amount) external onlyOwner nonReentrant {
        if (_amount == 0) ITreasury.ErrorZeroAmount.selector.revertWith();
        uint256 currentBalance = token.balanceOf(address(this));
        if (_amount > type(uint256).max - currentBalance) {
            ITreasury.ErrorAmountTooLarge.selector.revertWith();
        }

        uint256 balanceBefore = currentBalance;
        token.safeTransferFrom(msg.sender, address(this), _amount);

        uint256 newBalance = token.balanceOf(address(this));
        if (newBalance - balanceBefore != _amount) {
            ITreasury.ErrorTransferAmountMismatch.selector.revertWith();
        }
        if (newBalance < totalReservedTokens) {
            ITreasury.ErrorInsufficientTotalBalance.selector.revertWith();
        }

        emit TokensDeposited(msg.sender, _amount);
    }

    /**
     * @notice Returns the current token balance of this Treasury.
     *
     * @return balance  The ERC20 token balance of this contract.
     */
    function getBalance() external view returns (uint256 balance) {
        balance = token.balanceOf(address(this));
    }

    /**
     * @notice Returns the number of schedules for a given vesting contract.
     * @param _vestingContract The vesting contract address to check.
     * @return count The number of schedules.
     */
    function getScheduleCount(
        address _vestingContract
    ) external view returns (uint256) {
        return schedules[_vestingContract].length;
    }

    /**
     * @notice Returns the amount of unreserved tokens in the Treasury.
     * @return amount The amount of tokens not reserved in any schedule.
     */
    function getUnreservedTokens() external view returns (uint256) {
        uint256 balance = token.balanceOf(address(this));
        return
            balance > totalReservedTokens ? balance - totalReservedTokens : 0;
    }

    /**
     * @dev Internal helper to remove a schedule from the array by index.
     */
    function _deleteArrayElement(
        address _vestingContract,
        uint256 _index
    ) internal {
        VestingSchedule storage schedule = schedules[_vestingContract][_index];
        schedule.reservedTokenAmount = 0;
        schedule.isReleased = false;
        schedule.validUntil = 0;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function recoverERC20(
        address tokenAddress,
        uint256 tokenAmount
    ) external onlyOwner nonReentrant {
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount);
    }
}
