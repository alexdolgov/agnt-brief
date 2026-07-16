// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {Timelocked} from "../base/Timelocked.sol";
import {IBoardwalkToken} from "../interfaces/IBoardwalkToken.sol";
import {IFeeDistributor} from "../interfaces/IFeeDistributor.sol";
import {IPresaleManager} from "../interfaces/IPresaleManager.sol";
import {IVestingStream} from "../interfaces/IVestingStream.sol";
import {ILPStaking} from "../interfaces/ILPStaking.sol";

/// @title LaunchFactory - Singleton factory deploying token launches via EIP-1167 clones
/// @notice Handles BMX burn, config validation, clone deployment, and initialization of all per-launch contracts.
contract LaunchFactory is Ownable2Step, Timelocked {
    using SafeERC20 for IERC20;

    // ============ Enums ============

    enum LaunchPath {
        EXPRESS,
        ADVANCED
    }

    // ============ Structs ============

    struct LaunchConfig {
        string name;
        string ticker;
        string category;
        string description;
        LaunchPath path;
        uint256 presalePercent;
        address[] vestingRecipients;
        uint256[] vestingPercents;
        string[] vestingLabels;
        address referrer;
        address[] issuerFeeRecipients;
        uint256[] issuerFeeSplits;
        string[] issuerFeeLabels;
    }

    struct LaunchInfo {
        address token;
        address feeDistributor;
        address presaleManager;
        address vestingStream;
        address lpStaking;
        address issuer;
        LaunchPath path;
        uint256 createdAt;
    }

    struct FeeBpsDefaults {
        uint256 issuer;
        uint256 boardwalk;
        uint256 incentive;
        uint256 referrer;
        uint256 total;
    }

    // ============ Constants ============

    uint256 private constant BPS_DENOMINATOR = 10000;
    uint256 private constant MAX_BMX_BURN = 200e18;
    uint256 private constant MAX_FEE_RECIPIENTS = 3;
    uint256 private constant MAX_VESTING_RECIPIENTS = 3;
    uint256 private constant MIN_ADVANCED_DURATION = 2 days;
    uint256 private constant MAX_ADVANCED_DURATION = 14 days;

    // Presale range hard limits
    uint256 private constant PRESALE_RANGE_FLOOR = 500;
    uint256 private constant PRESALE_RANGE_CEILING = 5000;
    uint256 private constant PRESALE_STEP = 500;

    // Fee component bounds
    uint256 private constant MIN_ISSUER_BPS = 10;
    uint256 private constant MAX_ISSUER_BPS = 80;
    uint256 private constant MIN_BOARDWALK_BPS = 10;
    uint256 private constant MAX_BOARDWALK_BPS = 50;
    uint256 private constant MAX_INCENTIVE_BPS = 50;
    uint256 private constant MAX_REFERRER_BPS = 10;

    address public constant DEAD_ADDRESS = address(0x000000000000000000000000000000000000dEaD);

    // ============ Timelock Action Keys ============

    bytes32 public constant ACTION_SET_BMX_BURN = keccak256("SET_BMX_BURN");
    bytes32 public constant ACTION_RENOUNCE_BMX_BURN = keccak256("RENOUNCE_BMX_BURN");
    bytes32 public constant ACTION_SET_GRADUATION_EXPRESS = keccak256("SET_GRADUATION_EXPRESS");
    bytes32 public constant ACTION_SET_GRADUATION_ADVANCED = keccak256("SET_GRADUATION_ADVANCED");
    bytes32 public constant ACTION_SET_EXPRESS_DURATION = keccak256("SET_EXPRESS_DURATION");
    bytes32 public constant ACTION_SET_ADVANCED_DURATION = keccak256("SET_ADVANCED_DURATION");
    bytes32 public constant ACTION_SET_FEE_DEFAULTS = keccak256("SET_FEE_DEFAULTS");
    bytes32 public constant ACTION_SET_PRESALE_RANGE = keccak256("SET_PRESALE_RANGE");
    bytes32 public constant ACTION_SET_FEE_COLLECTOR = keccak256("SET_FEE_COLLECTOR");

    // ============ Immutables ============

    address public immutable TOKEN_IMPL;
    address public immutable FEE_DISTRIBUTOR_IMPL;
    address public immutable PRESALE_IMPL;
    address public immutable VESTING_IMPL;
    address public immutable LP_STAKING_IMPL;
    address public immutable BMX;
    address public immutable RAISE_TOKEN;
    address public immutable BOARDWALK_ROUTER;
    address public immutable BOARDWALK_DEX_FACTORY;
    address public immutable BOARDWALK_LP_MANAGER;

    // ============ State ============

    address public boardwalkFeeCollector;

    uint256 public bmxBurnAmount;
    bool public bmxBurnAdminBurned;

    uint256 public expressDuration;
    uint256 public advancedDuration;

    uint256 public minPresalePercent = 2500;
    uint256 public maxPresalePercent = 5000;

    uint256 public graduationExpress; // Graduation threshold for Express path
    uint256 public graduationAdvanced; // Graduation threshold for Advanced path

    FeeBpsDefaults private _feeBpsDefaults;

    // ============ Launch Registry ============

    mapping(address => LaunchInfo) public launches;
    address[] public allLaunches;

    // ============ Errors ============

    error ReferrerNotAllowedOnExpressPath();
    error VestingNotAllowedOnExpressPath();
    error ExpressRequiresOneFeeRecipient();
    error InvalidPresalePercent(uint256 percent);
    error PresalePercentNotDivisibleBy5();
    error TooManyRecipients(uint256 count);
    error ArrayLengthMismatch();
    error InvalidSplitsSum();
    error ZeroAddress();
    error InvalidFeeDefaults();
    error BmxBurnNotZero();
    error BmxBurnAlreadyRenounced();
    error BmxBurnOutOfRange(uint256 amount);
    error InvalidDuration();
    error InvalidPresaleRange(uint256 min, uint256 max);
    error ZeroGraduation();

    // ============ Events ============

    event LaunchCreated(
        address indexed token,
        address indexed issuer,
        string name,
        string ticker,
        string category,
        string description,
        LaunchPath path
    );
    event BmxBurnAmountChanged(uint256 oldAmount, uint256 newAmount);
    event BmxBurnAdminRenounced();
    event GraduationThresholdChanged(LaunchPath path, uint256 oldThreshold, uint256 newThreshold);
    event PresaleDurationChanged(LaunchPath path, uint256 oldDuration, uint256 newDuration);
    event FeeDefaultsChanged(uint256 issuer, uint256 boardwalk, uint256 incentive, uint256 referrer);
    event PresaleRangeChanged(uint256 oldMin, uint256 oldMax, uint256 newMin, uint256 newMax);
    event FeeCollectorChanged(address oldCollector, address newCollector);

    // ============ Constructor ============

    constructor(
        address _owner,
        address _tokenImpl,
        address _feeDistributorImpl,
        address _presaleImpl,
        address _vestingImpl,
        address _lpStakingImpl,
        address _bmx,
        address _raiseToken,
        address _boardwalkRouter,
        address _boardwalkDexFactory,
        address _boardwalkLpManager,
        address _boardwalkFeeCollector,
        uint256 _bmxBurnAmount,
        uint256 _graduationExpress,
        uint256 _graduationAdvanced,
        uint256 _expressDuration,
        uint256 _advancedDuration,
        FeeBpsDefaults memory _feeBps
    ) Ownable(_owner) {
        TOKEN_IMPL = _tokenImpl;
        FEE_DISTRIBUTOR_IMPL = _feeDistributorImpl;
        PRESALE_IMPL = _presaleImpl;
        VESTING_IMPL = _vestingImpl;
        LP_STAKING_IMPL = _lpStakingImpl;
        BMX = _bmx;
        RAISE_TOKEN = _raiseToken;
        BOARDWALK_ROUTER = _boardwalkRouter;
        BOARDWALK_DEX_FACTORY = _boardwalkDexFactory;
        BOARDWALK_LP_MANAGER = _boardwalkLpManager;
        boardwalkFeeCollector = _boardwalkFeeCollector;
        if (_bmxBurnAmount > MAX_BMX_BURN) revert BmxBurnOutOfRange(_bmxBurnAmount);
        bmxBurnAmount = _bmxBurnAmount;
        if (_graduationExpress == 0 || _graduationAdvanced == 0) revert ZeroGraduation();
        graduationExpress = _graduationExpress;
        graduationAdvanced = _graduationAdvanced;
        if (_expressDuration == 0) revert InvalidDuration();
        if (_advancedDuration == 0) revert InvalidDuration();
        expressDuration = _expressDuration;
        advancedDuration = _advancedDuration;

        _validateFeeDefaults(_feeBps);
        _feeBpsDefaults = _feeBps;
    }

    // ============ View Functions ============

    /// @notice Get the current fee BPS defaults
    /// @return issuer Issuer fee share in BPS
    /// @return boardwalk Boardwalk fee share in BPS
    /// @return incentive LP incentive fee share in BPS
    /// @return referrer Referrer fee share in BPS
    /// @return total Total fee in BPS (issuer + boardwalk + incentive)
    function currentFeeBps()
        external
        view
        returns (uint256 issuer, uint256 boardwalk, uint256 incentive, uint256 referrer, uint256 total)
    {
        FeeBpsDefaults memory d = _feeBpsDefaults;
        return (d.issuer, d.boardwalk, d.incentive, d.referrer, d.total);
    }

    /// @notice Get the total number of launches
    function launchCount() external view returns (uint256) {
        return allLaunches.length;
    }

    // ============ Launch Creation ============

    /// @notice Create a new token launch
    /// @param config Launch configuration
    /// @return tokenAddr Address of the deployed token clone
    function createLaunch(
        LaunchConfig calldata config
    ) external returns (address tokenAddr) {
        // Validate config
        _validateConfig(config);

        // BMX Burn
        uint256 _bmxBurnAmount = bmxBurnAmount;
        if (_bmxBurnAmount > 0) {
            IERC20(BMX).safeTransferFrom(msg.sender, DEAD_ADDRESS, _bmxBurnAmount);
        }

        // Deploy Clones
        tokenAddr = Clones.clone(TOKEN_IMPL);
        address feeDistributorAddr = Clones.clone(FEE_DISTRIBUTOR_IMPL);
        address presaleAddr = Clones.clone(PRESALE_IMPL);
        address lpStakingAddr = Clones.clone(LP_STAKING_IMPL);

        // Deploy VestingStream clone only if there are vesting recipients
        address vestingAddr;
        if (config.vestingRecipients.length > 0) {
            vestingAddr = Clones.clone(VESTING_IMPL);
        }

        // Lock Initializers
        // LPStaking and VestingStream are initialized by PresaleManager during seedLiquidity()
        ILPStaking(lpStakingAddr).setInitializer(presaleAddr);
        if (vestingAddr != address(0)) {
            IVestingStream(vestingAddr).setInitializer(presaleAddr);
        }

        // Build Exempt List
        address[] memory exemptAddresses;
        if (vestingAddr != address(0)) {
            exemptAddresses = new address[](5);
            exemptAddresses[0] = presaleAddr;
            exemptAddresses[1] = lpStakingAddr;
            exemptAddresses[2] = BOARDWALK_LP_MANAGER;
            exemptAddresses[3] = boardwalkFeeCollector;
            exemptAddresses[4] = vestingAddr;
        } else {
            exemptAddresses = new address[](4);
            exemptAddresses[0] = presaleAddr;
            exemptAddresses[1] = lpStakingAddr;
            exemptAddresses[2] = BOARDWALK_LP_MANAGER;
            exemptAddresses[3] = boardwalkFeeCollector;
        }

        // Initialize Token
        FeeBpsDefaults memory feeBps = _feeBpsDefaults;

        IBoardwalkToken(tokenAddr)
            .initialize(config.name, config.ticker, feeBps.total, feeDistributorAddr, presaleAddr, exemptAddresses);

        // Initialize FeeDistributor
        // Referrer fees are carved from boardwalk
        uint256 effectiveBoardwalkBps;
        uint256 effectiveReferrerBps;
        if (config.referrer != address(0)) {
            effectiveBoardwalkBps = feeBps.boardwalk - feeBps.referrer;
            effectiveReferrerBps = feeBps.referrer;
        } else {
            effectiveBoardwalkBps = feeBps.boardwalk;
            effectiveReferrerBps = 0;
        }

        IFeeDistributor(feeDistributorAddr)
            .initialize(
                IFeeDistributor.InitParams({
                    token: tokenAddr,
                    lpStaking: lpStakingAddr,
                    feeCollector: boardwalkFeeCollector,
                    router: BOARDWALK_ROUTER,
                    raiseToken: RAISE_TOKEN,
                    issuerRecipients: config.issuerFeeRecipients,
                    issuerSplits: config.issuerFeeSplits,
                    issuerLabels: config.issuerFeeLabels,
                    referrer: config.referrer,
                    issuerBps: feeBps.issuer,
                    boardwalkBps: effectiveBoardwalkBps,
                    lpIncentiveBps: feeBps.incentive,
                    referrerBps: effectiveReferrerBps
                })
            );

        // Determine Presale Parameters
        uint256 presaleDuration;
        uint256 presalePercent;
        uint256 graduationThreshold;
        bool hasDelay;

        if (config.path == LaunchPath.EXPRESS) {
            presaleDuration = expressDuration;
            presalePercent = 5000; // Express always 50%
            graduationThreshold = graduationExpress;
            hasDelay = false;
        } else {
            presaleDuration = advancedDuration;
            presalePercent = config.presalePercent;
            graduationThreshold = graduationAdvanced;
            hasDelay = true;
        }

        // Initialize PresaleManager
        IPresaleManager(presaleAddr)
            .initialize(
                tokenAddr,
                feeDistributorAddr,
                vestingAddr,
                lpStakingAddr,
                BOARDWALK_ROUTER,
                RAISE_TOKEN,
                BOARDWALK_DEX_FACTORY,
                presaleDuration,
                presalePercent,
                graduationThreshold,
                hasDelay
            );

        // Set Vesting Config on PresaleManager (if applicable)
        if (config.vestingRecipients.length > 0) {
            _setVestingConfig(config, presaleAddr, presalePercent);
        }

        // Register Launch
        LaunchInfo memory info = LaunchInfo({
            token: tokenAddr,
            feeDistributor: feeDistributorAddr,
            presaleManager: presaleAddr,
            vestingStream: vestingAddr,
            lpStaking: lpStakingAddr,
            issuer: msg.sender,
            path: config.path,
            createdAt: block.timestamp
        });

        launches[tokenAddr] = info;
        allLaunches.push(tokenAddr);

        emit LaunchCreated(
            tokenAddr, msg.sender, config.name, config.ticker, config.category, config.description, config.path
        );
    }

    // ============ Vesting Amount Computation ============

    /// @dev Compute actual token amounts from user-supplied vesting percents and call setVestingConfig.
    ///      Uses the same allocation math as PresaleManager.seedLiquidity().
    function _setVestingConfig(
        LaunchConfig calldata config,
        address presaleAddr,
        uint256 presalePercent
    ) internal {
        uint256 totalSupply = 10_000_000_000e18;
        uint256 presaleTokens = totalSupply * presalePercent / BPS_DENOMINATOR;
        uint256 vestingTotal = totalSupply - presaleTokens - presaleTokens; // presale + liquidity
        uint256 lpIncentiveTokens = vestingTotal * 20 / 100;
        uint256 issuerVestingTokens = vestingTotal - lpIncentiveTokens;

        uint256 len = config.vestingPercents.length;
        uint256[] memory vestingAmounts = new uint256[](len);
        uint256 distributed;
        for (uint256 i = 0; i < len - 1;) {
            vestingAmounts[i] = issuerVestingTokens * config.vestingPercents[i] / BPS_DENOMINATOR;
            distributed += vestingAmounts[i];
            unchecked {
                ++i;
            }
        }
        // Last recipient gets remainder to avoid rounding dust
        vestingAmounts[len - 1] = issuerVestingTokens - distributed;

        IPresaleManager(presaleAddr).setVestingConfig(config.vestingRecipients, vestingAmounts, config.vestingLabels);
    }

    // ============ Config Validation ============

    function _validateConfig(
        LaunchConfig calldata config
    ) internal view {
        // Array length checks
        if (config.issuerFeeRecipients.length != config.issuerFeeSplits.length) {
            revert ArrayLengthMismatch();
        }
        if (config.issuerFeeRecipients.length != config.issuerFeeLabels.length) {
            revert ArrayLengthMismatch();
        }
        if (config.vestingRecipients.length != config.vestingPercents.length) {
            revert ArrayLengthMismatch();
        }
        if (config.vestingRecipients.length != config.vestingLabels.length) {
            revert ArrayLengthMismatch();
        }

        // Fee recipient count
        uint256 feeRecipientCount = config.issuerFeeRecipients.length;
        if (feeRecipientCount == 0 || feeRecipientCount > MAX_FEE_RECIPIENTS) {
            revert TooManyRecipients(feeRecipientCount);
        }

        // Fee splits must sum to 10000
        uint256 feeSplitSum;
        for (uint256 i = 0; i < feeRecipientCount;) {
            if (config.issuerFeeRecipients[i] == address(0)) revert ZeroAddress();
            feeSplitSum += config.issuerFeeSplits[i];
            unchecked {
                ++i;
            }
        }
        if (feeSplitSum != BPS_DENOMINATOR) revert InvalidSplitsSum();

        // Path-specific validation
        if (config.path == LaunchPath.EXPRESS) {
            if (config.referrer != address(0)) revert ReferrerNotAllowedOnExpressPath();
            if (config.vestingRecipients.length > 0) revert VestingNotAllowedOnExpressPath();
            if (feeRecipientCount != 1) revert ExpressRequiresOneFeeRecipient();
        } else {
            // ADVANCED path
            uint256 pp = config.presalePercent;
            if (pp < minPresalePercent || pp > maxPresalePercent) {
                revert InvalidPresalePercent(pp);
            }
            if (pp % PRESALE_STEP != 0) revert PresalePercentNotDivisibleBy5();

            // Vesting validation
            if (config.vestingRecipients.length > MAX_VESTING_RECIPIENTS) {
                revert TooManyRecipients(config.vestingRecipients.length);
            }
            if (config.vestingRecipients.length > 0) {
                uint256 vestingSum;
                for (uint256 i = 0; i < config.vestingPercents.length;) {
                    vestingSum += config.vestingPercents[i];
                    unchecked {
                        ++i;
                    }
                }
                if (vestingSum != BPS_DENOMINATOR) revert InvalidSplitsSum();
            }
        }
    }

    // ============ Timelocked Admin Functions ============

    /// @notice Cancel any pending timelocked action. Only owner can cancel.
    /// @param action The action key to cancel (e.g., ACTION_SET_BMX_BURN)
    function cancelPendingAction(
        bytes32 action
    ) external onlyOwner {
        _cancel(action);
    }

    /// @notice Signal a BMX burn amount change
    /// @param _amount New BMX burn amount
    function signalSetBmxBurn(
        uint256 _amount
    ) external onlyOwner {
        _signal(ACTION_SET_BMX_BURN, keccak256(abi.encode(_amount)));
    }

    /// @notice Execute a BMX burn amount change
    /// @param _amount New BMX burn amount (must match signaled value)
    function executeSetBmxBurn(
        uint256 _amount
    ) external {
        _execute(ACTION_SET_BMX_BURN, keccak256(abi.encode(_amount)));
        if (bmxBurnAdminBurned) revert BmxBurnAlreadyRenounced();
        if (_amount > MAX_BMX_BURN) revert BmxBurnOutOfRange(_amount);
        emit BmxBurnAmountChanged(bmxBurnAmount, _amount);
        bmxBurnAmount = _amount;
    }

    /// @notice Signal renouncement of BMX burn admin capability
    function signalRenounceBmxBurnAdmin() external onlyOwner {
        _signal(ACTION_RENOUNCE_BMX_BURN, keccak256(abi.encode(true)));
    }

    /// @notice Execute renouncement of BMX burn admin
    function executeRenounceBmxBurnAdmin() external {
        _execute(ACTION_RENOUNCE_BMX_BURN, keccak256(abi.encode(true)));
        if (bmxBurnAdminBurned) revert BmxBurnAlreadyRenounced();
        if (bmxBurnAmount != 0) revert BmxBurnNotZero();
        bmxBurnAdminBurned = true;
        emit BmxBurnAdminRenounced();
    }

    /// @notice Signal an Express path graduation threshold change
    /// @param _threshold New graduation threshold in raise token units
    function signalSetGraduationExpress(
        uint256 _threshold
    ) external onlyOwner {
        _signal(ACTION_SET_GRADUATION_EXPRESS, keccak256(abi.encode(_threshold)));
    }

    /// @notice Execute Express path graduation threshold change
    /// @param _threshold New graduation threshold (must match signaled value)
    function executeSetGraduationExpress(
        uint256 _threshold
    ) external {
        _execute(ACTION_SET_GRADUATION_EXPRESS, keccak256(abi.encode(_threshold)));
        if (_threshold == 0) revert ZeroGraduation();
        emit GraduationThresholdChanged(LaunchPath.EXPRESS, graduationExpress, _threshold);
        graduationExpress = _threshold;
    }

    /// @notice Signal an Advanced path graduation threshold change
    /// @param _threshold New graduation threshold in raise token units
    function signalSetGraduationAdvanced(
        uint256 _threshold
    ) external onlyOwner {
        _signal(ACTION_SET_GRADUATION_ADVANCED, keccak256(abi.encode(_threshold)));
    }

    /// @notice Execute Advanced path graduation threshold change
    /// @param _threshold New graduation threshold (must match signaled value)
    function executeSetGraduationAdvanced(
        uint256 _threshold
    ) external {
        _execute(ACTION_SET_GRADUATION_ADVANCED, keccak256(abi.encode(_threshold)));
        if (_threshold == 0) revert ZeroGraduation();
        emit GraduationThresholdChanged(LaunchPath.ADVANCED, graduationAdvanced, _threshold);
        graduationAdvanced = _threshold;
    }

    /// @notice Signal an Express presale duration change
    /// @param _duration New presale duration in seconds
    function signalSetExpressDuration(
        uint256 _duration
    ) external onlyOwner {
        _signal(ACTION_SET_EXPRESS_DURATION, keccak256(abi.encode(_duration)));
    }

    /// @notice Execute Express presale duration change
    /// @param _duration New presale duration (must match signaled value)
    function executeSetExpressDuration(
        uint256 _duration
    ) external {
        _execute(ACTION_SET_EXPRESS_DURATION, keccak256(abi.encode(_duration)));
        if (_duration == 0) revert InvalidDuration();
        emit PresaleDurationChanged(LaunchPath.EXPRESS, expressDuration, _duration);
        expressDuration = _duration;
    }

    /// @notice Signal an Advanced presale duration change
    /// @param _duration New presale duration in seconds
    function signalSetAdvancedDuration(
        uint256 _duration
    ) external onlyOwner {
        _signal(ACTION_SET_ADVANCED_DURATION, keccak256(abi.encode(_duration)));
    }

    /// @notice Execute Advanced presale duration change
    /// @param _duration New presale duration (must match signaled value)
    function executeSetAdvancedDuration(
        uint256 _duration
    ) external {
        _execute(ACTION_SET_ADVANCED_DURATION, keccak256(abi.encode(_duration)));
        if (_duration < MIN_ADVANCED_DURATION || _duration > MAX_ADVANCED_DURATION) {
            revert InvalidDuration();
        }
        emit PresaleDurationChanged(LaunchPath.ADVANCED, advancedDuration, _duration);
        advancedDuration = _duration;
    }

    /// @notice Signal a fee defaults change
    /// @param _feeBps New fee BPS defaults struct
    function signalSetFeeDefaults(
        FeeBpsDefaults calldata _feeBps
    ) external onlyOwner {
        _signal(ACTION_SET_FEE_DEFAULTS, keccak256(abi.encode(_feeBps)));
    }

    /// @notice Execute fee defaults change
    /// @param _feeBps New fee BPS defaults (must match signaled value)
    function executeSetFeeDefaults(
        FeeBpsDefaults calldata _feeBps
    ) external {
        _execute(ACTION_SET_FEE_DEFAULTS, keccak256(abi.encode(_feeBps)));
        _validateFeeDefaults(_feeBps);
        _feeBpsDefaults = _feeBps;
        emit FeeDefaultsChanged(_feeBps.issuer, _feeBps.boardwalk, _feeBps.incentive, _feeBps.referrer);
    }

    /// @notice Signal a presale percent range change
    /// @param _min New minimum presale percent in BPS
    /// @param _max New maximum presale percent in BPS
    function signalSetPresaleRange(
        uint256 _min,
        uint256 _max
    ) external onlyOwner {
        _signal(ACTION_SET_PRESALE_RANGE, keccak256(abi.encode(_min, _max)));
    }

    /// @notice Execute presale percent range change
    /// @param _min New minimum presale percent (must match signaled value)
    /// @param _max New maximum presale percent (must match signaled value)
    function executeSetPresaleRange(
        uint256 _min,
        uint256 _max
    ) external {
        _execute(ACTION_SET_PRESALE_RANGE, keccak256(abi.encode(_min, _max)));
        _validatePresaleRange(_min, _max);
        emit PresaleRangeChanged(minPresalePercent, maxPresalePercent, _min, _max);
        minPresalePercent = _min;
        maxPresalePercent = _max;
    }

    /// @notice Signal a fee collector address change
    /// @param _collector New fee collector address
    function signalSetFeeCollector(
        address _collector
    ) external onlyOwner {
        _signal(ACTION_SET_FEE_COLLECTOR, keccak256(abi.encode(_collector)));
    }

    /// @notice Execute fee collector address change after timelock delay
    /// @param _collector New fee collector address (must match signaled value)
    function executeSetFeeCollector(
        address _collector
    ) external {
        _execute(ACTION_SET_FEE_COLLECTOR, keccak256(abi.encode(_collector)));
        if (_collector == address(0)) revert ZeroAddress();
        emit FeeCollectorChanged(boardwalkFeeCollector, _collector);
        boardwalkFeeCollector = _collector;
    }

    // ============ Internal Validation ============

    /// @dev Validate fee BPS defaults. Reverts with InvalidFeeDefaults on violation.
    function _validateFeeDefaults(
        FeeBpsDefaults memory d
    ) internal pure {
        // Total must equal issuer + boardwalk + incentive (referrer excluded from total)
        if (d.total != d.issuer + d.boardwalk + d.incentive) revert InvalidFeeDefaults();

        if (d.issuer < MIN_ISSUER_BPS || d.issuer > MAX_ISSUER_BPS) revert InvalidFeeDefaults();
        if (d.boardwalk < MIN_BOARDWALK_BPS || d.boardwalk > MAX_BOARDWALK_BPS) revert InvalidFeeDefaults();
        if (d.incentive > MAX_INCENTIVE_BPS) revert InvalidFeeDefaults();
        if (d.referrer > MAX_REFERRER_BPS) revert InvalidFeeDefaults();

        // Referrer carved from boardwalk share
        if (d.referrer > d.boardwalk) revert InvalidFeeDefaults();
    }

    /// @dev Validate presale range parameters
    function _validatePresaleRange(
        uint256 _min,
        uint256 _max
    ) internal pure {
        if (
            _min < PRESALE_RANGE_FLOOR || _max > PRESALE_RANGE_CEILING || _min > _max || _min % PRESALE_STEP != 0
                || _max % PRESALE_STEP != 0
        ) {
            revert InvalidPresaleRange(_min, _max);
        }
    }
}
