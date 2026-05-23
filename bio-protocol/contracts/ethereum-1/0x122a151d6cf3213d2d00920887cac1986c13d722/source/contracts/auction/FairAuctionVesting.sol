// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import { AccessControlDefaultAdminRules } from "@openzeppelin/contracts/access/AccessControlDefaultAdminRules.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "../vesting/TokenVesting.sol";

contract FairAuctionVesting is ReentrancyGuard, AccessControlDefaultAdminRules {
    using SafeERC20 for IERC20;

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// @notice The contribution and claim status of each user
    struct UserInfo {
        uint256 contribution; // amount taken into account to obtain TOKEN
        bool hasClaimed; // has already claimed its contribution
    }

    /// @notice BIO's main token contract
    IERC20 public immutable BIO_TOKEN;

    /// @notice The BIO vesting contract
    TokenVesting public immutable VBIO_TOKEN;

    /// @notice The DAO token used to participate in the swap
    IERC20 public immutable DAO_TOKEN;

    /// @notice The start time of the swap period
    uint256 public immutable START_TIME;

    /// @notice The end time of the swap period
    uint256 public immutable END_TIME;

    /// @notice The information about each swaper
    mapping(address => UserInfo) public userInfo;

    /// @notice The total amount swapped
    uint256 public totalRaised;

    /// @notice The maximum amount of BIO_TOKEN to distribute during the sale
    uint256 public immutable MAX_BIO_TO_DISTRIBUTE;

    /// @notice The maximum amount of VBIO_TOKEN to distribute during the sale
    uint256 public immutable MAX_VBIO_TO_DISTRIBUTE;

    /// @notice The minimum amount to raise to distribute the maximum amount of BIO and vBIO
    uint256 public immutable MIN_DAO_RAISED_FOR_MAX_BIO;

    /// @notice The maximum amount to raise to distribute the maximum amount of BIO and vBIO
    uint256 public immutable MAX_DAO_RAISE;

    /// @notice The treasury multisig, which will receive the swaps
    address public immutable treasury;

    /// @notice Whether unsold tokens have been withdrawn
    bool public unsoldTokensWithdrew;

    /// @notice Whether the claim period is enabled
    bool public claimEnabled;

    /// @notice Whether the sale is paused
    bool public isPaused;

    // Parameters for vestingSchedule setups on vBIO
    /// @notice The cliff period for vesting
    uint256 public vestingCliff;
    /// @notice The start time for vesting
    uint256 public vestingStart;
    /// @notice The duration of the vesting period
    uint256 public vestingDuration = 365 days;
    /// @notice The number of slices per second for vesting
    uint256 public vestingSlicePerSecond = 1;
    /// @notice Whether the vesting is revocable
    bool public vestingIsRevocable = false;

    /**
     * @notice Constructor for the FairAuctionVesting contract.
     * @param bioToken_ The address of the BIO token contract.
     * @param vbioToken_ The address of the VBIO token vesting contract.
     * @param daoToken_ The address of the DAO token contract used to swap.
     * @param startTime_ The start time of the sale.
     * @param endTime_ The end time of the sale.
     * @param treasury_ The address of the treasury multisig, which will receive the raised amount.
     * @param maxToDistribute_ The maximum amount of BIO tokens to distribute during the sale.
     * @param maxToDistribute2_ The maximum amount of VBIO tokens to distribute during the sale.
     * @param minToRaise_ The minimum amount to raise for maximum BIO token distribution.
     *
     * Reverts if the start time is later than or equal to the end time, if the treasury address is the zero address,
     * or if the BIO or VBIO token addresses are the zero address. Vesting start time is set to the end time of the swap period.
     */
    constructor(
        IERC20 bioToken_,
        TokenVesting vbioToken_,
        IERC20 daoToken_,
        uint256 startTime_,
        uint256 endTime_,
        address treasury_,
        uint256 maxToDistribute_,
        uint256 maxToDistribute2_,
        uint256 minToRaise_,
        uint256 maxToRaise_
    ) AccessControlDefaultAdminRules(0, msg.sender) {
        if (startTime_ < block.timestamp) revert InvalidConstructorParameters();
        if (startTime_ >= endTime_) revert InvalidConstructorParameters();
        if (treasury_ == address(0)) revert InvalidConstructorParameters();
        if (address(bioToken_) == address(0)) revert InvalidConstructorParameters();
        if (address(vbioToken_) == address(0)) revert InvalidConstructorParameters();
        if (address(daoToken_) == address(0)) revert InvalidConstructorParameters();

        BIO_TOKEN = bioToken_;
        VBIO_TOKEN = vbioToken_;
        DAO_TOKEN = daoToken_;
        START_TIME = startTime_;
        END_TIME = endTime_;
        vestingStart = endTime_;
        treasury = treasury_;
        MAX_BIO_TO_DISTRIBUTE = maxToDistribute_;
        MAX_VBIO_TO_DISTRIBUTE = maxToDistribute2_;
        MIN_DAO_RAISED_FOR_MAX_BIO = minToRaise_;
        if (maxToRaise_ == 0) {
            maxToRaise_ = type(uint256).max;
        }
        MAX_DAO_RAISE = maxToRaise_;
    }

    /**
     * EVENTS
     */
    event Swap(address indexed user, uint256 amount);
    event Claim(address indexed user, uint256 amount, uint256 amount2);
    event EmergencyWithdraw(address token, uint256 amount);
    event SetPause(bool status);

    /**
     * ERRORS
     */

    /// @dev This error is fired when trying to perform an action that is not
    /// supported by the contract, like transfers and approvals. These actions
    /// will never be supported.
    error InvalidConstructorParameters();
    error SaleInactive();
    error SaleNotFilled();
    error SalePause();
    error SaleNotEnded();
    error SaleNotClaimable();
    error ZeroAmount();
    error ZeroContribution();
    error AlreadyClaimed();
    error TokensAlreadyWithdrawn();
    error TransferFailed();
    error InvalidScheduleParameter();
    error SaleStarted();
    error CapReached();
    error MinRaiseReached();

    /**
     * MODIFIERS
     */

    /**
     * @dev Check whether the sale is currently active
     *
     * Will be marked as inactive if BIO_TOKEN has not been swapped into the contract
     */
    modifier isSaleActive() {
        if (!hasStarted() || hasEnded()) revert SaleInactive();
        if (BIO_TOKEN.balanceOf(address(this)) < (MAX_BIO_TO_DISTRIBUTE + MAX_VBIO_TO_DISTRIBUTE)) revert SaleNotFilled();
        // check if this contract has vesting creator role
        if (!VBIO_TOKEN.hasRole(VBIO_TOKEN.VESTING_CREATOR_ROLE(), address(this))) revert SaleNotFilled();
        if (totalRaised >= MAX_DAO_RAISE) revert CapReached();
        _;
    }

    /**
     * @dev Check whether the sale is currently paused
     */
    modifier isNotPaused() {
        if (isPaused) revert SalePause();
        _;
    }

    /**
     * @dev Check whether users can claim their purchased BIO_TOKEN
     *
     * If sale has not ended but the cap is reached and claim is enabled, users can claim their tokens
     * If sale has ended
     */
    modifier isClaimable() {
        if (!hasEnded() && totalRaised < MAX_DAO_RAISE) revert SaleNotEnded();
        if (!claimEnabled) revert SaleNotClaimable();
        _;
    }

    /**
     * PUBLIC VIEWS
     */

    /**
     * @dev Get remaining duration before the end of the sale
     */
    function getRemainingTime() external view returns (uint256) {
        if (hasEnded()) return 0;
        return END_TIME - _currentBlockTimestamp();
    }

    /**
     * @dev Returns whether the sale has already started
     */
    function hasStarted() public view returns (bool) {
        return _currentBlockTimestamp() >= START_TIME;
    }

    /**
     * @dev Returns whether the sale has already ended
     */
    function hasEnded() public view returns (bool) {
        return END_TIME <= _currentBlockTimestamp();
    }

    /**
     * @dev Returns the amount of BIO_TOKEN to be distributed based on the current total raised
     */
    function bioToDistribute() public view returns (uint256) {
        if (MIN_DAO_RAISED_FOR_MAX_BIO > totalRaised) {
            return MAX_BIO_TO_DISTRIBUTE * totalRaised / MIN_DAO_RAISED_FOR_MAX_BIO;
        }
        return MAX_BIO_TO_DISTRIBUTE;
    }

    /**
     * @dev Returns the amount of VBIO_TOKEN to be distributed based on the current total raised
     */
    function vbioToDistribute() public view returns (uint256) {
        if (MIN_DAO_RAISED_FOR_MAX_BIO > totalRaised) {
            return MAX_VBIO_TO_DISTRIBUTE * totalRaised / MIN_DAO_RAISED_FOR_MAX_BIO;
        }
        return MAX_VBIO_TO_DISTRIBUTE;
    }

    /**
     * @dev Returns the amount of BIO_TOKEN + VBIO_TOKEN to be distributed based on the current total raised
     */
    function tokensToDistribute() public view returns (uint256) {
        return bioToDistribute() + vbioToDistribute();
    }

    /**
     * @dev Get user tokens amount to claim
     */
    function getExpectedClaimAmount(address account) public view returns (uint256 bioTokenAmount, uint256 vbioTokenAmount) {
        if (totalRaised == 0) return (0, 0);

        UserInfo memory user = userInfo[account];
        bioTokenAmount = user.contribution * bioToDistribute() / totalRaised;
        vbioTokenAmount = user.contribution * vbioToDistribute() / totalRaised;
    }

    /**
     * @dev Purchase a contribution for the sale for a value of "amount" DAO_TOKEN
     */
    function swap(uint256 amount) external isSaleActive isNotPaused nonReentrant {
        if (amount == 0) revert ZeroAmount();
        
        // If the user tries to swap more than the remaining amount, 
        // we will swap the remaining amount
        if (MAX_DAO_RAISE - totalRaised < amount) {
            amount = MAX_DAO_RAISE - totalRaised;
        } 

        // Update user information and total raised
        UserInfo storage user = userInfo[msg.sender];
        user.contribution = user.contribution + amount;
        totalRaised = totalRaised + amount;

        // Emit an event for the purchase
        emit Swap(msg.sender, amount);

        // Transfer DAO_TOKEN directly from the sender to the treasury
        DAO_TOKEN.safeTransferFrom(msg.sender, treasury, amount);
    }

    /**
     * @dev Claim purchased BIO_TOKEN during the sale
     */
    function claim() external nonReentrant isClaimable {
        UserInfo storage user = userInfo[msg.sender];

        if (totalRaised == 0 || user.contribution == 0) revert ZeroContribution();
        if (user.hasClaimed) revert AlreadyClaimed();

        (uint256 bioAmount, uint256 vbioAmount) = getExpectedClaimAmount(msg.sender);

        uint256 contractBalance = BIO_TOKEN.balanceOf(address(this));
        uint256 totalRequired = bioAmount + vbioAmount;

        // Check if the contract has enough BIO_TOKEN for the claim
        if (totalRequired > contractBalance) revert TransferFailed();

        user.hasClaimed = true;

        emit Claim(msg.sender, bioAmount, vbioAmount);

        // Transfer BIO_TOKEN to the user
        if (bioAmount > 0) {
            bool bioTransferSuccess = BIO_TOKEN.transfer(msg.sender, bioAmount);
            if (!bioTransferSuccess) revert TransferFailed();
        }

        // Transfer BIO_TOKEN to the VBIO_TOKEN contract and create vesting schedule
        if (vbioAmount > 0) {
            bool vbioTransferSuccess = BIO_TOKEN.transfer(address(VBIO_TOKEN), vbioAmount);
            if (!vbioTransferSuccess) revert TransferFailed();
            VBIO_TOKEN.createVestingSchedule(
                msg.sender, vestingStart, vestingCliff, vestingDuration, vestingSlicePerSecond, vestingIsRevocable, vbioAmount
            );
        }
    }

    /**
     * OWNABLE FUNCTIONS
     */
    function setPause(bool value) external onlyRole(PAUSER_ROLE) {
        isPaused = value;
        emit SetPause(value);
    }

    /**
     * @dev Withdraw unsold BIO_TOKEN + VBIO_TOKEN if MIN_DAO_RAISED_FOR_MAX_BIO has not been reached
     *
     * Must only be called by the Admin
     */
    function withdrawUnsoldTokens() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!hasEnded()) revert SaleNotEnded();
        if (totalRaised >= MIN_DAO_RAISED_FOR_MAX_BIO) revert MinRaiseReached();
        if (unsoldTokensWithdrew) revert TokensAlreadyWithdrawn();

        uint256 totalBIOSold = bioToDistribute();
        uint256 totalVBIOSold = vbioToDistribute();

        unsoldTokensWithdrew = true;
        //because VBIO is BIO and is sent to VBIO contract before claiming
        BIO_TOKEN.transfer(treasury, MAX_BIO_TO_DISTRIBUTE + MAX_VBIO_TO_DISTRIBUTE - totalBIOSold - totalVBIOSold);
    }

    // setters

    function setVestingStart(uint256 start_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // cannot update vesting parameter after the sale has started
        if (hasStarted()) revert SaleStarted();
        // _start should be no further away than 30 weeks
        if (start_ > block.timestamp + 30 weeks) revert InvalidScheduleParameter();
        vestingStart = start_;
    }

    function setCliff(uint256 cliff_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // cannot update vesting parameter after the sale has started
        if (hasStarted()) revert SaleStarted();
        // _duration must be longer than _cliff
        if (vestingDuration < cliff_) revert InvalidScheduleParameter();
        vestingCliff = cliff_;
    }

    function setDuration(uint256 duration_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // cannot update vesting parameter after the sale has started
        if (hasStarted()) revert SaleStarted();
        // _duration should be at least 7 days and max 50 years
        if (duration_ < 7 days || duration_ > 50 * (365 days)) revert InvalidScheduleParameter();
        vestingDuration = duration_;
    }

    function setSlicePerSecond(uint256 slicePerSecond_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // cannot update vesting parameter after the sale has started
        if (hasStarted()) revert SaleStarted();
        // _slicePeriodSeconds should be between 1 and 60 seconds
        if (slicePerSecond_ == 0 || slicePerSecond_ > 60) revert InvalidScheduleParameter();
        vestingSlicePerSecond = slicePerSecond_;
    }

    function setIsRevocable(bool isRevocable_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // cannot update vesting parameter after the sale has started
        if (hasStarted()) revert SaleStarted();
        vestingIsRevocable = isRevocable_;
    }

    /**
     * /!\ EMERGENCY ONLY
     */

    /**
     * @dev Failsafe
     */
    function emergencyWithdrawFunds(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(treasury, amount);

        emit EmergencyWithdraw(token, amount);
    }

    /**
     * @dev Failsafe
     */
    function emergencyWithdrawBIO() external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 amount = BIO_TOKEN.balanceOf(address(this));
        BIO_TOKEN.safeTransfer(treasury, amount);

        emit EmergencyWithdraw(address(BIO_TOKEN), amount);
    }

    function enableClaim() external onlyRole(DEFAULT_ADMIN_ROLE) {
        claimEnabled = true;
    }

    /**
     * INTERNAL FUNCTIONS
     */

    /**
     * @dev Utility function to get the current block timestamp
     */
    function _currentBlockTimestamp() internal view virtual returns (uint256) {
        return block.timestamp;
    }
}
