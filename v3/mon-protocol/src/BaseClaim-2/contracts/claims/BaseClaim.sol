// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlDefaultAdminRulesUpgradeable} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IStaking} from "../interfaces/IStaking.sol";

/**
 * @title Base Claim
 * @dev This contract is to be inherited by all claim contracts.
 * @author jeet
 */
abstract contract BaseClaim is
    Initializable,
    ReentrancyGuardUpgradeable,
    AccessControlDefaultAdminRulesUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    bytes32 public constant DEVELOPER_ROLE = keccak256("DEVELOPER");

    /// @dev Type of vesting schedule. Shared by multiple beneficiaries
    struct VestingSchedule {
        uint64 start; // start time of the vesting period in seconds since the UNIX epoch
        uint64 cliff; // cliff time of the vesting start in seconds since the UNIX epoch
        uint64 duration; // duration of the vesting period in seconds
        uint64 slicePeriodSeconds; // duration of a slice period for the vesting in seconds
    }

    struct VestingData {
        bool revoked; // whether or not the vesting has been revoked
        uint120 released; // amount of tokens released
        uint120 amountTotal; // total tokens allocated
    }

    IStaking public staking;
    address public financeWalletAddress;
    IERC20 public monToken;

    // All Vesting Schedules Types mapped to simple numeric id
    mapping(uint256 vestingScheduleId => VestingSchedule vestingSchedule)
        public vestingSchedules;

    // All Vesting Schedule Ids
    uint256[] public vestingScheduleIds;

    // Acummulated amount of tokens to be released
    uint256 public totalVestedAmount;

    // Errors
    error CliffMustBeAfterStart();
    error InvalidDuration();
    error UnusedFunctionCall();
    error InvalidSlicePeriod();
    error InvalidStakingAddress();
    error InvalidTokenAddress();
    error InvalidVestingScheduleId();
    error InsufficientFunds();
    error MismatchedArrays();
    error NotNftOwner();
    error NoReleasableFunds();
    error OnlyClaimRegistry();
    error StartMustBeInFuture();
    error StakingNotSet();
    error VestingIsRevoked();
    error UnsetFinanceWallet();
    error WithdrawAllFailed();

    // Modifiers
    modifier onlyClaimRegistry() {
        if (msg.sender != address(staking)) {
            revert OnlyClaimRegistry();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Creates a vesting contract.
    /// @param _tokenAddress address of the ERC20 token contract
    /// @param _defaultAdminAddress address of the default admin
    /// @param _financeWalletAddress address of the finance wallet
    /// @param _developers array of addresses of the developers
    function initialize(
        address _tokenAddress,
        address _defaultAdminAddress,
        address _financeWalletAddress,
        address[] calldata _developers
    ) public initializer {
        // Check that the token address is not 0x0.
        if (_tokenAddress == address(0)) {
            revert InvalidTokenAddress();
        }

        // Check that the finance wallet is not 0x0.
        if (_financeWalletAddress == address(0)) {
            revert UnsetFinanceWallet();
        }

        __Pausable_init();
        __ReentrancyGuard_init();
        __AccessControlDefaultAdminRules_init(1 days, _defaultAdminAddress);

        // Set the owner and developer role.
        _grantRole(DEVELOPER_ROLE, _defaultAdminAddress);
        for (uint256 i; i < _developers.length; ) {
            _grantRole(DEVELOPER_ROLE, _developers[i]);
            unchecked {
                i++;
            }
        }
        financeWalletAddress = _financeWalletAddress;

        // Set the token address.
        monToken = IERC20(_tokenAddress);

        // Starts in the paused state.
        _pause();
    }

    /////////////////////////////////////////
    //   Getters View Fns
    /////////////////////////////////////////
    /// @dev get all vesting schedules
    function getVestingSchedules()
        external
        view
        returns (
            uint256[] memory allVestingScheduleIds,
            VestingSchedule[] memory allVestingSchedules
        )
    {
        uint256 len = vestingScheduleIds.length;
        allVestingScheduleIds = new uint256[](len);
        allVestingSchedules = new VestingSchedule[](len);

        for (uint256 i; i < len; ) {
            allVestingScheduleIds[i] = vestingScheduleIds[i];
            allVestingSchedules[i] = vestingSchedules[vestingScheduleIds[i]];

            unchecked {
                ++i;
            }
        }
    }

    /// @dev get vesting schedule by vesting Schedule id
    function getVestingSchedule(
        uint256 _vestingScheduleId
    ) external view returns (VestingSchedule memory vestingSchedule) {
        return vestingSchedules[_vestingScheduleId];
    }

    /// @notice Get the liquidity difference
    /// +ve number -> overcollateralized by x
    /// -ve number -> undercollateralized by x
    function liquidityHealth() external view returns (int256 extraBalance) {
        uint256 balance = monToken.balanceOf(address(this));
        // diff > int256.max (impossible) so ok to typecast
        extraBalance = balance > totalVestedAmount
            ? (balance - totalVestedAmount).toInt256()
            : -(totalVestedAmount - balance).toInt256();
    }

    ////////////////////////////////////////
    //        Admin Functions
    ////////////////////////////////////////
    /// @notice Creates a new vesting schedule.
    /// @param _vestingSchedule     vesting schedule data
    /// @return vestingScheduleId   unique id for the vesting
    function createVestingSchedule(
        VestingSchedule calldata _vestingSchedule
    )
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
        returns (uint256 vestingScheduleId)
    {
        vestingScheduleId = vestingScheduleIds.length;

        if (vestingSchedules[vestingScheduleId].start != 0)
            revert InvalidVestingScheduleId();

        _upsertVestingSchedule(vestingScheduleId, _vestingSchedule);

        vestingScheduleIds.push(vestingScheduleId);
    }

    /// @notice Updates an existing vesting schedule.
    /// @param _vestingScheduleId   unique id for the vesting
    /// @param _vestingSchedule     vesting schedule data
    function updateVestingSchedule(
        uint256 _vestingScheduleId,
        VestingSchedule calldata _vestingSchedule
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (vestingSchedules[_vestingScheduleId].start == 0)
            revert InvalidVestingScheduleId();

        _upsertVestingSchedule(_vestingScheduleId, _vestingSchedule);
    }

    /// @notice Updates a vesting schedule.
    /// @param _vestingScheduleId   unique id for the vesting
    /// @param _vestingSchedule     vesting schedule data
    function _upsertVestingSchedule(
        uint256 _vestingScheduleId,
        VestingSchedule calldata _vestingSchedule
    ) internal {
        if (_vestingSchedule.start < block.timestamp)
            revert StartMustBeInFuture();

        if (_vestingSchedule.cliff < _vestingSchedule.start)
            revert CliffMustBeAfterStart();

        if (_vestingSchedule.slicePeriodSeconds == 0)
            revert InvalidSlicePeriod();

        if (
            _vestingSchedule.duration != 0 &&
            (_vestingSchedule.duration < _vestingSchedule.slicePeriodSeconds ||
                _vestingSchedule.duration <=
                _vestingSchedule.cliff - _vestingSchedule.start)
        ) revert InvalidDuration();

        vestingSchedules[_vestingScheduleId] = VestingSchedule(
            _vestingSchedule.start,
            _vestingSchedule.cliff,
            _vestingSchedule.duration,
            _vestingSchedule.slicePeriodSeconds
        );
    }

    /**
     * @dev Computes the releasable amount of tokens for a vesting schedule.
     * @return releasableAmount the amount of releasable tokens
     */
    function _computeReleasableAmount(
        uint256 _vestingScheduleId,
        VestingData memory _vestingData
    ) internal view returns (uint120 releasableAmount) {
        VestingSchedule memory _vestingSchedule = vestingSchedules[
            _vestingScheduleId
        ];
        if (_vestingSchedule.start == 0) {
            return 0;
        }

        // Retrieve the current time.
        uint256 currentTime = block.timestamp;
        // If the current time is before the cliff, no tokens are releasable.
        if ((currentTime < _vestingSchedule.cliff) || _vestingData.revoked) {
            return 0;
        }
        // If the current time is after the vesting period, all tokens are releasable,
        // minus the amount already released.
        else if (
            currentTime >= _vestingSchedule.start + _vestingSchedule.duration
        ) {
            return _vestingData.amountTotal - _vestingData.released;
        }
        // Otherwise, some tokens are releasable.
        else {
            // Compute the number of full vesting periods that have elapsed.
            uint256 timeFromStart = currentTime - _vestingSchedule.start;
            uint256 secondsPerSlice = _vestingSchedule.slicePeriodSeconds;
            uint256 vestedSlicePeriods = timeFromStart / secondsPerSlice;
            uint256 vestedSeconds = vestedSlicePeriods * secondsPerSlice;
            // Compute the amount of tokens that are vested.
            uint256 vestedAmount = (_vestingData.amountTotal * vestedSeconds) /
                _vestingSchedule.duration;

            // Subtract the amount already released and return.
            return (vestedAmount - _vestingData.released).toUint120();
        }
    }

    /// @notice Withdraw tokens from the contract.
    // commmit changes note: nonReentrant modifiers not required here
    function withdraw(
        uint256 _amount
    ) external whenPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        if (financeWalletAddress == address(0)) {
            revert UnsetFinanceWallet();
        }

        monToken.safeTransfer(financeWalletAddress, _amount);
    }

    ////////////////////////////////////////////
    //        Security Functions
    ////////////////////////////////////////////
    function pause() public onlyRole(DEVELOPER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEVELOPER_ROLE) {
        _unpause();
    }

    ////////////////////////////////////////////
    //        Staking
    ////////////////////////////////////////////
    /**
     * @dev set the staking contract address
     * @param _stakingAddress address of the staking contract
     */
    function setStaking(
        address _stakingAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_stakingAddress == address(0)) {
            revert InvalidStakingAddress();
        }

        staking = IStaking(_stakingAddress);
    }
}
