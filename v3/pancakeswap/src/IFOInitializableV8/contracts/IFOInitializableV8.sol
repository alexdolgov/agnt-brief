// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
pragma experimental ABIEncoderV2;

import "@openzeppelin-4.5.0/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/IIFOV8.sol";
import "./libraries/IFOLibV8.sol";
import "./utils/WhiteListV2.sol";
import "./interfaces/IPancakeProfile.sol";
import "./ICakeV3.sol";

/**
 * @title IFOInitializableV8
 */
contract IFOInitializableV8 is IIFOV8, ReentrancyGuard, Whitelist {
    using SafeERC20 for IERC20;

    // The address of the smart chef factory
    address private immutable IFO_FACTORY;

    // Whether it is initialized
    bool private isInitialized;

    // all the addresses
    // [0] lpToken [1] offeringToken [2] pancakeProfile [3] iCake [4] adminAddress [5] admissionProfile
    address[6] public addresses;

    // The timestamp when IFO starts
    uint256 public startTimestamp;

    // The timestamp when IFO ends
    uint256 public endTimestamp;

    // Max buffer seconds (for sanity checks)
    uint256 public MAX_BUFFER_SECONDS;

    // Max pool id (sometimes only public sale exist)
    uint8 public MAX_POOL_ID;

    // The minimum point special sale require
    uint256 public pointThreshold;

    // point config
    PointConfig public pointConfig;

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
        SaleType saleType; // previously bool checking if a sale is special(private), currently uint act as "sale type"
        // 0: public sale
        // 1: private sale
        // 2: basic sale
        VestingConfig vestingConfig;
    }

    // Array of PoolCharacteristics of size NUMBER_POOLS
    PoolCharacteristics[2] private _poolInformation;

    // Checks if user has claimed points
    mapping(address => bool) private _hasClaimedPoints;

    // Struct that contains each user information for both pools
    struct UserInfo {
        uint256 amountPool; // How many tokens the user has provided for pool
        bool claimedPool; // Whether the user has claimed (default: false) for pool
    }

    // It maps the address to pool id to UserInfo
    mapping(address => mapping(uint8 => UserInfo)) private _userInfo;

    // It maps user address to credit used amount
    mapping(address => uint256) public userCreditUsed;

    // It maps if nft token id was used
    mapping(uint256 => address) public tokenIdUsed;

    // It maps user address with NFT id
    mapping(address => uint256) public userNftTokenId;

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
    event AdminWithdraw(uint256 amountLP, uint256 amountOfferingToken);

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

    // Event with point parameters for IFO
    event PointParametersSet(uint256 campaignId, uint256 numberPoints, uint256 thresholdPoints);

    // Event when parameters are set for one of the pools
    event PoolParametersSet(uint256 offeringAmountPool, uint256 raisingAmountPool, uint8 pid);

    // Event when released new amount
    event Released(address indexed beneficiary, uint256 amount);

    // Event when revoked
    event Revoked();

    error PoolIdNotValid();
    error TokensNotDepositedProperly();
    error NotEnoughIFOCreditLeft();
    error NewAmountAboveUserLimit();
    error ProfileNotActive();
    error NotMeetAnyoneOfRequiredConditions();
    error NFTRequirementsMustBeMetForHarvest();
    error NFTUsedByAnotherAddressAlready();
    error NFTTokenIdNotSameAsRegistered();
    error CanNotBeLPToken();
    error CanNotBeOfferingToken();
    error VestingOnlyBeneficiaryOrOwnerCanRelease();
    error VestingNotEnoughToRelease();
    error VestingIsRevoked();
    error OnlyOwner();

    /**
     * @notice Constructor
     */
    constructor() public {
        IFO_FACTORY = msg.sender;
    }

    /**
     * @notice It initializes the contract
     * @dev It can only be called once.
     * @param _addresses: [0] lpToken [1] offeringToken [2] pancakeProfile [3] iCake [4] adminAddress [5] admissionProfile
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     * @param _maxBufferSeconds: maximum buffer of blocks from the current block number
     * @param _maxPoolId: maximum id of pools, sometimes only public sale exist
     * @param _pointThreshold: threshold of user's point in pancake profile
     * @param _vestingStartTime: the start timestamp of vesting
     */
    function initialize(
        address[] calldata _addresses,
        uint256[] calldata _startAndEndTimestamps,
        uint256 _maxBufferSeconds,
        uint8 _maxPoolId,
        uint256 _pointThreshold,
        uint256 _vestingStartTime
    ) public {
        // Check validation
        IFOLibV8.InitializePreCheck(
            isInitialized,
            IFO_FACTORY,
            _addresses.length,
            _startAndEndTimestamps.length,
            _maxPoolId
        );

        // Make this contract initialized
        isInitialized = true;

        if (_addresses[2] != address(0)) {
            IPancakeProfile(_addresses[2]).getTeamProfile(1);
        }

        if (_addresses[3] != address(0)) {
            ICakeV3(_addresses[3]).admin();
        }

        // [0] lpToken
        // [1] offeringToken
        // [2] pancakeProfile
        // [3] iCake
        // [4] adminAddress
        // [5] admissionProfile
        for (uint8 i = 0; i < _addresses.length; i++) {
            addresses[i] = _addresses[i];
        }

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];
        MAX_BUFFER_SECONDS = _maxBufferSeconds;
        MAX_POOL_ID = _maxPoolId;
        pointThreshold = _pointThreshold;
        vestingStartTime = _vestingStartTime;

        // Transfer ownership to admin
        transferOwnership(_addresses[4]);
    }

    /**
     * @notice It allows users to deposit LP tokens to pool
     * @param _amount: the number of LP token used (18 decimals)
     * @param _pid: pool id
     */
    function depositPool(uint256 _amount, uint8 _pid) external override nonReentrant {
        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV8.DepositPoolPreCheck(
            _amount,
            addresses[2], // pancakeProfileAddress
            _poolInformation[_pid].saleType,
            _poolInformation[_pid].offeringAmountPool,
            _poolInformation[_pid].raisingAmountPool,
            startTimestamp,
            endTimestamp
        );

        // Verify tokens were deposited properly
        if (IERC20(addresses[1]).balanceOf(address(this)) < totalTokensOffered) {
            revert TokensNotDepositedProperly();
        }

        if (_poolInformation[_pid].saleType == SaleType.PUBLIC || _poolInformation[_pid].saleType == SaleType.BASIC) {
            // public and basic sales
            if (addresses[3] != address(0) && _poolInformation[_pid].saleType != SaleType.BASIC) {
                // getUserCredit from ICake contract when it is presented and not basic sales
                uint256 ifoCredit = ICakeV3(addresses[3]).getUserCredit(msg.sender);

                if (userCreditUsed[msg.sender] + _amount > ifoCredit) {
                    revert NotEnoughIFOCreditLeft();
                }
            }

            _deposit(_amount, _pid);

            // Updates Accumulative deposit lpTokens
            userCreditUsed[msg.sender] = userCreditUsed[msg.sender] + (_poolInformation[_pid].saleType == SaleType.PUBLIC ? _amount : 0);
        } else {
            // private sales
            if (addresses[2] != address(0)) {
                (
                    ,
                    uint256 profileNumberPoints,
                    ,
                    address profileAddress,
                    uint256 tokenId,
                    bool active
                ) = IPancakeProfile(addresses[2]).getUserProfile(msg.sender);

                if (!active) revert ProfileNotActive();

                if (!_isQualifiedPoints(profileNumberPoints) &&
                    !isQualifiedWhitelist(msg.sender) &&
                    !_isQualifiedNFT(msg.sender, profileAddress, tokenId)) {
                    revert NotMeetAnyoneOfRequiredConditions();
                }

                // Update tokenIdUsed
                if (!_isQualifiedPoints(profileNumberPoints) &&
                    !isQualifiedWhitelist(msg.sender) &&
                    profileAddress == addresses[5]) {
                    if (tokenIdUsed[tokenId] == address(0)) {
                        // update tokenIdUsed
                        tokenIdUsed[tokenId] = msg.sender;
                    } else {
                        if (tokenIdUsed[tokenId] != msg.sender) {
                            revert NFTUsedByAnotherAddressAlready();
                        }
                    }
                    if (userNftTokenId[msg.sender] == 0) {
                        // update userNftTokenId
                        userNftTokenId[msg.sender] = tokenId;
                    } else {
                        if (userNftTokenId[msg.sender] != tokenId) {
                            revert NFTTokenIdNotSameAsRegistered();
                        }
                    }
                }
            }

            _deposit(_amount, _pid);
        }
    }

    /**
     * @notice It allows users to harvest from pool
     * @param _pid: pool id
     */
    function harvestPool(uint8 _pid) external override nonReentrant {
        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV8.HarvestPoolPreCheck(
            endTimestamp,
            _userInfo[msg.sender][_pid].amountPool,
            _userInfo[msg.sender][_pid].claimedPool
        );

        if (userNftTokenId[msg.sender] != 0) {
            (, , , address profileAddress, uint256 tokenId, bool isActive) = IPancakeProfile(addresses[2])
                .getUserProfile(msg.sender);

            if (!isActive || profileAddress != addresses[5] || userNftTokenId[msg.sender] != tokenId) {
                revert NFTRequirementsMustBeMetForHarvest();
            }
        }

        // Claim points if possible
        _claimPoints(msg.sender);

        // Updates the harvest status
        _userInfo[msg.sender][_pid].claimedPool = true;

        // Updates the vesting startTime
        if (vestingStartTime == 0) {
            vestingStartTime = block.timestamp;
        }

        // Initialize the variables for offering, refunding user amounts, and tax amount
        (
            uint256 offeringTokenAmount,
            uint256 refundingTokenAmount,
            uint256 userTaxOverflow
        ) = _calculateOfferingAndRefundingAmountsPool(msg.sender, _pid);

        // Increment the sumTaxesOverflow
        if (userTaxOverflow > 0) {
            _poolInformation[_pid].sumTaxesOverflow = _poolInformation[_pid].sumTaxesOverflow + userTaxOverflow;
        }

        // Transfer these tokens back to the user if quantity > 0
        if (offeringTokenAmount > 0) {
            if (100 - _poolInformation[_pid].vestingConfig.percentage > 0) {
                uint256 amount = offeringTokenAmount * (100 - _poolInformation[_pid].vestingConfig.percentage) / 100;

                // Transfer the tokens at TGE
                IERC20(addresses[1]).safeTransfer(msg.sender, amount);

                emit Harvest(msg.sender, amount, refundingTokenAmount, _pid);
            }
            // If this pool is Vesting modal, create a VestingSchedule for each user
            if (_poolInformation[_pid].vestingConfig.percentage > 0) {
                uint256 amount = offeringTokenAmount * _poolInformation[_pid].vestingConfig.percentage / 100;

                // Create VestingSchedule object
                _createVestingSchedule(msg.sender, _pid, amount);

                emit CreateVestingSchedule(msg.sender, amount, refundingTokenAmount, _pid);
            }
        }

        if (refundingTokenAmount > 0) {
            IERC20(addresses[0]).safeTransfer(msg.sender, refundingTokenAmount);
        }
    }

    /**
     * @notice It allows the admin to withdraw funds
     * @param _lpAmount: the number of LP token to withdraw (18 decimals)
     * @param _offerAmount: the number of offering amount to withdraw
     * @dev This function is only callable by admin.
     */
    function finalWithdraw(uint256 _lpAmount, uint256 _offerAmount) external override {
        _isOwner();
        // Check validation
        IFOLibV8.FinalWithdrawPreCheck(
            _lpAmount,
            IERC20(addresses[0]).balanceOf(address(this)),
            _offerAmount,
            IERC20(addresses[1]).balanceOf(address(this))
        );

        if (_lpAmount > 0) {
            IERC20(addresses[0]).safeTransfer(msg.sender, _lpAmount);
        }

        if (_offerAmount > 0) {
            IERC20(addresses[1]).safeTransfer(msg.sender, _offerAmount);
        }

        emit AdminWithdraw(_lpAmount, _offerAmount);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw (18 decimals)
     * @param _tokenAmount: the number of token amount to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress, uint256 _tokenAmount) external {
        _isOwner();

        if (_tokenAddress == addresses[0]) {
            revert CanNotBeLPToken();
        }
        if (_tokenAddress == addresses[1]) {
            revert CanNotBeOfferingToken();
        }

        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);

        emit AdminTokenRecovery(_tokenAddress, _tokenAmount);
    }

    /**
     * @notice It sets parameters for pool
     * @param _offeringAmountPool: offering amount (in tokens)
     * @param _raisingAmountPool: raising amount (in LP tokens)
     * @param _limitPerUserInLP: limit per user (in LP tokens)
     * @param _hasTax: if the pool has a tax
     * @param _flatTaxRate: flat tax rate
     * @param _pid: pool id
     * @param _saleType: // previously bool checking if a sale is special(private), currently uint act as "sale type"
        // 0: public sale
        // 1: private sale
        // 2: basic sale
     * @param _vestingConfig: vesting config parameters
     * @dev This function is only callable by admin.
     */
    function setPool(
        uint256 _offeringAmountPool,
        uint256 _raisingAmountPool,
        uint256 _limitPerUserInLP,
        bool _hasTax,
        uint256 _flatTaxRate,
        uint8 _pid,
        SaleType _saleType,
        VestingConfig calldata _vestingConfig
    ) external override {
        _isOwner();

        // Checks whether the pool id is valid
        _checkPid(_pid);

        // Check validation
        IFOLibV8.SetPoolPreCheck(
            startTimestamp,
            _hasTax,
            _flatTaxRate,
            _vestingConfig.percentage,
            _vestingConfig.duration,
            _vestingConfig.slicePeriodSeconds
        );

        _poolInformation[_pid].offeringAmountPool = _offeringAmountPool;
        _poolInformation[_pid].raisingAmountPool = _raisingAmountPool;
        _poolInformation[_pid].limitPerUserInLP = _limitPerUserInLP;
        _poolInformation[_pid].hasTax = _hasTax;
        _poolInformation[_pid].flatTaxRate = _flatTaxRate;
        _poolInformation[_pid].saleType = _saleType;
        _poolInformation[_pid].vestingConfig.percentage = _vestingConfig.percentage;
        _poolInformation[_pid].vestingConfig.cliff = _vestingConfig.cliff;
        _poolInformation[_pid].vestingConfig.duration = _vestingConfig.duration;
        _poolInformation[_pid].vestingConfig.slicePeriodSeconds = _vestingConfig.slicePeriodSeconds;

        uint256 tokensDistributedAcrossPools;

        for (uint8 i = 0; i <= MAX_POOL_ID; i++) {
            tokensDistributedAcrossPools = tokensDistributedAcrossPools + _poolInformation[i].offeringAmountPool;
        }

        // Update totalTokensOffered
        totalTokensOffered = tokensDistributedAcrossPools;

        emit PoolParametersSet(_offeringAmountPool, _raisingAmountPool, _pid);
    }

    /**
     * @notice It updates point parameters for the IFO.
     * @param _pointConfig: the point reward and requirement for user participate in IFO
     * @dev This function is only callable by admin.
     */
    function updatePointParameters(
        PointConfig calldata _pointConfig
    ) external override {
        _isOwner();

        // Check validation
        IFOLibV8.UpdatePointParametersPreCheck(
            endTimestamp
        );

        pointConfig.numberPoints = _pointConfig.numberPoints;
        pointConfig.campaignId = _pointConfig.campaignId;
        pointConfig.thresholdPoints = _pointConfig.thresholdPoints;

        emit PointParametersSet(_pointConfig.campaignId, _pointConfig.numberPoints, _pointConfig.thresholdPoints);
    }

    /**
     * @notice It allows the admin to update start and end blocks
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     * @dev This function is only callable by admin.
     */
    function updateStartAndEndTimestamps(uint256[] calldata _startAndEndTimestamps) external {
        _isOwner();

        // Check validation
        IFOLibV8.UpdateStartAndEndTimestampsPreCheck(
            MAX_BUFFER_SECONDS,
            _startAndEndTimestamps.length,
            startTimestamp,
            _startAndEndTimestamps[0], // startTimestamp
            _startAndEndTimestamps[1]  // endTimestamp
        );

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];

        emit NewStartAndEndTimestamps(_startAndEndTimestamps[0], _startAndEndTimestamps[1]);
    }

    /**
     * @notice It returns the pool information
     * @param _pid: pool id
     * @return raisingAmountPool: amount of LP tokens raised (in LP tokens)
     * @return offeringAmountPool: amount of tokens offered for the pool (in offeringTokens)
     * @return limitPerUserInLP; // limit of tokens per user (if 0, it is ignored)
     * @return hasTax: tax on the overflow (if any, it works with _calculateTaxOverflow)
     * @return flatTaxRate: new rate of flat tax
     * @return totalAmountPool: total amount pool deposited (in LP tokens)
     * @return sumTaxesOverflow: total taxes collected (starts at 0, increases with each harvest if overflow)
     */
    function viewPoolInformation(uint256 _pid)
    external
    view
    returns (
        uint256,
        uint256,
        uint256,
        bool,
        uint256,
        uint256,
        SaleType
    ) {
        return (
            _poolInformation[_pid].raisingAmountPool,
            _poolInformation[_pid].offeringAmountPool,
            _poolInformation[_pid].limitPerUserInLP,
            _poolInformation[_pid].hasTax,
            _poolInformation[_pid].totalAmountPool,
            _poolInformation[_pid].sumTaxesOverflow,
            _poolInformation[_pid].saleType
        );
    }

    /**
     * @notice It returns the pool vesting information
     * @param _pid: pool id
     * @return vestingPercentage: the percentage of vesting part, claimingPercentage + vestingPercentage should be 100
     * @return vestingCliff: the cliff of vesting
     * @return vestingDuration: the duration of vesting
     * @return vestingSlicePeriodSeconds: the slice period seconds of vesting
     */
    function viewPoolVestingInformation(uint256 _pid)
    external
    view
    override
    returns (
        uint256,
        uint256,
        uint256,
        uint256
    )
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
     * @param _pid: pool id
     * @return It returns the tax percentage
     */
    function viewPoolTaxRateOverflow(uint256 _pid) external view returns (uint256) {
        if (!_poolInformation[_pid].hasTax) {
            return 0;
        } else {
            if (_poolInformation[_pid].flatTaxRate > 0) {
                return _poolInformation[_pid].flatTaxRate;
            } else {
                return
                    _calculateTaxOverflow(
                    _poolInformation[_pid].totalAmountPool,
                    _poolInformation[_pid].raisingAmountPool
                );
            }
        }
    }

    /**
     * @notice External view function to see user allocations for both pools
     * @param _user: user address
     * @param _pids[]: array of pids
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
     * @param _user: user address
     * @param _pids[]: array of pids
     */
    function viewUserInfo(address _user, uint8[] calldata _pids)
    external
    view
    returns (uint256[] memory, bool[] memory) {
        uint256[] memory amountPools = new uint256[](_pids.length);
        bool[] memory statusPools = new bool[](_pids.length);

        for (uint8 i = 0; i <= MAX_POOL_ID; i++) {
            amountPools[i] = _userInfo[_user][i].amountPool;
            statusPools[i] = _userInfo[_user][i].claimedPool;
        }
        return (amountPools, statusPools);
    }

    /**
     * @notice External view function to see user offering and refunding amounts for both pools
     * @param _user: user address
     * @param _pids: array of pids
     */
    function viewUserOfferingAndRefundingAmountsForPools(address _user, uint8[] calldata _pids)
    external
    view
    returns (uint256[3][] memory) {
        uint256[3][] memory amountPools = new uint256[3][](_pids.length);

        for (uint8 i = 0; i < _pids.length; i++) {
            uint256 userOfferingAmountPool;
            uint256 userRefundingAmountPool;
            uint256 userTaxAmountPool;

            if (_poolInformation[_pids[i]].raisingAmountPool > 0) {
                (
                    userOfferingAmountPool,
                    userRefundingAmountPool,
                    userTaxAmountPool
                ) = _calculateOfferingAndRefundingAmountsPool(_user, _pids[i]);
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
        IFOLibV8.IsVestingInitializedPreCheck(
            vestingSchedules[_vestingScheduleId].isVestingInitialized
        );

        VestingSchedule storage vestingSchedule = vestingSchedules[_vestingScheduleId];
        bool isBeneficiary = msg.sender == vestingSchedule.beneficiary;
        bool isOwner = msg.sender == owner();
        if (!isBeneficiary && !isOwner) {
            revert VestingOnlyBeneficiaryOrOwnerCanRelease();
        }
        uint256 vestedAmount = _computeReleasableAmount(vestingSchedule);
        if (vestedAmount <= 0) {
            revert VestingNotEnoughToRelease();
        }
        vestingSchedule.released = vestingSchedule.released + vestedAmount;
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount - vestedAmount;
        IERC20(addresses[1]).safeTransfer(vestingSchedule.beneficiary, vestedAmount);

        emit Released(vestingSchedule.beneficiary, vestedAmount);
    }

    /**
     * @notice Revokes all the vesting schedules
     */
    function revoke() external {
        _isOwner();

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
        IFOLibV8.IsVestingInitializedPreCheck(
            vestingSchedules[_vestingScheduleId].isVestingInitialized
        );

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
        return IERC20(addresses[1]).balanceOf(address(this)) - vestingSchedulesTotalAmount;
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
            block.timestamp >= vestingStartTime + _poolInformation[_vestingSchedule.pid].vestingConfig.duration ||
            vestingRevoked
        ) {
            return _vestingSchedule.amountTotal - _vestingSchedule.released;
        } else {
            uint256 timeFromStart = block.timestamp - vestingStartTime;
            uint256 secondsPerSlice = _poolInformation[_vestingSchedule.pid].vestingConfig.slicePeriodSeconds;
            uint256 vestedSlicePeriods = timeFromStart / secondsPerSlice;
            uint256 vestedSeconds = vestedSlicePeriods * secondsPerSlice;
            uint256 vestedAmount = _vestingSchedule.amountTotal * vestedSeconds / _poolInformation[_vestingSchedule.pid].vestingConfig.duration;
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
    function _createVestingSchedule(
        address _beneficiary,
        uint8 _pid,
        uint256 _amount
    ) internal {
        require(
            getWithdrawableOfferingTokenAmount() >= _amount,
            "can not create vesting schedule with sufficient tokens"
        );

        bytes32 vestingScheduleId = computeNextVestingScheduleIdForHolder(_beneficiary);
        require(vestingSchedules[vestingScheduleId].beneficiary == address(0), "vestingScheduleId is been created");
        vestingSchedules[vestingScheduleId] = VestingSchedule(true, _beneficiary, _pid, _amount, 0);
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount + _amount;
        vestingSchedulesIds.push(vestingScheduleId);
        holdersVestingCount[_beneficiary]++;
    }

    /**
     * @notice It allows users to claim points
     * @param _user: user address
     */
    function _claimPoints(address _user) internal {
        if (addresses[2] != address(0)) {
            if (!_hasClaimedPoints[_user] && pointConfig.numberPoints > 0) {
                uint256 sumPools;
                for (uint8 i = 0; i <= MAX_POOL_ID; i++) {
                    sumPools = sumPools + _userInfo[msg.sender][i].amountPool;
                }
                if (sumPools > pointConfig.thresholdPoints) {
                    _hasClaimedPoints[_user] = true;
                    // Increase user points
                    IPancakeProfile(addresses[2]).increaseUserPoints(msg.sender, pointConfig.numberPoints, pointConfig.campaignId);
                }
            }
        }
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
            return 250000000; // 0.0125%
        } else if (ratioOverflow >= 1000) {
            return 500000000; // 0.05%
        } else if (ratioOverflow >= 500) {
            return 1000000000; // 0.1%
        } else if (ratioOverflow >= 250) {
            return 1250000000; // 0.125%
        } else if (ratioOverflow >= 100) {
            return 1500000000; // 0.15%
        } else if (ratioOverflow >= 50) {
            return 2500000000; // 0.25%
        } else {
            return 5000000000; // 0.5%
        }
    }

    /**
     * @notice It calculates the offering amount for a user and the number of LP tokens to transfer back.
     * @param _user: user address
     * @param _pid: pool id
     * @return {uint256, uint256, uint256} It returns the offering amount, the refunding amount (in LP tokens),
     * and the tax (if any, else 0)
     */
    function _calculateOfferingAndRefundingAmountsPool(address _user, uint8 _pid)
    internal
    view
    returns (
        uint256,
        uint256,
        uint256
    )
    {
        uint256 userOfferingAmount;
        uint256 userRefundingAmount;
        uint256 taxAmount;

        if (_poolInformation[_pid].totalAmountPool > _poolInformation[_pid].raisingAmountPool) {
            // Calculate allocation for the user
            uint256 allocation = _getUserAllocationPool(_user, _pid);

            // Calculate the offering amount for the user based on the offeringAmount for the pool
            userOfferingAmount = _poolInformation[_pid].offeringAmountPool * allocation / 1e12;

            // Calculate the payAmount
            uint256 payAmount = _poolInformation[_pid].raisingAmountPool * allocation / 1e12;

            // Calculate the pre-tax refunding amount
            userRefundingAmount = _userInfo[_user][_pid].amountPool - payAmount;

            // Retrieve the tax rate
            if (_poolInformation[_pid].hasTax) {
                uint256 tax = _poolInformation[_pid].flatTaxRate;

                if (tax == 0) {
                    tax = _calculateTaxOverflow(
                        _poolInformation[_pid].totalAmountPool,
                        _poolInformation[_pid].raisingAmountPool
                    );
                }
                // Calculate the final taxAmount
                taxAmount = userRefundingAmount * tax / 1e12;

                // Adjust the refunding amount
                userRefundingAmount = userRefundingAmount - taxAmount;
            }
        } else {
            // _userInfo[_user] / (raisingAmount / offeringAmount)
            userOfferingAmount = _userInfo[_user][_pid].amountPool * _poolInformation[_pid].offeringAmountPool / _poolInformation[_pid].raisingAmountPool;
        }
        return (userOfferingAmount, userRefundingAmount, taxAmount);
    }

    /**
     * @notice It returns the user allocation for pool
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @param _user: user address
     * @param _pid: pool id
     * @return It returns the user's share of pool
     */
    function _getUserAllocationPool(address _user, uint8 _pid) internal view returns (uint256) {
        if (_pid > MAX_POOL_ID) {
            return 0;
        }

        if (_poolInformation[_pid].totalAmountPool > 0) {
            return _userInfo[_user][_pid].amountPool * 1e12 / _poolInformation[_pid].totalAmountPool;
        } else {
            return 0;
        }
    }

    function isQualifiedWhitelist(address _user) public view returns (bool) {
        return isWhitelisted(_user);
    }

    function isQualifiedPoints(address _user) external view returns (bool) {
        if (addresses[2] == address(0)) {
            return true;
        }
        if (!IPancakeProfile(addresses[2]).getUserStatus(_user)) {
            return false;
        }

        (, uint256 profileNumberPoints, , , , ) = IPancakeProfile(addresses[2]).getUserProfile(_user);
        return _isQualifiedPoints(profileNumberPoints);
    }

    function isQualifiedNFT(address _user) external view returns (bool) {
        if (addresses[2] == address(0)) {
            return true;
        }
        if (!IPancakeProfile(addresses[2]).getUserStatus(_user)) {
            return false;
        }

        (, , , address profileAddress, uint256 tokenId, ) = IPancakeProfile(addresses[2]).getUserProfile(
            _user
        );

        return _isQualifiedNFT(_user, profileAddress, tokenId);
    }

    function _isQualifiedPoints(uint256 profileNumberPoints) internal view returns (bool) {
        return (pointThreshold != 0 && profileNumberPoints >= pointThreshold);
    }

    function _isQualifiedNFT(
        address _user,
        address profileAddress,
        uint256 tokenId
    ) internal view returns (bool) {
        return (profileAddress == addresses[5] &&
            (tokenIdUsed[tokenId] == address(0) || tokenIdUsed[tokenId] == _user));
    }

    function _isOwner() internal view {
        if (owner() != msg.sender) revert OnlyOwner();
    }

    function _deposit(uint256 _amount, uint8 _pid) internal {
        // Transfers funds to this contract
        IERC20(addresses[0]).safeTransferFrom(msg.sender, address(this), _amount);

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
}