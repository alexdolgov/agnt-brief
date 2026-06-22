// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import necessary contracts and libraries from OpenZeppelin
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";

contract DackieClaimReward is Ownable, Pausable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using Address for address;

    // Structure to store user information
    struct UserInfo {
        // Amount of tokens the user has provided for the pool
        uint256 amountPool;
        // Whether the user has claimed (default: false) from the pool
        bool claimedPool;
    }

    // Structure to store vesting schedule information
    struct VestingSchedule {
        // Whether the vesting schedule has been initialized
        bool isVestingInitialized;
        // Beneficiary's address to receive vested tokens
        address beneficiary;
        // Total amount of tokens to be vested
        uint256 amountTotal;
        // Amount of tokens that has been released
        uint256 released;
        // released Time vested tokens
        uint256 releasedTime;
    }

    // Global variables
    // Start time of the vesting period
    uint256 public vestingStartTime;
    // Flag indicating if vesting has been revoked
    bool public vestingRevoked;

    // Constant variables
    // Claiming percentage
    uint256 private constant claimPercentage = 30;
    // Claiming percentage
    uint256 private constant vestingPercentage = 100 - claimPercentage;

    // Mapping of vesting schedule IDs to vesting schedule data
    mapping(bytes32 => VestingSchedule) private vestingSchedules;

    // Total amount across all vesting schedules
    uint256 private vestingSchedulesTotalAmount;

    // Mapping of user addresses to their user information
    mapping(address => UserInfo) public _userInfo;
    mapping(address => uint256) private holdersVestingCount;

    // Block number when IFO (Initial Farm Offering) starts
    uint256 public startBlock;

    // Duration of the vesting period in blocks
    uint256 public vestingDuration;

    // Frequency of vesting release in blocks
    uint256 public vestingReleaseFrequency;

    // The variable indicating whether the initializeVestingSchedules function has been called or not.
    bool private isVestingSchedulesInitialized;

    // The token contract address
    IERC20 public token;

    // Event triggered when a new vesting schedule is initialized
    event VestingScheduleInitialized(address indexed beneficiary, uint256 amount);

    // Admin withdraw events
    event AdminWithdraw(uint256 amount);

    // Create VestingSchedule event
    event CreateVestingSchedule(address indexed user, uint256 amount);

    // Event when released new amount
    event Released(address indexed beneficiary, uint256 amount);

    // Event when revoked
    event Revoked();

    // Constructor
    constructor(
        uint256 _startBlock,
        uint256 _vestingDuration,
        uint256 _vestingReleaseFrequency,
        uint256 _vestingStartTime,
        address _token
    ) ReentrancyGuard() {
        // Validate vesting duration and release frequency
        require(_vestingDuration > 0, "Vesting duration must be greater than 0");
        require(_vestingReleaseFrequency > 0, "Vesting release frequency must be greater than 0");

        // Set initial values for contract parameters
        startBlock = _startBlock;
        vestingDuration = _vestingDuration;
        vestingReleaseFrequency = _vestingReleaseFrequency;
        token = IERC20(_token);
        // Initialize vesting start time to contract deployment time
        vestingStartTime = _vestingStartTime;
    }

    /**
     * @notice Initializes vesting schedules for multiple beneficiaries.
     * @param beneficiaries List of beneficiary addresses.
     * @param amountTotals List of total amounts of tokens to be vested for each beneficiary.
     */
    function addAddressAmount(address[] calldata beneficiaries, uint256[] calldata amountTotals) external onlyOwner {
        require(beneficiaries.length == amountTotals.length, "Input arrays length mismatch");

        for (uint256 i = 0; i < beneficiaries.length; i++) {
            address beneficiary = beneficiaries[i];
            uint256 amountTotal = amountTotals[i];

            // Validate beneficiary address and amount
            require(beneficiary != address(0), "Invalid beneficiary address");
            require(amountTotal > 0, "Amount must be greater than 0");

            _userInfo[beneficiary].amountPool = amountTotal;

            // Emit an event to signal the initialization of a new vesting schedule
            emit VestingScheduleInitialized(beneficiary, amountTotal);
        }
    }

    /**
     * @notice Allows users to claim their vested rewards.
     */
    function claim() external whenNotPaused nonReentrant {
        // Ensure that the claiming period has started
        require(block.number >= startBlock, "Claiming is not yet allowed");

        // Retrieve user information
        UserInfo storage user = _userInfo[msg.sender];
        require(user.amountPool > 0, "No pool amount found");
        require(!user.claimedPool, "Already claimed from the pool");

        // Mark the user's claim status
        _userInfo[msg.sender].claimedPool = true;

        // Calculate the claim amount and vesting amount
        uint256 claimAmount = user.amountPool.mul(claimPercentage).div(100);

        // Transfer the claimed amount to the user
        token.safeTransfer(msg.sender, claimAmount);

        // If this pool is Vesting modal, create a VestingSchedule for each user
        if (vestingPercentage > 0) {
            uint256 vestingAmount = user.amountPool.sub(claimAmount);

            // Create VestingSchedule object
            _createVestingSchedule(msg.sender, vestingAmount);

            emit CreateVestingSchedule(msg.sender, vestingAmount);
        }
    }

    /**
     * @notice Release vested amount of offering tokens
     * @param _vestingScheduleId The unique identifier of the vesting schedule
     * Requirements:
     * - The vesting schedule must exist.
     * - The caller must be either the beneficiary of the vesting schedule or the contract owner.
     * - There must be vested tokens available to release.
     * Effects:
     * - Transfers the vested tokens to the beneficiary's address.
     * - Updates the released amount and released time in the vesting schedule.
     * Emits a `Released` event indicating the release of tokens.
     */
    function release(bytes32 _vestingScheduleId) external nonReentrant {
        require(vestingSchedules[_vestingScheduleId].isVestingInitialized == true, "Vesting schedule does not exist");

        // Retrieve the vesting schedule
        VestingSchedule storage vestingSchedule = vestingSchedules[_vestingScheduleId];

        // Check if the caller is the beneficiary or the owner
        bool isBeneficiary = msg.sender == vestingSchedule.beneficiary;
        bool isOwner = msg.sender == owner();
        require(isBeneficiary || isOwner, "Only the beneficiary and owner can release vested tokens");

        // Compute the amount of vested tokens
        uint256 vestedAmount = _computeReleasableAmount(vestingSchedule);
        require(vestedAmount > 0, "No vested tokens to release");

        // Update the released amount and released time
        vestingSchedule.released = vestingSchedule.released.add(vestedAmount);
        vestingSchedule.releasedTime = vestingReleaseFrequency.add(vestingSchedule.releasedTime);

        // Transfer the vested amount to the beneficiary
        token.safeTransfer(vestingSchedule.beneficiary, vestedAmount);

        // Emit an event to signal the release of tokens
        emit Released(vestingSchedule.beneficiary, vestedAmount);
    }

    /**
     * @notice It allows the admin to withdraw funds
     * @param _amount: the number of LP token to withdraw (18 decimals)
     * @dev This function is only callable by admin.
     */
    function finalWithdraw(uint256 _amount) external onlyOwner {
        require(_amount <= token.balanceOf(address(this)), "Operations: Not enough amount tokens");

        if (_amount > 0) {
            token.safeTransfer(msg.sender, _amount);
        }

        emit AdminWithdraw(_amount);
    }

    /**
     * @notice Revokes all the vesting schedules
     */
    function revoke() external onlyOwner {
        require(!vestingRevoked, "vesting is revoked");

        vestingRevoked = true;

        emit Revoked();
    }

    /**
     * @notice Creates a new vesting schedule for a beneficiary
     * @param _beneficiary address of the beneficiary to whom vested tokens are transferred
     * @param _amount total amount of tokens to be released at the end of the vesting
     */
    function _createVestingSchedule(address _beneficiary, uint256 _amount) internal {
        require(getWithdrawableTokenAmount() >= _amount, "can not create vesting schedule with sufficient tokens");

        bytes32 vestingScheduleId = computeNextVestingScheduleIdForHolder(_beneficiary);
        require(vestingSchedules[vestingScheduleId].beneficiary == address(0), "vestingScheduleId is been created");
        vestingSchedules[vestingScheduleId] = VestingSchedule(true, _beneficiary, _amount, 0, 0);
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount.add(_amount);
        holdersVestingCount[_beneficiary]++;
    }

    /**
     * @notice Returns the vested amount of tokens for the given vesting schedule identifier
     * @return The number of vested count
     */
    function computeReleasableAmount(bytes32 _vestingScheduleId) public view returns (uint256) {
        require(vestingSchedules[_vestingScheduleId].isVestingInitialized == true, "vesting schedule is not exist");

        VestingSchedule memory vestingSchedule = vestingSchedules[_vestingScheduleId];
        return _computeReleasableAmount(vestingSchedule);
    }

    /**
     * @notice Computes the next vesting schedule identifier for a given holder address
     * @return The id string
     */
    function computeNextVestingScheduleIdForHolder(address _holder) public view returns (bytes32) {
        return computeVestingScheduleIdForAddressAndIndex(_holder, holdersVestingCount[_holder]);
    }

    /**
     * @notice Computes the next vesting schedule identifier for an address and an index
     * @return The id string
     */
    function computeVestingScheduleIdForAddressAndIndex(address _holder, uint256 _index) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_holder, _index));
    }

    /**
     * @notice Get the total amount of tokens across all vesting schedules.
     * @return Total amount of tokens in all vesting schedules.
     */
    function getVestingSchedulesTotalAmount() external view returns (uint256) {
        return vestingSchedulesTotalAmount;
    }

    /**
     * @notice Returns the vesting schedule information of a given identifier
     * @return The vesting schedule object
     */
    function getVestingSchedule(bytes32 _vestingScheduleId) public view returns (VestingSchedule memory) {
        return vestingSchedules[_vestingScheduleId];
    }

    /**
     * @notice Returns the amount of token that can be withdrawn by the owner
     * @return The amount of offering token
     */
    function getWithdrawableTokenAmount() public view returns (uint256) {
        return token.balanceOf(address(this)).sub(vestingSchedulesTotalAmount);
    }

    /**
     * @notice It returns the pool vesting information
     * @return vestingPercentage: the percentage of vesting part, claimingPercentage + vestingPercentage should be 100
     * @return vestingReleaseFrequency: Frequency of vesting release in blocks
     * @return vestingDuration: the duration of vesting
     * @return vestingStartTime: Start time of the vesting period
     */
    function viewPoolVestingInformation() external view returns (uint256, uint256, uint256, uint256) {
        return (vestingPercentage, vestingReleaseFrequency, vestingDuration, vestingStartTime);
    }

    /**
     * @notice View the information of a user.
     * @param _user The address of the user.
     * @return The user's pool amount and claimed status.
     */
    function getUserInfo(address _user) external view returns (UserInfo memory) {
        return _userInfo[_user];
    }

    /**
     * @notice Get current Time
     */
    function getCurrentTime() internal view returns (uint256) {
        return block.timestamp;
    }

    /**
     * @notice Checks if an address is listed in the rewards list.
     * @param _user The address to check.
     * @return True if the address is listed, otherwise false.
     */
    function isRewardListed(address _user) public view returns (bool) {
        return _userInfo[_user].amountPool > 0;
    }

    /**
     * @notice Pause the contract, preventing any new actions except for unpausing.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract, allowing all actions to be resumed.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Computes the releasable amount of tokens for a vesting schedule
     * @param _vestingSchedule The vesting schedule object to calculate releasable tokens for
     * @return The amount of releasable tokens
     * Logic:
     * - If the current time is before the vesting start time, no tokens are releasable.
     * - If the current time is after or equal to the vesting end time or if vesting has been revoked, all remaining tokens are releasable.
     * - Otherwise, calculate the amount of tokens that can be released based on the vesting release frequency.
     */
    function _computeReleasableAmount(VestingSchedule memory _vestingSchedule) internal view returns (uint256) {
        uint256 currentTime = getCurrentTime();
        uint256 durationTime = vestingDuration;

        if (currentTime < vestingStartTime) {
            // Before vesting start time, no tokens are releasable
            return 0;
        } else if (currentTime >= vestingStartTime.add(durationTime) || vestingRevoked) {
            // After vesting end time or revoked, all remaining tokens are releasable
            return _vestingSchedule.amountTotal.sub(_vestingSchedule.released);
        } else {
            // Calculate vestedSliceMonth as the number of release periods within the vesting duration
            uint256 vestedSliceMonth = durationTime.div(vestingReleaseFrequency);
            // Calculate the next release time
            uint256 nextMonthTime = vestingStartTime.add(vestingReleaseFrequency).add(_vestingSchedule.releasedTime);

            if (currentTime < nextMonthTime) {
                // Before the next release time, no tokens are releasable
                return 0;
            }
            // Calculate the amount of tokens that can be released in this period
            return _vestingSchedule.amountTotal.div(vestedSliceMonth);
        }
    }
}
