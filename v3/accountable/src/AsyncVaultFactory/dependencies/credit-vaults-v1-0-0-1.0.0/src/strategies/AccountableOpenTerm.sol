// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../constants/Errors.sol";

import {IFeeManager} from "../interfaces/IFeeManager.sol";
import {IAccountableVault} from "../interfaces/IAccountableAsyncVault.sol";
import {IAccountableWithdrawalQueue} from "../interfaces/IAccountableWithdrawalQueue.sol";
import {IAccountableOpenTerm, OpenTermInitParams, WithdrawalBatch} from "../interfaces/IAccountableOpenTerm.sol";

import {
    IAccountableStrategy,
    IStrategyVaultHooks,
    IFeeManagerHooks,
    IAccountableLoan,
    LoanState,
    LoanTerms
} from "../interfaces/IAccountableStrategy.sol";

import {AccountableStrategy} from "../strategies/AccountableStrategy.sol";
import {OpenTermStorage} from "../strategies/storage/OpenTermStorage.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @title AccountableOpenTerm
/// @notice Implementation of an open term loan
/// @dev Implements IAccountableOpenTerm interface and extends AccountableStrategy for managing loan lifecycle and payments
/// @custom:security-contact security@accountable.capital
contract AccountableOpenTerm is UUPSUpgradeable, AccountableStrategy, OpenTermStorage {
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ========================================================================== //
    //                          Initialization                                    //
    // ========================================================================== //

    function initialize(OpenTermInitParams memory params) external initializer {
        __Pausable_init();
        __UUPSUpgradeable_init();

        if (params.asset == address(0)) revert ZeroAddress();
        if (params.globals == address(0)) revert ZeroAddress();
        if (params.feeManager == address(0)) revert ZeroAddress();
        if (params.investmentManager == address(0)) revert ZeroAddress();

        asset = params.asset;
        globals = params.globals;
        feeManager = params.feeManager;
        loanState = LoanState.Initialized;
        investmentManager = params.investmentManager;

        penaltiesEnabled = true;

        _makeVault(IERC20(params.asset), params.sharesTransferable, params.permissionLevel, params.name, params.symbol);

        IERC20(params.asset).approve(vault, type(uint256).max);
        IERC20(params.asset).approve(params.feeManager, type(uint256).max);
    }

    // ========================================================================== //
    //                          Loan Terms Management                             //
    // ========================================================================== //

    /// @inheritdoc IAccountableLoan
    function setTerms(LoanTerms memory terms) public onlyManager {
        _requireLoanTermsNotSet();

        if (borrower == address(0)) revert ZeroAddress();
        if (terms.interestInterval == 0) revert InvalidIntervalLength();
        if (terms.withdrawalPeriod >= terms.interestInterval) revert InvalidWithdrawalPeriod();

        terms.duration = 0;
        _setTerms(terms);

        _scaleFactor = PRECISION;
        _scaleFactorNet = PRECISION;

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

        _accrueInterest();

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

    /// @inheritdoc IAccountableOpenTerm
    function acceptTerms() external onlyBorrower whenNotPaused {
        if (loanState == LoanState.TermsSet) {
            loanState = LoanState.OngoingDynamic;

            _accruedAt = block.timestamp + _loan.depositPeriod;
            _loan.startTime = block.timestamp;
            _lastPaidTime = block.timestamp;

            _updateInterestParams();

            emit TermsAccepted();
            return;
        }

        _accrueInterest();
        _processAvailableWithdrawals();

        LoanTerms memory terms = _pendingTerms;
        delete _pendingTerms;

        uint256 currentMaxCap = _loan.maxCapacity;
        if (currentMaxCap > terms.maxCapacity) {
            uint256 diff = currentMaxCap - terms.maxCapacity;
            if (diff > maxDeposit(address(0), address(0))) revert CapacityTooLow();
        }
        if (terms.interestInterval == 0) revert InvalidIntervalLength();
        if (terms.withdrawalPeriod >= terms.interestInterval) revert InvalidWithdrawalPeriod();

        _loan.minDeposit = terms.minDeposit;
        _loan.minRedeem = terms.minRedeem;
        _loan.maxCapacity = terms.maxCapacity;

        _loan.interestRate = terms.interestRate;
        _loan.interestInterval = terms.interestInterval;
        _loan.lateInterestPenalty = terms.lateInterestPenalty;

        _loan.withdrawalPeriod = terms.withdrawalPeriod;
        _loan.lateInterestGracePeriod = terms.lateInterestGracePeriod;

        _loan.termsUpdateTime = block.timestamp;

        _updateInterestParams();

        emit TermsAccepted();
    }

    /// @inheritdoc IAccountableOpenTerm
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

    /// @inheritdoc IAccountableOpenTerm
    function setProposer(address proposer, bool approved) external onlyManager {
        _proposers[proposer] = approved;
    }

    /// @inheritdoc IAccountableOpenTerm
    function proposeInterestRate(uint256 interestRate) external {
        if (msg.sender != borrower && !_proposers[msg.sender]) revert Unauthorized();

        pendingInterestRate = interestRate;

        emit InterestRateProposed(interestRate);
    }

    /// @inheritdoc IAccountableOpenTerm
    function approveInterestRateChange() external onlyManager {
        uint256 pendingRate_ = pendingInterestRate;

        _accrueInterest();

        _loan.interestRate = pendingRate_;
        delete pendingInterestRate;

        _updateInterestParams();

        emit InterestRateApproved(pendingRate_);
    }

    // ========================================================================== //
    //                          Loan Lifecycle Functions                          //
    // ========================================================================== //

    /// @inheritdoc IAccountableLoan
    /// @dev This should be callable when paused
    ///      It is safer to pause and then default to first prevent other operations
    function defaultLoan() external onlySafetyModuleOrManager {
        _requireLoanOngoing();

        _defaultValidAt = block.timestamp + 1 days;

        emit LoanDefaultInitiated();
    }

    /// @inheritdoc IAccountableLoan
    /// @dev This should be callable when paused
    ///      Default coverage should be possible at all times if loan is in default
    function coverDefault(uint256 assets) external onlySafetyModuleOrManager {
        _requireLoanInDefault();

        loanState = LoanState.InDefaultClaims;

        IAccountableVault(vault).lockAssets(assets, msg.sender);

        _updateDelinquentStatus();

        emit DefaultCovered(safetyModule, msg.sender, assets);
    }

    /// @inheritdoc IAccountableLoan
    function borrow(uint256 assets) external onlyBorrower whenNotPaused {
        _requireLoanOngoing();

        _accrueInterest();

        uint256 borrowable = _borrowable(msg.sender);
        uint256 maxBorrowable = Math.min(borrowable, assets);

        if (maxBorrowable == 0) revert InsufficientAmount();

        /// In the open term loan, outstanding principal is tracked in debt share units
        _loan.outstandingPrincipal += maxBorrowable.mulDiv(PRECISION, _scaleFactor, Math.Rounding.Ceil);

        IAccountableVault(vault).releaseAssets(maxBorrowable, msg.sender);

        _updateDelinquentStatus();

        emit Borrowed(msg.sender, maxBorrowable);
    }

    /// @inheritdoc IAccountableLoan
    function repay(uint256 assets) external onlyBorrower whenNotPaused {
        _requireLoanOngoing();

        if (assets == 0) revert InsufficientAmount();

        _accrueInterest();

        address asset_ = asset;
        address vault_ = vault;
        uint256 scaleFactor_ = _scaleFactor;
        uint256 scaleFactorNet_ = _scaleFactorNet;

        uint256 principalShares = _loan.outstandingPrincipal;
        uint256 principalAssets = principalShares.mulDiv(scaleFactor_, PRECISION, Math.Rounding.Ceil);

        IFeeManager fm = IFeeManager(feeManager);
        uint256 establishmentFee = _prorataFee(principalAssets, fm.establishmentFee(address(this)));
        if (establishmentFee > assets) revert InsufficientAmount();

        uint256 repaymentPrincipal = Math.min(assets - establishmentFee, principalAssets);
        IERC20(asset_).safeTransferFrom(msg.sender, address(this), repaymentPrincipal + establishmentFee);

        uint256 maxShares = repaymentPrincipal.mulDiv(PRECISION, scaleFactor_);
        uint256 performanceFee = maxShares.mulDiv(scaleFactor_ - scaleFactorNet_, PRECISION);

        _lastPaidTime = block.timestamp;
        fm.collect(asset_, performanceFee, establishmentFee);

        IAccountableVault(vault_).lockAssets(repaymentPrincipal - performanceFee, address(this));
        _processAvailableWithdrawals();

        _loan.outstandingPrincipal -= repaymentPrincipal.mulDiv(PRECISION, scaleFactor_, Math.Rounding.Floor);

        if (_loan.outstandingPrincipal == 0) {
            loanState = LoanState.Repaid;
            _updateDelinquentStatus();
        } else {
            _updateDelinquentStatus();
        }

        emit LoanRepaid(repaymentPrincipal + establishmentFee);
    }

    /// @inheritdoc IAccountableLoan
    function prepay() external pure {
        revert NotSupportedByStrategy();
    }

    /// @inheritdoc IAccountableLoan
    function pay(uint256) external pure {
        revert NotSupportedByStrategy();
    }

    // ========================================================================== //
    //                          Hook Overrides                                    //
    // ========================================================================== //

    /// @dev Overriden deposit hook with extra validation logic and balances update
    function onDeposit(address share, uint256 assets, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        onlyVault
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanDeposit();
        _requireMinDepositAmount(assets);

        _accrueInterest();

        _requireBelowMaxCapacity(assets);

        price = _sharePrice(share);

        _updateDelinquentStatus();
    }

    /// @dev Overriden mint hook with extra validation logic and balances update
    function onMint(address share, uint256 shares, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        onlyVault
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanDeposit();

        _accrueInterest();

        price = _sharePrice(share);
        uint256 assets = shares.mulDiv(price, PRECISION, Math.Rounding.Ceil);

        _requireMinDepositAmount(assets);
        _requireBelowMaxCapacity(assets);

        _updateDelinquentStatus();
    }

    /// @dev Overriden onRequestRedeem hook for allocating a redemption request
    function onRequestRedeem(address share, uint256 shares, address, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        onlyVault
        whenNotPaused
        returns (bool canFulfill, uint256 price)
    {
        if (shares < _loan.minRedeem) revert InsufficientShares();

        _accrueInterest();

        price = _sharePrice(share);

        uint256 assets = shares.mulDiv(price, PRECISION);

        if (_isInstantRedeem()) {
            canFulfill = true;
        } else {
            uint256 availableLiquidity = _getAvailableLiquidity();
            if (availableLiquidity >= assets) {
                canFulfill = true;
            } else if (_loan.withdrawalPeriod != 0) {
                _createOrAddWithdrawalBatch(shares);
                canFulfill = false;
            }
        }

        _updateDelinquentStatus();
    }

    function onFeeStructureChange() public override(AccountableStrategy, IFeeManagerHooks) {
        super.onFeeStructureChange();

        if (_loan.startTime != 0) {
            _accrueInterest();
            _updateInterestParams();
        }
    }

    /// @dev Overriden maxDeposit hook
    function maxDeposit(address, address)
        public
        view
        override(AccountableStrategy, IStrategyVaultHooks)
        returns (uint256 maxAssets)
    {
        uint256 maxCapacity_ = _loan.maxCapacity;
        uint256 totalAssets = IAccountableVault(vault).totalAssets();
        uint256 principalAssets = _loan.outstandingPrincipal.mulDiv(_scaleFactor, PRECISION, Math.Rounding.Ceil);
        uint256 capMinusDebt = maxCapacity_ > principalAssets ? maxCapacity_ - principalAssets : 0;
        maxAssets = totalAssets >= capMinusDebt ? 0 : capMinusDebt - totalAssets;
    }

    // ========================================================================== //
    //                          View Functions                                    //
    // ========================================================================== //

    /// @dev Updates the late status of the loan
    function updateLateStatus() external {
        _requireLoanOngoing();

        _accrueInterest();
        _updateDelinquentStatus();
    }

    /// @inheritdoc IAccountableOpenTerm
    function accrueInterest() external returns (uint256 newScaleFactor) {
        _accrueInterest();

        newScaleFactor = _scaleFactor;
    }

    /// @inheritdoc IAccountableOpenTerm
    function processAvailableWithdrawals() external whenNotPaused returns (uint256 usedAssets) {
        usedAssets = _processAvailableWithdrawals();
    }

    /// @inheritdoc IAccountableOpenTerm
    function scaleFactor() external view returns (uint256) {
        return _scaleFactor;
    }

    /// @inheritdoc IAccountableOpenTerm
    function lastPaidTime() external view returns (uint256) {
        return _lastPaidTime;
    }

    /// @inheritdoc IAccountableLoan
    function timeDelinquent() external view returns (uint256) {
        uint256 delinquencyStartTime_ = delinquencyStartTime;
        return delinquencyStartTime_ > 0 ? block.timestamp - delinquencyStartTime_ : 0;
    }

    /// @inheritdoc IAccountableOpenTerm
    function pendingTerms() external view returns (LoanTerms memory) {
        return _pendingTerms;
    }

    /// @inheritdoc IAccountableOpenTerm
    function withdrawalBatches(uint256 id) external view returns (WithdrawalBatch memory) {
        return _withdrawalBatches[id];
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IAccountableLoan).interfaceId
            || interfaceId == type(IAccountableStrategy).interfaceId
            || interfaceId == type(IAccountableOpenTerm).interfaceId || interfaceId == type(IERC165).interfaceId;
    }

    // ========================================================================== //
    //                          Internal Helper Functions                         //
    // ========================================================================== //

    /// @notice Calculate establishment fee prorated by time elapsed
    function _prorataFee(uint256 principal, uint256 fee) internal view returns (uint256) {
        if (fee == 0) return 0;

        uint256 timeDelta = block.timestamp - _lastPaidTime;
        if (timeDelta == 0) return 0;

        return Math.mulDiv(principal * fee, timeDelta, DAYS_365_SECONDS * BASIS_POINTS, Math.Rounding.Ceil);
    }

    /// @dev Returns whether the loan is delinquent based on reserves available
    function _isDelinquent() public view returns (bool) {
        address vault_ = vault;
        uint256 totalAssets = IAccountableVault(vault_).totalAssets();
        uint256 requiredLiquidity = _calculateRequiredLiquidity(vault_);

        return totalAssets < requiredLiquidity;
    }

    /// @notice Accrues interest based time delta since last accrual
    function _accrueInterest() internal {
        uint256 accruedAt_ = _accruedAt;
        if (block.timestamp < accruedAt_) return;

        uint256 timeDelta = block.timestamp - accruedAt_;
        if (timeDelta == 0) return;

        uint256 delinquencyFee = _penaltyFee(timeDelta);

        uint256 baseInterest = _linearInterest(_loan.interestRate, timeDelta);
        uint256 baseNetInterest = _linearInterest(_netInterestRate, timeDelta);

        _scaleFactor += baseInterest + delinquencyFee;
        _scaleFactorNet += baseNetInterest + delinquencyFee;

        _accruedAt = block.timestamp;
    }

    /// @notice Calculates the max borrowable amount based on the current liquidity
    function _borrowable(address) private view returns (uint256) {
        address vault_ = vault;
        uint256 requiredReserves = _calculateRequiredLiquidity(vault_);
        uint256 totalAssets = IAccountableVault(vault_).totalAssets();

        return totalAssets > requiredReserves ? totalAssets - requiredReserves : 0;
    }

    /// @notice Automatically process pending withdrawals when liquidity becomes available
    function _processAvailableWithdrawals() internal returns (uint256 usedAssets) {
        address vault_ = vault;
        uint256 liquidity = _getAvailableLiquidityForProcessing(vault_);
        if (liquidity == 0) return 0;

        IAccountableWithdrawalQueue q = IAccountableWithdrawalQueue(vault_);

        if (_loan.withdrawalPeriod == 0) {
            (uint256 maxShares,) = q.previewRequiredShares(liquidity);
            if (maxShares == 0) return 0;

            usedAssets = q.processUpToShares(maxShares);
            return usedAssets;
        }

        while (pendingBatch <= currentBatch && liquidity > 0) {
            WithdrawalBatch memory batch = _withdrawalBatches[pendingBatch];
            if (block.timestamp < batch.expiry) break;

            (uint256 maxShares,) = q.previewRequiredShares(liquidity);

            if (maxShares == 0) {
                if (batch.totalShares > 0) {
                    _withdrawalBatches[pendingBatch++].totalShares = 0;
                    continue;
                }
                break;
            }

            uint256 sharesToProcess = maxShares > batch.totalShares ? batch.totalShares : maxShares;

            uint256 processedAssets = q.processUpToShares(sharesToProcess);
            liquidity -= processedAssets;
            usedAssets += processedAssets;

            if (sharesToProcess >= batch.totalShares) {
                _withdrawalBatches[pendingBatch++].totalShares = 0;
            } else {
                _withdrawalBatches[pendingBatch].totalShares -= sharesToProcess;
                break;
            }
        }
    }

    /// @dev Calculates the delinquency fee for the given time delta
    function _penaltyFee(uint256 timeDelta) internal view returns (uint256) {
        if (!penaltiesEnabled) return 0;

        uint256 delinquencyStart_ = delinquencyStartTime;
        uint256 lateInterestPenalty_ = _loan.lateInterestPenalty;

        if (delinquencyStart_ == 0 || lateInterestPenalty_ == 0) return 0;

        uint256 gracePeriod = _loan.lateInterestGracePeriod;
        uint256 delinquencyTime = block.timestamp - delinquencyStart_;
        if (delinquencyTime <= gracePeriod) return 0;

        uint256 penaltyTime = Math.min(delinquencyTime - gracePeriod, timeDelta);
        return lateInterestPenalty_.mulDiv(penaltyTime * PRECISION, DAYS_1_SECONDS * BASIS_POINTS);
    }

    /// @notice Calculate linear interest for the given time delta and annualized rate
    function _linearInterest(uint256 interestRate, uint256 timeDelta) internal pure returns (uint256) {
        return interestRate.mulDiv(timeDelta * PRECISION, DAYS_365_SECONDS * BASIS_POINTS);
    }

    /// @dev Updates the late status of the loan payments
    function _updateDelinquentStatus() internal {
        bool wasDelinquent = delinquencyStartTime > 0;
        bool isCurrentlyDelinquent = _isDelinquent();

        if (isCurrentlyDelinquent && !wasDelinquent) {
            delinquencyStartTime = block.timestamp;

            emit DelinquencyStatusChanged(true, block.timestamp);
        } else if (!isCurrentlyDelinquent && wasDelinquent) {
            delinquencyStartTime = 0;

            emit DelinquencyStatusChanged(false, block.timestamp);
        }
    }

    /// @dev Creates or adds a withdrawal batch
    function _createOrAddWithdrawalBatch(uint256 shares) internal {
        uint256 startTime = _loan.startTime;
        uint256 period = _loan.withdrawalPeriod;
        uint256 interval = _loan.interestInterval;

        if (period == 0) return;

        // Bounds: [batchStart, batchStart + period]
        uint256 currInterval = ((block.timestamp - startTime) / interval);
        uint256 currBatchStartTime = startTime + (currInterval * interval);

        WithdrawalBatch memory batch = _withdrawalBatches[currentBatch];

        // Can add to existing batch
        if (block.timestamp <= batch.expiry) {
            _withdrawalBatches[currentBatch].totalShares += shares;
            return;
        }
        // No active batch - create new batch
        if (block.timestamp <= currBatchStartTime + period) {
            if (batch.expiry == 0) {
                _withdrawalBatches[currentBatch] =
                    WithdrawalBatch(currBatchStartTime + period, currBatchStartTime, shares);
            } else {
                _withdrawalBatches[++currentBatch] =
                    WithdrawalBatch(currBatchStartTime + period, currBatchStartTime, shares);
            }
            return;
        }

        // Otherwise advance and create the future batch
        uint256 targetStartTime = currBatchStartTime + interval;
        _withdrawalBatches[++currentBatch] = WithdrawalBatch(targetStartTime + period, targetStartTime, shares);
    }

    /// @dev Returns the required reserves accounting for the queued/processed withdrawals
    function _calculateRequiredLiquidity(address vault_) internal view returns (uint256) {
        uint256 totalShares = IAccountableVault(vault_).totalSupply();
        uint256 queuedShares = IAccountableWithdrawalQueue(vault_).totalQueuedShares();

        uint256 scaleFactor_ = _scaleFactor;

        uint256 debtShares = totalShares - queuedShares;
        uint256 debtValue = debtShares.mulDiv(scaleFactor_, PRECISION);

        uint256 baseReserves = debtValue.mulDiv(_loan.reserveThreshold, BASIS_POINTS);

        uint256 queuedWithdrawalValue = queuedShares.mulDiv(scaleFactor_, PRECISION);
        uint256 processedWithdrawals = IAccountableWithdrawalQueue(vault_).reservedLiquidity();

        return baseReserves + queuedWithdrawalValue + processedWithdrawals;
    }

    /// @dev Returns the available liquidity after accounting for the required reserves
    function _getAvailableLiquidity() internal view returns (uint256) {
        address vault_ = vault;
        uint256 totalAssets = IAccountableVault(vault_).totalAssets();
        uint256 queuedShares = IAccountableWithdrawalQueue(vault_).totalQueuedShares();
        uint256 processedWithdrawals = IAccountableWithdrawalQueue(vault_).reservedLiquidity();
        uint256 requiredReserves = queuedShares.mulDiv(_scaleFactor, PRECISION) + processedWithdrawals;

        return totalAssets > requiredReserves ? totalAssets - requiredReserves : 0;
    }

    /// @dev Returns the available liquidity for processing
    function _getAvailableLiquidityForProcessing(address vault_) internal view returns (uint256) {
        uint256 totalAssets = IAccountableVault(vault_).totalAssets();
        uint256 reservedLiquidity = IAccountableWithdrawalQueue(vault_).reservedLiquidity();

        return totalAssets > reservedLiquidity ? totalAssets - reservedLiquidity : 0;
    }

    /// @dev Updates the interest parameters based on the current fee structure
    function _updateInterestParams() internal {
        uint256 feeFactor = BASIS_POINTS - IFeeManager(feeManager).performanceFee(address(this));
        _netInterestRate = _loan.interestRate.mulDiv(feeFactor, BASIS_POINTS);
    }

    /// @dev Returns the share price at current moment, using the _scaleFactorNet for virtual interest accrual
    ///      Share price required to use decimals precision stored as PRECION in the vault
    /// @return The share price
    function _sharePrice(address) internal view override returns (uint256) {
        if (_isInDepositPeriod()) {
            return PRECISION;
        }

        if (loanState == LoanState.Repaid || loanState == LoanState.InDefaultClaims) {
            return IAccountableVault(vault).assetShareRatio();
        }

        return _scaleFactorNet;
    }

    /// @dev Returns the total amount of reserved accrued assets
    function _accruedAssets(address) internal pure override returns (uint256) {
        return 0;
    }

    /// @dev Checks if the current timestamp is within the deposit period
    function _isInDepositPeriod() internal view returns (bool) {
        return block.timestamp <= _loan.startTime + _loan.depositPeriod;
    }

    /// @dev Checks whether the loan accepts instant redeem/withdrawal
    function _isInstantRedeem() internal view returns (bool) {
        return loanState == LoanState.Repaid || loanState == LoanState.InDefaultClaims;
    }

    /// @dev Checks that deposits are allowed
    function _requireCanDeposit() internal view {
        if (loanState != LoanState.OngoingDynamic) revert DepositNotAllowed();
    }

    /// @dev Checks that the deposit amount is below the max capacity
    function _requireBelowMaxCapacity(uint256 assets) internal view {
        if (assets > maxDeposit(address(0), address(0))) revert ExceedsMaxDeposit();
    }

    /// @dev Hook for UUPS upgradeable contract
    function _authorizeUpgrade(address newImplementation) internal override onlyManagerOrSecurityAdmin {}
}
