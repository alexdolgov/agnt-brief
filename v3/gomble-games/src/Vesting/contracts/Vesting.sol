// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./lib/BokkyPooBahsDateTimeLibrary.sol";

/**
 * @title Vesting
 * @notice Token vesting contract with configurable release schedule
 * @dev This contract allows creating vesting schedules with:
 *  - Immediate release at TGE (Token Generation Event)
 *  - Monthly vesting releases on a specified day of each month
 *  - Automatic adjustments for months with fewer days
 *  - Support for multiple schedules per beneficiary
 */
contract Vesting is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public token;
    uint256 public tgeTimestamp; // Token Generation Event timestamp - when vesting begins
    address public onBehalfOwner; // Owner who can claim tokens on behalf of beneficiaries
    bool public paused; // Pause state for token claiming functionality
    bool public isTgeTimestampSet;

    struct VestingSchedule {
        uint256 tgeAmount; // Amount released immediately at TGE (Token Generation Event)
        uint256[] monthlyAmounts; // Array of monthly vesting amounts after TGE
        uint256 totalAmount; // Total amount allocated for vesting (including immediate TGE amount)
        uint256 claimed; // Amount already claimed
        bool isActive; // Whether this schedule is active
        uint8 releaseDay; // Day of month when tokens from previous month become claimable
        bool tgeClaimed; // Whether TGE amount has been claimed
    }

    struct ImmediateSchedule {
        uint256 totalAmount;
        uint256 claimed;
        bool isActive;
    }

    // Counter for generating unique schedule IDs
    uint256 private nextScheduleId = 1;
    uint256 private nextImmediateScheduleId = 1;
    
    // Regular vesting schedule mappings
    mapping(uint256 => VestingSchedule) public vestingSchedules;
    mapping(address => uint256[]) public beneficiarySchedules;
    mapping(uint256 => address) public scheduleBeneficiary;
    uint256[] public allScheduleIds;
    
        // Structure to record claim events
    struct ClaimRecord {
        uint256 amount;
        uint256 timestamp;
    }

    // Separate mappings for immediate schedules
    mapping(uint256 => ImmediateSchedule) public immediateSchedules;
    mapping(address => uint256[]) public beneficiaryImmediateSchedules;
    mapping(uint256 => address) public immediateScheduleBeneficiary;
    uint256[] public allImmediateScheduleIds;
    
    // Claim history mappings
    mapping(uint256 => ClaimRecord[]) private claimHistory;
    mapping(uint256 => ClaimRecord[]) private immediateClaimHistory;

    event VestingScheduleCreated(uint256 indexed scheduleId, address indexed beneficiary, uint256 totalAmount, uint256 tgeAmount, uint8 releaseDay);
    event VestingScheduleRevoked(uint256 indexed scheduleId, address indexed beneficiary, uint256 remainingAmount);
    event BeneficiaryChanged(uint256 indexed scheduleId, address indexed oldBeneficiary, address indexed newBeneficiary);
    event TokensClaimed(uint256 indexed scheduleId, address indexed beneficiary, uint256 amount, uint256 timestamp);
    event OnBehalfOwnerChanged(address indexed oldOnBehalfOwner, address indexed newOnBehalfOwner);
    event TgeTokensClaimed(uint256 indexed scheduleId, address indexed beneficiary, uint256 amount, address indexed claimer);
    event Paused(address indexed account);
    event Unpaused(address indexed account);
    event TgeTimestampSet(uint256 timestamp);
    event ImmediateScheduleCreated(uint256 indexed scheduleId, address indexed beneficiary, uint256 amount);
    event ImmediateTokensClaimed(uint256 indexed scheduleId, address indexed beneficiary, uint256 amount);

    modifier onlyOnBehalfOwner() {
        require(msg.sender == onBehalfOwner, "Only onBehalfOwner can call this function");
        _;
    }

    /**
     * @dev Modifier to check if the contract is not paused
     */
    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    /**
     * @dev Modifier to check if the contract is paused
     */
    modifier whenPaused() {
        require(paused, "Contract is not paused");
        _;
    }

    /**
     * @dev Constructor to initialize the vesting contract
     * @param initialOwner Address of the initial owner of the contract
     * @param _token Address of the ERC20 token to be vested
     * @param _onBehalfOwner Address of the owner who can claim tokens on behalf of beneficiaries
     */
    constructor(
        address initialOwner, 
        address _token,
        address _onBehalfOwner
    ) Ownable(initialOwner) {
        require(_onBehalfOwner != address(0), "OnBehalfOwner cannot be zero address");
        token = IERC20(_token);
        onBehalfOwner = _onBehalfOwner;
        tgeTimestamp = 0;
    }

    /**
     * @dev Pauses the contract, preventing any token claiming
     * Only callable by the contract owner
     */
    function pause() external onlyOwner whenNotPaused {
        paused = true;
        emit Paused(msg.sender);
    }

    /**
     * @dev Unpauses the contract, allowing token claiming
     * Only callable by the contract owner
     */
    function unpause() external onlyOwner whenPaused {
        paused = false;
        emit Unpaused(msg.sender);
    }

    /**
     * @dev Sets the onBehalfOwner who can claim tokens on behalf of beneficiaries
     * @param _onBehalfOwner The new onBehalfOwner address
     */
    function setOnBehalfOwner(address _onBehalfOwner) external onlyOwner {
        require(_onBehalfOwner != address(0), "OnBehalfOwner cannot be zero address");
        address oldOnBehalfOwner = onBehalfOwner;
        onBehalfOwner = _onBehalfOwner;
        emit OnBehalfOwnerChanged(oldOnBehalfOwner, _onBehalfOwner);
    }

    /**
     * @dev Sets the TGE timestamp
     * @param _tgeTimestamp The new TGE timestamp
     */
    function setTgeTimestamp(uint256 _tgeTimestamp) external onlyOwner {
        require(!isTgeTimestampSet, "TGE timestamp already set");
        require(_tgeTimestamp > 0, "TGE timestamp must be greater than 0");
        
        tgeTimestamp = _tgeTimestamp;
        isTgeTimestampSet = true;
        
        emit TgeTimestampSet(_tgeTimestamp);
    }

    /**
     * @dev Creates multiple vesting schedules for beneficiaries in a single transaction
     * @param _beneficiaries Array of beneficiary addresses
     * @param _totalAmounts Array of total amounts of tokens to be vested
     * @param _tgeAmounts Array of tokens to be released immediately at TGE
     * @param _monthlyAmounts Array of arrays of monthly vesting amounts after TGE
     * @param _releaseDays Array of release days for each schedule
     * @return scheduleIds Array of created schedule IDs
     */
    function createVestingSchedulesBatch(
        address[] calldata _beneficiaries,
        uint256[] calldata _totalAmounts,
        uint256[] calldata _tgeAmounts,
        uint256[][] calldata _monthlyAmounts,
        uint8[] calldata _releaseDays
    ) external onlyOwner returns (uint256[] memory scheduleIds) {
        require(_beneficiaries.length > 0, "Empty beneficiaries array");
        require(
            _beneficiaries.length == _totalAmounts.length &&
            _beneficiaries.length == _tgeAmounts.length && 
            _beneficiaries.length == _monthlyAmounts.length &&
            _beneficiaries.length == _releaseDays.length,
            "Array lengths must match"
        );
        
        scheduleIds = new uint256[](_beneficiaries.length);
        
        uint256 totalTokensRequired = 0;
        
        // Calculate total tokens required for all schedules
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            totalTokensRequired += _totalAmounts[i];
        }
        
        // Check if contract has sufficient token balance for all schedules
        require(token.balanceOf(address(this)) >= totalTokensRequired, "Insufficient token balance in contract");
        
        // Create all vesting schedules
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            scheduleIds[i] = _createVestingSchedule(
                _beneficiaries[i],
                _totalAmounts[i],
                _tgeAmounts[i],
                _monthlyAmounts[i],
                _releaseDays[i]
            );
        }
        
        return scheduleIds;
    }
    
    /**
     * @dev Internal function to create a vesting schedule
     * @param _beneficiary Address of the beneficiary
     * @param _totalAmount Total amount of tokens to be vested
     * @param _tgeAmount Amount of tokens to be released immediately at TGE
     * @param _monthlyAmounts Array of monthly vesting amounts after TGE
     * @param _releaseDay Day of month when tokens from previous month become claimable
     * @return scheduleId The ID of the created vesting schedule
     */
    function _createVestingSchedule(
        address _beneficiary,
        uint256 _totalAmount,
        uint256 _tgeAmount,
        uint256[] calldata _monthlyAmounts,
        uint8 _releaseDay
    ) internal returns (uint256 scheduleId) {
        require(_beneficiary != address(0), "Beneficiary cannot be zero address");
        require(_releaseDay >= 1 && _releaseDay <= 31, "Release day must be between 1 and 31");
        
        uint256 totalMonthlyAmount = 0;
        for (uint256 i = 0; i < _monthlyAmounts.length; i++) {
            totalMonthlyAmount += _monthlyAmounts[i];
        }
        
        require(_tgeAmount + totalMonthlyAmount == _totalAmount, "Amounts do not match total");
        
        // Generate a new schedule ID
        scheduleId = nextScheduleId++;
        
        VestingSchedule memory schedule = VestingSchedule({
            tgeAmount: _tgeAmount,
            monthlyAmounts: _monthlyAmounts,
            totalAmount: _totalAmount,
            claimed: 0,
            isActive: true,
            releaseDay: _releaseDay,
            tgeClaimed: false
        });
        
        // Store the vesting schedule
        vestingSchedules[scheduleId] = schedule;
        beneficiarySchedules[_beneficiary].push(scheduleId);
        scheduleBeneficiary[scheduleId] = _beneficiary;
        allScheduleIds.push(scheduleId);
        
        emit VestingScheduleCreated(scheduleId, _beneficiary, _totalAmount, _tgeAmount, _releaseDay);
        
        return scheduleId;
    }
    
    /**
     * @dev Creates a vesting schedule for a beneficiary
     * @param _beneficiary Address of the beneficiary
     * @param _totalAmount Total amount of tokens to be vested
     * @param _tgeAmount Amount of tokens to be released immediately at TGE
     * @param _monthlyAmounts Array of monthly vesting amounts after TGE
     * @param _releaseDay Day of month when tokens from previous month become claimable
     * @return scheduleId The ID of the created vesting schedule
     */
    function createVestingSchedule(
        address _beneficiary,
        uint256 _totalAmount,
        uint256 _tgeAmount,
        uint256[] calldata _monthlyAmounts,
        uint8 _releaseDay
    ) external onlyOwner returns (uint256 scheduleId) {
        // Security enhancement: Check if contract has sufficient token balance
        require(token.balanceOf(address(this)) >= _totalAmount, "Insufficient token balance in contract");
        
        return _createVestingSchedule(
            _beneficiary,
            _totalAmount,
            _tgeAmount,
            _monthlyAmounts,
            _releaseDay
        );
    }
    
    /**
     * @dev Allows the onBehalfOwner to claim TGE amounts for multiple schedules in a single transaction
     * @param _scheduleIds Array of schedule IDs to claim TGE amounts for
     */
    function claimTgeAmounts(uint256[] calldata _scheduleIds) external nonReentrant onlyOnBehalfOwner whenNotPaused {
        require(_scheduleIds.length > 0, "Empty scheduleIds array");
        require(block.timestamp >= tgeTimestamp, "TGE has not started yet");
        
        for (uint256 i = 0; i < _scheduleIds.length; i++) {
            _claimTgeAmount(_scheduleIds[i]);
        }
    }
    
    /**
     * @dev Allows the onBehalfOwner to claim only the TGE amount on behalf of the beneficiary
     * @param _scheduleId The ID of the vesting schedule
     */
    function claimTgeAmount(uint256 _scheduleId) external nonReentrant onlyOnBehalfOwner whenNotPaused {
        require(block.timestamp >= tgeTimestamp, "TGE has not started yet");
        _claimTgeAmount(_scheduleId);
    }

    /**
     * @dev Internal function to process TGE amount claiming for a single schedule
     * @param _scheduleId The ID of the vesting schedule
     */
    function _claimTgeAmount(uint256 _scheduleId) internal {
        require(block.timestamp >= tgeTimestamp, "TGE has not started yet");
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        require(schedule.isActive, "No active schedule found");
        require(!schedule.tgeClaimed, "TGE amount already claimed");
        require(schedule.tgeAmount > 0, "No TGE amount to claim");
        
        address beneficiary = scheduleBeneficiary[_scheduleId];
        require(beneficiary != address(0), "Invalid beneficiary");
        
        require(token.balanceOf(address(this)) >= schedule.tgeAmount, "Insufficient token balance in contract");
        schedule.tgeClaimed = true;
        schedule.claimed += schedule.tgeAmount;
        require(token.balanceOf(address(this)) >= schedule.tgeAmount, "Insufficient token balance in contract");
        
        // Add claim record
        claimHistory[_scheduleId].push(ClaimRecord({
            amount: schedule.tgeAmount,
            timestamp: block.timestamp
        }));
        
        // Transfer tokens to the beneficiary (not to the TGE owner)
        token.safeTransfer(beneficiary, schedule.tgeAmount);
        
        emit TgeTokensClaimed(_scheduleId, beneficiary, schedule.tgeAmount, msg.sender);
    }

    /**
     * @dev Revokes a vesting schedule, returning unvested tokens to the owner
     * and automatically claiming vested but unclaimed tokens for the beneficiary
     * @param _scheduleId The ID of the vesting schedule to revoke
     */
    function revokeVestingSchedule(uint256 _scheduleId) external onlyOwner nonReentrant {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        require(schedule.isActive, "No active schedule found");
        
        address beneficiary = scheduleBeneficiary[_scheduleId];
        uint256 vestedAmount = calculateVestedAmount(_scheduleId);
        uint256 unclaimedVestedAmount = vestedAmount > schedule.claimed ? vestedAmount - schedule.claimed : 0;
        uint256 remainingAmount = schedule.totalAmount - vestedAmount;
        
        schedule.isActive = false;
        schedule.totalAmount = vestedAmount;
        
        if (unclaimedVestedAmount > 0) {
            schedule.claimed = vestedAmount; 
           
            claimHistory[_scheduleId].push(ClaimRecord({
                amount: unclaimedVestedAmount,
                timestamp: block.timestamp
            }));
           
            // Security enhancement: Check if contract has sufficient token balance
            require(token.balanceOf(address(this)) >= unclaimedVestedAmount, "Insufficient token balance in contract");
            
            token.safeTransfer(beneficiary, unclaimedVestedAmount);
            emit TokensClaimed(_scheduleId, beneficiary, unclaimedVestedAmount, block.timestamp);
        }
        
        if (remainingAmount > 0) {
            // Security enhancement: Check if contract has sufficient token balance
            require(token.balanceOf(address(this)) >= remainingAmount, "Insufficient token balance in contract");
            
            token.safeTransfer(owner(), remainingAmount);
        }
        
        emit VestingScheduleRevoked(_scheduleId, beneficiary, remainingAmount);
    }

    /**
     * @dev Changes the beneficiary address for a vesting schedule
     * @param _scheduleId The ID of the vesting schedule
     * @param _newBeneficiary New beneficiary address
     */
    function changeBeneficiary(uint256 _scheduleId, address _newBeneficiary) external onlyOwner {
        require(_newBeneficiary != address(0), "New beneficiary cannot be zero address");
        
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        require(schedule.isActive, "No active schedule found");
        
        address oldBeneficiary = scheduleBeneficiary[_scheduleId];
        require(oldBeneficiary != _newBeneficiary, "New beneficiary is the same as old");
        
        // Remove schedule ID from old beneficiary's list
        uint256[] storage oldBeneficiarySchedules = beneficiarySchedules[oldBeneficiary];
        for (uint256 i = 0; i < oldBeneficiarySchedules.length; i++) {
            if (oldBeneficiarySchedules[i] == _scheduleId) {
                // Swap with the last element and pop
                if (i < oldBeneficiarySchedules.length - 1) {
                    oldBeneficiarySchedules[i] = oldBeneficiarySchedules[oldBeneficiarySchedules.length - 1];
                }
                oldBeneficiarySchedules.pop();
                break;
            }
        }
        
        // Add schedule ID to new beneficiary's list
        beneficiarySchedules[_newBeneficiary].push(_scheduleId);
        
        // Update the beneficiary for this schedule ID
        scheduleBeneficiary[_scheduleId] = _newBeneficiary;
        
        emit BeneficiaryChanged(_scheduleId, oldBeneficiary, _newBeneficiary);
    }

    /**
     * @dev Determines if a month's tokens are now claimable based on the release day
     * @param _scheduleId The ID of the vesting schedule
     * @return Number of claimable months
     */
    function _getClaimableMonths(uint256 _scheduleId) internal view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        uint256 monthsElapsed = getCurrentVestingMonth();
        
        if (monthsElapsed == 0) {
            return 0;
        }
        
        // Get information about the current date
        uint256 currentDay = BokkyPooBahsDateTimeLibrary.getDay(block.timestamp);
        uint256 currentMonth = BokkyPooBahsDateTimeLibrary.getMonth(block.timestamp);
        uint256 currentYear = BokkyPooBahsDateTimeLibrary.getYear(block.timestamp);
        
        // Calculate the last day of the current monthㅔㅅ
        uint256 lastDayOfMonth = BokkyPooBahsDateTimeLibrary.getDaysInMonth(block.timestamp);
        
        // Determine the effective release day:
        // If the requested release day (e.g., 31) is greater than the last day of the current month,
        // use the last day of the month.
        uint256 effectiveReleaseDay = schedule.releaseDay > lastDayOfMonth ? lastDayOfMonth : schedule.releaseDay;
        
        // If the current day is greater than or equal to the (adjusted) release day,
        // tokens for the current month are claimable.
        // Otherwise, only tokens up to the previous month are claimable.
        return currentDay >= effectiveReleaseDay ? monthsElapsed : (monthsElapsed > 0 ? monthsElapsed - 1 : 0);
    }

    /**
     * @dev Calculates the amount of tokens that have vested for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return The amount of tokens that have vested
     */
    function calculateVestedAmount(uint256 _scheduleId) public view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        
        if (!schedule.isActive) {
            return 0;
        }

        if (tgeTimestamp == 0 || block.timestamp < tgeTimestamp) {
            return 0;
        }
        
        // TGE amount is immediately vested at TGE
        uint256 vestedAmount = schedule.tgeAmount;
        
        uint256 claimableMonths = _getClaimableMonths(_scheduleId);
        
        for (uint256 i = 0; i < schedule.monthlyAmounts.length && i < claimableMonths; i++) {
            vestedAmount += schedule.monthlyAmounts[i];
        }
        
        return vestedAmount;
    }

    /**
     * @dev Calculates the amount of tokens that can be claimed for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return The amount of tokens that can be claimed
     */
    function claimableAmount(uint256 _scheduleId) public view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        uint256 vestedAmount = calculateVestedAmount(_scheduleId);
        return vestedAmount > schedule.claimed ? vestedAmount - schedule.claimed : 0;
    }

    /**
     * @dev Claims vested tokens and transfers them to the beneficiary
     * @param _scheduleId The ID of the vesting schedule to claim from
     */
    function claim(uint256 _scheduleId) external nonReentrant whenNotPaused {
        address beneficiary = scheduleBeneficiary[_scheduleId];
        require(beneficiary == msg.sender, "Only the beneficiary can claim");
        
        uint256 amount = claimableAmount(_scheduleId);
        require(amount > 0, "No tokens to claim");
        
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        schedule.claimed += amount;
        
        // If TGE amount is part of the claim, mark it as claimed
        if (!schedule.tgeClaimed && block.timestamp >= tgeTimestamp) {
            schedule.tgeClaimed = true;
        }
        
        // Security enhancement: Check if contract has sufficient token balance
        require(token.balanceOf(address(this)) >= amount, "Insufficient token balance in contract");
        
        // Add claim record
        claimHistory[_scheduleId].push(ClaimRecord({
            amount: amount,
            timestamp: block.timestamp
        }));
        
        token.safeTransfer(beneficiary, amount);
        
        emit TokensClaimed(_scheduleId, beneficiary, amount, block.timestamp);
    }

    /**
     * @dev Gets the next release date for a vesting schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return The timestamp of the next release date
     */
    function getNextReleaseDate(uint256 _scheduleId) public view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        
        if (!schedule.isActive) {
            return 0;
        }
        
        // If TGE has not occurred yet, return TGE timestamp
        if (block.timestamp < tgeTimestamp) {
            return tgeTimestamp;
        }
        
        return _calculateNextReleaseDate(_scheduleId, schedule);
    }

    /**
     * @dev Internal helper function to calculate next release date
     * @param _scheduleId The ID of the vesting schedule
     * @param _schedule The vesting schedule
     * @return The timestamp of the next release date
     */
    function _calculateNextReleaseDate(uint256 _scheduleId, VestingSchedule storage _schedule) private view returns (uint256) {
        uint256 monthsElapsed = getCurrentVestingMonth();
        
        if (_schedule.monthlyAmounts.length > 0 && monthsElapsed >= _schedule.monthlyAmounts.length) {
            uint256 vestedAmount = calculateVestedAmount(_scheduleId);
            if (vestedAmount > _schedule.claimed) {
                uint256 lastReleaseMonth = _schedule.monthlyAmounts.length;
                return calculateReleaseTimestamp(tgeTimestamp, lastReleaseMonth, _schedule.releaseDay);
            }
            
            return 0;
        }
        
        return _calculateUpcomingReleaseDate(_schedule);
    }

    /**
     * @dev Internal helper function to calculate upcoming release date
     * @param _schedule The vesting schedule
     * @return The timestamp of the upcoming release date
     */
    function _calculateUpcomingReleaseDate(VestingSchedule storage _schedule) private view returns (uint256) {
        // Get current date components
        uint256 currentDay = BokkyPooBahsDateTimeLibrary.getDay(block.timestamp);
        uint256 currentMonth = BokkyPooBahsDateTimeLibrary.getMonth(block.timestamp);
        uint256 currentYear = BokkyPooBahsDateTimeLibrary.getYear(block.timestamp);
        
        // Get TGE date components
        uint256 tgeMonth = BokkyPooBahsDateTimeLibrary.getMonth(tgeTimestamp);
        uint256 tgeYear = BokkyPooBahsDateTimeLibrary.getYear(tgeTimestamp);

        // Check if we're in the same month as TGE
        bool sameMonthAsTGE = (currentYear == tgeYear && currentMonth == tgeMonth);
        
        // Calculate the last day of the current month
        uint256 lastDayOfMonth = BokkyPooBahsDateTimeLibrary.getDaysInMonth(block.timestamp);
        
        // Adjust release day if necessary (to the last day of the month)
        uint256 effectiveReleaseDay = _schedule.releaseDay > lastDayOfMonth ? lastDayOfMonth : _schedule.releaseDay;
        
        // If this is the same month as TGE, always return next month's release date
        if (sameMonthAsTGE) {
            return _getNextMonthReleaseDate(currentYear, currentMonth, _schedule.releaseDay);
        }
        
        // For all other months: if the current day is before the effective release day, 
        // the next release is in the current month
        if (currentDay < effectiveReleaseDay) {
            return BokkyPooBahsDateTimeLibrary.timestampFromDate(currentYear, currentMonth, effectiveReleaseDay);
        } else {
            // Next release is in the next month
            return _getNextMonthReleaseDate(currentYear, currentMonth, _schedule.releaseDay);
        }
    }

    /**
     * @dev Calculates the release date for the next month
     * @param _currentYear Current year
     * @param _currentMonth Current month
     * @param _releaseDay Release day
     * @return Release timestamp for the next month
     */
    function _getNextMonthReleaseDate(uint256 _currentYear, uint256 _currentMonth, uint8 _releaseDay) private view returns (uint256) {
        // Calculate next month and year
        uint256 nextMonth = _currentMonth + 1;
        uint256 nextYear = _currentYear;
        
        // Handle year rollover
        if (nextMonth > 12) {
            nextMonth = 1;
            nextYear += 1;
        }
        
        // Calculate the timestamp for the first day of the next month
        uint256 nextMonthTimestamp = BokkyPooBahsDateTimeLibrary.timestampFromDate(nextYear, nextMonth, 1);
        
        // Get the number of days in the next month
        uint256 daysInNextMonth = BokkyPooBahsDateTimeLibrary.getDaysInMonth(nextMonthTimestamp);
        
        // Adjust release day for the next month if necessary
        uint256 nextMonthReleaseDay = _releaseDay > daysInNextMonth ? daysInNextMonth : _releaseDay;
        
        // Return the timestamp for the adjusted release day in the next month
        return BokkyPooBahsDateTimeLibrary.timestampFromDate(nextYear, nextMonth, nextMonthReleaseDay);
    }

    /**
     * @dev Calculates the timestamp for a specific release month
     * @param _tgeTimestamp The TGE timestamp
     * @param _month The month number (0 for TGE, 1 for first month, etc.)
     * @param _releaseDay The day of month for release
     * @return The timestamp for the release
     */
    function calculateReleaseTimestamp(uint256 _tgeTimestamp, uint256 _month, uint8 _releaseDay) public pure returns (uint256) {
        if (_month == 0) {
            return _tgeTimestamp;
        }
        
        // Get the year and month from TGE timestamp
        uint256 year = BokkyPooBahsDateTimeLibrary.getYear(_tgeTimestamp);
        uint256 month = BokkyPooBahsDateTimeLibrary.getMonth(_tgeTimestamp);
        
        // Add months to get the target release month
        // We manually calculate the new month and year to avoid any library issues
        month = month + _month;
        while (month > 12) {
            month -= 12;
            year += 1;
        }
        
        // Calculate the timestamp for the first day of the target month
        uint256 targetMonthFirstDayTimestamp = BokkyPooBahsDateTimeLibrary.timestampFromDate(year, month, 1);
        
        // Calculate the last day of the target month using the first day of that month
        uint256 lastDayOfMonth = BokkyPooBahsDateTimeLibrary.getDaysInMonth(targetMonthFirstDayTimestamp);
        
        // Adjust release day if necessary (to the last day of the month)
        // For example: if releaseDay is 31 but February has 28 days (29 in leap years), adjust to the last day
        uint256 effectiveReleaseDay = _releaseDay > lastDayOfMonth ? lastDayOfMonth : _releaseDay;
        
        // Return timestamp for the adjusted release day in the target month
        return BokkyPooBahsDateTimeLibrary.timestampFromDate(year, month, effectiveReleaseDay);
    }
    
    /**
     * @dev Gets the current vesting month based on TGE timestamp
     * @return The current month number (0 for TGE month, 1 for first month, etc.)
     */
    function getCurrentVestingMonth() public view returns (uint256) {
        if (block.timestamp < tgeTimestamp) {
            return 0;
        }
        return BokkyPooBahsDateTimeLibrary.diffMonths(tgeTimestamp, block.timestamp);
    }

    /**
     * @dev Get vesting schedule information for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return claimedTotal Total amount of tokens claimed
     * @return vestedTotal Total amount of tokens vested
     * @return totalAllocation Total allocation of tokens (TGE + monthly)
     * @return monthsElapsed Months elapsed since TGE
     * @return claimableMonths Number of months that are claimable
     */
    function getVestingInfo(uint256 _scheduleId) external view returns (
        uint256 claimedTotal,
        uint256 vestedTotal,
        uint256 totalAllocation,
        uint256 monthsElapsed,
        uint256 claimableMonths
    ) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        
        if (!schedule.isActive) {
            return (0, 0, 0, 0, 0);
        }
        
        claimedTotal = schedule.claimed;
        totalAllocation = schedule.totalAmount;
        
        monthsElapsed = getCurrentVestingMonth();
        claimableMonths = _getClaimableMonths(_scheduleId);
        
        vestedTotal = calculateVestedAmount(_scheduleId);
    }

    /**
     * @dev Returns count of all schedules
     * @return The number of schedule IDs
     */
    function getScheduleCount() external view returns (uint256) {
        return allScheduleIds.length;
    }

    /**
     * @dev Returns the total token allocation for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return Total token allocation
     */
    function getTotalAllocation(uint256 _scheduleId) external view returns (uint256) {
        return vestingSchedules[_scheduleId].totalAmount;
    }
    
    /**
     * @dev Returns the remaining unvested tokens for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return Amount of remaining unvested tokens
     */
    function getRemainingVestingTokens(uint256 _scheduleId) external view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        if (!schedule.isActive) {
            return 0;
        }
        
        uint256 vestedAmount = calculateVestedAmount(_scheduleId);
        return schedule.totalAmount - vestedAmount;
    }
    
    /**
     * @dev Returns the end date of the vesting schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return Timestamp of the vesting end date
     */
    function getVestingEndDate(uint256 _scheduleId) external view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        if (!schedule.isActive || schedule.monthlyAmounts.length == 0) {
            return 0;
        }
        
        // Calculate the last release date
        uint256 lastReleaseMonth = schedule.monthlyAmounts.length;
        
        // Calculate the release timestamp for the last month
        uint256 lastReleaseTimestamp = calculateReleaseTimestamp(tgeTimestamp, lastReleaseMonth, schedule.releaseDay);
        
        return lastReleaseTimestamp;
    }
    
    /**
     * @dev Returns the remaining vesting period in months
     * @param _scheduleId The ID of the vesting schedule
     * @return Number of remaining vesting months
     */
    function getRemainingVestingMonths(uint256 _scheduleId) external view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        if (!schedule.isActive) {
            return 0;
        }
        
        uint256 currentMonth = getCurrentVestingMonth();
        if (currentMonth >= schedule.monthlyAmounts.length) {
            return 0;
        }
        
        return schedule.monthlyAmounts.length - currentMonth;
    }
    
    /**
     * @dev Returns the number of claim records for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return Number of claim records
     */
    function getClaimHistoryCount(uint256 _scheduleId) external view returns (uint256) {
        return claimHistory[_scheduleId].length;
    }
    
    /**
     * @dev Returns a specific claim record for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @param _index Index of the claim record
     * @return amount Amount of tokens claimed
     * @return timestamp Timestamp of the claim
     */
    function getClaimHistoryAt(uint256 _scheduleId, uint256 _index) external view returns (uint256 amount, uint256 timestamp) {
        require(_index < claimHistory[_scheduleId].length, "Index out of bounds");
        
        ClaimRecord storage record = claimHistory[_scheduleId][_index];
        return (record.amount, record.timestamp);
    }
    
    /**
     * @dev Returns all claim records for a schedule
     * @param _scheduleId The ID of the vesting schedule
     * @return amounts Array of claimed token amounts
     * @return timestamps Array of claim timestamps
     */
    function getAllClaimHistory(uint256 _scheduleId) external view returns (uint256[] memory amounts, uint256[] memory timestamps) {
        uint256 count = claimHistory[_scheduleId].length;
        
        amounts = new uint256[](count);
        timestamps = new uint256[](count);
        
        for (uint256 i = 0; i < count; i++) {
            ClaimRecord storage record = claimHistory[_scheduleId][i];
            amounts[i] = record.amount;
            timestamps[i] = record.timestamp;
        }
        
        return (amounts, timestamps);
    }
    
    /**
     * @dev Gets all schedule IDs for a beneficiary
     * @param _beneficiary The address of the beneficiary
     * @return Array of schedule IDs
     */
    function getBeneficiaryScheduleIds(address _beneficiary) external view returns (uint256[] memory) {
        return beneficiarySchedules[_beneficiary];
    }
    
    /**
     * @dev Gets a vesting schedule by its ID
     * @param _scheduleId The ID of the vesting schedule
     * @return totalAmount The total amount allocated
     * @return tgeAmount The TGE amount
     * @return claimed The amount claimed so far
     * @return isActive Whether the schedule is active
     * @return releaseDay The release day
     * @return monthlyAmounts Array of monthly amounts
     */
    function getVestingSchedule(uint256 _scheduleId) external view returns (
        uint256 totalAmount,
        uint256 tgeAmount,
        uint256 claimed,
        bool isActive,
        uint8 releaseDay,
        uint256[] memory monthlyAmounts
    ) {
        VestingSchedule storage schedule = vestingSchedules[_scheduleId];
        return (
            schedule.totalAmount,
            schedule.tgeAmount,
            schedule.claimed,
            schedule.isActive,
            schedule.releaseDay,
            schedule.monthlyAmounts
        );
    }

    function createImmediateSchedule(
        address _beneficiary,
        uint256 _amount
    ) external onlyOwner returns (uint256) {
        require(_beneficiary != address(0), "Invalid beneficiary");
        require(_amount > 0, "Amount must be greater than 0");
        require(token.balanceOf(address(this)) >= _amount, "Insufficient token balance in contract");

        uint256 immediateScheduleId = nextImmediateScheduleId++;
        
        ImmediateSchedule memory schedule = ImmediateSchedule({
            totalAmount: _amount,
            claimed: 0,
            isActive: true
        });
        
        immediateSchedules[immediateScheduleId] = schedule;
        beneficiaryImmediateSchedules[_beneficiary].push(immediateScheduleId);
        immediateScheduleBeneficiary[immediateScheduleId] = _beneficiary;
        allImmediateScheduleIds.push(immediateScheduleId);
        
        emit ImmediateScheduleCreated(immediateScheduleId, _beneficiary, _amount);
        
        return immediateScheduleId;
    }

    function claimImmediateSchedule(uint256 _immediateScheduleId) external nonReentrant whenNotPaused {
        require(_immediateScheduleId > 0 && _immediateScheduleId < nextImmediateScheduleId, "Invalid immediate schedule ID");
        
        ImmediateSchedule storage schedule = immediateSchedules[_immediateScheduleId];
        require(schedule.isActive, "Schedule is not active");
        
        address beneficiary = immediateScheduleBeneficiary[_immediateScheduleId];
        require(msg.sender == beneficiary, "Only beneficiary can claim");
        
        uint256 unclaimedAmount = schedule.totalAmount - schedule.claimed;
        require(unclaimedAmount > 0, "No tokens to claim");
        
        schedule.claimed = schedule.totalAmount;
        
        immediateClaimHistory[_immediateScheduleId].push(ClaimRecord({
            amount: unclaimedAmount,
            timestamp: block.timestamp
        }));
        
        token.safeTransfer(beneficiary, unclaimedAmount);
        
        emit ImmediateTokensClaimed(_immediateScheduleId, beneficiary, unclaimedAmount);
    }

    function getBeneficiaryImmediateScheduleIds(address _beneficiary) external view returns (uint256[] memory) {
        return beneficiaryImmediateSchedules[_beneficiary];
    }

    function getImmediateSchedule(uint256 _immediateScheduleId) external view returns (
        ImmediateSchedule memory schedule
    ) {
        schedule = immediateSchedules[_immediateScheduleId];
    }

    function getImmediateScheduleCount() external view returns (uint256) {
        return allImmediateScheduleIds.length;
    }

    /**
     * @dev Allows the onBehalfOwner to claim immediate schedules for multiple beneficiaries in a single transaction
     * @param _immediateScheduleIds Array of immediate schedule IDs to claim
     */
    function claimImmediateSchedulesOnBehalf(uint256[] calldata _immediateScheduleIds) external nonReentrant onlyOnBehalfOwner whenNotPaused {
        require(_immediateScheduleIds.length > 0, "Empty immediateScheduleIds array");
        
        for (uint256 i = 0; i < _immediateScheduleIds.length; i++) {
            _claimImmediateSchedule(_immediateScheduleIds[i]);
        }
    }

    /**
     * @dev Allows the onBehalfOwner to claim a single immediate schedule on behalf of the beneficiary
     * @param _immediateScheduleId The ID of the immediate schedule
     */
    function claimImmediateScheduleOnBehalf(uint256 _immediateScheduleId) external nonReentrant onlyOnBehalfOwner whenNotPaused {
        _claimImmediateSchedule(_immediateScheduleId);
    }

    /**
     * @dev Internal function to process immediate schedule claiming
     * @param _immediateScheduleId The ID of the immediate schedule
     */
    function _claimImmediateSchedule(uint256 _immediateScheduleId) internal {
        require(_immediateScheduleId > 0 && _immediateScheduleId < nextImmediateScheduleId, "Invalid immediate schedule ID");
        
        ImmediateSchedule storage schedule = immediateSchedules[_immediateScheduleId];
        require(schedule.isActive, "Schedule is not active");
        
        address beneficiary = immediateScheduleBeneficiary[_immediateScheduleId];
        uint256 unclaimedAmount = schedule.totalAmount - schedule.claimed;
        require(unclaimedAmount > 0, "No tokens to claim");
        
        schedule.claimed = schedule.totalAmount;
        
        immediateClaimHistory[_immediateScheduleId].push(ClaimRecord({
            amount: unclaimedAmount,
            timestamp: block.timestamp
        }));
        
        token.safeTransfer(beneficiary, unclaimedAmount);
        
        emit ImmediateTokensClaimed(_immediateScheduleId, beneficiary, unclaimedAmount);
    }
}