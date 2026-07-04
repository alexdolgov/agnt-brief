// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {IRateProvider} from "./interfaces/IRateProvider.sol";
import {IRebalancer} from "./interfaces/IRebalancer.sol";
import {IBaseAssetNav} from "./interfaces/IBaseAssetNav.sol";

/// @title PSMVault
/// @notice Core Peg Stability Module vault. ERC-4626-inspired accounting with pmUSD as denomination.
/// @dev Accepts savings token deposits, processes one-way swaps (pmUSD → savingsToken), and implements drip-based
///      donation streaming. Mints its own ERC-20 share token. Deployed behind TransparentUpgradeableProxy.
///
///      Key deviations from ERC-4626:
///      - deposit() accepts savings token, NOT the declared asset (pmUSD).
///      - Standard deposit()/mint() for pmUSD are NOT implemented.
///      - withdraw()/redeem() return proportional multi-token output.
///      - Withdrawal requires a cooldown via requestExit().
contract PSMVault is
    Initializable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardTransient
{
    using SafeERC20 for IERC20;
    using Math for uint256;

    // ─── Constants ────────────────────────────────────────────────────────────

    /// @dev Decimal offset for inflation/donation attack protection (virtual shares).
    uint256 public constant VIRTUAL_SHARES = 1e8;

    /// @dev Decimal offset for inflation/donation attack protection (virtual assets).
    uint256 public constant VIRTUAL_ASSETS = 1e8;

    /// @dev Maximum withdrawal cooldown to prevent governance abuse.
    uint256 public constant MAX_WITHDRAW_DELAY = 30 days;

    /// @dev Maximum fee in basis points (100% = 10000 bps).
    uint256 public constant MAX_BPS = 10000;

    /// @dev Minimum swap fee (0.05% = 5 bps). Prevents zero-cost composition manipulation.
    uint256 public constant MIN_SWAP_FEE = 5;

    /// @dev Maximum swap fee (1% = 100 bps).
    uint256 public constant MAX_SWAP_FEE = 100;



    /// @dev Maximum withdrawal fee cap (20% = 2000 bps).
    uint256 public constant MAX_WITHDRAW_FEE_CAP = 2000;

    /// @dev Minimum donation amount to ensure dripRate > 0 (1 pmUSD).
    uint256 public constant MIN_DONATION = 1e18;

    // ─── Roles ────────────────────────────────────────────────────────────────

    bytes32 public constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");
    bytes32 public constant DONOR_ROLE = keccak256("DONOR_ROLE");
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    // ─── Immutable-like state (set once in initializer, no setter in v1) ─────

    /// @notice The base asset (pmUSD). Also the ERC-4626 asset() denomination.
    IERC20 public baseAsset;

    /// @notice The single accepted savings token (e.g., scrvUSD).
    IERC20 public savingsToken;

    /// @notice Cached decimals of the savings token.
    uint8 public savingsTokenDecimals;

    /// @notice Duration over which donated pmUSD is streamed into totalAssets().
    /// @dev Set in initializer, treated as immutable in v1.
    uint256 public DRIP_DURATION;

    // ─── Governance-configurable state ────────────────────────────────────────

    /// @notice Oracle contract for savings token → pmUSD conversion.
    IRateProvider public rateProvider;

    /// @notice Optional ERC-4626 module for base asset yield. address(0) if none.
    IERC4626 public baseAssetModule;

    /// @notice External rebalancer contract. address(0) to disable.
    IRebalancer public rebalancer;

    /// @notice Swap fee in basis points (e.g., 15 = 0.15%).
    uint256 public swapFee;



    /// @notice Minimum dynamic withdrawal fee in bps (healthy vault).
    uint256 public minWithdrawFee;

    /// @notice Maximum dynamic withdrawal fee in bps (stressed vault).
    uint256 public maxWithdrawFee;

    /// @notice Cooldown period in seconds for withdrawal requests.
    uint256 public withdrawTime;

    /// @notice Window in seconds after cooldown during which claim is valid.
    uint256 public withdrawTimeLimit;

    /// @notice Minimum pmUSD balance (excl. pendingRewards) to trigger rebalance.
    uint256 public rebalanceThreshold;

    /// @notice Minimum savings token reserve ratio (18 decimals). Below this, swaps pause.
    uint256 public reserveRatioFloor;

    /// @notice When true, checks pmUSD NAV before accepting pmUSD→savingsToken swaps.
    bool public circuitBreakerEnabled;

    /// @notice Minimum NAV value (18 decimals) below which pmUSD→savingsToken swaps revert.
    uint256 public navFloor;

    /// @notice Maximum savings token balance the vault will accept via deposit().
    /// @dev In savings token native decimals. type(uint256).max = no cap.
    uint256 public depositCap;

    // ─── Drip state ───────────────────────────────────────────────────────────

    /// @notice Donated pmUSD not yet revealed in totalAssets().
    uint256 public pendingRewards;

    /// @notice Tokens per second being revealed.
    uint256 public dripRate;

    /// @notice Last timestamp when accrue() was called.
    uint256 public lastAccrual;

    /// @notice Timestamp when current drip stream ends.
    uint256 public dripEnd;

    /// @notice Cumulative pmUSD donated. Informational only.
    uint256 public totalDonated;

    // ─── Withdrawal cooldown state ────────────────────────────────────────────

    struct RedeemRequest {
        uint256 shares;
        uint40 exitTime;
    }

    mapping(address => RedeemRequest) public redeemRequests;

    // ─── Events ───────────────────────────────────────────────────────────────

    /// @dev Curve StableSwap-NG TokenExchange signature for searcher/aggregator discovery.
    event TokenExchange(
        address indexed buyer,
        int128 sold_id,
        uint256 tokens_sold,
        int128 bought_id,
        uint256 tokens_bought
    );

    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);
    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );
    event ExitRequested(address indexed account, uint256 shares, uint40 exitTime);
    event ExitCancelled(address indexed account);
    event Donated(address indexed sender, uint256 amount, uint256 newDripRate, uint256 newDripEnd);
    event Accrued(uint256 unlockedAmount, uint256 newPendingRewards);
    event ModuleUpdated(address indexed oldModule, address indexed newModule);
    event RebalancerUpdated(address indexed oldRebalancer, address indexed newRebalancer);
    event RateProviderUpdated(address indexed oldProvider, address indexed newProvider);
    event FeesUpdated(uint256 swapFee, uint256 minWithdrawFee, uint256 maxWithdrawFee);
    event WithdrawTimersUpdated(uint256 withdrawTime, uint256 withdrawTimeLimit);
    /// @dev Signals that _rebalance() succeeded. The rebalancer contract emits granular amounts.
    event Rebalanced();
    event RebalanceFailed(uint256 pmUSDAmount);
    event CircuitBreakerUpdated(bool enabled, uint256 navFloor);
    event ReserveRatioFloorUpdated(uint256 newFloor);
    event RebalanceThresholdUpdated(uint256 newThreshold);
    event DeepRebalanced(uint256 moduleSharesRedeemed, uint256 pmUSDRetrieved);
    event DepositCapUpdated(uint256 newCap);


    // ─── Errors ───────────────────────────────────────────────────────────────

    error ZeroAddress();
    error ZeroAmount();
    error SlippageExceeded();
    error InsufficientReserves();
    error ReserveRatioBelowFloor();
    error NavBelowFloor();
    error InvalidTokenPair();
    error WithdrawNotReady();
    error WithdrawWindowExpired();
    error InsufficientLockedShares();
    error NoExitRequest();
    error ExitAlreadyPending();
    error InsufficientBalance();
    error InvalidFeeConfiguration();
    error WithdrawDelayTooLong();
    error InvalidDripDuration();
    error RateProviderMismatch();
    error ModuleAssetMismatch();
    error DepositCapExceeded();
    error DonationTooSmall();
    error BelowRebalanceThreshold();

    // ─── Storage gap for upgradeability ───────────────────────────────────────

    uint256[50] private __gap;

    // ─── Init params struct (avoids stack too deep) ─────────────────────────

    struct InitParams {
        address baseAsset;
        address savingsToken;
        address rateProvider;
        uint256 dripDuration;
        uint256 swapFee;
        uint256 minWithdrawFee;
        uint256 maxWithdrawFee;
        uint256 withdrawTime;
        uint256 withdrawTimeLimit;
        address admin;
        address governance;
        string shareName;
        string shareSymbol;
    }

    // ─── Initializer ──────────────────────────────────────────────────────────

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the vault. Called once via the proxy.
    function initialize(InitParams calldata p) external initializer {
        if (p.baseAsset == address(0)) revert ZeroAddress();
        if (p.savingsToken == address(0)) revert ZeroAddress();
        if (p.rateProvider == address(0)) revert ZeroAddress();
        if (p.admin == address(0)) revert ZeroAddress();
        if (p.governance == address(0)) revert ZeroAddress();
        if (p.dripDuration == 0) revert InvalidDripDuration();
        if (p.minWithdrawFee > p.maxWithdrawFee) revert InvalidFeeConfiguration();
        if (p.swapFee < MIN_SWAP_FEE || p.swapFee > MAX_SWAP_FEE) revert InvalidFeeConfiguration();
        if (p.maxWithdrawFee > MAX_WITHDRAW_FEE_CAP) revert InvalidFeeConfiguration();
        if (p.withdrawTime > MAX_WITHDRAW_DELAY) revert WithdrawDelayTooLong();

        __ERC20_init(p.shareName, p.shareSymbol);
        __AccessControl_init();
        __Pausable_init();

        // Validate rateProvider token configuration matches
        IRateProvider _rateProvider = IRateProvider(p.rateProvider);
        if (_rateProvider.baseAsset() != p.baseAsset) revert RateProviderMismatch();
        if (_rateProvider.savingsToken() != p.savingsToken) revert RateProviderMismatch();

        baseAsset = IERC20(p.baseAsset);
        savingsToken = IERC20(p.savingsToken);
        savingsTokenDecimals = IERC20Metadata(p.savingsToken).decimals();
        rateProvider = _rateProvider;
        DRIP_DURATION = p.dripDuration;

        swapFee = p.swapFee;
        minWithdrawFee = p.minWithdrawFee;
        maxWithdrawFee = p.maxWithdrawFee;
        withdrawTime = p.withdrawTime;
        withdrawTimeLimit = p.withdrawTimeLimit;
        depositCap = type(uint256).max;

        lastAccrual = block.timestamp;

        _grantRole(DEFAULT_ADMIN_ROLE, p.admin);
        _grantRole(GOVERNANCE_ROLE, p.governance);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ERC-4626-style view functions
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Returns the base asset (pmUSD) address.
    function asset() external view returns (address) {
        return address(baseAsset);
    }

    /// @notice Total assets under management, denominated in pmUSD (18 decimals).
    /// @dev Computed live. Drip is applied virtually (no state mutation).
    function totalAssets() public view returns (uint256) {
        uint256 pending = _pendingRewardsVirtual();

        // Base asset: balanceOf minus hidden donations
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 baseAssetValue = baseBalance > pending ? baseBalance - pending : 0;

        // Module position (if active)
        uint256 moduleValue = 0;
        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                moduleValue = baseAssetModule.convertToAssets(moduleShares);
            }
        }

        // Savings token valued in pmUSD terms
        uint256 savingsBalance = savingsToken.balanceOf(address(this));
        uint256 savingsValue = 0;
        if (savingsBalance > 0) {
            savingsValue = Math.mulDiv(
                savingsBalance,
                rateProvider.getRate(address(savingsToken)),
                10 ** savingsTokenDecimals,
                Math.Rounding.Floor
            );
        }

        return baseAssetValue + moduleValue + savingsValue;
    }

    /// @notice Convert pmUSD assets to shares (rounds DOWN — favor vault on deposits).
    function convertToShares(uint256 assets) public view returns (uint256) {
        return Math.mulDiv(assets, totalSupply() + VIRTUAL_SHARES, totalAssets() + VIRTUAL_ASSETS, Math.Rounding.Floor);
    }

    /// @notice Convert shares to pmUSD assets (rounds DOWN — favor vault on redemptions).
    function convertToAssets(uint256 shares) public view returns (uint256) {
        return Math.mulDiv(shares, totalAssets() + VIRTUAL_ASSETS, totalSupply() + VIRTUAL_SHARES, Math.Rounding.Floor);
    }

    /// @dev Convert assets to shares, rounding UP (used for withdraw → shares burned).
    function _convertToSharesRoundUp(uint256 assets) internal view returns (uint256) {
        return Math.mulDiv(assets, totalSupply() + VIRTUAL_SHARES, totalAssets() + VIRTUAL_ASSETS, Math.Rounding.Ceil);
    }

    /// @dev Convert shares to assets, rounding UP.
    function _convertToAssetsRoundUp(uint256 shares) internal view returns (uint256) {
        return Math.mulDiv(shares, totalAssets() + VIRTUAL_ASSETS, totalSupply() + VIRTUAL_SHARES, Math.Rounding.Ceil);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Drip mechanism
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Settle the drip stream. Called at the start of every state-changing function.
    /// @dev Decrements pendingRewards based on elapsed time × dripRate, revealing
    ///      donated pmUSD in totalAssets(). Safe to call when paused.
    ///
    ///      When the stream is fully vested (current >= dripEnd), pendingRewards is zeroed
    ///      directly instead of computing dripRate × elapsed. This recovers integer truncation
    ///      dust (up to DRIP_DURATION - 1 wei) that would otherwise stay in pendingRewards
    ///      and be subtracted from totalAssets() indefinitely.
    function accrue() public {
        uint256 current = block.timestamp;
        if (current <= lastAccrual) return;

        uint256 _pendingRewards = pendingRewards;
        if (_pendingRewards == 0) {
            lastAccrual = current;
            return;
        }

        uint256 end = dripEnd;

        if (current >= end) {
            // Stream fully vested — zero out to recover integer truncation dust
            pendingRewards = 0;
            lastAccrual = current;
            if (_pendingRewards > 0) {
                emit Accrued(_pendingRewards, 0);
            }
            return;
        }

        uint256 timeDelta = current - lastAccrual;
        uint256 unlocked = timeDelta * dripRate;
        if (unlocked > _pendingRewards) {
            unlocked = _pendingRewards;
        }

        pendingRewards = _pendingRewards - unlocked;
        lastAccrual = current;

        if (unlocked > 0) {
            emit Accrued(unlocked, pendingRewards);
        }
    }

    /// @dev Compute pendingRewards virtually (for view functions) without modifying state.
    function _pendingRewardsVirtual() internal view returns (uint256) {
        uint256 _pendingRewards = pendingRewards;
        if (_pendingRewards == 0 || block.timestamp <= lastAccrual) {
            return _pendingRewards;
        }

        if (block.timestamp >= dripEnd) return 0;

        uint256 timeDelta = block.timestamp - lastAccrual;
        uint256 unlocked = timeDelta * dripRate;
        return _pendingRewards > unlocked ? _pendingRewards - unlocked : 0;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Deposit (savings token only)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Deposit savings token and receive vault shares.
    /// @param savingsAmount Amount of savings token to deposit (in its native decimals).
    /// @param minSharesOut Minimum shares to receive (slippage protection).
    /// @param receiver Address to receive minted shares.
    /// @return sharesOut Number of shares minted.
    function deposit(
        uint256 savingsAmount,
        uint256 minSharesOut,
        address receiver
    ) external nonReentrant whenNotPaused returns (uint256 sharesOut) {
        if (savingsAmount == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        // Check deposit cap (savings token native decimals)
        if (savingsToken.balanceOf(address(this)) + savingsAmount > depositCap) revert DepositCapExceeded();

        accrue();

        // Convert savings amount to pmUSD-equivalent value
        uint256 pmUSDValue = Math.mulDiv(
            savingsAmount,
            rateProvider.getRate(address(savingsToken)),
            10 ** savingsTokenDecimals,
            Math.Rounding.Floor
        );

        // Compute shares BEFORE transfer so totalAssets() reflects pre-deposit state
        sharesOut = convertToShares(pmUSDValue);
        if (sharesOut < minSharesOut) revert SlippageExceeded();

        // Transfer savings token in (no fee-on-transfer — tokens are trusted)
        savingsToken.safeTransferFrom(msg.sender, address(this), savingsAmount);

        _mint(receiver, sharesOut);

        emit Deposit(msg.sender, receiver, pmUSDValue, sharesOut);

        _rebalance();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Swap (one-way: baseAsset → savingsToken)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Swap base asset (pmUSD) → savings token. One-way only; reverse direction reverts.
    /// @param tokenIn Address of the input token.
    /// @param tokenOut Address of the output token.
    /// @param amountIn Amount of input token.
    /// @param minAmountOut Minimum output (slippage protection).
    /// @param receiver Address to receive output tokens.
    /// @return amountOut Amount of output tokens sent.
    function swap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 minAmountOut,
        address receiver
    ) external nonReentrant whenNotPaused returns (uint256 amountOut) {
        if (amountIn == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        accrue();

        address _baseAsset = address(baseAsset);
        address _savingsToken = address(savingsToken);

        if (tokenIn == _baseAsset && tokenOut == _savingsToken) {
            amountOut = _swapBaseToSavings(amountIn, receiver);
            emit TokenExchange(msg.sender, 0, amountIn, 1, amountOut);
        } else {
            revert InvalidTokenPair();
        }

        if (amountOut < minAmountOut) revert SlippageExceeded();
    }

    /// @dev Direction 1: baseAsset → savingsToken (peg restoration path).
    function _swapBaseToSavings(uint256 amountIn, address receiver) internal returns (uint256 amountOut) {
        // NAV circuit breaker — check BEFORE any state changes
        if (circuitBreakerEnabled) {
            uint256 nav = IBaseAssetNav(address(baseAsset)).getNav(0);
            if (nav < navFloor) revert NavBelowFloor();
        }

        // Transfer pmUSD in
        baseAsset.safeTransferFrom(msg.sender, address(this), amountIn);

        // Apply swap fee — fee rounds UP, amountInAfterFee rounds DOWN
        uint256 fee = Math.mulDiv(amountIn, swapFee, MAX_BPS, Math.Rounding.Ceil);
        uint256 amountInAfterFee = amountIn - fee;

        // Convert pmUSD value to savings token amount
        // getRateRoundUp in denominator: higher rate = fewer savings tokens out = vault benefits
        uint256 rateUp = rateProvider.getRateRoundUp(address(savingsToken));
        amountOut = Math.mulDiv(amountInAfterFee, 10 ** savingsTokenDecimals, rateUp, Math.Rounding.Floor);

        // Check sufficient reserves
        if (amountOut > savingsToken.balanceOf(address(this))) revert InsufficientReserves();

        // Reserve ratio circuit breaker — check AFTER computing output
        _checkReserveRatio(amountOut);

        // Transfer savings token out
        savingsToken.safeTransfer(receiver, amountOut);

        // Post-action rebalance
        _rebalance();
    }


    /// @dev Check that savings token reserve ratio stays above floor after removing `amountOut`.
    ///      Computes the true post-swap totalAssets rather than calling totalAssets() which would
    ///      include the outgoing savings tokens (not yet transferred at this point in execution).
    ///      All valuations use Floor rounding — conservative valuation favors the system by
    ///      producing a lower ratio, making it harder to pass the check.
    function _checkReserveRatio(uint256 savingsTokenOut) internal view {
        if (reserveRatioFloor == 0) return;

        uint256 remainingSavings = savingsToken.balanceOf(address(this)) - savingsTokenOut;
        uint256 remainingSavingsValue = Math.mulDiv(
            remainingSavings,
            rateProvider.getRate(address(savingsToken)),
            10 ** savingsTokenDecimals,
            Math.Rounding.Floor
        );

        // Compute post-swap base asset value (pmUSD already transferred in at this point)
        uint256 pending = _pendingRewardsVirtual();
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 baseValue = baseBalance > pending ? baseBalance - pending : 0;

        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                baseValue += baseAssetModule.convertToAssets(moduleShares);
            }
        }

        // True post-swap total: base asset (with new pmUSD) + remaining savings (after outflow)
        uint256 postSwapTotal = baseValue + remainingSavingsValue;
        if (postSwapTotal == 0) return;

        // reserveRatioFloor is in 18 decimals (e.g., 0.20e18 = 20%)
        // Check: remainingSavingsValue / postSwapTotal >= reserveRatioFloor / 1e18
        // Rewritten to avoid division: remainingSavingsValue * 1e18 >= reserveRatioFloor * postSwapTotal
        if (remainingSavingsValue * 1e18 < reserveRatioFloor * postSwapTotal) {
            revert ReserveRatioBelowFloor();
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Withdrawal cooldown
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Request withdrawal. Locks shares in the vault and starts cooldown.
    /// @param shares Number of shares the user intends to redeem.
    function requestExit(uint256 shares) external nonReentrant whenNotPaused {
        if (shares == 0) revert ZeroAmount();
        if (balanceOf(msg.sender) < shares) revert InsufficientBalance();

        accrue();

        // Revert if user already has a pending request — must cancel first
        RedeemRequest storage req = redeemRequests[msg.sender];
        if (req.shares > 0) revert ExitAlreadyPending();

        uint40 exitTime = uint40(block.timestamp + withdrawTime);
        req.shares = shares;
        req.exitTime = exitTime;

        // Lock shares in the vault — prevents transfer/sale during cooldown
        _transfer(msg.sender, address(this), shares);

        emit ExitRequested(msg.sender, shares, exitTime);
    }

    /// @notice Cancel a pending exit request. Returns locked shares to the user.
    function cancelExit() external nonReentrant {
        // Callable even when paused
        RedeemRequest storage req = redeemRequests[msg.sender];
        if (req.shares == 0) revert NoExitRequest();

        uint256 lockedShares = req.shares;
        delete redeemRequests[msg.sender];

        // Return locked shares to user
        _transfer(address(this), msg.sender, lockedShares);

        emit ExitCancelled(msg.sender);
    }

    /// @dev Check withdrawal readiness.
    function _checkWithdrawReady(address account) internal view {
        uint256 exitTime = redeemRequests[account].exitTime;
        if (exitTime == 0 || block.timestamp < exitTime) revert WithdrawNotReady();
        if (block.timestamp >= exitTime + withdrawTimeLimit) revert WithdrawWindowExpired();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Redeem & Withdraw
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Redeem shares for proportional assets. User specifies shares to burn.
    /// @param shares Number of shares to burn.
    /// @param receiver Address to receive assets.
    /// @param minAssetsOut Minimum pmUSD-equivalent value to receive after fee. Reverts if net entitlement is below this. Pass 0 to skip.
    /// @return moduleTokenOut Amount of module shares sent (0 if no module).
    /// @return baseAssetOut Amount of raw pmUSD sent (0 if module covered everything).
    /// @return savingsTokenOut Amount of savings token sent.
    function redeem(
        uint256 shares,
        address receiver,
        uint256 minAssetsOut
    ) external nonReentrant whenNotPaused returns (uint256 moduleTokenOut, uint256 baseAssetOut, uint256 savingsTokenOut) {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        accrue();
        _checkWithdrawReady(msg.sender);

        RedeemRequest storage req = redeemRequests[msg.sender];
        if (shares > req.shares) revert InsufficientLockedShares();

        // pmUSD entitlement — rounds DOWN
        uint256 pmUSDEntitlement = convertToAssets(shares);

        // Dynamic withdrawal fee — rounds UP
        uint256 feeBps = _computeWithdrawFee();
        uint256 feeAmount = Math.mulDiv(pmUSDEntitlement, feeBps, MAX_BPS, Math.Rounding.Ceil);
        uint256 entitlementAfterFee = pmUSDEntitlement - feeAmount;

        // Slippage protection — revert if net entitlement is below caller's minimum
        if (entitlementAfterFee < minAssetsOut) revert SlippageExceeded();

        // Burn the redeemed shares from the vault
        _burn(address(this), shares);

        // clear the request. 
        if (req.shares > shares) {
            _transfer(address(this), msg.sender, req.shares - shares);
        }
        delete redeemRequests[msg.sender];

        // Proportional distribution
        (moduleTokenOut, baseAssetOut, savingsTokenOut) = _distributeProportional(entitlementAfterFee, receiver);

        emit Withdraw(msg.sender, receiver, msg.sender, entitlementAfterFee, shares);
    }

    /// @notice Withdraw exact pmUSD worth of assets. User specifies net assets to receive.
    /// @param assets pmUSD worth of assets to receive (after fee).
    /// @param receiver Address to receive assets.
    /// @param maxSharesBurned Maximum shares the caller is willing to burn. Reverts if sharesNeeded exceeds this. Pass type(uint256).max to skip.
    /// @return moduleTokenOut Amount of module shares sent (0 if no module).
    /// @return baseAssetOut Amount of raw pmUSD sent (0 if module covered everything).
    /// @return savingsTokenOut Amount of savings token sent.
    function withdraw(
        uint256 assets,
        address receiver,
        uint256 maxSharesBurned
    ) external nonReentrant whenNotPaused returns (uint256 moduleTokenOut, uint256 baseAssetOut, uint256 savingsTokenOut) {
        if (assets == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        accrue();
        _checkWithdrawReady(msg.sender);

        // Compute gross assets (before fee) — rounds UP (user pays more)
        uint256 feeBps = _computeWithdrawFee();
        uint256 grossAssets = Math.mulDiv(assets, MAX_BPS, MAX_BPS - feeBps, Math.Rounding.Ceil);

        // Shares needed — rounds UP (more shares burned)
        uint256 sharesNeeded = _convertToSharesRoundUp(grossAssets);

        // Slippage protection — revert if shares cost exceeds caller's maximum
        if (sharesNeeded > maxSharesBurned) revert SlippageExceeded();

        RedeemRequest storage req = redeemRequests[msg.sender];
        if (sharesNeeded > req.shares) revert InsufficientLockedShares();

        // Burn the needed shares from the vault
        _burn(address(this), sharesNeeded);

        // clear the request. 
        if (req.shares > sharesNeeded) {
            _transfer(address(this), msg.sender, req.shares - sharesNeeded);
        }
        delete redeemRequests[msg.sender];

        // Proportional distribution — `assets` is the net entitlement after fee
        (moduleTokenOut, baseAssetOut, savingsTokenOut) = _distributeProportional(assets, receiver);

        emit Withdraw(msg.sender, receiver, msg.sender, assets, sharesNeeded);
    }

    /// @dev Distribute entitlement proportionally based on vault composition.
    ///      Uses subtraction pattern to prevent sum > entitlement.
    ///      When a module is active, the base asset portion may be split between module shares
    ///      and raw pmUSD if the module cannot cover the full entitlement.
    function _distributeProportional(
        uint256 entitlementAfterFee,
        address receiver
    ) internal returns (uint256 moduleTokenOut, uint256 baseAssetOut, uint256 savingsTokenOut) {
        if (entitlementAfterFee == 0) return (0, 0, 0);

        // Compute current composition in pmUSD terms
        uint256 pending = _pendingRewardsVirtual();
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 baseAssetPmUSD = baseBalance > pending ? baseBalance - pending : 0;

        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                baseAssetPmUSD += baseAssetModule.convertToAssets(moduleShares);
            }
        }

        uint256 savingsBalance = savingsToken.balanceOf(address(this));
        uint256 savingsPmUSD = 0;
        if (savingsBalance > 0) {
            savingsPmUSD = Math.mulDiv(
                savingsBalance,
                rateProvider.getRate(address(savingsToken)),
                10 ** savingsTokenDecimals,
                Math.Rounding.Floor
            );
        }

        uint256 totalPmUSD = baseAssetPmUSD + savingsPmUSD;
        if (totalPmUSD == 0) return (0, 0, 0);

        // Savings token portion — computed first, rounded DOWN
        uint256 savingsValuePmUSD = Math.mulDiv(entitlementAfterFee, savingsPmUSD, totalPmUSD, Math.Rounding.Floor);

        // Base asset portion — derived by subtraction (prevents sum > entitlement)
        uint256 baseAssetValuePmUSD = entitlementAfterFee - savingsValuePmUSD;

        // Convert savings pmUSD value to actual savings token amount
        // getRateRoundUp in denominator: higher rate = fewer tokens out
        if (savingsValuePmUSD > 0) {
            savingsTokenOut = Math.mulDiv(
                savingsValuePmUSD,
                10 ** savingsTokenDecimals,
                rateProvider.getRateRoundUp(address(savingsToken)),
                Math.Rounding.Floor
            );
            if (savingsTokenOut > 0) {
                savingsToken.safeTransfer(receiver, savingsTokenOut);
            }
        }

        // Send base asset portion (module shares + raw pmUSD if module can't cover all)
        if (baseAssetValuePmUSD > 0) {
            (moduleTokenOut, baseAssetOut) = _sendBaseAsset(receiver, baseAssetValuePmUSD);
        }
    }

    /// @dev Send base asset to receiver. If module is active, sends module shares first; any
    ///      portion the module cannot cover (raw pmUSD in vault) is sent as raw pmUSD.
    /// @return moduleTokenSent Module shares transferred (0 if no module or module empty).
    /// @return baseAssetSent  Raw pmUSD transferred (0 if module covered everything).
    function _sendBaseAsset(
        address receiver,
        uint256 pmUSDAmount
    ) internal returns (uint256 moduleTokenSent, uint256 baseAssetSent) {
        if (address(baseAssetModule) != address(0)) {
            uint256 moduleSharesBal = IERC20(address(baseAssetModule)).balanceOf(address(this));

            if (moduleSharesBal > 0) {
                // How many module shares cover the full pmUSD entitlement — Floor (user gets fewer)
                uint256 sharesToSend = baseAssetModule.convertToShares(pmUSDAmount);

                if (sharesToSend == 0) {
                    // Share price too high for this amount — fallback to raw pmUSD
                    baseAssetSent = pmUSDAmount;
                } else if (sharesToSend <= moduleSharesBal) {
                    // Module covers full entitlement
                    moduleTokenSent = sharesToSend;
                } else {
                    // Module can't cover — send all available module shares + raw pmUSD remainder.
                    // coveredValue uses Floor (vault-favorable: attributes less to module, so remainder
                    // is at most 1 wei larger than the "true" remainder — acceptable in degraded state).
                    moduleTokenSent = moduleSharesBal;
                    uint256 coveredValue = baseAssetModule.convertToAssets(moduleSharesBal);
                    baseAssetSent = pmUSDAmount > coveredValue ? pmUSDAmount - coveredValue : 0;
                }
            } else {
                // No module shares available — all raw pmUSD
                baseAssetSent = pmUSDAmount;
            }

            if (moduleTokenSent > 0) {
                IERC20(address(baseAssetModule)).safeTransfer(receiver, moduleTokenSent);
            }
            if (baseAssetSent > 0) {
                baseAsset.safeTransfer(receiver, baseAssetSent);
            }
        } else {
            // No module — raw pmUSD, 1:1
            baseAssetSent = pmUSDAmount;
            if (baseAssetSent > 0) {
                baseAsset.safeTransfer(receiver, baseAssetSent);
            }
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Dynamic withdrawal fee
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Compute the dynamic withdrawal fee based on current vault composition.
    /// @return feeBps The fee in basis points.
    function computeWithdrawFee() external view returns (uint256) {
        return _computeWithdrawFee();
    }

    /// @dev feeBps = minWithdrawFee + (pmUSDValue / totalAssets) * (maxWithdrawFee - minWithdrawFee)
    function _computeWithdrawFee() internal view returns (uint256 feeBps) {
        uint256 _totalAssets = totalAssets();
        if (_totalAssets == 0) return minWithdrawFee;

        uint256 pending = _pendingRewardsVirtual();
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 pmUSDValue = baseBalance > pending ? baseBalance - pending : 0;

        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                pmUSDValue += baseAssetModule.convertToAssets(moduleShares);
            }
        }

        uint256 range = maxWithdrawFee - minWithdrawFee;
        feeBps = minWithdrawFee + Math.mulDiv(pmUSDValue, range, _totalAssets, Math.Rounding.Ceil);

        // Clamp to maxWithdrawFee as safety
        if (feeBps > maxWithdrawFee) feeBps = maxWithdrawFee;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Donate (drip-streamed value accrual)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Donate base asset (pmUSD) into the vault. No shares minted.
    ///         Value streams into totalAssets() over DRIP_DURATION.
    /// @param amount Amount of pmUSD to donate.
    function donate(uint256 amount) external nonReentrant whenNotPaused onlyRole(DONOR_ROLE) {
        if (amount < MIN_DONATION) revert DonationTooSmall();
        if (totalSupply() == 0) revert ZeroAmount(); // No real shareholders to receive drip

        accrue();

        baseAsset.safeTransferFrom(msg.sender, address(this), amount);

        totalDonated += amount;

        // Combine remaining stream with new donation
        uint256 remaining;
        if (block.timestamp < dripEnd) {
            remaining = pendingRewards;
        }

        uint256 newTotal = remaining + amount;

        dripRate = newTotal / DRIP_DURATION;
        pendingRewards = newTotal;
        dripEnd = block.timestamp + DRIP_DURATION;
        lastAccrual = block.timestamp;

        emit Donated(msg.sender, amount, dripRate, dripEnd);

        _rebalance();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Rebalance
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Called at end of actions that increase pmUSD balance (deposit, swap dir 1, donate).
    ///      Order: rebalancer first (pmUSD → savings token), then module deposit (park remainder).
    ///
    ///      IMPORTANT: accrue() MUST be called before _rebalance() in every code path. This function
    ///      reads `pendingRewards` directly from storage (not _pendingRewardsVirtual()) to avoid
    ///      redundant computation. If accrue() has not been called first, `pendingRewards` will be
    ///      stale and the pmUSD available for rebalancing will be miscalculated — potentially
    ///      sending drip-locked pmUSD to the rebalancer or module prematurely. Gas saving.
    ///
    ///      The rebalancer is a trusted, governance-set protocol contract that simply swaps pmUSD
    ///      to savings token and sends it back. Slippage protection is enforced inside the rebalancer
    ///      itself — no output validation here to keep gas minimal. The try/catch ensures a rebalancer
    ///      revert (e.g. slippage exceeded) does not brick the caller's transaction.
    function _rebalance() internal {
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 pending = pendingRewards; // Use storage value (accrue already called)
        uint256 pmUSDBalance = baseBalance > pending ? baseBalance - pending : 0;

        // Step 1-3: Rebalancer
        if (pmUSDBalance >= rebalanceThreshold && address(rebalancer) != address(0)) {
            // Approve rebalancer to pull pmUSD
            baseAsset.forceApprove(address(rebalancer), pmUSDBalance);

            try rebalancer.rebalance(pmUSDBalance) {
                emit Rebalanced();
            } catch {
                emit RebalanceFailed(pmUSDBalance);
            }

            // Revoke any leftover approval
            baseAsset.forceApprove(address(rebalancer), 0);
        }

        // Step 4-5: Deposit remaining pmUSD into module (capped by module's maxDeposit).
        baseBalance = baseAsset.balanceOf(address(this));
        pmUSDBalance = baseBalance > pending ? baseBalance - pending : 0;

        if (pmUSDBalance > 0 && address(baseAssetModule) != address(0)) {
            uint256 maxDep = baseAssetModule.maxDeposit(address(this));
            uint256 toDeposit = pmUSDBalance > maxDep ? maxDep : pmUSDBalance;
            if (toDeposit > 0) {
                baseAsset.forceApprove(address(baseAssetModule), toDeposit);
                baseAssetModule.deposit(toDeposit, address(this));
                baseAsset.forceApprove(address(baseAssetModule), 0);
            }
        }
    }

    /// @notice Pull pmUSD from the base asset module and attempt to rebalance into savings token.
    /// @dev Originally planned for v2 (see spec §12b "Deep Rebalance") but included in v1 since the
    ///      implementation is minimal and reuses existing _rebalance() logic with no core changes.
    ///
    ///      If the rebalancer cannot swap (slippage too high), the pmUSD goes back into the module
    ///      via _rebalance(). Each failed round-trip costs up to 2 wei of rounding dust — negligible.
    ///
    ///      **Keeper integration**: This function is governance/operator-gated, so the rebalancer contract itself
    ///      cannot call it. Instead, an off-chain bot/keeper should monitor Curve pool conditions
    ///      (depth, spread, slippage) and trigger deepRebalance when conversion is profitable. All
    ///      slippage checks and swap logic are enforced inside the rebalancer module — this function
    ///      only handles the redeem-from-module → _rebalance() → park-remainder flow.
    /// @param moduleSharesAmount Number of module shares to redeem.
    function deepRebalance(uint256 moduleSharesAmount) external nonReentrant {
        if (!hasRole(GOVERNANCE_ROLE, msg.sender) && !hasRole(OPERATOR_ROLE, msg.sender)) {
            revert AccessControlUnauthorizedAccount(msg.sender, OPERATOR_ROLE);
        }
        if (moduleSharesAmount == 0) revert ZeroAmount();
        if (address(baseAssetModule) == address(0)) revert ZeroAddress();
        if (address(rebalancer) == address(0)) revert ZeroAddress();

        accrue();

        uint256 moduleSharesBal = IERC20(address(baseAssetModule)).balanceOf(address(this));
        if (moduleSharesAmount > moduleSharesBal) {
            moduleSharesAmount = moduleSharesBal;
        }

        // Redeemed pmUSD + any existing vault pmUSD must meet threshold
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 pending = pendingRewards;
        uint256 preRedeemPmUSD = baseBalance > pending ? baseBalance - pending : 0;
        uint256 redeemableValue = baseAssetModule.previewRedeem(moduleSharesAmount);
        if (preRedeemPmUSD + redeemableValue < rebalanceThreshold) revert BelowRebalanceThreshold();

        // Pull pmUSD from module — rounds DOWN (up to 1 wei dust stays in module)
        uint256 pmUSDReceived = baseAssetModule.redeem(moduleSharesAmount, address(this), address(this));

        // Run normal rebalance — tries to swap pmUSD to savings token,
        // parks any unswapped remainder back in module (another 1 wei dust possible)
        _rebalance();

        emit DeepRebalanced(moduleSharesAmount, pmUSDReceived);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Governance setters
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Set or update the base asset module (ERC-4626).
    function setBaseAssetModule(address _module) external nonReentrant onlyRole(GOVERNANCE_ROLE) {
        accrue();

        address oldModule = address(baseAssetModule);

        // Withdraw everything from old module and revoke lingering approval.
        // NOTE: We intentionally allow redeem() to revert here. All shares MUST be
        // redeemed — there is no fallback path. If shares remain stuck in the old module,
        // they continue contributing to totalAssets() (via convertToAssets) while the vault
        // can no longer manage them, causing permanent accounting distortion.
        if (oldModule != address(0)) {
            baseAsset.forceApprove(oldModule, 0);
            uint256 moduleShares = IERC20(oldModule).balanceOf(address(this));
            if (moduleShares > 0) {
                IERC4626(oldModule).redeem(moduleShares, address(this), address(this));
            }
        }

        // Validate module's underlying asset matches baseAsset
        if (_module != address(0)) {
            if (IERC4626(_module).asset() != address(baseAsset)) revert ModuleAssetMismatch();
        }

        baseAssetModule = IERC4626(_module);

        // Deposit available base asset into new module (capped by module's maxDeposit)
        if (_module != address(0)) {
            uint256 baseBalance = baseAsset.balanceOf(address(this));
            uint256 pending = pendingRewards;
            uint256 available = baseBalance > pending ? baseBalance - pending : 0;
            if (available > 0) {
                uint256 maxDep = IERC4626(_module).maxDeposit(address(this));
                uint256 toDeposit = available > maxDep ? maxDep : available;
                if (toDeposit > 0) {
                    baseAsset.forceApprove(_module, toDeposit);
                    IERC4626(_module).deposit(toDeposit, address(this));
                    baseAsset.forceApprove(_module, 0);
                }
            }
        }

        emit ModuleUpdated(oldModule, _module);
    }

    /// @notice Set or update the rebalancer contract.
    function setRebalancer(address _rebalancer) external onlyRole(GOVERNANCE_ROLE) {
        address old = address(rebalancer);

        // Revoke old approval
        if (old != address(0)) {
            baseAsset.forceApprove(old, 0);
        }

        rebalancer = IRebalancer(_rebalancer);

        emit RebalancerUpdated(old, _rebalancer);
    }

    /// @notice Update the rate provider. Validates token configuration matches.
    function setRateProvider(address _rateProvider) external onlyRole(GOVERNANCE_ROLE) {
        if (_rateProvider == address(0)) revert ZeroAddress();
        IRateProvider newProvider = IRateProvider(_rateProvider);
        if (newProvider.baseAsset() != address(baseAsset)) revert RateProviderMismatch();
        if (newProvider.savingsToken() != address(savingsToken)) revert RateProviderMismatch();
        address old = address(rateProvider);
        rateProvider = newProvider;
        emit RateProviderUpdated(old, _rateProvider);
    }

    /// @notice Update fee parameters.
    function setFees(
        uint256 _swapFee,
        uint256 _minWithdrawFee,
        uint256 _maxWithdrawFee
    ) external onlyRole(GOVERNANCE_ROLE) {
        if (_swapFee < MIN_SWAP_FEE || _swapFee > MAX_SWAP_FEE) revert InvalidFeeConfiguration();
        if (_minWithdrawFee > _maxWithdrawFee) revert InvalidFeeConfiguration();
        if (_maxWithdrawFee > MAX_WITHDRAW_FEE_CAP) revert InvalidFeeConfiguration();

        swapFee = _swapFee;
        minWithdrawFee = _minWithdrawFee;
        maxWithdrawFee = _maxWithdrawFee;

        emit FeesUpdated(_swapFee, _minWithdrawFee, _maxWithdrawFee);
    }

    /// @notice Update withdrawal cooldown timers.
    function setWithdrawTimers(uint256 _withdrawTime, uint256 _withdrawTimeLimit) external onlyRole(GOVERNANCE_ROLE) {
        if (_withdrawTime > MAX_WITHDRAW_DELAY) revert WithdrawDelayTooLong();

        withdrawTime = _withdrawTime;
        withdrawTimeLimit = _withdrawTimeLimit;

        emit WithdrawTimersUpdated(_withdrawTime, _withdrawTimeLimit);
    }


    /// @notice Enable/disable NAV circuit breaker and set floor.
    function setCircuitBreaker(bool _enabled, uint256 _navFloor) external onlyRole(GOVERNANCE_ROLE) {
        circuitBreakerEnabled = _enabled;
        navFloor = _navFloor;

        emit CircuitBreakerUpdated(_enabled, _navFloor);
    }

    /// @notice Set the minimum savings token reserve ratio.
    function setReserveRatioFloor(uint256 _floor) external onlyRole(GOVERNANCE_ROLE) {
        reserveRatioFloor = _floor;
        emit ReserveRatioFloorUpdated(_floor);
    }

    /// @notice Set the rebalance threshold.
    function setRebalanceThreshold(uint256 _threshold) external onlyRole(GOVERNANCE_ROLE) {
        rebalanceThreshold = _threshold;
        emit RebalanceThresholdUpdated(_threshold);
    }

    /// @notice Set the deposit cap (savings token native decimals). type(uint256).max = no cap.
    function setDepositCap(uint256 _cap) external onlyRole(GOVERNANCE_ROLE) {
        depositCap = _cap;
        emit DepositCapUpdated(_cap);
    }

    // ─── Guardian functions ───────────────────────────────────────────────────

    /// @notice Pause the vault. Restricted to GUARDIAN_ROLE.
    function pause() external onlyRole(GUARDIAN_ROLE) {
        _pause();
    }

    /// @notice Unpause the vault. Restricted to GUARDIAN_ROLE.
    function unpause() external onlyRole(GUARDIAN_ROLE) {
        _unpause();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // Preview functions (ERC-4626-style)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Preview shares received for a savings token deposit amount.
    function previewDeposit(uint256 savingsAmount) external view returns (uint256 sharesOut) {
        uint256 pmUSDValue = Math.mulDiv(
            savingsAmount,
            rateProvider.getRate(address(savingsToken)),
            10 ** savingsTokenDecimals,
            Math.Rounding.Floor
        );

        sharesOut = convertToShares(pmUSDValue);
    }

    /// @notice Preview assets received for redeeming shares (after dynamic fee).
    function previewRedeem(uint256 shares) external view returns (uint256 assetsAfterFee) {
        uint256 pmUSDEntitlement = convertToAssets(shares);
        uint256 feeBps = _computeWithdrawFee();
        uint256 feeAmount = Math.mulDiv(pmUSDEntitlement, feeBps, MAX_BPS, Math.Rounding.Ceil);
        assetsAfterFee = pmUSDEntitlement - feeAmount;
    }

    /// @notice Preview shares needed to withdraw exact assets (after dynamic fee).
    function previewWithdraw(uint256 assets) external view returns (uint256 sharesNeeded) {
        uint256 feeBps = _computeWithdrawFee();
        uint256 grossAssets = Math.mulDiv(assets, MAX_BPS, MAX_BPS - feeBps, Math.Rounding.Ceil);
        sharesNeeded = _convertToSharesRoundUp(grossAssets);
    }

    /// @notice Maximum savings token amount that can be deposited (remaining capacity under cap).
    function maxDeposit(address) external view returns (uint256) {
        if (paused()) return 0;
        uint256 currentBalance = savingsToken.balanceOf(address(this));
        if (currentBalance >= depositCap) return 0;
        return depositCap - currentBalance;
    }

    /// @notice Maximum shares redeemable by `owner` (accounts for cooldown and balance).
    function maxRedeem(address owner) public view returns (uint256) {
        if (paused()) return 0;
        RedeemRequest storage req = redeemRequests[owner];
        uint256 exitTime = req.exitTime;
        if (exitTime == 0 || block.timestamp < exitTime) return 0;
        if (block.timestamp >= exitTime + withdrawTimeLimit) return 0;
        return req.shares;
    }

    /// @notice Maximum pmUSD worth of assets withdrawable by `owner` (gross, before fee).
    /// @dev Returns the gross entitlement (convertToAssets of maxRedeem shares).
    ///      Use previewRedeem(maxRedeem(owner)) for net value after dynamic fee.
    function maxWithdraw(address owner) external view returns (uint256) {
        uint256 maxShares = maxRedeem(owner);
        if (maxShares == 0) return 0;
        return convertToAssets(maxShares);
    }

    /// @notice Preview the proportional token split for a given pmUSD entitlement.
    /// @param entitlement pmUSD value to split proportionally.
    /// @return moduleTokenOut Amount of module shares the user would receive (0 if no module).
    /// @return baseAssetOut Amount of raw pmUSD the user would receive (0 if module covers all).
    /// @return savingsTokenOut Amount of savings token the user would receive.
    function previewProportionalSplit(
        uint256 entitlement
    ) external view returns (uint256 moduleTokenOut, uint256 baseAssetOut, uint256 savingsTokenOut) {
        if (entitlement == 0) return (0, 0, 0);

        uint256 pending = _pendingRewardsVirtual();
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        uint256 baseAssetPmUSD = baseBalance > pending ? baseBalance - pending : 0;

        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                baseAssetPmUSD += baseAssetModule.convertToAssets(moduleShares);
            }
        }

        uint256 savingsBalance = savingsToken.balanceOf(address(this));
        uint256 savingsPmUSD = 0;
        if (savingsBalance > 0) {
            savingsPmUSD = Math.mulDiv(
                savingsBalance,
                rateProvider.getRate(address(savingsToken)),
                10 ** savingsTokenDecimals,
                Math.Rounding.Floor
            );
        }

        uint256 totalPmUSD = baseAssetPmUSD + savingsPmUSD;
        if (totalPmUSD == 0) return (0, 0, 0);

        uint256 savingsValuePmUSD = Math.mulDiv(entitlement, savingsPmUSD, totalPmUSD, Math.Rounding.Floor);
        uint256 baseAssetValuePmUSD = entitlement - savingsValuePmUSD;

        if (savingsValuePmUSD > 0) {
            savingsTokenOut = Math.mulDiv(
                savingsValuePmUSD,
                10 ** savingsTokenDecimals,
                rateProvider.getRateRoundUp(address(savingsToken)),
                Math.Rounding.Floor
            );
        }

        if (baseAssetValuePmUSD > 0) {
            if (address(baseAssetModule) != address(0)) {
                uint256 moduleSharesBal = IERC20(address(baseAssetModule)).balanceOf(address(this));
                if (moduleSharesBal > 0) {
                    uint256 sharesToSend = baseAssetModule.convertToShares(baseAssetValuePmUSD);
                    if (sharesToSend <= moduleSharesBal) {
                        moduleTokenOut = sharesToSend;
                    } else {
                        moduleTokenOut = moduleSharesBal;
                        uint256 coveredValue = baseAssetModule.convertToAssets(moduleSharesBal);
                        baseAssetOut = baseAssetValuePmUSD > coveredValue ? baseAssetValuePmUSD - coveredValue : 0;
                    }
                } else {
                    baseAssetOut = baseAssetValuePmUSD;
                }
            } else {
                baseAssetOut = baseAssetValuePmUSD;
            }
        }
    }

    /// @notice Preview swap output for baseAsset → savingsToken.
    /// @param tokenIn Address of the input token (must be baseAsset).
    /// @param tokenOut Address of the output token (must be savingsToken).
    /// @param amountIn Amount of input token.
    /// @return amountOut Amount of output token the user would receive.
    function previewSwap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        if (amountIn == 0) return 0;

        address _baseAsset = address(baseAsset);
        address _savingsToken = address(savingsToken);

        if (tokenIn == _baseAsset && tokenOut == _savingsToken) {
            // baseAsset → savingsToken
            uint256 fee = Math.mulDiv(amountIn, swapFee, MAX_BPS, Math.Rounding.Ceil);
            uint256 amountInAfterFee = amountIn - fee;
            uint256 rateUp = rateProvider.getRateRoundUp(_savingsToken);
            amountOut = Math.mulDiv(amountInAfterFee, 10 ** savingsTokenDecimals, rateUp, Math.Rounding.Floor);
        } else {
            revert InvalidTokenPair();
        }
    }

    /// @notice Returns the current vault composition in pmUSD terms.
    /// @return baseAssetValue pmUSD value of base asset reserves (raw + module).
    /// @return savingsTokenValue pmUSD value of savings token reserves.
    /// @return total Total pmUSD value (baseAssetValue + savingsTokenValue).
    function vaultComposition()
        external
        view
        returns (uint256 baseAssetValue, uint256 savingsTokenValue, uint256 total)
    {
        uint256 pending = _pendingRewardsVirtual();
        uint256 baseBalance = baseAsset.balanceOf(address(this));
        baseAssetValue = baseBalance > pending ? baseBalance - pending : 0;

        if (address(baseAssetModule) != address(0)) {
            uint256 moduleShares = IERC20(address(baseAssetModule)).balanceOf(address(this));
            if (moduleShares > 0) {
                baseAssetValue += baseAssetModule.convertToAssets(moduleShares);
            }
        }

        uint256 savingsBalance = savingsToken.balanceOf(address(this));
        if (savingsBalance > 0) {
            savingsTokenValue = Math.mulDiv(
                savingsBalance,
                rateProvider.getRate(address(savingsToken)),
                10 ** savingsTokenDecimals,
                Math.Rounding.Floor
            );
        }

        total = baseAssetValue + savingsTokenValue;
    }
}
