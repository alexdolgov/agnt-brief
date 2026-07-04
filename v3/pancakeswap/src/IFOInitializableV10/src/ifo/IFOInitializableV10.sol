// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import {ReentrancyGuardTransient} from "../base/ReentrancyGuardTransient.sol";

import "./interfaces/IIFOV10.sol";
import "./libraries/IFOLibV10.sol";

/**
 * @title IFOInitializableV10
 */
contract IFOInitializableV10 is IIFOV10, ReentrancyGuardTransient, Ownable {
    using SafeERC20 for IERC20;

    address public NATIVE = address(0);

    // Whether it is initialized
    bool private isInitialized;

    // all the addresses
    // [0] lpToken0 [1] lpToken1 [2] offeringToken [3] adminAddress
    address[4] public addresses;

    // The timestamp when IFO starts
    uint256 public startTimestamp;

    // The timestamp when IFO ends
    uint256 public endTimestamp;

    // Max buffer seconds (for sanity checks)
    uint256 public MAX_BUFFER_SECONDS;

    // Max pool id
    uint8 public MAX_POOL_ID;

    // Total tokens distributed across the pools
    uint256 public totalTokensOffered;

    // Struct that contains each pool characteristics
    struct PoolCharacteristics {
        uint256 raisingAmountPool; // amount of tokens raised for the pool (in LP tokens)
        uint256 offeringAmountPool; // amount of tokens offered for the pool (in offeringTokens)
        uint256 limitPerUserInLP; // limit of tokens per user (if 0, it is ignored)
        bool hasTax; // tax on the overflow (if any, it works with _calculateTaxOverflow)
        uint256 flatTaxRate; // new rate for flat tax
        uint256 totalAmountPool; // total amount pool deposited (in LP tokens)
        uint256 sumTaxesOverflow; // total taxes collected (starts at 0, increases with each harvest if overflow)
        VestingConfig vestingConfig;
    }

    // Array of PoolCharacteristics of size NUMBER_POOLS
    PoolCharacteristics[2] private _poolInformation;

    // Struct that contains each user information for both pools
    struct UserInfo {
        uint256 amountPool; // How many tokens the user has provided for pool
        bool claimedPool; // Whether the user has claimed (default: false) for pool
    }

    // It maps the address to pool id to UserInfo
    mapping(address => mapping(uint8 => UserInfo)) private _userInfo;

    // vesting startTime, everyone will be started at same timestamp
    uint256 public vestingStartTime;

    // A flag for vesting is being revoked
    bool public vestingRevoked;

    // Struct that contains vesting schedule
    struct VestingSchedule {
        bool isVestingInitialized;
        // beneficiary of tokens after they are released
        address beneficiary;
        // pool id
        uint8 pid;
        // total amount of tokens to be released at the end of the vesting
        uint256 amountTotal;
        // amount of tokens has been released
        uint256 released;
    }

    bytes32[] private vestingSchedulesIds;
    mapping(bytes32 => VestingSchedule) private vestingSchedules;
    uint256 private vestingSchedulesTotalAmount;
    mapping(address => uint256) private holdersVestingCount;

    // Admin withdraw events
    event AdminWithdraw(uint256 amountLP0, uint256 amountLP1, uint256 amountOfferingToken);

    // Admin recovers token
    event AdminTokenRecovery(address tokenAddress, uint256 amountTokens);

    // Deposit event
    event Deposit(address indexed user, uint256 amount, uint8 indexed pid);

    // Harvest event
    event Harvest(address indexed user, uint256 offeringAmount, uint256 excessAmount, uint8 indexed pid);

    // Create VestingSchedule event
    event CreateVestingSchedule(address indexed user, uint256 offeringAmount, uint256 excessAmount, uint8 indexed pid);

    // Event for new start & end timestamps
    event NewStartAndEndTimestamps(uint256 startTimestamp, uint256 endTimestamp);

    // Event when parameters are set for one of the pools
    event PoolParametersSet(uint256 offeringAmountPool, uint256 raisingAmountPool, uint8 pid);

    // Event when released new amount
    event Released(address indexed beneficiary, uint256 amount);

    // Event when revoked
    event Revoked();

    error PoolIdNotValid();
    error TokensNotDepositedProperly();
    error NewAmountAboveUserLimit();
    error InvalidToken();
    error VestingOnlyBeneficiaryOrOwnerCanRelease();
    error VestingNotEnoughToRelease();
    error VestingIsRevoked();
    error NativeTransferFailed();

    /**
     * @notice Constructor
     */
    constructor() {}

    /**
     * @notice It initializes the contract
     * @dev It can only be called once.
     * @param _addresses [0] lpToken0 [1] lpToken1 [2] offeringToken [3] adminAddress
     * @param _startAndEndTimestamps [0] startTimestamp [1] endTimestamp
     * @param _maxBufferSeconds Maximum buffer of blocks from the current block number
     * @param _maxPoolId Maximum id of pools
     * @param _vestingStartTime The start timestamp of vesting
     */
    function initialize(
        address[] calldata _addresses,
        uint256[] calldata _startAndEndTimestamps,
        uint256 _maxBufferSeconds,
        uint8 _maxPoolId,
        uint256 _vestingStartTime
    ) public {
        // Check validation
        IFOLibV10.InitializePreCheck(isInitialized, _addresses.length, _startAndEndTimestamps.length, _maxPoolId);

        // Make this contract initialized
        isInitialized = true;

        // [0] lpToken0 [1] lpToken1 [2] offeringToken [3] adminAddress
        for (uint8 i = 0; i < _addresses.length; i++) {
            addresses[i] = _addresses[i];
        }

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];
        MAX_BUFFER_SECONDS = _maxBufferSeconds;
        MAX_POOL_ID = _maxPoolId;
        vestingStartTime = _vestingStartTime;

        // Transfer ownership to admin
        transferOwnership(_addresses[3]);
    }

    /**
     * @notice It allows users to deposit LP tokens to pool
     * @param _amount The number of LP token used (18 decimals)
     * @param _pid Pool id
     */
    function depositPool(uint256 _amount, uint8 _pid) external payable override nonReentrant {
        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV10.DepositPoolPreCheck(
            _amount,
            _poolInformation[_pid].offeringAmountPool,
            _poolInformation[_pid].raisingAmountPool,
            startTimestamp,
            endTimestamp
        );

        // Verify tokens were deposited properly
        if (IERC20(addresses[2]).balanceOf(address(this)) < totalTokensOffered) {
            revert TokensNotDepositedProperly();
        }

        _deposit(_amount, _pid);
    }

    /**
     * @notice It allows users to harvest from pool
     * @param _pid Pool id
     */
    function harvestPool(uint8 _pid) external override nonReentrant {
        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV10.HarvestPoolPreCheck(
            endTimestamp, _userInfo[msg.sender][_pid].amountPool, _userInfo[msg.sender][_pid].claimedPool
        );

        // Updates the harvest status
        _userInfo[msg.sender][_pid].claimedPool = true;

        // Updates the vesting startTime
        if (vestingStartTime == 0) {
            vestingStartTime = block.timestamp;
        }

        // Initialize the variables for offering, refunding user amounts, and tax amount
        (uint256 offeringTokenAmount, uint256 refundingTokenAmount, uint256 userTaxOverflow) =
            _calculateOfferingAndRefundingAmountsPool(msg.sender, _pid);

        // Increment the sumTaxesOverflow
        if (userTaxOverflow > 0) {
            _poolInformation[_pid].sumTaxesOverflow = _poolInformation[_pid].sumTaxesOverflow + userTaxOverflow;
        }

        // Transfer these tokens back to the user if quantity > 0
        if (offeringTokenAmount > 0) {
            if (100 - _poolInformation[_pid].vestingConfig.percentage > 0) {
                uint256 amount = (offeringTokenAmount * (100 - _poolInformation[_pid].vestingConfig.percentage)) / 100;

                // Transfer the tokens at TGE
                IERC20(addresses[2]).safeTransfer(msg.sender, amount);

                emit Harvest(msg.sender, amount, refundingTokenAmount, _pid);
            }
            // If this pool is Vesting modal, create a VestingSchedule for each user
            if (_poolInformation[_pid].vestingConfig.percentage > 0) {
                uint256 amount = (offeringTokenAmount * _poolInformation[_pid].vestingConfig.percentage) / 100;

                // Create VestingSchedule object
                _createVestingSchedule(msg.sender, _pid, amount);

                emit CreateVestingSchedule(msg.sender, amount, refundingTokenAmount, _pid);
            }
        }

        if (refundingTokenAmount > 0) {
            _safeTransferOut(addresses[_pid], refundingTokenAmount);
        }
    }

    /**
     * @notice It allows the admin to withdraw funds
     * @param _lp0Amount The number of LP token0 to withdraw
     * @param _lp1Amount The number of LP token1 to withdraw
     * @param _offerAmount The number of offering amount to withdraw
     * @dev This function is only callable by admin.
     */
    function finalWithdraw(uint256 _lp0Amount, uint256 _lp1Amount, uint256 _offerAmount) external override onlyOwner {
        if (_lp0Amount > 0) {
            _safeTransferOut(addresses[0], _lp0Amount);
        }

        if (_lp1Amount > 0) {
            _safeTransferOut(addresses[1], _lp1Amount);
        }

        if (_offerAmount > 0) {
            IERC20(addresses[2]).safeTransfer(msg.sender, _offerAmount);
        }

        emit AdminWithdraw(_lp0Amount, _lp1Amount, _offerAmount);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress The address of the token to withdraw (18 decimals)
     * @param _tokenAmount The number of token amount to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        if (_tokenAddress == addresses[0] || _tokenAddress == addresses[1] || _tokenAddress == addresses[2]) {
            revert InvalidToken();
        }

        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);

        emit AdminTokenRecovery(_tokenAddress, _tokenAmount);
    }

    /**
     * @notice It sets parameters for pool
     * @param _offeringAmountPool Offering amount (in tokens)
     * @param _raisingAmountPool Raising amount (in LP tokens)
     * @param _limitPerUserInLP Limit per user (in LP tokens)
     * @param _hasTax If the pool has a tax
     * @param _flatTaxRate Flat tax rate
     * @param _pid Pool id
     * @param _vestingConfig Vesting config parameters: (percentage, cliff, duration, slicePeriodSeconds)
     *   percentage: amount of offering token to be vested when harvestPool
     *   cliff: time (in seconds), before vesting starts. eg. 3600 means vesting start after vestingStartTime + cliff
     *   duration: total vesting duration (in second)
     *   slicePeriodSeconds: how frequent vested token become available. eg. 60 means some token vested every min
     * @dev This function is only callable by admin.
     */
    function setPool(
        uint256 _offeringAmountPool,
        uint256 _raisingAmountPool,
        uint256 _limitPerUserInLP,
        bool _hasTax,
        uint256 _flatTaxRate,
        uint8 _pid,
        VestingConfig calldata _vestingConfig
    ) external override onlyOwner {
        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV10.SetPoolPreCheck(
            startTimestamp,
            _hasTax,
            _flatTaxRate,
            _vestingConfig.percentage,
            _vestingConfig.duration,
            _vestingConfig.slicePeriodSeconds
        );

        PoolCharacteristics storage poolInfo = _poolInformation[_pid];

        // update totalTokensOffered
        totalTokensOffered -= poolInfo.offeringAmountPool;
        totalTokensOffered += _offeringAmountPool;

        poolInfo.offeringAmountPool = _offeringAmountPool;
        poolInfo.raisingAmountPool = _raisingAmountPool;
        poolInfo.limitPerUserInLP = _limitPerUserInLP;
        poolInfo.hasTax = _hasTax;
        poolInfo.flatTaxRate = _flatTaxRate;
        poolInfo.vestingConfig.percentage = _vestingConfig.percentage;
        poolInfo.vestingConfig.cliff = _vestingConfig.cliff;
        poolInfo.vestingConfig.duration = _vestingConfig.duration;
        poolInfo.vestingConfig.slicePeriodSeconds = _vestingConfig.slicePeriodSeconds;

        emit PoolParametersSet(_offeringAmountPool, _raisingAmountPool, _pid);
    }

    /**
     * @notice It allows the admin to update start and end blocks
     * @param _startAndEndTimestamps [0] startTimestamp [1] endTimestamp
     * @dev This function is only callable by admin.
     */
    function updateStartAndEndTimestamps(uint256[] calldata _startAndEndTimestamps) external onlyOwner {
        // Check validation
        IFOLibV10.UpdateStartAndEndTimestampsPreCheck(
            MAX_BUFFER_SECONDS,
            _startAndEndTimestamps.length,
            startTimestamp,
            _startAndEndTimestamps[0], // startTimestamp
            _startAndEndTimestamps[1] // endTimestamp
        );

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];

        emit NewStartAndEndTimestamps(_startAndEndTimestamps[0], _startAndEndTimestamps[1]);
    }

    /**
     * @notice It returns the pool information
     * @param _pid Pool id
     * @return raisingAmountPool Amount of LP tokens raised (in LP tokens)
     * @return offeringAmountPool Amount of tokens offered for the pool (in offeringTokens)
     * @return limitPerUserInLP Limit of tokens per user (if 0, it is ignored)
     * @return If the pool has a tax
     * @return totalAmountPool Total amount pool deposited (in LP tokens)
     * @return sumTaxesOverflow Total taxes collected (starts at 0, increases with each harvest if overflow)
     */
    function viewPoolInformation(uint256 _pid)
        external
        view
        returns (uint256, uint256, uint256, bool, uint256, uint256)
    {
        return (
            _poolInformation[_pid].raisingAmountPool,
            _poolInformation[_pid].offeringAmountPool,
            _poolInformation[_pid].limitPerUserInLP,
            _poolInformation[_pid].hasTax,
            _poolInformation[_pid].totalAmountPool,
            _poolInformation[_pid].sumTaxesOverflow
        );
    }

    /**
     * @notice It returns the pool vesting information
     * @param _pid Pool id
     * @return vestingPercentage The percentage of vesting part, claimingPercentage + vestingPercentage should be 100
     * @return vestingCliff The cliff of vesting
     * @return vestingDuration The duration of vesting
     * @return vestingSlicePeriodSeconds The slice period seconds of vesting
     */
    function viewPoolVestingInformation(uint256 _pid)
        external
        view
        override
        returns (uint256, uint256, uint256, uint256)
    {
        return (
            _poolInformation[_pid].vestingConfig.percentage,
            _poolInformation[_pid].vestingConfig.cliff,
            _poolInformation[_pid].vestingConfig.duration,
            _poolInformation[_pid].vestingConfig.slicePeriodSeconds
        );
    }

    /**
     * @notice It returns the tax overflow rate calculated for a pool
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @param _pid Pool id
     * @return It returns the tax percentage
     */
    function viewPoolTaxRateOverflow(uint256 _pid) external view returns (uint256) {
        if (!_poolInformation[_pid].hasTax) {
            return 0;
        } else {
            if (_poolInformation[_pid].flatTaxRate > 0) {
                return _poolInformation[_pid].flatTaxRate;
            } else {
                return _calculateTaxOverflow(
                    _poolInformation[_pid].totalAmountPool, _poolInformation[_pid].raisingAmountPool
                );
            }
        }
    }

    /**
     * @notice External view function to see user allocations for both pools
     * @param _user User address
     * @param _pids Array of pool id
     * @return
     */
    function viewUserAllocationPools(address _user, uint8[] calldata _pids) external view returns (uint256[] memory) {
        uint256[] memory allocationPools = new uint256[](_pids.length);
        for (uint8 i = 0; i < _pids.length; i++) {
            allocationPools[i] = _getUserAllocationPool(_user, _pids[i]);
        }
        return allocationPools;
    }

    /**
     * @notice External view function to see user information
     * @param _user User address
     * @param _pids Array of pool id
     */
    function viewUserInfo(address _user, uint8[] calldata _pids)
        external
        view
        returns (uint256[] memory, bool[] memory)
    {
        uint256[] memory amountPools = new uint256[](_pids.length);
        bool[] memory statusPools = new bool[](_pids.length);

        for (uint8 i = 0; i < _pids.length; i++) {
            uint8 pid = _pids[i];
            if (pid <= MAX_POOL_ID) {
                amountPools[i] = _userInfo[_user][pid].amountPool;
                statusPools[i] = _userInfo[_user][pid].claimedPool;
            }
        }
        return (amountPools, statusPools);
    }

    /**
     * @notice External view function to see user offering and refunding amounts for both pools
     * @param _user User address
     * @param _pids Array of pool id
     */
    function viewUserOfferingAndRefundingAmountsForPools(address _user, uint8[] calldata _pids)
        external
        view
        returns (uint256[3][] memory)
    {
        uint256[3][] memory amountPools = new uint256[3][](_pids.length);

        for (uint8 i = 0; i < _pids.length; i++) {
            uint256 userOfferingAmountPool;
            uint256 userRefundingAmountPool;
            uint256 userTaxAmountPool;

            if (_poolInformation[_pids[i]].raisingAmountPool > 0) {
                (userOfferingAmountPool, userRefundingAmountPool, userTaxAmountPool) =
                    _calculateOfferingAndRefundingAmountsPool(_user, _pids[i]);
            }

            amountPools[i] = [userOfferingAmountPool, userRefundingAmountPool, userTaxAmountPool];
        }
        return amountPools;
    }

    /**
     * @notice Returns the vesting schedule information of a given holder and index
     * @return The vesting schedule object
     */
    function getVestingScheduleByAddressAndIndex(address _holder, uint256 _index)
        external
        view
        returns (VestingSchedule memory)
    {
        return getVestingSchedule(computeVestingScheduleIdForAddressAndIndex(_holder, _index));
    }

    /**
     * @notice Returns the total amount of vesting schedules
     * @return The vesting schedule total amount
     */
    function getVestingSchedulesTotalAmount() external view returns (uint256) {
        return vestingSchedulesTotalAmount;
    }

    /**
     * @notice Release vested amount of offering tokens
     * @param _vestingScheduleId the vesting schedule identifier
     */
    function release(bytes32 _vestingScheduleId) external nonReentrant {
        // Check validation
        IFOLibV10.IsVestingInitializedPreCheck(vestingSchedules[_vestingScheduleId].isVestingInitialized);

        VestingSchedule storage vestingSchedule = vestingSchedules[_vestingScheduleId];
        bool isBeneficiary = msg.sender == vestingSchedule.beneficiary;
        if (!isBeneficiary && (msg.sender != owner())) {
            revert VestingOnlyBeneficiaryOrOwnerCanRelease();
        }
        uint256 vestedAmount = _computeReleasableAmount(vestingSchedule);
        if (vestedAmount <= 0) {
            revert VestingNotEnoughToRelease();
        }
        vestingSchedule.released = vestingSchedule.released + vestedAmount;
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount - vestedAmount;
        IERC20(addresses[2]).safeTransfer(vestingSchedule.beneficiary, vestedAmount);

        emit Released(vestingSchedule.beneficiary, vestedAmount);
    }

    /**
     * @notice Revokes all the vesting schedules
     */
    function revoke() external onlyOwner {
        if (vestingRevoked) {
            revert VestingIsRevoked();
        }

        vestingRevoked = true;
        emit Revoked();
    }

    /**
     * @notice Returns the number of vesting schedules managed by the contract
     * @return The number of vesting count
     */
    function getVestingSchedulesCount() public view returns (uint256) {
        return vestingSchedulesIds.length;
    }

    /**
     * @notice Returns the vested amount of tokens for the given vesting schedule identifier
     * @return The number of vested count
     */
    function computeReleasableAmount(bytes32 _vestingScheduleId) public view returns (uint256) {
        // Check validation
        IFOLibV10.IsVestingInitializedPreCheck(vestingSchedules[_vestingScheduleId].isVestingInitialized);

        return _computeReleasableAmount(vestingSchedules[_vestingScheduleId]);
    }

    /**
     * @notice Returns the vesting schedule information of a given identifier
     * @return The vesting schedule object
     */
    function getVestingSchedule(bytes32 _vestingScheduleId) public view returns (VestingSchedule memory) {
        return vestingSchedules[_vestingScheduleId];
    }

    /**
     * @notice Returns the amount of offering token that can be withdrawn by the owner
     * @return The amount of offering token
     */
    function getWithdrawableOfferingTokenAmount() public view returns (uint256) {
        return IERC20(addresses[2]).balanceOf(address(this)) - vestingSchedulesTotalAmount;
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
    function computeVestingScheduleIdForAddressAndIndex(address _holder, uint256 _index)
        public
        pure
        returns (bytes32)
    {
        return keccak256(abi.encodePacked(_holder, _index));
    }

    /**
     * @notice Computes the next vesting schedule identifier for an address and an pid
     * @return The id string
     */
    function computeVestingScheduleIdForAddressAndPid(address _holder, uint8 _pid) external view returns (bytes32) {
        // Checks whether the pool id is valid
        if (_pid > MAX_POOL_ID) {
            return bytes32(0);
        }

        bytes32 vestingScheduleId = computeVestingScheduleIdForAddressAndIndex(_holder, 0);
        VestingSchedule memory vestingSchedule = vestingSchedules[vestingScheduleId];
        if (vestingSchedule.pid == _pid) {
            return vestingScheduleId;
        } else {
            return computeVestingScheduleIdForAddressAndIndex(_holder, 1);
        }
    }

    /**
     * @notice Computes the releasable amount of tokens for a vesting schedule
     * @return The amount of releasable tokens
     */
    function _computeReleasableAmount(VestingSchedule memory _vestingSchedule) internal view returns (uint256) {
        if (block.timestamp < vestingStartTime + _poolInformation[_vestingSchedule.pid].vestingConfig.cliff) {
            return 0;
        } else if (
            block.timestamp >= vestingStartTime + _poolInformation[_vestingSchedule.pid].vestingConfig.duration
                || vestingRevoked
        ) {
            return _vestingSchedule.amountTotal - _vestingSchedule.released;
        } else {
            uint256 timeFromStart = block.timestamp - vestingStartTime;
            uint256 secondsPerSlice = _poolInformation[_vestingSchedule.pid].vestingConfig.slicePeriodSeconds;
            uint256 vestedSlicePeriods = timeFromStart / secondsPerSlice;
            uint256 vestedSeconds = vestedSlicePeriods * secondsPerSlice;
            uint256 vestedAmount = (_vestingSchedule.amountTotal * vestedSeconds)
                / _poolInformation[_vestingSchedule.pid].vestingConfig.duration;
            vestedAmount = vestedAmount - _vestingSchedule.released;
            return vestedAmount;
        }
    }

    /**
     * @notice Creates a new vesting schedule for a beneficiary
     * @param _beneficiary address of the beneficiary to whom vested tokens are transferred
     * @param _pid the pool id
     * @param _amount total amount of tokens to be released at the end of the vesting
     */
    function _createVestingSchedule(address _beneficiary, uint8 _pid, uint256 _amount) internal {
        require(
            getWithdrawableOfferingTokenAmount() >= _amount, "can not create vesting schedule with sufficient tokens"
        );

        bytes32 vestingScheduleId = computeNextVestingScheduleIdForHolder(_beneficiary);
        require(vestingSchedules[vestingScheduleId].beneficiary == address(0), "vestingScheduleId is been created");
        vestingSchedules[vestingScheduleId] = VestingSchedule(true, _beneficiary, _pid, _amount, 0);
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount + _amount;
        vestingSchedulesIds.push(vestingScheduleId);
        holdersVestingCount[_beneficiary]++;
    }

    /**
     * @notice It calculates the tax overflow given the raisingAmountPool and the totalAmountPool.
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @return It returns the tax percentage
     */
    function _calculateTaxOverflow(uint256 _totalAmountPool, uint256 _raisingAmountPool)
        internal
        pure
        returns (uint256)
    {
        uint256 ratioOverflow = _totalAmountPool / _raisingAmountPool;

        if (ratioOverflow >= 1500) {
            return 500000000; // 0.05%
        } else if (ratioOverflow >= 800) {
            return 1000000000; // 0.1%
        } else if (ratioOverflow >= 650) {
            return 1200000000; // 0.12%
        } else if (ratioOverflow >= 500) {
            return 1500000000; // 0.15%
        } else if (ratioOverflow >= 400) {
            return 2000000000; // 0.2%
        } else if (ratioOverflow >= 300) {
            return 2500000000; // 0.25%
        } else if (ratioOverflow >= 250) {
            return 3000000000; // 0.3%
        } else if (ratioOverflow >= 200) {
            return 4000000000; // 0.4%
        } else if (ratioOverflow >= 150) {
            return 5000000000; // 0.5%
        } else if (ratioOverflow >= 100) {
            return 6000000000; // 0.6%
        } else if (ratioOverflow >= 50) {
            return 8000000000; // 0.8%
        } else {
            return 10000000000; // 1%
        }
    }

    /**
     * @notice It calculates the offering amount for a user and the number of LP tokens to transfer back.
     * @param _user User address
     * @param _pid Pool id
     * @return {uint256, uint256, uint256} It returns the offering amount, the refunding amount (in LP tokens),
     * and the tax (if any, else 0)
     */
    function _calculateOfferingAndRefundingAmountsPool(address _user, uint8 _pid)
        internal
        view
        returns (uint256, uint256, uint256)
    {
        uint256 userOfferingAmount;
        uint256 userRefundingAmount;
        uint256 taxAmount;

        if (_poolInformation[_pid].totalAmountPool > _poolInformation[_pid].raisingAmountPool) {
            // Calculate allocation for the user
            uint256 allocation = _getUserAllocationPool(_user, _pid);

            // Calculate the offering amount for the user based on the offeringAmount for the pool
            userOfferingAmount = (_poolInformation[_pid].offeringAmountPool * allocation) / 1e12;

            // Calculate the payAmount
            uint256 payAmount = (_poolInformation[_pid].raisingAmountPool * allocation) / 1e12;

            // Calculate the pre-tax refunding amount
            userRefundingAmount = _userInfo[_user][_pid].amountPool - payAmount;

            // Retrieve the tax rate
            if (_poolInformation[_pid].hasTax) {
                uint256 tax = _poolInformation[_pid].flatTaxRate;

                if (tax == 0) {
                    tax = _calculateTaxOverflow(
                        _poolInformation[_pid].totalAmountPool, _poolInformation[_pid].raisingAmountPool
                    );
                }
                // Calculate the final taxAmount
                taxAmount = (userRefundingAmount * tax) / 1e12;

                // Adjust the refunding amount
                userRefundingAmount = userRefundingAmount - taxAmount;
            }
        } else {
            // _userInfo[_user] / (raisingAmount / offeringAmount)
            userOfferingAmount = (_userInfo[_user][_pid].amountPool * _poolInformation[_pid].offeringAmountPool)
                / _poolInformation[_pid].raisingAmountPool;
        }
        return (userOfferingAmount, userRefundingAmount, taxAmount);
    }

    /**
     * @notice It returns the user allocation for pool
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @param _user User address
     * @param _pid Pool id
     * @return It returns the user's share of pool
     */
    function _getUserAllocationPool(address _user, uint8 _pid) internal view returns (uint256) {
        if (_pid > MAX_POOL_ID) {
            return 0;
        }

        if (_poolInformation[_pid].totalAmountPool > 0) {
            return (_userInfo[_user][_pid].amountPool * 1e12) / _poolInformation[_pid].totalAmountPool;
        } else {
            return 0;
        }
    }

    function _deposit(uint256 _amount, uint8 _pid) internal {
        // Transfers funds to this contract
        _safeTransferIn(addresses[_pid], _amount);

        // Update the user status
        _userInfo[msg.sender][_pid].amountPool = _userInfo[msg.sender][_pid].amountPool + _amount;

        // Check if the pool has a limit per user
        if (_poolInformation[_pid].limitPerUserInLP > 0) {
            // Checks whether the limit has been reached
            if (_userInfo[msg.sender][_pid].amountPool > _poolInformation[_pid].limitPerUserInLP) {
                revert NewAmountAboveUserLimit();
            }
        }

        // Updates the totalAmount for pool
        _poolInformation[_pid].totalAmountPool = _poolInformation[_pid].totalAmountPool + _amount;

        emit Deposit(msg.sender, _amount, _pid);
    }

    function _checkPid(uint8 _pid) internal view {
        if (_pid > MAX_POOL_ID) {
            revert PoolIdNotValid();
        }
    }

    function _safeTransferIn(address token, uint256 value) internal {
        if (token == NATIVE) {
            if (msg.value != value) {
                revert NativeTransferFailed();
            }
        } else {
            if (msg.value != 0) {
                revert NativeTransferFailed();
            }
            IERC20(token).safeTransferFrom(msg.sender, address(this), value);
        }
    }

    function _safeTransferOut(address token, uint256 value) internal {
        if (token == NATIVE) {
            _safeTransferNative(msg.sender, value);
        } else {
            IERC20(token).safeTransfer(msg.sender, value);
        }
    }

    // This function is used to transfer native tokens safely
    // Copy from "solmate/src/utils/SafeTransferLib.sol"
    function _safeTransferNative(address to, uint256 amount) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Transfer the native and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        if (!success) {
            revert NativeTransferFailed();
        }
    }
}
