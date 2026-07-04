// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "./interfaces/IStrategyAdapter.sol";
import {AggregatorV3Interface} from "./interfaces/AggregatorV3Interface.sol";

/**
 * @title BaseVault
 * @author atars
 * @notice A simplified multi-adapter ERC-4626 vault that aggregates TVL from strategy adapters
 */
contract BaseVault is ERC4626, OwnableDelayModule, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    // --- State Variables ---

    address[] public adapters;

    /// @notice Maximum number of adapters to prevent DoS
    uint256 public maxAdapters;

    /// @notice Emergency withdraw flag
    bool public emergencyMode;

    /// @notice Safe wallet address where assets are transferred upon deposit
    address public safeWallet;

    /// @notice Safe wallet address in queue (still to be accepted)
    address public safeWalletQueued;

    /// @notice Controller address for operational functions
    address public controller;

    uint256 public minWithdraw;
    uint256 public minDeposit;

    /// @notice priceOracles address for chainlink oracles
    mapping(address => address) internal priceOracles;

    /// @notice Mapping of stale window (max age in seconds) per Chainlink oracle
    mapping(address => uint256) public staleWindow;

    mapping(address => mapping(uint256 => uint256))
        public userActiveRequestCount;
    uint256 public maxReqPerUser;

    // --- Withdrawal Queue System ---

    /// @notice Struct to track withdrawal requests
    struct WithdrawalRequest {
        address user; // User who requested withdrawal
        address receiver; // Address to receive USDC
        uint256 shares; // Amount of shares to withdraw
        uint256 timestamp; // When the request was made
        uint256 settleCounter; // Settlement counter when request was made
        bool settled; // Whether this request has been settled
    }

    /// @notice Counter for withdrawal request IDs
    uint256 public withdrawalRequestCounter;
    uint256 public latestWithdrawRequests;

    /// @notice Mapping from request ID to withdrawal request
    mapping(uint256 => WithdrawalRequest) public withdrawalRequests;

    mapping(address => bool) public isAdapter;

    /// @notice Array of active (unsettled) request IDs for processing
    uint256[] public activeRequestIds;

    /// @notice Mapping to track if a request ID is active (for O(1) lookups)
    mapping(uint256 => bool) public isActiveRequest;

    /// @notice Total shares currently queued for withdrawal
    uint256 public totalQueuedShares;

    /// @notice Current settlement queue counter for batch processing
    uint256 public settleQueueCounter;
    uint256 public defaultSettleQueueLimit;

    /// @notice Maximum allowed NAV deviation during settlement (in basis points, default 500 = 5%)
    uint256 public maxSettlementSlippage = 500;

    // --- Virtualization parameters ---
    // These are *scaled dynamically* based on asset decimals
    uint256 public virtualAssetsBase; // 1e3 is equivalent to 0.001 units of the asset
    uint256 public virtualSharesBase; // 1e15 is 0.001 shares (assuming 18 decimals)
    bool private virtualizationConfigured; // prevents reconfiguration

    mapping(uint256 => uint256) public settleQueueLimit;

    /// @notice Mapping from settle counter to total queued shares for that batch
    mapping(uint256 => uint256) public queuedSharesByCounter;

    /// @notice Mapping to track which settlement counters have been settled
    mapping(uint256 => bool) public isCounterSettled;

    /// @notice Flag to pause new withdrawal requests during settlement
    bool public withdrawalsPaused;

    /// @notice Flag to pause deposits/mints when adapters fail
    bool public depositsQuarantined;

    bool internal internalTransfer;

    /// @notice Flag to pause deposits controlled by controller
    bool public depositPauseStatus;

    /// @notice Minimum requests required before allowing counter increment
    uint256 public constant MIN_REQUESTS_FOR_COUNTER_UPDATE = 1;

    /// @notice Mapping to track quarantined (failed) adapters
    mapping(address => bool) public quarantinedAdapters;

    // --- INITIAL_NAV = 1 Constants ---

    /// @notice Initial NAV when totalSupply is 0 (1 USD per share in 18 decimals)
    uint256 private constant INITIAL_NAV = 1 * 1e18;

    // --- Events ---

    event AdapterAdded(address indexed adapter);
    event AdapterRemoved(address indexed adapter);
    event MaxAdaptersUpdated(uint256 oldMax, uint256 newMax);
    event SafeWalletUpdated(
        address indexed oldSafeWallet,
        address indexed newSafeWallet
    );
    event SafeWalletQueued(address indexed newSafeWallet);
    event ControllerUpdated(
        address indexed oldController,
        address indexed newController
    );
    event FundsDeployed(
        address indexed adapter,
        uint256 amount,
        uint256 deployed
    );
    event EmergencyModeToggled(bool enabled);
    event WithdrawalRequested(
        address indexed owner,
        address indexed receiver,
        uint256 shares,
        uint256 requestId,
        uint256 currentNAV
    );
    event WithdrawalsPaused();
    event WithdrawalsUnpaused();
    event QueueSettled(
        uint256 totalUSDCPaid,
        uint256 totalSharesSettled,
        uint256 settlementNAV,
        uint256 requestsSettled
    );
    event WithdrawalSettled(
        uint256 indexed requestId,
        address indexed user,
        address indexed receiver,
        uint256 shares,
        uint256 usdcReceived,
        uint256 settlementNAV
    );
    event AdapterQuarantined(address indexed adapter);
    event AdapterUnquarantined(address indexed adapter);
    event DepositsQuarantined();
    event DepositsUnquarantined();
    event DepositsPaused();
    event DepositsUnpaused();
    event SettleQueueCounterUpdated(
        uint256 oldCounter,
        uint256 newCounter,
        uint256 counterLimit
    );
    event DepositWithNAV(
        address indexed user,
        address indexed receiver,
        uint256 assets,
        uint256 shares,
        uint256 navAtDeposit
    );
    event DefaultQueueLimitUpdated(uint256 _defaultDueueLimit);
    event SettleQueueCounterLimitUpdated(
        uint256 indexed settleQueueCounter,
        uint256 _queueLimit
    );
    event WithdrawCancelled(
        address indexed user,
        uint256 indexed _requestId,
        uint256 shares
    );
    event VirtualizationConfigured(
        uint256 virtualAssetsBase,
        uint256 virtualSharesBase
    );
    event ExtraUnderlyingSwept(
        address indexed safeWallet,
        uint256 actualBal,
        uint256 timestamp
    );
    event MaxSettlementSlippageUpdated(uint256 oldSlippage, uint256 _bps);
    event SetMinWithdraw(uint256 oldMinWithdraw, uint256 minWithdraw);
    event SetMinDeposit(uint256 oldMinDeposit, uint256 minDeposit);
    event SetMaxRequest(uint256 oldMaxReq, uint256 maxReqPerUser);

    // --- Errors ---
    error TooManyAdapters();
    error InvalidMaxAdapters();
    error EmergencyModeEnabled();
    error ZeroAddress();
    error ZeroShares();
    error ZeroAmount();
    error AdapterNotFound();
    error AdapterAlreadyExists();
    error InvalidSafeWallet();
    error ControllerCannotBeOwner();
    error CannotTransferToVault();
    error InvalidController();
    error OnlyController();
    error OnlySafe();
    error InsufficientLiquidity();
    error OnlyEmergencyWithdrawals();
    error WithdrawalsArePaused();
    error NoActiveRequests();
    error InsufficientUSDC();
    error InsufficientAllowance();
    error RequestNotFound();
    error RequestAlreadySettled();
    error InsufficientShares();
    error NotInEmergencyMode();
    error AdapterTVLCallFailed(address adapter);
    error DepositsAreQuarantined();
    error DepositsArePaused();
    error CounterAlreadySettled();
    error EmptyCounterCannotSettle();
    error InvalidOraclePrice();
    error StaleOraclePrice();
    error ArrayLengthMismatch();
    error BelowMinWithdraw();
    error TooManyActiveRequests();
    error PriceOutOfBound();
    error MinDepositViolated();
    error CannotUseSettledCounter();

    // --- Constructor ---

    /**
     * @param _asset The underlying asset token contract (e.g., USDC).
     * @param _name The name of the vault token.
     * @param _symbol The symbol of the vault token.
     * @param _initialAdapters An array of strategy adapter contracts to add on deployment.
     * @param _maxAdapters Maximum number of adapters allowed.
     * @param _safeWallet The safe wallet address where deposited assets will be transferred.
     * @param _controller The controller address for operational functions.
     */
    constructor(
        IERC20 _asset,
        string memory _name,
        string memory _symbol,
        address[] memory _initialAdapters,
        uint256 _maxAdapters,
        address _safeWallet,
        address _controller,
        uint256 _firstQueueLimit,
        uint256 _defaultSettleQueueLimit
    ) ERC4626(_asset) ERC20(_name, _symbol) {
        if (address(_asset) == address(0)) revert ZeroAddress();
        if (_maxAdapters == 0) revert InvalidMaxAdapters();
        if (_safeWallet == address(0)) revert InvalidSafeWallet();
        if (_safeWallet == address(this)) revert InvalidSafeWallet();
        if (_controller == address(0)) revert InvalidController();
        if (_initialAdapters.length > _maxAdapters) revert TooManyAdapters();
        if (_controller == msg.sender) revert ControllerCannotBeOwner();

        // Set configuration values
        maxAdapters = _maxAdapters;
        safeWallet = _safeWallet;
        controller = _controller;
        emergencyMode = false;

        // Initialize withdrawal request counter
        withdrawalRequestCounter = 0;
        settleQueueCounter = 0;
        settleQueueLimit[settleQueueCounter] = _firstQueueLimit;
        defaultSettleQueueLimit = _defaultSettleQueueLimit;

        for (uint i = 0; i < _initialAdapters.length; i++) {
            _addAdapter(_initialAdapters[i]);
        }

        maxReqPerUser = 1;
    }

    // --- Modifiers ---

    modifier onlyController() {
        if (msg.sender != controller) revert OnlyController();
        _;
    }

    modifier onlySafe() {
        if (msg.sender != safeWallet) revert OnlySafe();
        _;
    }

    // --- View Functions ---

    /**
     * @notice Get current Net Asset Value (NAV) per share
     * @return Current NAV per share (18 decimals), starts at 100 for first deposit
     */
    function getCurrentNAV() public view returns (uint256) {
        uint256 totalSupply_ = totalSupply();

        // If no shares exist, return initial NAV of 100
        if (totalSupply_ == 0) {
            return INITIAL_NAV;
        }
        // totalAssets_ USD value of the total assets
        uint256 totalAssets_ = getTotalAssetsInUSD();

        // Calculate NAV: totalAssets / totalSupply * 1e18 (for 18 decimal precision)
        return
            Math.mulDiv(totalAssets_, 1e18, totalSupply_, Math.Rounding.Floor);
    }

    /**
     * @notice Get current Total Value Locked (TVL)
     * @return Current TVL in 18 decimal precision
     */
    function getCurrentTVL() public view returns (uint256) {
        return getTotalAssetsInUSD();
    }

    /**
     * @notice Get comprehensive vault data including NAV, adapters, and configuration
     * @return nav Current NAV per share (18 decimals)
     * @return totalAssets_ Total assets under management (18 decimals)
     * @return totalSupply_ Total shares in circulation (18 decimals)
     * @return adapters_ Array of adapter addresses
     * @return adapterCount Number of active adapters
     * @return maxAdapters_ Maximum adapters allowed
     * @return safeWallet_ Safe wallet address
     * @return controller_ Controller address
     * @return emergencyMode_ Current emergency mode status
     * @return withdrawalRequestCounter_ Current withdrawal request counter
     * @return depositsQuarantined_ Current deposits quarantine status
     */
    function getVaultData()
        external
        view
        returns (
            uint256 nav,
            uint256 totalAssets_,
            uint256 totalSupply_,
            address[] memory adapters_,
            uint256 adapterCount,
            uint256 maxAdapters_,
            address safeWallet_,
            address controller_,
            bool emergencyMode_,
            uint256 withdrawalRequestCounter_,
            bool depositsQuarantined_
        )
    {
        totalSupply_ = totalSupply();
        totalAssets_ = getCurrentTVL();
        nav = getCurrentNAV();

        return (
            nav,
            totalAssets_,
            totalSupply_,
            adapters,
            adapters.length,
            maxAdapters,
            safeWallet,
            controller,
            emergencyMode,
            withdrawalRequestCounter,
            depositsQuarantined
        );
    }

    /**
     * @notice Get the pause status for deposits and withdrawals
     * @return pauseStatuses Array of length 2 where:
     *         - Index 0: deposit pause status (true = paused, false = not paused)
     *         - Index 1: withdrawal pause status (true = paused, false = not paused)
     */
    function isPaused() external view returns (bool[2] memory pauseStatuses) {
        pauseStatuses[0] = depositPauseStatus;
        pauseStatuses[1] = withdrawalsPaused;
        return pauseStatuses;
    }

    // --- Management Functions ---

    function setMinWithdraw(uint256 _minWithdraw) external onlyOwner {
        uint256 oldMinWithdraw = minWithdraw;
        minWithdraw = _minWithdraw;
        emit SetMinWithdraw(oldMinWithdraw, minWithdraw);
    }

    function setMinDeposit(uint256 _minDeposit) external onlyOwner {
        uint256 oldMinDeposit = minDeposit;
        minDeposit = _minDeposit;
        emit SetMinDeposit(oldMinDeposit, minDeposit);
    }

    function setMaxRequestPerUser(uint256 _maxReq) external onlyOwner {
        uint256 oldMaxReq = maxReqPerUser;
        maxReqPerUser = _maxReq;
        emit SetMaxRequest(oldMaxReq, maxReqPerUser);
    }

    function setPriceOracle(
        address[] memory token,
        address[] memory oracle,
        uint256[] calldata _staleWindow
    ) external onlyOwner {
        if (
            token.length != oracle.length ||
            oracle.length != _staleWindow.length
        ) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < token.length; i++) {
            require(
                _staleWindow[i] > 0 && _staleWindow[i] <= 1 days,
                "Invalid staleWindow"
            );
            priceOracles[token[i]] = oracle[i];
            staleWindow[oracle[i]] = _staleWindow[i];
        }
    }

    function addAdapter(address _adapter) external onlyOwner whenNotPaused {
        _addAdapter(_adapter);
    }

    function removeAdapter(address _adapter) external onlyOwner {
        require(
            IStrategyAdapter(_adapter).getTVL() == 0,
            "Adapter has active positions"
        );
        if (!isAdapter[_adapter]) revert AdapterNotFound();

        bool found = false;

        for (uint i = 0; i < adapters.length; i++) {
            if (adapters[i] == _adapter) {
                adapters[i] = adapters[adapters.length - 1];
                adapters.pop();
                found = true;
                break;
            }
        }

        if (!found) revert AdapterNotFound();
        isAdapter[_adapter] = false;
        emit AdapterRemoved(_adapter);
    }

    /**
    * @notice Update safe wallet address with comprehensive validation
    * @dev Requires delay module execution and validates old wallet is empty
    * @param _safeWallet New safe wallet address
    */
    function updateSafeWallet(address _safeWallet) external nonReentrant {
        require(msg.sender == delayModule, "Only delay module");
        if (_safeWallet == address(0)) revert ZeroAddress();
        if (_safeWallet == address(this)) revert InvalidSafeWallet();
        if (_safeWallet == safeWallet) return; // No-op if same address
        
 
        // 1. Check old safe wallet has zero USDC balance
        uint256 oldWalletBalance = IERC20(asset()).balanceOf(safeWallet);
        require(
            oldWalletBalance == 0,
            "Old safe wallet has USDC - migrate assets first"
        );
        
        // 2. Check all adapters report zero TVL
        // This ensures no PT tokens or other positions remain in old wallet
        uint256 totalAdapterTVL = 0;
        for (uint256 i = 0; i < adapters.length; i++) {
            address adapter = adapters[i];
            
            // Skip quarantined adapters (they're already excluded from TVL)
            if (quarantinedAdapters[adapter]) continue;
            
            try IStrategyAdapter(adapter).getTVL() returns (uint256 tvl) {
                totalAdapterTVL += tvl;
            } catch {
                // If adapter call fails, we cannot safely proceed
                revert AdapterTVLCallFailed(adapter);
            }
        }
        
        require(
            totalAdapterTVL == 0,
            "Adapters have active positions - migrate before changing wallet"
        );
        
        // 3. Additional safety: Ensure no active withdrawal queue
        require(
            totalQueuedShares == 0,
            "Active withdrawal queue - settle before changing wallet"
        );
    
        address oldWallet = safeWallet;
        safeWallet = _safeWallet;
        
        // Clear queue (if it was set)
        if (safeWalletQueued != address(0)) {
            delete safeWalletQueued;
        }
        
        emit SafeWalletUpdated(oldWallet, _safeWallet);
    }


    /**
     * @notice Comprehensive configuration update function
     * @dev Only callable when emergency mode is enabled for security
     * @param _maxAdapters New maximum number of adapters (0 = no change)
     * @param _pauseState True to pause, false to unpause, current state for no change
     * @param _emergencyMode True to enable emergency mode, false to disable
     */
    function updateVaultConfig(
        uint256 _maxAdapters,
        bool _pauseState,
        bool _emergencyMode
    ) external onlyOwner {
        // Allow enabling emergency mode for the first time, but require emergency mode for other changes
        if (!emergencyMode && !_emergencyMode) {
            revert NotInEmergencyMode();
        }

        // If not in emergency mode but trying to enable it, only allow emergency mode change
        if (!emergencyMode && _emergencyMode) {
            // Only allow emergency mode toggle, no other changes
            if (_maxAdapters > 0 || _pauseState != paused()) {
                revert NotInEmergencyMode();
            }
            emergencyMode = _emergencyMode;
            emit EmergencyModeToggled(_emergencyMode);
            return;
        }

        // Regular emergency mode logic - all changes allowed
        // Update max adapters if provided
        if (_maxAdapters > 0) {
            if (adapters.length > _maxAdapters) revert TooManyAdapters();
            uint256 oldMax = maxAdapters;
            maxAdapters = _maxAdapters;
            emit MaxAdaptersUpdated(oldMax, _maxAdapters);
        }

        // Update pause state
        if (_pauseState != paused()) {
            if (_pauseState) {
                _pause();
            } else {
                _unpause();
            }
        }

        // Update emergency mode
        if (_emergencyMode != emergencyMode) {
            emergencyMode = _emergencyMode;
            emit EmergencyModeToggled(_emergencyMode);
        }
    }

    /**
     * @notice Update maximum settlement slippage tolerance
     * @dev Allows adjusting based on market volatility or operational needs
     * @param _bps New slippage in basis points (e.g., 500 = 5%, 1000 = 10%)
     */
    function setMaxSettlementSlippage(uint256 _bps) external onlyOwner {
        require(_bps <= 2000, "Maximum 20% slippage"); // Safety cap
        require(_bps >= 100, "Minimum 1% slippage"); // Prevent too strict

        uint256 oldSlippage = maxSettlementSlippage;
        maxSettlementSlippage = _bps;

        emit MaxSettlementSlippageUpdated(oldSlippage, _bps);
    }

    /**
     * @notice Update controller address (owner only)
     * @param _controller New controller address
     */
    function updateController(address _controller) external onlyOwner {
        if (_controller == address(0)) revert InvalidController();
        address oldController = controller;
        controller = _controller;
        emit ControllerUpdated(oldController, _controller);
    }

    /**
     * @notice Quarantine an adapter that's failing TVL calls
     * @param adapter The adapter to quarantine
     */
    function quarantineAdapter(address adapter) external onlyOwner {
        quarantinedAdapters[adapter] = true;
        emit AdapterQuarantined(adapter);
    }

    /**
     * @notice Unquarantine an adapter after fixing issues
     * @param adapter The adapter to unquarantine
     */
    function unquarantineAdapter(address adapter) external onlyOwner {
        quarantinedAdapters[adapter] = false;
        emit AdapterUnquarantined(adapter);
    }

    /**
     * @notice Toggle emergency mode (owner only)
     * @param _emergencyMode True to enable emergency mode, false to disable
     */
    function toggleEmergencyMode(bool _emergencyMode) external onlyOwner {
        emergencyMode = _emergencyMode;
        emit EmergencyModeToggled(_emergencyMode);
    }

    /**
     * @notice Quarantine deposits when adapters are failing
     */
    function quarantineDeposits() external onlyOwner {
        depositsQuarantined = true;
        emit DepositsQuarantined();
    }

    /**
     * @notice Unquarantine deposits after resolving adapter issues
     */
    function unquarantineDeposits() external onlyOwner {
        depositsQuarantined = false;
        emit DepositsUnquarantined();
    }

    /**
     * @notice Pause deposits (controller only)
     */
    function pauseDeposits() external onlyController {
        depositPauseStatus = true;
        emit DepositsPaused();
    }

    /**
     * @notice Unpause deposits (controller only)
     */
    function unpauseDeposits() external onlyController {
        depositPauseStatus = false;
        emit DepositsUnpaused();
    }

    /**
     * @notice Update settle queue counter to create new settlement batch (controller only)
     * @dev Requires existing counter to have pending requests to prevent empty counter creation
     */
    function updateSettleQueueCounter(
        uint256 _queueLimit
    ) external onlyController {
        // Ensure current counter has pending requests before incrementing
        if (
            queuedSharesByCounter[settleQueueCounter] <
            MIN_REQUESTS_FOR_COUNTER_UPDATE
        ) {
            revert NoActiveRequests();
        }

        uint256 oldCounter = settleQueueCounter;
        settleQueueCounter++;
        settleQueueLimit[settleQueueCounter] = _queueLimit;
        emit SettleQueueCounterUpdated(
            oldCounter,
            settleQueueCounter,
            _queueLimit
        );
    }

    function updateSettleQueueCounterLimit(
        uint256 _settleQueueCounter,
        uint256 _queueLimit
    ) external onlyController {
        require(
            _settleQueueCounter >= settleQueueCounter,
            "can't update old counter limit"
        );
        if (_settleQueueCounter == settleQueueCounter) {
            require(
                _queueLimit >= latestWithdrawRequests,
                "Withdrawals already registered"
            );
        }
        settleQueueLimit[_settleQueueCounter] = _queueLimit;
        emit SettleQueueCounterLimitUpdated(settleQueueCounter, _queueLimit);
    }

    function updateDefaultQueueLimit(
        uint256 _defaultDueueLimit
    ) external onlyController {
        defaultSettleQueueLimit = _defaultDueueLimit;
        emit DefaultQueueLimitUpdated(_defaultDueueLimit);
    }

    // --- Request Withdrawal Function ---

    /**
     * @notice ERC4626 compliant redeem function that burns shares for assets
     * @dev Initiates a withdrawal by burning vault shares and queuing the request
     * @param shares The amount of vault shares to burn for withdrawal
     * @param receiver The address that will receive the USDC payout
     * @param owner The owner of the shares (must be msg.sender or have allowance)
     * @return assets The amount of underlying assets to be received
     */
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        returns (uint256 assets)
    {
        if (emergencyMode) revert EmergencyModeEnabled();
        if (shares == 0) revert ZeroShares();
        if (receiver == address(0)) revert ZeroAddress();
        if (withdrawalsPaused) revert WithdrawalsArePaused();
        if (shares <= minWithdraw) revert BelowMinWithdraw();
        if (
            userActiveRequestCount[owner][settleQueueCounter] >= maxReqPerUser
        ) {
            revert TooManyActiveRequests();
        }
        if (isCounterSettled[settleQueueCounter]) revert CannotUseSettledCounter();
        // Calculate assets to be redeemed
        assets = previewRedeem(shares);

        // Check allowance if owner is not msg.sender
        if (owner != msg.sender) {
            uint256 currentAllowance = allowance(owner, msg.sender);
            if (currentAllowance < shares) {
                revert InsufficientShares();
            }
            // Decrease allowance
            _spendAllowance(owner, msg.sender, shares);
        }

        // Check that owner has sufficient vault token balance
        if (balanceOf(owner) < shares) revert InsufficientShares();

        // Transfer shares to vault instead of burning
        internalTransfer = true;
        _transfer(owner, address(this), shares);
        internalTransfer = false;

        // Increment counter to get a new unique ID
        uint256 requestId = ++withdrawalRequestCounter;
        latestWithdrawRequests++;

        if (latestWithdrawRequests > settleQueueLimit[settleQueueCounter]) {
            settleQueueCounter++;
            settleQueueLimit[settleQueueCounter] = defaultSettleQueueLimit;
            latestWithdrawRequests = 1;
        }

        userActiveRequestCount[owner][settleQueueCounter]++;

        // Create withdrawal request
        withdrawalRequests[requestId] = WithdrawalRequest({
            user: owner,
            receiver: receiver,
            shares: shares,
            timestamp: block.timestamp,
            settleCounter: settleQueueCounter,
            settled: false
        });

        // Add to active requests queue
        activeRequestIds.push(requestId);
        isActiveRequest[requestId] = true;
        totalQueuedShares += shares;
        queuedSharesByCounter[settleQueueCounter] += shares;

        emit WithdrawalRequested(
            owner,
            receiver,
            shares,
            requestId,
            getCurrentNAV()
        );

        return assets;
    }

    /**
     * @notice ERC4626 compliant withdraw function that burns shares for specific asset amount
     * @dev Converts assets to shares and queues the withdrawal request
     * @param assets The amount of assets (USDC) to withdraw
     * @param receiver The address that will receive the USDC payout
     * @param owner The owner of the shares (must be msg.sender or have allowance)
     * @return shares The amount of shares burned for the withdrawal
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    )
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares)
    {
        if (emergencyMode) revert EmergencyModeEnabled();
        if (assets == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        if (withdrawalsPaused) revert WithdrawalsArePaused();
        if (
            userActiveRequestCount[owner][settleQueueCounter] >= maxReqPerUser
        ) {
            revert TooManyActiveRequests();
        }
        if (isCounterSettled[settleQueueCounter]) revert CannotUseSettledCounter();
        // Convert assets to shares using current conversion rate
        shares = previewWithdraw(assets);
        if (shares <= minWithdraw) revert BelowMinWithdraw();

        // Check allowance if owner is not msg.sender
        if (owner != msg.sender) {
            uint256 currentAllowance = allowance(owner, msg.sender);
            if (currentAllowance < shares) {
                revert InsufficientShares();
            }
            // Decrease allowance
            _spendAllowance(owner, msg.sender, shares);
        }

        // Check that owner has sufficient vault token balance
        if (balanceOf(owner) < shares) revert InsufficientShares();

        // Transfer shares to vault instead of burning
        internalTransfer = true;
        _transfer(owner, address(this), shares);
        internalTransfer = false;

        // Increment counter to get a new unique ID
        uint256 requestId = ++withdrawalRequestCounter;
        latestWithdrawRequests++;

        if (latestWithdrawRequests > settleQueueLimit[settleQueueCounter]) {
            settleQueueCounter++;
            settleQueueLimit[settleQueueCounter] = defaultSettleQueueLimit;
            latestWithdrawRequests = 1;
        }

        userActiveRequestCount[owner][settleQueueCounter]++;

        // Create withdrawal request
        withdrawalRequests[requestId] = WithdrawalRequest({
            user: owner,
            receiver: receiver,
            shares: shares,
            timestamp: block.timestamp,
            settleCounter: settleQueueCounter,
            settled: false
        });

        // Add to active requests queue
        activeRequestIds.push(requestId);
        isActiveRequest[requestId] = true;
        totalQueuedShares += shares;
        queuedSharesByCounter[settleQueueCounter] += shares;

        emit WithdrawalRequested(
            owner,
            receiver,
            shares,
            requestId,
            getCurrentNAV()
        );

        return shares;
    }

    function cancelWithdraw(uint256 requestId) external {
        WithdrawalRequest storage req = withdrawalRequests[requestId];

        require(msg.sender == req.user, "Not the owner");
        require(isActiveRequest[requestId], "Request inactive");
        require(
            req.settleCounter == settleQueueCounter,
            "Cannot cancel settled counter"
        );

        uint256 shares = req.shares;
        uint256 counter = req.settleCounter;

        userActiveRequestCount[msg.sender][req.settleCounter] -= 1;

        require(shares > 0, "Nothing to cancel");

        // Transfer shares back to user
        _transfer(address(this), msg.sender, shares);

        // Update global accounting BEFORE zeroing out
        totalQueuedShares -= shares;
        queuedSharesByCounter[counter] -= shares;

        // Mark inactive
        req.shares = 0;
        isActiveRequest[requestId] = false;

        emit WithdrawCancelled(msg.sender, requestId, shares);
    }

    /**
     * @notice Get all queued withdrawal requests
     * @return requestIds Array of active request IDs
     * @return users Array of users who made the requests
     * @return shares Array of shares amounts for each request
     */
    function getQueuedUsers()
        external
        view
        returns (
            uint256[] memory requestIds,
            address[] memory users,
            uint256[] memory shares
        )
    {
        uint256 activeCount = activeRequestIds.length;
        requestIds = new uint256[](activeCount);
        users = new address[](activeCount);
        shares = new uint256[](activeCount);

        for (uint256 i = 0; i < activeCount; i++) {
            uint256 requestId = activeRequestIds[i];
            WithdrawalRequest memory request = withdrawalRequests[requestId];
            requestIds[i] = requestId;
            users[i] = request.user;
            shares[i] = request.shares;
        }
    }

    /**
     * @notice Get queued shares amount for a specific settlement counter
     * @param counter The settlement counter to check
     * @return shares Total shares queued for this counter
     */
    function getQueuedSharesByCounter(
        uint256 counter
    ) external view returns (uint256 shares) {
        return queuedSharesByCounter[counter];
    }

    /**
     * @notice Check if a specific settlement counter has been settled
     * @param counter The settlement counter to check
     * @return settled True if the counter has been settled, false otherwise
     */
    function isSettlementCounterSettled(
        uint256 counter
    ) external view returns (bool settled) {
        return isCounterSettled[counter];
    }

    /**
     * @notice Pause withdrawal requests (controller only)
     */
    function pauseWithdrawals() external onlyController {
        withdrawalsPaused = true;
        emit WithdrawalsPaused();
    }

    /**
     * @notice Unpause withdrawal requests (controller only)
     */
    function unpauseWithdrawals() external onlyController {
        withdrawalsPaused = false;
        emit WithdrawalsUnpaused();
    }

    /**
     * @notice Settle the withdrawal queue for a specific counter by distributing USDC proportionally
     * @dev USDC is transferred from the safe wallet where PT token sale proceeds are kept
     * @param totalUSDCToPayout Total USDC amount to distribute to queued withdrawals for this counter
     * @param counterToSettle The settlement counter batch to process
     */
    function settleQueue(
        uint256 totalUSDCToPayout,
        uint256 counterToSettle
    ) external nonReentrant onlySafe {
        if (isCounterSettled[counterToSettle]) revert CounterAlreadySettled();
        if (queuedSharesByCounter[counterToSettle] == 0)
            revert EmptyCounterCannotSettle();
        if (totalUSDCToPayout == 0) revert InsufficientUSDC();

        // Check safe wallet has enough USDC
        if (IERC20(asset()).balanceOf(safeWallet) < totalUSDCToPayout)
            revert InsufficientUSDC();

        // Check safe wallet has given sufficient allowance to vault
        if (
            IERC20(asset()).allowance(safeWallet, address(this)) <
            totalUSDCToPayout
        ) {
            revert InsufficientAllowance();
        }

        uint256 currentNAV = getCurrentNAV();

        // Transfer USDC from safe wallet to vault for distribution
        IERC20(asset()).safeTransferFrom(
            safeWallet,
            address(this),
            totalUSDCToPayout
        );

        // Calculate settlement NAV (in 18 decimals)
        uint256 settlementNAV = Math.mulDiv(
            totalUSDCToPayout,
            1e18 * 1e12, // Convert from 6 decimals (USDC) to 18 decimals
            queuedSharesByCounter[counterToSettle]
        );

        {
            // maxSettlementSlippage is in basis points (e.g., 500 = 5%)
            uint256 minAcceptableNAV = (currentNAV *
                (10000 - maxSettlementSlippage)) / 10000;
            uint256 maxAcceptableNAV = (currentNAV *
                (10000 + maxSettlementSlippage)) / 10000;

            // Validate settlement NAV is within configured bounds
            require(
                settlementNAV >= minAcceptableNAV,
                "Settlement NAV below minimum threshold"
            );
            require(
                settlementNAV <= maxAcceptableNAV,
                "Settlement NAV above maximum threshold"
            );
        }

        // Process requests for this specific counter only
        uint256[] memory requestsToProcess = new uint256[](
            activeRequestIds.length
        );
        uint256 requestsToProcessCount = 0;
        uint256 totalSharesSettledForCounter = 0;

        // First pass: identify requests for this counter
        for (uint256 i = 0; i < activeRequestIds.length; i++) {
            uint256 requestId = activeRequestIds[i];
            WithdrawalRequest storage request = withdrawalRequests[requestId];

            if (!request.settled && request.settleCounter == counterToSettle) {
                requestsToProcess[requestsToProcessCount] = requestId;
                requestsToProcessCount++;
            }
        }

        // Second pass: process identified requests
        for (uint256 i = 0; i < requestsToProcessCount; i++) {
            uint256 requestId = requestsToProcess[i];
            WithdrawalRequest storage request = withdrawalRequests[requestId];

            // Calculate USDC amount for this request
            uint256 usdcAmount = Math.mulDiv(
                request.shares,
                totalUSDCToPayout,
                queuedSharesByCounter[counterToSettle]
            );

            // Mark as settled
            request.settled = true;
            totalSharesSettledForCounter += request.shares;

            // Remove from active tracking
            isActiveRequest[requestId] = false;

            // Burn the shares from vault
            _burn(address(this), request.shares);

            // Transfer USDC to receiver
            IERC20(asset()).safeTransfer(request.receiver, usdcAmount);

            emit WithdrawalSettled(
                requestId,
                request.user,
                request.receiver,
                request.shares,
                usdcAmount,
                settlementNAV
            );
        }

        // Update counters
        totalQueuedShares -= totalSharesSettledForCounter;
        queuedSharesByCounter[counterToSettle] = 0;
        isCounterSettled[counterToSettle] = true;

        // Gas-efficient cleanup: batch remove settled requests
        uint256 originalLength = activeRequestIds.length;
        uint256 writeIndex = 0;

        // Single pass: compact active requests
        for (uint256 i = 0; i < originalLength; i++) {
            if (isActiveRequest[activeRequestIds[i]]) {
                if (writeIndex != i) {
                    activeRequestIds[writeIndex] = activeRequestIds[i];
                }
                writeIndex++;
            }
        }

        // Batch resize array (more gas efficient than individual pops)
        uint256 itemsToRemove = originalLength - writeIndex;
        for (uint256 i = 0; i < itemsToRemove; i++) {
            activeRequestIds.pop();
        }

        emit QueueSettled(
            totalUSDCToPayout,
            totalSharesSettledForCounter,
            settlementNAV,
            requestsToProcessCount
        );

        // Transfer any leftover USDC back to safe wallet
        uint256 remainingUSDC = IERC20(asset()).balanceOf(address(this));
        if (remainingUSDC > 0) {
            IERC20(asset()).safeTransfer(safeWallet, remainingUSDC);

            emit ExtraUnderlyingSwept(
                safeWallet,
                remainingUSDC,
                block.timestamp
            );
        }
    }

    // --- Core ERC4626 Logic ---

    function totalAssets() public view virtual override returns (uint256) {
        // --- Emergency mode: only idle assets ---
        if (emergencyMode) {
            uint256 _totalIdleAssets = IERC20(asset()).balanceOf(safeWallet);

            // Include virtual assets in emergency mode too
            return (_totalIdleAssets) + virtualAssetsBase;
        }

        // --- Normal mode ---
        uint256 totalManagedAssets = 0;
        uint256 adapterCount = adapters.length;

        unchecked {
            for (uint256 i = 0; i < adapterCount && i < maxAdapters; i++) {
                address adapter = adapters[i];

                // Skip quarantined adapters
                if (quarantinedAdapters[adapter]) continue;

                // getTotalAssets() must return value in asset
                try IStrategyAdapter(adapter).getTotalAssets() returns (
                    uint256 tvl
                ) {
                    totalManagedAssets += tvl;
                } catch {
                    // Fail hard to prevent NAV manipulation
                    revert AdapterTVLCallFailed(adapter);
                }
            }
        }

        // Include idle assets from safeWallet (Exclude Vault balance)
        uint256 totalIdleAssets = IERC20(asset()).balanceOf(safeWallet);
        totalManagedAssets += totalIdleAssets;

        return totalManagedAssets + virtualAssetsBase;
    }

    function getTotalAssetsInUSD() public view returns (uint256) {
        address underlying = asset();
        uint256 assetDecimals = IERC20Metadata(underlying).decimals();
        uint256 precisionOffset = 18 > assetDecimals ? 18 - assetDecimals : 0;

        // ---------------------------------------------
        // 1. Load USD oracle (18 decimals)
        // ---------------------------------------------
        address assetOracle = priceOracles[underlying];
        require(assetOracle != address(0), "Price oracle not set for asset");

        (uint256 usdPrice18, ) = _getValidatedOraclePrice(assetOracle);
        // usdPrice18 = price per 1 token (18 decimals)

        // ---------------------------------------------
        // EMERGENCY MODE:
        // Only idle assets + virtual assets, all in USD
        // ---------------------------------------------
        if (emergencyMode) {
            uint256 idleAssets = IERC20(underlying).balanceOf(safeWallet);

            // Convert idle assets -> 18-decimal USD
            uint256 idleUSD = Math.mulDiv(
                idleAssets * (10 ** precisionOffset), // normalize to 18 decimals
                usdPrice18,
                1e18
            );

            // Virtual assets -> normalize → USD
            uint256 virtAssetUnits18s = virtualAssetsBase *
                (10 ** precisionOffset);
            uint256 virtUSDs = Math.mulDiv(virtAssetUnits18s, usdPrice18, 1e18);

            return idleUSD + virtUSDs;
        }

        // ---------------------------------------------
        // 2. Normal mode: Start with adapter TVL (already USD, 18 decimals)
        // ---------------------------------------------
        uint256 totalUSD = 0;
        uint256 adapterCount = adapters.length;

        unchecked {
            for (uint256 i = 0; i < adapterCount && i < maxAdapters; i++) {
                address adapter = adapters[i];
                if (quarantinedAdapters[adapter]) continue;

                // getTVL() already returns USD, 18 decimals
                try IStrategyAdapter(adapter).getTVL() returns (
                    uint256 tvlUSD
                ) {
                    totalUSD += tvlUSD;
                } catch {
                    revert AdapterTVLCallFailed(adapter);
                }
            }
        }

        // ---------------------------------------------
        // 3. Idle asset USD valuation (Include idle assets from safeWallet (Exclude Vault balance))
        // ---------------------------------------------
        uint256 idleAsset = IERC20(underlying).balanceOf(safeWallet);

        // Normalize idle assets → 18-decimal asset units → USD
        uint256 idleUSDs = Math.mulDiv(
            idleAsset * (10 ** precisionOffset),
            usdPrice18,
            1e18
        );

        totalUSD += idleUSDs;

        // ---------------------------------------------
        // 4. Virtual assets -> USD
        // ---------------------------------------------
        uint256 virtAssetUnits18 = virtualAssetsBase * (10 ** precisionOffset);
        uint256 virtUSD = Math.mulDiv(virtAssetUnits18, usdPrice18, 1e18);

        totalUSD += virtUSD;

        return totalUSD;
    }

    /**
     * @notice Internal helper to fetch Chainlink price and validate freshness/staleness
     * @param oracle The Chainlink oracle address
     * @return price18 Price normalized to 18 decimals
     * @return oracleDecimals The original decimals of the Chainlink feed
     *
     * Requirements:
     *  - answer > 0
     *  - answeredInRound >= roundId
     *  - if staleWindow[oracle] > 0 then (block.timestamp - updatedAt) <= staleWindow[oracle]
     */
    function _getValidatedOraclePrice(
        address oracle
    ) internal view returns (uint256 price18, uint8 oracleDecimals) {
        if (oracle == address(0)) revert ZeroAddress();

        // latestRoundData(): (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
        (
            uint80 roundID,
            int256 answer,
            ,
            uint256 updatedAt,
            uint80 answeredInRound
        ) = AggregatorV3Interface(oracle).latestRoundData();

        if (answer <= 0) revert InvalidOraclePrice();
        if (answeredInRound < roundID) revert StaleOraclePrice();

        require(
            uint16(roundID >> 64) == uint16(answeredInRound >> 64),
            "Phase mismatch"
        );

        // prevent future timestamps ---
        require(
            updatedAt > 0 && updatedAt <= block.timestamp,
            "Invalid timestamp"
        );

        // Check freshness/stale window
        uint256 maxAge = staleWindow[oracle];

        oracleDecimals = AggregatorV3Interface(oracle).decimals();

        uint256 raw = uint256(answer);
        if (oracleDecimals < 18) {
            price18 = raw * (10 ** (18 - oracleDecimals));
        } else if (oracleDecimals > 18) {
            price18 = raw / (10 ** (oracleDecimals - 18));
        } else {
            price18 = raw;
        }

        address currentPhaseAggregator = AggregatorV3Interface(oracle)
            .aggregator();
        uint256 minPrice = AggregatorV3Interface(currentPhaseAggregator)
            .minAnswer();
        uint256 maxPrice = AggregatorV3Interface(currentPhaseAggregator)
            .maxAnswer();

        if (uint(price18) >= maxPrice || uint(price18) <= minPrice)
            revert PriceOutOfBound();

        if (maxAge > 0) {
            // if updatedAt is 0 (feed never updated), treat as stale
            if (updatedAt == 0) revert StaleOraclePrice();
            if (block.timestamp - updatedAt > maxAge) revert StaleOraclePrice();
        }
    }

    /**
     * @notice Override deposit to automatically deploy funds to strategies
     */
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares)
    {
        if (emergencyMode) revert EmergencyModeEnabled();
        if (depositsQuarantined) revert DepositsAreQuarantined();
        if (depositPauseStatus) revert DepositsArePaused();
        if (minDeposit > assets) revert MinDepositViolated();

        // Execute standard ERC4626 deposit
        shares = super.deposit(assets, receiver);
        // Transfer deposited assets to safe wallet
        IERC20(asset()).safeTransfer(safeWallet, assets);

        // Emit Deposit event along with current NAV
        emit DepositWithNAV(
            msg.sender,
            receiver,
            assets,
            shares,
            getCurrentNAV()
        );

        return shares;
    }

    // --- Helper Functions ---

    function _addAdapter(address _adapter) private {
        if (_adapter == address(0)) revert ZeroAddress();
        if (isAdapter[_adapter]) revert AdapterAlreadyExists();
        if (adapters.length >= maxAdapters) revert TooManyAdapters();

        // Check if adapter already exists
        for (uint i = 0; i < adapters.length; i++) {
            if (adapters[i] == _adapter) revert AdapterAlreadyExists();
        }

        adapters.push(_adapter);
        isAdapter[_adapter] = true;
        emit AdapterAdded(_adapter);
    }

    // --- Overrides ---
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    function totalSupply()
        public
        view
        override(ERC20, IERC20)
        returns (uint256)
    {
        return super.totalSupply() + virtualSharesBase;
    }

    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view virtual override returns (uint256) {
        uint256 assetDecimals = IERC20Metadata(asset()).decimals();
        uint256 precisionOffset = 18 > assetDecimals ? 18 - assetDecimals : 0;

        // Scale asset → 18 decimals
        uint256 scaledAssets = assets * (10 ** precisionOffset);

        address assetOracle = priceOracles[asset()];
        require(assetOracle != address(0), "Price oracle not set");
        (uint256 usdPrice18, ) = _getValidatedOraclePrice(assetOracle);

        // Convert scaled asset amount → USD value (18 decimals)
        uint256 usdValue18 = Math.mulDiv(scaledAssets, usdPrice18, 1e18, rounding);

        uint256 supply = totalSupply();

        // First mint → use INITIAL_NAV pricing
        if (supply == 0) {
            return Math.mulDiv(usdValue18, 1e18, INITIAL_NAV, rounding);
        }

        uint256 totalAssetsUSD = getTotalAssetsInUSD();

        // No NAV → no shares
        if (totalAssetsUSD == 0) {
            return 0;
        }

        // shares = (assetUSD * totalSupply) / totalAssetsUSD
        return Math.mulDiv(usdValue18, supply, totalAssetsUSD, rounding);
    }

    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view virtual override returns (uint256) {
        uint256 supply = totalSupply();
        uint256 assetDecimals = IERC20Metadata(asset()).decimals();
        uint256 precisionOffset = 18 > assetDecimals ? 18 - assetDecimals : 0;

        address oracle = priceOracles[asset()];
        require(oracle != address(0), "Price oracle not set");
        (uint256 usdPrice18, ) = _getValidatedOraclePrice(oracle);

        uint256 usdValue18;

        if (supply == 0) {
            // usdValue = shares * NAV
            usdValue18 = Math.mulDiv(shares, INITIAL_NAV, 1e18, rounding);
        } else {
            uint256 totalAssetsUSD = getTotalAssetsInUSD();
            if (totalAssetsUSD == 0) return 0;

            // usdValue = shares * totalAssetsUSD / supply
            usdValue18 = Math.mulDiv(shares, totalAssetsUSD, supply, rounding);
        }

        // Convert USD → 18-decimal asset amount:
        // asset18 = (usdValue * 1e18) / price
        uint256 assetAmount18 = Math.mulDiv(usdValue18, 1e18, usdPrice18, rounding);

        // Convert 18-decimal asset → actual asset decimals
        return assetAmount18 / (10 ** precisionOffset);
    }

    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override {
        // allow internal transfers into the vault when internalTransfer flag is set
        if (to == address(this) && !internalTransfer)
            revert CannotTransferToVault();
        super._update(from, to, value);
    }

    function setVirtualizationParams(
        uint256 _virtAssetsBase,
        uint256 _virtSharesBase
    ) external onlyOwner {
        require(!virtualizationConfigured, "Already configured");
        require(_virtAssetsBase > 0 && _virtSharesBase > 0, "Invalid params");

        virtualAssetsBase = _virtAssetsBase;
        virtualSharesBase = _virtSharesBase;
        virtualizationConfigured = true;

        emit VirtualizationConfigured(_virtAssetsBase, _virtSharesBase);
    }

    function sweepExtraUnderlyingToSafeWallet() external onlyOwner {
        IERC20 underlying = IERC20(asset());

        // 1) What is actually inside the vault?
        uint256 actualBal = underlying.balanceOf(address(this));

        // 2) Transfer surplus to safeWallet
        underlying.safeTransfer(safeWallet, actualBal);

        emit ExtraUnderlyingSwept(safeWallet, actualBal, block.timestamp);
    }
}
