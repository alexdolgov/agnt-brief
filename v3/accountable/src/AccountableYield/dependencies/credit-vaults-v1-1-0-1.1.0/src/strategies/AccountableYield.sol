// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../constants/Errors.sol";

import {IFeeManager} from "../interfaces/IFeeManager.sol";
import {IAccountableVault} from "../interfaces/IAccountableAsyncVault.sol";
import {IAccountableYield, YieldInitParams} from "../interfaces/IAccountableYield.sol";
import {IAccountableWithdrawalQueue} from "../interfaces/IAccountableWithdrawalQueue.sol";

import {
    IAccountableStrategy,
    IStrategyVaultHooks,
    IFeeManagerHooks,
    IAccountableLoan,
    LoanState,
    LoanTerms
} from "../interfaces/IAccountableStrategy.sol";

import {AccountableStrategy} from "./AccountableStrategy.sol";
import {YieldStorage} from "./storage/YieldStorage.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @title AccountableYield
/// @notice NAV-based yield strategy with sync deposits and async redemptions
/// @custom:security-contact security@accountable.capital
contract AccountableYield is UUPSUpgradeable, ReentrancyGuardUpgradeable, AccountableStrategy, YieldStorage {
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @notice Minimum NAV grace period (1 hour)
    uint256 public constant MIN_NAV_GRACE_PERIOD = 1 hours;
    /// @notice Default NAV grace period (24 hours)
    uint256 public constant DEFAULT_NAV_GRACE_PERIOD = 24 hours;

    /// @dev Reverts if NAV is stale (grace period expired)
    modifier whenNotStale() {
        if (_navIsStale()) revert NAVGracePeriodExpired();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the yield strategy
    /// @param params Initialization parameters
    function initialize(YieldInitParams memory params) external initializer {
        __Pausable_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        if (params.asset == address(0)) revert ZeroAddress();
        if (params.globals == address(0)) revert ZeroAddress();
        if (params.feeManager == address(0)) revert ZeroAddress();
        if (params.investmentManager == address(0)) revert ZeroAddress();

        asset = params.asset;
        globals = params.globals;
        feeManager = params.feeManager;
        loanState = LoanState.Initialized;
        investmentManager = params.investmentManager;
        managerFeeRecipient = params.investmentManager;

        penaltiesEnabled = true;
        navGracePeriod = DEFAULT_NAV_GRACE_PERIOD;

        _makeVault(IERC20(params.asset), params.sharesTransferable, params.permissionLevel, params.name, params.symbol);

        IERC20(params.asset).approve(vault, type(uint256).max);
        IERC20(params.asset).approve(params.feeManager, type(uint256).max);
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Uses _loan struct for: minDeposit, minRedeem, maxCapacity, interestInterval, lateInterestPenalty
    function setTerms(LoanTerms memory terms) public onlyManager {
        _requireLoanTermsNotSet();

        if (borrower == address(0)) revert ZeroAddress();
        if (dvnPublisher == address(0)) revert ZeroAddress();
        if (terms.interestInterval == 0) revert InvalidIntervalLength();

        _loan.minRedeem = terms.minRedeem;
        _loan.minDeposit = terms.minDeposit;
        _loan.maxCapacity = terms.maxCapacity;
        _loan.interestInterval = terms.interestInterval;
        _loan.lateInterestPenalty = terms.lateInterestPenalty;
        _loan.lateInterestGracePeriod = terms.lateInterestGracePeriod;

        loanState = LoanState.TermsSet;
        _loan.termsSetTime = block.timestamp;

        emit LoanTermsSet(
            terms.minCapacity,
            terms.maxCapacity,
            terms.interestRate,
            terms.lateInterestPenalty,
            terms.interestInterval,
            terms.duration
        );
    }

    /// @inheritdoc IAccountableLoan
    function updateTerms(LoanTerms memory terms) external onlyManager {
        _requireLoanOngoing();

        _accruePenalties();
        _accrueFees();

        _pendingTerms = terms;

        emit LoanTermsSet(
            terms.minCapacity,
            terms.maxCapacity,
            terms.interestRate,
            terms.lateInterestPenalty,
            terms.interestInterval,
            terms.duration
        );
    }

    /// @inheritdoc IAccountableYield
    function acceptTerms() external nonReentrant onlyBorrower whenNotPaused {
        if (loanState == LoanState.TermsSet) {
            loanState = LoanState.OngoingDynamic;

            _lastFeeTime = block.timestamp;
            _loan.startTime = block.timestamp;
            navGraceDeadline = block.timestamp + navGracePeriod;

            emit TermsAccepted();
            return;
        }

        LoanTerms memory terms = _pendingTerms;
        delete _pendingTerms;

        uint256 totalAssets = _totalPrincipalAssets(vault);
        if (terms.maxCapacity < totalAssets) revert CapacityTooLow();

        _loan.minRedeem = terms.minRedeem;
        _loan.minDeposit = terms.minDeposit;
        _loan.maxCapacity = terms.maxCapacity;
        _loan.interestInterval = terms.interestInterval;
        _loan.lateInterestPenalty = terms.lateInterestPenalty;
        _loan.lateInterestGracePeriod = terms.lateInterestGracePeriod;

        _loan.termsUpdateTime = block.timestamp;

        _updateDelinquentStatus();

        emit TermsAccepted();
    }

    /// @inheritdoc IAccountableYield
    function rejectTerms() external onlyBorrower whenNotPaused {
        if (loanState == LoanState.TermsSet) {
            delete _loan;

            loanState = LoanState.Initialized;

            emit TermsRejected();
            return;
        }

        delete _pendingTerms;

        emit TermsRejected();
    }

    /// @inheritdoc IAccountableStrategy
    function setReserveThreshold(uint256 threshold)
        external
        override(AccountableStrategy, IAccountableStrategy)
        onlyManager
    {
        if (threshold > BASIS_POINTS) revert ThresholdTooHigh();
        _loan.reserveThreshold = threshold;

        _updateDelinquentStatus();

        emit ReserveThresholdSet(threshold);
    }

    /// @inheritdoc IAccountableStrategy
    function setDVNPublisher(address publisher) external onlyOperationsAdmin {
        if (publisher == address(0)) revert ZeroAddress();
        dvnPublisher = publisher;

        emit DVNPublisherSet(publisher);
    }

    /// @inheritdoc IAccountableStrategy
    /// @dev Rejects stale measurements to prevent DVN updates from overwriting recent borrow/repay accounting
    function publishRate(uint256 newDeployedValue, uint256 measuredAt) external {
        if (msg.sender != dvnPublisher) revert Unauthorized();
        _requireLoanOngoing();

        // Must be newer than last accepted measurement and must be measured after the last flow operation
        if (measuredAt <= lastNavMeasuredAt || measuredAt < lastFlowTimestamp) revert StaleMeasurement();

        uint256 oldValue = deployedAssets;
        deployedAssets = newDeployedValue;
        lastNavMeasuredAt = measuredAt;

        _accruePenalties();
        _accrueFees();

        navGraceDeadline = block.timestamp + navGracePeriod;

        // Compare new NAV to current deployedAssets (before update) to detect losses
        if (oldValue > 0 && newDeployedValue < oldValue) {
            uint256 loss = oldValue - newDeployedValue;
            lostAssets += loss;
        }

        _updateDelinquentStatus();

        emit RatePublished(msg.sender, oldValue, newDeployedValue);
    }

    /// @inheritdoc IAccountableYield
    function setNavGracePeriod(uint256 period) external onlyManager {
        if (period < MIN_NAV_GRACE_PERIOD) revert InvalidNavGracePeriod();
        emit NavGracePeriodSet(navGracePeriod, period);
        navGracePeriod = period;
    }

    /// @inheritdoc IAccountableLoan
    /// @dev This should be callable when paused
    ///      It is safer to pause and then default to first prevent other operations
    function defaultLoan() external onlySafetyModuleOrManager {
        _requireLoanOngoing();

        // Prevent resetting the timer if default is already pending
        if (_defaultValidAt != 0) revert DefaultAlreadyPending();

        _defaultValidAt = block.timestamp + 1 days;

        emit LoanDefaultInitiated();
    }

    /// @inheritdoc IAccountableLoan
    /// @dev This should be callable when paused
    ///      Default coverage should be possible at all times if loan is in default
    function coverDefault(uint256 assets) external nonReentrant onlySafetyModuleOrManager {
        _requireLoanInDefault();

        loanState = LoanState.InDefaultClaims;

        IAccountableVault(vault).lockAssets(assets, msg.sender);

        _updateDelinquentStatus();

        emit DefaultCovered(safetyModule, msg.sender, assets);
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Releases assets from vault to borrower for deployment to yield sources
    function borrow(uint256 assets) external nonReentrant onlyBorrower whenNotPaused {
        _requireLoanOngoing();
        _accrueFees();
        _accruePenalties();

        uint256 available = _availableForRelease();
        uint256 maxBorrowable = Math.min(available, assets);

        if (maxBorrowable == 0) revert InsufficientAmount();

        // Track flow timestamp to prevent stale DVN updates
        lastFlowTimestamp = block.timestamp;

        // Track outstanding principal
        deployedAssets += maxBorrowable;
        _loan.outstandingPrincipal += maxBorrowable;

        address vault_ = vault;
        IAccountableVault(vault_).releaseAssets(maxBorrowable, msg.sender);

        lastTotalAssets = _totalAssets(vault_);

        _updateDelinquentStatus();

        emit Borrowed(msg.sender, maxBorrowable);
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Returns assets to vault from yield sources
    /// @dev Borrower can repay more than deployedAssets
    /// @dev Payment priority: penalties first, then principal and deployed reduction
    function repay(uint256 assets) external nonReentrant onlyBorrower whenNotStale whenNotPaused {
        _requireLoanOngoing();

        if (assets == 0) revert InsufficientAmount();

        _accrueFees();
        _accruePenalties();

        // Track flow timestamp to prevent stale DVN updates
        lastFlowTimestamp = block.timestamp;

        uint256 remaining = assets;

        // Pay off penalties first
        uint256 penalties = accruedPenalties;
        if (penalties > 0) {
            uint256 penaltyPayment = Math.min(remaining, penalties);
            accruedPenalties = penalties - penaltyPayment;
            remaining -= penaltyPayment;
        }

        // Reduce outstanding principal
        if (remaining > 0) {
            // Assets are moving from external → vault
            uint256 deployed = deployedAssets;
            deployedAssets -= Math.min(remaining, deployed);

            uint256 outstanding = _loan.outstandingPrincipal;
            _loan.outstandingPrincipal = outstanding > remaining ? outstanding - remaining : 0;
        }

        IERC20(asset).safeTransferFrom(msg.sender, address(this), assets);

        address vault_ = vault;
        IAccountableVault(vault_).lockAssets(assets, address(this));

        lastTotalAssets = _totalAssets(vault_);

        _processAvailableWithdrawals();

        if (_loan.outstandingPrincipal == 0 && accruedPenalties == 0 && deployedAssets == 0) {
            loanState = LoanState.Repaid;
        }

        _updateDelinquentStatus();

        emit LoanRepaid(assets);
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Not applicable for yield strategy
    function prepay() external pure {
        revert NotSupportedByStrategy();
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Not applicable for yield strategy
    function pay(uint256) external pure {
        revert NotSupportedByStrategy();
    }

    /// @inheritdoc IAccountableLoan
    function timeDelinquent() external view returns (uint256) {
        uint256 start = delinquencyStartTime;
        return start > 0 ? block.timestamp - start : 0;
    }

    /// @inheritdoc IAccountableYield
    function accrueAndProcess() external nonReentrant whenNotStale whenNotPaused returns (uint256 usedAssets) {
        _requireLoanOngoing();

        _accruePenalties();
        _accrueFees();
        usedAssets = _processAvailableWithdrawals();
        _updateDelinquentStatus();
    }

    /// @dev Deposit hook - sync deposit at current NAV price
    function onDeposit(address share, uint256 assets, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotStale
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanDeposit();
        _requireMinDepositAmount(assets);

        _accruePenalties();
        _accrueFees();

        _requireBelowMaxCapacity(assets);

        price = _sharePrice(share);

        // Update lastTotalAssets to include new deposit
        lastTotalAssets += assets;
    }

    /// @dev Mint hook - sync mint at current NAV price
    function onMint(address share, uint256 shares, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotStale
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanDeposit();

        _accruePenalties();
        _accrueFees();

        price = _sharePrice(share);
        uint256 assets = shares.mulDiv(price, PRECISION, Math.Rounding.Ceil);

        _requireMinDepositAmount(assets);
        _requireBelowMaxCapacity(assets);

        // Update lastTotalAssets to include new deposit
        lastTotalAssets += assets;
    }

    /// @dev Request redeem hook - queue based async
    function onRequestRedeem(address share, uint256 shares, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotPaused
        returns (bool canFulfill, uint256 price)
    {
        if (shares < _loan.minRedeem) revert InsufficientShares();

        _accruePenalties();
        _accrueFees();

        price = _sharePrice(share);
        uint256 assets = shares.mulDiv(price, PRECISION);

        uint256 liquidity = _getAvailableLiquidity();
        canFulfill = liquidity >= assets && !_navIsStale();
    }

    function onFeeStructureChange() public override(AccountableStrategy, IFeeManagerHooks) nonReentrant {
        super.onFeeStructureChange();
        if (loanState == LoanState.OngoingDynamic) {
            _accruePenalties();
            _accrueFees();
        }
    }

    /// @dev Max deposit based on capacity
    function maxDeposit(address, address)
        public
        view
        override(AccountableStrategy, IStrategyVaultHooks)
        returns (uint256 maxAssets)
    {
        uint256 maxCapacity = _loan.maxCapacity;
        uint256 totalAssets = _totalPrincipalAssets(vault);
        maxAssets = totalAssets < maxCapacity ? maxCapacity - totalAssets : 0;
    }

    /// @dev Accrues fees by minting shares split between manager and treasury
    function _accrueFees() internal {
        (uint256 performanceFeeShares, uint256 managementFeeShares, uint256 newTotalAssets) = _accruedFeeShares();

        _lastFeeTime = block.timestamp;
        lastTotalAssets = newTotalAssets;

        if (newTotalAssets > peakTotalAssets) {
            peakTotalAssets = newTotalAssets;
        }

        IFeeManager fm = IFeeManager(feeManager);
        address vault_ = vault;
        address treasury_ = fm.treasury();
        address managerFeeRecipient_ = managerFeeRecipient;

        uint256 managerShares = 0;
        uint256 protocolShares = 0;

        // Mint performance fee shares with performance fee split
        if (performanceFeeShares > 0) {
            uint256 managerPerformanceFeeShares =
                performanceFeeShares.mulDiv(fm.managerSplit(address(this), true), BASIS_POINTS);

            managerShares += managerPerformanceFeeShares;
            protocolShares += performanceFeeShares - managerPerformanceFeeShares;
        }

        // Mint management fee shares with management fee split
        if (managementFeeShares > 0) {
            uint256 managerManagementFeeShares =
                managementFeeShares.mulDiv(fm.managerSplit(address(this), false), BASIS_POINTS);

            managerShares += managerManagementFeeShares;
            protocolShares += managementFeeShares - managerManagementFeeShares;
        }

        if (managerShares > 0) {
            IAccountableVault(vault_).mintShares(managerShares, managerFeeRecipient_);
            emit FeeSharesMinted(managerFeeRecipient_, managerShares);
        }
        if (protocolShares > 0) {
            IAccountableVault(vault_).mintShares(protocolShares, treasury_);
            emit FeeSharesMinted(treasury_, protocolShares);
        }
    }

    /// @dev Calculates accrued fee shares for both performance and management fees
    /// @return performanceFeeShares Shares to mint for performance fees
    /// @return managementFeeShares Shares to mint for management fees
    /// @return newTotalAssets Current total assets
    function _accruedFeeShares()
        internal
        view
        returns (uint256 performanceFeeShares, uint256 managementFeeShares, uint256 newTotalAssets)
    {
        address vault_ = vault;
        newTotalAssets = _totalAssets(vault_);
        uint256 supply = IAccountableVault(vault_).totalSupply();

        if (supply == 0) return (0, 0, newTotalAssets);

        IFeeManager fm = IFeeManager(feeManager);
        uint256 performanceFeeAssets;
        uint256 managementFeeAssets;

        // Account for lost assets - don't charge performance fees on recovery
        uint256 lastTotal = lastTotalAssets;
        uint256 effectiveLastTotal = lastTotal > lostAssets ? lastTotal - lostAssets : 0;

        // Performance fee on gains above peak (only if NAV increased)
        if (newTotalAssets > effectiveLastTotal) {
            uint256 peak = peakTotalAssets;
            if (newTotalAssets > peak) {
                uint256 gain = newTotalAssets - Math.max(effectiveLastTotal, peak);
                performanceFeeAssets = gain.mulDiv(fm.performanceFee(address(this)), BASIS_POINTS);
            }
        }

        // Management fee (time-based annualized fee on total assets)
        uint256 timeElapsed = block.timestamp - _lastFeeTime;
        if (timeElapsed > 0) {
            managementFeeAssets =
                newTotalAssets.mulDiv(fm.managementFee(address(this)) * timeElapsed, DAYS_365_SECONDS * BASIS_POINTS);
        }

        uint256 totalFeeAssets = performanceFeeAssets + managementFeeAssets;
        // If no fees or fees are greater than total assets, return early to avoid div by zero
        if (totalFeeAssets == 0 || totalFeeAssets >= newTotalAssets) return (0, 0, newTotalAssets);

        // Convert fee assets to shares
        // shares = feeAssets * supply / (totalAssets - feeAssets)
        // This ensures fee recipients receive exactly feeAssets worth of shares
        uint256 denominator = newTotalAssets - totalFeeAssets;

        if (performanceFeeAssets > 0) {
            performanceFeeShares = performanceFeeAssets.mulDiv(supply, denominator, Math.Rounding.Floor);
        }
        if (managementFeeAssets > 0) {
            managementFeeShares = managementFeeAssets.mulDiv(supply, denominator, Math.Rounding.Floor);
        }
    }

    /// @dev Total assets managed = vault assets + deployed assets + accrued penalties
    function _totalAssets(address vault_) internal view returns (uint256) {
        return IAccountableVault(vault_).totalAssets() + deployedAssets + accruedPenalties;
    }

    /// @dev Total principal assets = vault assets + outstanding principal
    ///      Returns total assets not accounting for accrued yield in deployed assets
    function _totalPrincipalAssets(address vault_) internal view returns (uint256) {
        return IAccountableVault(vault_).totalAssets() + _loan.outstandingPrincipal;
    }

    /// @dev Share price accounting for pending fees
    function _sharePrice(address vault_) internal view override returns (uint256) {
        (uint256 performanceFeeShares, uint256 managementFeeShares, uint256 totalAssets) = _accruedFeeShares();
        uint256 supply = IAccountableVault(vault_).totalSupply() + performanceFeeShares + managementFeeShares;

        if (supply == 0) return PRECISION;
        return totalAssets.mulDiv(PRECISION, supply);
    }

    /// @dev No separate accrued assets for yield strategy
    function _accruedAssets(address) internal pure override returns (uint256) {
        return 0;
    }

    /// @dev Available liquidity for withdrawals (vault assets minus reserved)
    function _getAvailableLiquidityForProcessing(address vault_) internal view returns (uint256) {
        uint256 vaultAssets = IAccountableVault(vault_).totalAssets();
        uint256 reservedLiquidity = IAccountableWithdrawalQueue(vault_).reservedLiquidity();

        return vaultAssets > reservedLiquidity ? vaultAssets - reservedLiquidity : 0;
    }

    // @dev Returns the available liquidity after accounting for the required reserves
    function _getAvailableLiquidity() internal view returns (uint256) {
        address vault_ = vault;
        uint256 totalAssets = IAccountableVault(vault_).totalAssets();
        uint256 queuedShares = IAccountableWithdrawalQueue(vault_).totalQueuedShares();
        uint256 processedWithdrawals = IAccountableWithdrawalQueue(vault_).reservedLiquidity();
        uint256 requiredReserves = queuedShares.mulDiv(_sharePrice(vault_), PRECISION) + processedWithdrawals;

        return totalAssets > requiredReserves ? totalAssets - requiredReserves : 0;
    }

    /// @dev Available for release (respects reserves + queue + threshold)
    function _availableForRelease() internal view returns (uint256) {
        address vault_ = vault;
        uint256 vaultAssets = IAccountableVault(vault_).totalAssets();
        uint256 requiredLiquidity = _calculateRequiredLiquidity(vault_);

        return vaultAssets > requiredLiquidity ? vaultAssets - requiredLiquidity : 0;
    }

    /// @dev Calculates the required liquidity accounting for the queued/processed withdrawals
    function _calculateRequiredLiquidity(address vault_) internal view returns (uint256) {
        uint256 queuedShares = IAccountableWithdrawalQueue(vault_).totalQueuedShares();
        uint256 queuedValue = queuedShares.mulDiv(_sharePrice(vault_), PRECISION);

        uint256 reservedLiquidity = IAccountableWithdrawalQueue(vault_).reservedLiquidity();
        uint256 reserveThresholdAmount = _totalAssets(vault_).mulDiv(_loan.reserveThreshold, BASIS_POINTS);

        return queuedValue + reservedLiquidity + reserveThresholdAmount;
    }

    /// @dev Process available withdrawals at current price
    function _processAvailableWithdrawals() internal returns (uint256 assetsUsed) {
        address vault_ = vault;

        uint256 liquidity = _getAvailableLiquidityForProcessing(vault_);
        if (liquidity == 0) return 0;

        IAccountableWithdrawalQueue q = IAccountableWithdrawalQueue(vault_);
        (uint256 maxShares,) = q.previewRequiredShares(liquidity);
        if (maxShares == 0) return 0;

        assetsUsed = q.processUpToShares(maxShares);
    }

    /// @dev Returns whether the loan is delinquent based on reserves available
    function _isDelinquent() internal view returns (bool) {
        address vault_ = vault;
        uint256 vaultAssets = IAccountableVault(vault_).totalAssets();
        uint256 requiredLiquidity = _calculateRequiredLiquidity(vault_);

        return vaultAssets < requiredLiquidity;
    }

    /// @dev Update delinquency status and accrue penalties
    function _updateDelinquentStatus() internal {
        bool wasDelinquent = delinquencyStartTime > 0;
        bool isCurrentlyDelinquent = _isDelinquent();

        // Accrue penalties if currently delinquent
        if (wasDelinquent) {
            _accruePenalties();
        }

        if (isCurrentlyDelinquent && !wasDelinquent) {
            delinquencyStartTime = block.timestamp;
            emit DelinquencyStatusChanged(true, block.timestamp);
        } else if (!isCurrentlyDelinquent && wasDelinquent) {
            delinquencyStartTime = 0;
            emit DelinquencyStatusChanged(false, block.timestamp);
        }
    }

    /// @dev Accrues penalties based on time delinquent past grace period
    function _accruePenalties() internal {
        if (!penaltiesEnabled) return;

        uint256 delinquencyStart_ = delinquencyStartTime;
        uint256 lateInterestPenalty_ = _loan.lateInterestPenalty;

        if (delinquencyStart_ == 0 || lateInterestPenalty_ == 0) return;

        uint256 graceEnd = delinquencyStart_ + _loan.lateInterestGracePeriod;
        if (block.timestamp <= graceEnd) return;

        uint256 penaltyStart = Math.max(_lastPenaltyTime, graceEnd);
        uint256 penaltyTime = block.timestamp - penaltyStart;
        if (penaltyTime == 0) return;

        uint256 penaltyAmount =
            _totalAssets(vault).mulDiv(lateInterestPenalty_ * penaltyTime, DAYS_1_SECONDS * BASIS_POINTS);

        if (penaltyAmount > 0) {
            accruedPenalties += penaltyAmount;
            _lastPenaltyTime = block.timestamp;
            emit PenaltiesAccrued(penaltyAmount, accruedPenalties);
        }
    }

    /// @dev Returns whether the NAV is stale
    function _navIsStale() internal view returns (bool) {
        return block.timestamp > navGraceDeadline;
    }

    /// @dev Checks that deposits are allowed
    function _requireCanDeposit() internal view {
        if (loanState != LoanState.OngoingDynamic) revert DepositNotAllowed();
    }

    /// @dev Checks that the deposit amount is below the max capacity
    function _requireBelowMaxCapacity(uint256 assets) internal view {
        if (assets > maxDeposit(address(0), address(0))) revert ExceedsMaxDeposit();
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IAccountableYield).interfaceId || interfaceId == type(IAccountableLoan).interfaceId
            || interfaceId == type(IAccountableStrategy).interfaceId || interfaceId == type(IERC165).interfaceId;
    }

    /// @dev UUPS authorization
    function _authorizeUpgrade(address) internal override onlyManagerOrSecurityAdmin {}
}
