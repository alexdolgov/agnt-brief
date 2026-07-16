// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ITokenVesting} from "src/interfaces/ITokenVesting.sol";

/**
 * @title TokenVesting
 * @author Camelot
 * @notice A contract for managing token vesting schedules with cliff periods.
 * @dev Supports multiple ERC20 tokens and beneficiaries with linear vesting.
 */
contract TokenVesting is ITokenVesting {
    using SafeERC20 for IERC20;

    /// @notice The minimum duration for a vesting schedule (14 days).
    uint256 public constant MIN_DURATION = 14 days;

    /// @notice Array of all vesting schedule identifiers.
    bytes32[] public vestingSchedulesIds;

    /// @notice Mapping of token address to schedule ID to vesting schedule.
    mapping(address token => mapping(bytes32 scheduleId => VestingSchedule schedule))
        public vestingSchedules;

    /// @notice Mapping of token address to total vesting amount.
    mapping(address token => uint256 amount) public vestingSchedulesTotalAmountByToken;
    
    /// @notice Mapping of holder address to their vesting schedule count.
    mapping(address holder => uint256 count) public holdersVestingCount;

    /**
     * @notice Reverts if the vesting schedule does not exist.
     * @param token The address of the token.
     * @param vestingScheduleId The vesting schedule identifier.
     */
    modifier onlyIfVestingScheduleExists(address token, bytes32 vestingScheduleId) {
        if (vestingSchedules[token][vestingScheduleId].duration == 0) {
            revert VestingScheduleNotFound(token, vestingScheduleId);
        }
        _;
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function createVestingSchedule(
        address[] calldata beneficiaries,
        address token,
        uint256 start,
        uint256 cliff,
        uint256 duration,
        uint256 slicePeriodSeconds,
        uint256[] calldata amounts
    ) external returns (bytes32[] memory vestingScheduleIds) {
        uint256 beneficiariesLength = beneficiaries.length;
        if (beneficiariesLength != amounts.length) {
            revert ArrayLengthMismatch(beneficiariesLength, amounts.length);
        }
        if (beneficiariesLength == 0) {
            revert EmptyBeneficiariesArray();
        }
        if (start < block.timestamp) {
            revert InvalidStartTime();
        }
        if (duration == 0) {
            revert DurationZero();
        }
        if (duration < MIN_DURATION) {
            revert DurationTooShort(duration, MIN_DURATION);
        }
        if (slicePeriodSeconds == 0) {
            revert SlicePeriodZero();
        }
        if (duration < cliff) {
            revert CliffExceedsDuration(cliff, duration);
        }
        if (token == address(0)) {
            revert TokenAddressZero();
        }

        vestingScheduleIds = new bytes32[](beneficiariesLength);
        uint256 cliffTimestamp = start + cliff;
        uint256 totalAmount;

        for (uint256 i; i < beneficiariesLength; ++i) {
            totalAmount += _createSingleSchedule(
                beneficiaries[i],
                token,
                start,
                cliffTimestamp,
                duration,
                slicePeriodSeconds,
                amounts[i],
                vestingScheduleIds,
                i
            );
        }

        vestingSchedulesTotalAmountByToken[token] += totalAmount;
        IERC20(token).safeTransferFrom(msg.sender, address(this), totalAmount);
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function release(
        address token,
        bytes32 vestingScheduleId
    )
        external
        onlyIfVestingScheduleExists(token, vestingScheduleId)
        returns (uint256 amount)
    {
        VestingSchedule storage vestingSchedule = vestingSchedules[token][vestingScheduleId];

        if (msg.sender != vestingSchedule.beneficiary) {
            revert UnauthorizedCaller(msg.sender, vestingSchedule.beneficiary);
        }

        amount = _computeReleasableAmount(vestingSchedule);

        if (amount == 0) {
            revert ReleasableAmountZero();
        }

        vestingSchedule.released += amount;
        vestingSchedulesTotalAmountByToken[token] -= amount;

        IERC20(token).safeTransfer(vestingSchedule.beneficiary, amount);

        emit TokensReleased(
            vestingScheduleId,
            vestingSchedule.beneficiary,
            amount
        );
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function computeNextVestingScheduleIdForHolder(
        address holder
    ) public view returns (bytes32 vestingScheduleId) {
        return computeVestingScheduleIdForAddressAndIndex(
            holder,
            holdersVestingCount[holder]
        );
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function getVestingIdAtIndex(
        uint256 index
    ) external view returns (bytes32 vestingScheduleId) {
        uint256 maxIndex = vestingSchedulesIds.length;
        if (index >= maxIndex) {
            revert IndexOutOfBounds(index, maxIndex);
        }
        return vestingSchedulesIds[index];
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function getVestingScheduleByAddressAndIndex(
        address token,
        address holder,
        uint256 index
    ) external view returns (VestingSchedule memory vestingSchedule) {
        return vestingSchedules[token][computeVestingScheduleIdForAddressAndIndex(holder, index)];
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function getVestingSchedulesCount() external view returns (uint256 count) {
        return vestingSchedulesIds.length;
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function computeReleasableAmount(
        address token,
        bytes32 vestingScheduleId
    )
        external
        view
        onlyIfVestingScheduleExists(token, vestingScheduleId)
        returns (uint256 releasableAmount)
    {
        VestingSchedule storage vestingSchedule = vestingSchedules[token][vestingScheduleId];
        return _computeReleasableAmount(vestingSchedule);
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function getLastVestingScheduleForHolder(
        address token,
        address holder
    ) external view returns (VestingSchedule memory vestingSchedule) {
        return vestingSchedules[token][
            computeVestingScheduleIdForAddressAndIndex(
                holder,
                holdersVestingCount[holder] - 1
            )
        ];
    }

    /**
     * @inheritdoc ITokenVesting
     */
    function computeVestingScheduleIdForAddressAndIndex(
        address holder,
        uint256 index
    ) public pure returns (bytes32 vestingScheduleId) {
        return keccak256(abi.encodePacked(holder, index));
    }

    /**
     * @notice Creates a single vesting schedule for a beneficiary.
     * @dev Internal helper to avoid stack too deep errors.
     * @param beneficiary The beneficiary address.
     * @param token The token address.
     * @param start The start timestamp.
     * @param cliffTimestamp The cliff timestamp.
     * @param duration The vesting duration.
     * @param slicePeriodSeconds The slice period in seconds.
     * @param amount The vesting amount.
     * @param vestingScheduleIds Array to store the schedule ID.
     * @param index The index in the vestingScheduleIds array.
     * @return amount The amount for this schedule.
     */
    function _createSingleSchedule(
        address beneficiary,
        address token,
        uint256 start,
        uint256 cliffTimestamp,
        uint256 duration,
        uint256 slicePeriodSeconds,
        uint256 amount,
        bytes32[] memory vestingScheduleIds,
        uint256 index
    ) internal returns (uint256) {
        if (beneficiary == address(0)) {
            revert BeneficiaryAddressZero();
        }
        if (amount == 0) {
            revert AmountZero();
        }

        bytes32 vestingScheduleId = computeNextVestingScheduleIdForHolder(beneficiary);
        vestingScheduleIds[index] = vestingScheduleId;

        vestingSchedules[token][vestingScheduleId] = VestingSchedule({
            beneficiary: beneficiary,
            token: token,
            cliff: cliffTimestamp,
            start: start,
            duration: duration,
            slicePeriodSeconds: slicePeriodSeconds,
            amountTotal: amount,
            released: 0
        });

        holdersVestingCount[beneficiary]++;
        vestingSchedulesIds.push(vestingScheduleId);

        emit VestingScheduleCreated(
            vestingScheduleId,
            msg.sender,
            beneficiary,
            token,
            cliffTimestamp,
            start,
            duration,
            slicePeriodSeconds,
            amount
        );

        return amount;
    }

    /**
     * @notice Computes the releasable amount of tokens for a vesting schedule.
     * @dev Calculates based on elapsed time, cliff period, and slice periods.
     * @param vestingSchedule The vesting schedule to compute for.
     * @return releasableAmount The amount of tokens that can be released.
     */
    function _computeReleasableAmount(
        VestingSchedule memory vestingSchedule
    ) internal view returns (uint256 releasableAmount) {
        // Before cliff: nothing is releasable.
        if (block.timestamp < vestingSchedule.cliff) {
            return 0;
        }

        // After vesting period: all remaining tokens are releasable.
        if (block.timestamp >= vestingSchedule.start + vestingSchedule.duration) {
            return vestingSchedule.amountTotal - vestingSchedule.released;
        }

        // During vesting: calculate based on elapsed slice periods.
        uint256 timeFromStart = block.timestamp - vestingSchedule.start;
        uint256 vestedSlicePeriods = timeFromStart / vestingSchedule.slicePeriodSeconds;
        uint256 vestedSeconds = vestedSlicePeriods * vestingSchedule.slicePeriodSeconds;

        uint256 vestedAmount = (vestingSchedule.amountTotal * vestedSeconds) /
            vestingSchedule.duration;

        return vestedAmount - vestingSchedule.released;
    }
}
