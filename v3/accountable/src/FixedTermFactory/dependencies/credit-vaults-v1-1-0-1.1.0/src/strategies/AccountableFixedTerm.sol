// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../constants/Errors.sol";

import {IFeeManager} from "../interfaces/IFeeManager.sol";
import {IAccountableVault} from "../interfaces/IAccountableAsyncVault.sol";
import {IAccountableWithdrawalQueue} from "../interfaces/IAccountableWithdrawalQueue.sol";
import {
    IAccountableFixedTerm,
    InterestParams,
    FixedTermInitParams,
    InterestTotalsCache
} from "../interfaces/IAccountableFixedTerm.sol";

import {
    IAccountableStrategy,
    IStrategyVaultHooks,
    IFeeManagerHooks,
    IAccountableLoan,
    LoanState,
    LoanTerms
} from "../interfaces/IAccountableStrategy.sol";

import {AccountableStrategy} from "../strategies/AccountableStrategy.sol";
import {FixedTermStorage} from "../strategies/storage/FixedTermStorage.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @title AccountableFixedTerm
/// @notice Implementation of a fixed term loan with interest payments
/// @dev Implements IAccountableFixedTerm interface and extends AccountableStrategy for managing loan lifecycle and payments
/// @custom:security-contact security@accountable.capital
contract AccountableFixedTerm is UUPSUpgradeable, ReentrancyGuardUpgradeable, AccountableStrategy, FixedTermStorage {
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ========================================================================== //
    //                          Initialization                                    //
    // ========================================================================== //

    function initialize(FixedTermInitParams memory params) external initializer {
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
        _requireIntervalDurationPair(terms.duration, terms.interestInterval);

        if (borrower == address(0)) revert ZeroAddress();

        _setTerms(terms);
        _updateInterestParams();

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
    /// @dev Capacity related values can be updated alongside action periods
    /// @dev It does not consider interest rate, duration or interval changes
    function updateTerms(LoanTerms memory terms) external onlyManager {
        _requireLoanTermsSet();

        if (terms.maxCapacity < _loan.maxCapacity) revert CapacityTooLow();
        if (terms.acceptGracePeriod > _loan.acceptGracePeriod) revert AcceptGracePeriodTooLong();

        _loan.maxCapacity = terms.maxCapacity;
        _loan.minCapacity = terms.minCapacity;
        _loan.minRedeem = terms.minRedeem;
        _loan.minDeposit = terms.minDeposit;

        _loan.depositPeriod = terms.depositPeriod;
        _loan.acceptGracePeriod = terms.acceptGracePeriod;

        _loan.termsUpdateTime = block.timestamp;

        emit LoanTermsSet(
            terms.minCapacity,
            terms.maxCapacity,
            _loan.interestRate,
            _loan.lateInterestPenalty,
            terms.interestInterval,
            terms.duration
        );
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
    function coverDefault(uint256 assets) external nonReentrant onlySafetyModuleOrManager {
        _requireLoanInDefault();

        loanState = LoanState.InDefaultClaims;

        IAccountableVault(vault).lockAssets(assets, msg.sender);

        emit DefaultCovered(safetyModule, msg.sender, assets);
    }

    /// @inheritdoc IAccountableFixedTerm
    function acceptLoanLocked() external nonReentrant onlyBorrower whenNotPaused {
        _acceptLoan(LoanState.OngoingLocked);
    }

    /// @inheritdoc IAccountableFixedTerm
    function acceptLoanDynamic() external nonReentrant onlyBorrower whenNotPaused {
        _acceptLoan(LoanState.OngoingDynamic);
    }

    /// @dev Accepts the loan and updates the loan state
    function _acceptLoan(LoanState state) private {
        _requireLoanTermsSet();
        _requireLoanNotOngoing();

        if (!_minCapFilled()) revert LoanTermsNotMet();

        _updateInterestParams();

        loanState = state;
        _loan.startTime = block.timestamp;

        uint256 assets = _borrowable(msg.sender);
        if (assets > 0) {
            _updateAndRelease(assets);
        }

        emit LoanAccepted();
    }

    /// @inheritdoc IAccountableFixedTerm
    function reject() external whenNotPaused {
        _requireLoanNotOngoing();

        uint256 depositDeadline = _loan.termsSetTime + _loan.depositPeriod;
        uint256 acceptanceDeadline = depositDeadline + _loan.acceptGracePeriod;

        if (block.timestamp <= acceptanceDeadline) revert LoanTermsNotMet();

        loanState = LoanState.Rejected;

        emit LoanRejected();
    }

    /// @inheritdoc IAccountableFixedTerm
    function claimInterest() external nonReentrant whenNotPaused returns (uint256 claimedInterest) {
        _requireLoanOngoing();

        claimedInterest = _claimPending(msg.sender);

        emit InterestClaimed(msg.sender, claimedInterest);
    }

    /// @dev Claims the pending interest for an account and updates the claimable interest
    function _claimPending(address account) internal returns (uint256 claimedInterest) {
        _settleAccount(account);

        claimedInterest = _pendingInterest[account];
        if (claimedInterest == 0) return 0;

        _pendingInterest[account] = 0;

        uint256 claimable = _loan.claimableInterest;
        _loan.claimableInterest = claimable > claimedInterest ? (claimable - claimedInterest) : 0;

        IAccountableVault(vault).releaseAssets(claimedInterest, account);
    }

    /// @inheritdoc IAccountableLoan
    /// @dev Allows borrowing funds once loan is accepted and limited to the max borrowable amount
    function borrow(uint256 assets) external nonReentrant onlyBorrower whenNotPaused {
        _requireLoanOngoing();

        uint256 borrowable = _borrowable(msg.sender);
        uint256 maxBorrowable = Math.min(borrowable, assets);

        if (maxBorrowable == 0) revert InsufficientAmount();

        _updateAndRelease(maxBorrowable);

        emit Borrowed(msg.sender, maxBorrowable);
    }

    /// @inheritdoc IAccountableLoan
    function repay(uint256) external nonReentrant onlyBorrower whenNotPaused {
        _requireLoanMatured();
        _requireLoanOngoing();

        if (_loan.outstandingInterest > 0) revert LoanCannotBeRepaid();

        uint256 amount = _loan.outstandingPrincipal;
        _loan.outstandingPrincipal = 0;

        loanState = LoanState.Repaid;

        _transferFrom(borrower, address(this), amount);
        IAccountableVault(vault).lockAssets(amount, address(this));

        emit LoanRepaid(amount);
    }

    /// @inheritdoc IAccountableLoan
    function prepay() external nonReentrant onlyBorrower whenNotPaused {
        _requireLoanOngoing();

        uint256 currentInterval =
            _currentInterval(_loan.startTime, _loan.interestInterval, _interestParams.numIntervals);

        if (currentInterval > 0) {
            if (_interestParams.lastPaymentInterval < currentInterval - 1) revert OutstandingInterestPayments();
            if (currentInterval == 1 && _interestParams.lastPaymentInterval == 0) revert OutstandingInterestPayments();
        }

        uint256 amount = _loan.outstandingPrincipal;
        uint256 prepayFee = IFeeManager(feeManager).prepaymentFee(address(this));
        uint256 feeAmount = prepayFee > 0 ? amount.mulDiv(prepayFee, BASIS_POINTS) : 0;

        _loan.outstandingPrincipal = 0;
        _loan.outstandingInterest = 0;
        _loan.drawableFunds = 0;

        loanState = LoanState.Repaid;

        uint256 totalAmount = amount + feeAmount;
        _transferFrom(borrower, address(this), totalAmount);
        IAccountableVault(vault).lockAssets(totalAmount, address(this));

        emit LoanRepaid(amount);
    }

    /// @inheritdoc IAccountableLoan
    function pay(uint256 amount) external nonReentrant onlyBorrower whenNotPaused {
        _requireLoanOngoing();

        uint256 interest;
        uint256 penalties;
        uint256 performanceFee;
        uint256 establishmentFee;
        uint256 managementFee;
        uint256 currentInterval;

        InterestTotalsCache memory ic = _interestTotalsCache();
        (interest, penalties, performanceFee, establishmentFee, managementFee, currentInterval) = _interestTotals(ic);

        uint256 netInterest = (interest - performanceFee - managementFee);
        uint256 totalAmount = (interest + establishmentFee + penalties);
        if (totalAmount == 0) revert NoPaymentDue();
        if (amount < totalAmount) revert InsufficientAmount();

        _interestParams.lastPaymentTime = block.timestamp;
        _interestParams.lastPaymentInterval = currentInterval;

        IAccountableVault vault_ = IAccountableVault(vault);
        _accInterestPerShare += netInterest.mulDiv(PRECISION, vault_.totalSupply());

        _loan.claimableInterest += netInterest;
        _loan.outstandingInterest -= interest;

        _transferFrom(borrower, address(this), totalAmount);
        vault_.lockAssets(netInterest + penalties, address(this));
        IFeeManager(feeManager).collect(asset, performanceFee, managementFee, establishmentFee);

        emit InterestPaid(
            msg.sender, totalAmount, penalties, performanceFee, establishmentFee, managementFee, currentInterval
        );
    }

    // ========================================================================== //
    //                          Hook Overrides                                    //
    // ========================================================================== //

    /// @dev Overriden deposit hook with extra validation logic and balances update
    function onDeposit(address share, uint256 assets, address receiver, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanRequestDeposit();
        _requireMinDepositAmount(assets);
        _requireBelowMaxCapacity(assets);

        _loan.drawableFunds += assets;
        _settleAccount(receiver);

        price = _sharePrice(share);
    }

    /// @dev Overriden mint hook with extra validation logic and balances update
    function onMint(address share, uint256 shares, address receiver, address)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotPaused
        returns (uint256 price)
    {
        _requireCanRequestDeposit();

        price = _sharePrice(share);
        uint256 assets = shares.mulDiv(price, PRECISION, Math.Rounding.Ceil);

        _requireMinDepositAmount(assets);
        _requireBelowMaxCapacity(assets);

        _loan.drawableFunds += assets;
        _settleAccount(receiver);
    }

    /// @dev Overriden onRequestRedeem hook
    function onRequestRedeem(address share, uint256 shares, address, address owner)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotPaused
        returns (bool canFulfill, uint256 price)
    {
        _requireCanRequestRedeem();

        if (_loan.minRedeem > shares) revert InsufficientShares();

        canFulfill = true;

        _claimPending(owner);

        price = _sharePrice(share);
    }

    /// @dev Overriden onTransfer hook to settle interest accumulator checkpoint
    function onTransfer(address, address from, address to, uint256)
        public
        override(AccountableStrategy, IStrategyVaultHooks)
        nonReentrant
        onlyVault
        whenNotPaused
    {
        _settleAccount(from);
        _settleAccount(to);
    }

    /// @inheritdoc IAccountableStrategy
    function setDVNPublisher(address) external pure {
        revert NotSupportedByStrategy();
    }

    /// @inheritdoc IAccountableStrategy
    function publishRate(uint256, uint256) external pure {
        revert NotSupportedByStrategy();
    }

    /// @dev Settle one account's pending interest using current accumulator
    function _settleAccount(address user) internal {
        uint256 shares = IAccountableVault(vault).balanceOf(user);
        uint256 accInterestPerShare_ = _accInterestPerShare;

        if (shares == 0) {
            _userIndex[user] = accInterestPerShare_;
            return;
        }

        uint256 delta = accInterestPerShare_ - _userIndex[user];
        if (delta == 0) return;

        _pendingInterest[user] += (shares * delta) / PRECISION;
        _userIndex[user] = accInterestPerShare_;
    }

    /// @dev Overriden onFeeStructureChange hook
    function onFeeStructureChange() public override(AccountableStrategy, IFeeManagerHooks) nonReentrant {
        super.onFeeStructureChange();

        if (_loan.termsSetTime != 0) {
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
        maxAssets = _maxDeposit();
    }

    // ========================================================================== //
    //                          View Functions                                    //
    // ========================================================================== //

    /// @dev Private function for internal ease of use
    function _maxDeposit() private view returns (uint256) {
        return _loan.maxCapacity - _loan.outstandingPrincipal - _loan.drawableFunds;
    }

    /// @inheritdoc IAccountableLoan
    function timeDelinquent() external view returns (uint256) {
        uint256 gracePeriod_ = _loan.lateInterestGracePeriod;
        uint256 dueInterval = _interestParams.lastPaymentInterval + 1;
        uint256 prevUnpaidDueTime = _loan.startTime + (dueInterval * _loan.interestInterval);

        if (block.timestamp > (prevUnpaidDueTime + gracePeriod_)) {
            return (block.timestamp - (prevUnpaidDueTime + gracePeriod_)) / DAYS_1_SECONDS;
        }

        return 0;
    }

    /// @inheritdoc IAccountableFixedTerm
    function interestData()
        external
        view
        returns (
            uint256 interest,
            uint256 penalties,
            uint256 performanceFee,
            uint256 establishmentFee,
            uint256 managementFee,
            uint256 currentInterval
        )
    {
        InterestTotalsCache memory ic = _interestTotalsCache();
        if (ic.startTime == 0) return (0, 0, 0, 0, 0, 0);

        (interest, penalties, performanceFee, establishmentFee, managementFee, currentInterval) = _interestTotals(ic);
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IAccountableLoan).interfaceId
            || interfaceId == type(IAccountableStrategy).interfaceId
            || interfaceId == type(IAccountableFixedTerm).interfaceId || interfaceId == type(IERC165).interfaceId;
    }

    // ========================================================================== //
    //                          Internal Helper Functions                         //
    // ========================================================================== //

    /// @dev Wrapper function for IERC20 safeTransferFrom
    function _transferFrom(address from, address to, uint256 amount) private {
        IERC20(asset).safeTransferFrom(from, to, amount);
    }

    /// @dev Caches the interest calculation parameters
    ///      This is called when the loan is accepted and terms are final
    function _updateInterestParams() private {
        uint256 duration = _loan.duration;
        uint256 interval = _loan.interestInterval;
        uint256 interestRate = _loan.interestRate;

        uint256 feeFactor = BASIS_POINTS - IFeeManager(feeManager).performanceFee(address(this));
        uint256 rateWithoutFee = interestRate.mulDiv(feeFactor, BASIS_POINTS);

        uint256 durationInYears = duration.mulDiv(PRECISION, DAYS_365_SECONDS);
        uint256 intervalInYears = interval.mulDiv(PRECISION, DAYS_365_SECONDS);

        uint256 lastPaymentInterval = _interestParams.lastPaymentInterval;
        uint256 lastPaymentTime = _interestParams.lastPaymentTime;

        _interestParams = InterestParams({
            intervalRate: interestRate.mulDiv(intervalInYears, BASIS_POINTS), // precision decimals
            netReturn: rateWithoutFee.mulDiv(durationInYears, BASIS_POINTS), // share decimals
            numIntervals: duration / interval, // no decimal precision
            lastPaymentInterval: lastPaymentInterval,
            lastPaymentTime: lastPaymentTime
        });
    }

    /// @dev Updates the loan state and releases the assets to the borrower
    function _updateAndRelease(uint256 assets) private {
        _loan.drawableFunds -= assets;
        _loan.outstandingPrincipal += assets;

        uint256 startTime = _loan.startTime;
        uint256 interval = _loan.interestInterval;
        uint256 numIntervals = _interestParams.numIntervals;
        uint256 intervalRate = _interestParams.intervalRate;

        uint256 currInterval = _currentInterval(startTime, interval, numIntervals);
        _loan.outstandingInterest += _remainingInterest(assets, currInterval, intervalRate, numIntervals);

        IAccountableVault(vault).releaseAssets(assets, msg.sender);
    }

    /// @dev Calculate the share price at current moment, using the virtual balances of the loan
    ///      Share price required to use decimals precision stores as PRECION in the vault
    /// @return The share price
    function _sharePrice(address) internal view override returns (uint256) {
        uint256 one = PRECISION;

        LoanState loanState_ = loanState;
        // If deposits are made during the deposit period, share price is 1:1
        if (_isInDepositPeriod() || loanState_ == LoanState.Rejected) {
            return one;
        }

        // If loan is repaid the share price reflects available assets relative to shares
        if (loanState_ == LoanState.Repaid || loanState_ == LoanState.InDefaultClaims) {
            return IAccountableVault(vault).assetShareRatio();
        }

        // After grace period, the share price reflects the virtual interest accrued
        // The share price will reflect the linear interest accrual every interval
        uint256 netReturn = _interestParams.netReturn;
        uint256 numIntervals = _interestParams.numIntervals;
        uint256 nextInterval = _nextInterval(_loan.startTime, _loan.interestInterval, numIntervals);

        // If the next interval is the last interval the price is the max net return
        if (nextInterval >= numIntervals) {
            return one + netReturn;
        }

        uint256 finalReturn = one + netReturn;
        uint256 remainingIntervals = numIntervals - nextInterval;
        uint256 potentialReturn = one + netReturn.mulDiv(remainingIntervals, numIntervals);

        // Calculate share price: sp = (1 + r_max) / (1 + r_potential)
        uint256 baseSharePrice = finalReturn.mulDiv(one, potentialReturn);

        return baseSharePrice.mulDiv(_managementFeeFactor(), PRECISION);
    }

    /// @notice Calculate management fee factor based on time elapsed since loan start
    /// @dev Returns PRECISION (1.0) if no time elapsed, decays over time based on management fee rate
    /// @return Management fee factor in PRECISION units
    function _managementFeeFactor() internal view returns (uint256) {
        if (_loan.startTime == 0) return PRECISION;

        uint256 mgmtFeeRate = IFeeManager(feeManager).managementFee(address(this));
        if (mgmtFeeRate == 0) return PRECISION;

        uint256 timeElapsed = block.timestamp - _loan.startTime;
        if (timeElapsed == 0) return PRECISION;

        uint256 totalDecay = mgmtFeeRate.mulDiv(timeElapsed, DAYS_365_SECONDS, Math.Rounding.Floor);

        return PRECISION.mulDiv(BASIS_POINTS - totalDecay, BASIS_POINTS, Math.Rounding.Floor);
    }

    /// @dev Returns the total amount of reserved accrued assets
    function _accruedAssets(address) internal view override returns (uint256) {
        return _loan.claimableInterest;
    }

    /// @dev Returns the total amount of drawable assets
    function _borrowable(address) internal view returns (uint256) {
        uint256 drawableFunds = _loan.drawableFunds;
        uint256 reservedLiquidity = IAccountableWithdrawalQueue(vault).reservedLiquidity();

        return drawableFunds > reservedLiquidity ? drawableFunds - reservedLiquidity : 0;
    }

    /// @dev Calculates the current interest payment related values
    function _interestTotals(InterestTotalsCache memory ic)
        private
        view
        returns (
            uint256 interest,
            uint256 penalties,
            uint256 performanceFee,
            uint256 establishmentFee,
            uint256 managementFee,
            uint256 currentInterval
        )
    {
        (uint256 intervalsElapsed, bool isLast) = _intervalsSincePayment(
            block.timestamp, ic.lastPaidTime, ic.startTime, ic.lastPaidInterval, ic.interval, ic.maxIntervals
        );

        interest =
            isLast ? _loan.outstandingInterest : _calculateInterest(ic.principal, ic.intervalRate, intervalsElapsed);

        address feeManager_ = feeManager;
        {
            uint256 performanceRate = IFeeManager(feeManager_).performanceFee(address(this));
            performanceFee = _performanceFee(interest, performanceRate);
        }

        {
            uint256 establishmentFeeRate = IFeeManager(feeManager_).establishmentFee(address(this));
            establishmentFee =
                _prorataFee(ic.principal, establishmentFeeRate, intervalsElapsed, ic.maxIntervals, ic.duration);
        }

        {
            uint256 mgmtFeeRate = IFeeManager(feeManager_).managementFee(address(this));
            managementFee = _prorataFee(ic.principal, mgmtFeeRate, intervalsElapsed, ic.maxIntervals, ic.duration);
        }

        currentInterval = _currentInterval(ic.startTime, ic.interval, ic.maxIntervals);

        penalties = _interestPenalties(interest, block.timestamp, currentInterval, ic);
    }

    /// @dev Calculates the prorated fee for an amount given the elapsed intervals
    function _prorataFee(uint256 amount, uint256 feeRate, uint256 intervals, uint256 maxIntervals, uint256 duration)
        internal
        pure
        returns (uint256)
    {
        if (feeRate == 0 || intervals == 0) return 0;

        uint256 numerator = amount * feeRate * duration * intervals;
        uint256 denominator = DAYS_365_SECONDS * BASIS_POINTS * maxIntervals;
        return Math.mulDiv(numerator, 1, denominator, Math.Rounding.Ceil);
    }

    /// @dev Calculates the performance fee for the amount being paid
    function _performanceFee(uint256 amount, uint256 feeRate) private pure returns (uint256) {
        return amount.mulDiv(feeRate, BASIS_POINTS);
    }

    /// @dev Calculate the total interest owed for the drawn amount in the remaining duration of the loan
    function _remainingInterest(uint256 amount, uint256 currentInterval, uint256 intervalRate, uint256 maxIntervals)
        internal
        pure
        returns (uint256)
    {
        uint256 remainingIntervals = maxIntervals - currentInterval;
        return amount.mulDiv(remainingIntervals * intervalRate, PRECISION);
    }

    /// @dev Calculates the interest for the amount for a number of elapsed intervals
    function _calculateInterest(uint256 amount, uint256 interestRate, uint256 intervals)
        private
        pure
        returns (uint256)
    {
        return amount.mulDiv(interestRate * intervals, PRECISION);
    }

    /// @dev Returns the number of intervals elapsed since last payment
    ///      Bound by max number of intervals of the current loan terms
    ///      Does not check for loan status which can lead to incorrect results due to startTime not being set
    function _intervalsSincePayment(
        uint256 timestamp,
        uint256 lastTime,
        uint256 startTime,
        uint256 lastPaidInterval,
        uint256 interestInterval,
        uint256 maxIntervals
    ) private pure returns (uint256 intervals, bool isLast) {
        uint256 rawElapsed;
        uint256 maxElapsed;

        if (lastTime != 0) {
            if (timestamp <= lastTime) return (0, false);
            rawElapsed = (timestamp - lastTime) / interestInterval;
            maxElapsed = maxIntervals - lastPaidInterval;
        } else {
            if (timestamp <= startTime) return (0, false);
            rawElapsed = (timestamp - startTime) / interestInterval;
            maxElapsed = maxIntervals;
        }

        (intervals, isLast) = rawElapsed >= maxElapsed ? (maxElapsed, true) : (rawElapsed, false);
    }

    /// @dev Calculates the interest penalties at current loan state
    function _interestPenalties(
        uint256 amount,
        uint256 timestamp,
        uint256 currentInterval,
        InterestTotalsCache memory ic
    ) private pure returns (uint256) {
        if (!ic.penaltiesEnabled) return 0;
        if (currentInterval <= ic.lastPaidInterval) return 0;

        uint256 daysOverdue;
        uint256 prevUnpaidDueTime = ic.startTime + ((ic.lastPaidInterval + 1) * ic.interval);
        if (timestamp > (prevUnpaidDueTime + ic.lateGracePeriod)) {
            daysOverdue = (timestamp - (prevUnpaidDueTime + ic.lateGracePeriod)) / DAYS_1_SECONDS;
        }

        return daysOverdue > 0 ? amount.mulDiv(daysOverdue * ic.lateInterestPenalty, BASIS_POINTS) : 0;
    }

    /// @dev Returns the payment interval at a given timestamp
    ///      Bound by max number of intervals of the current loan
    function _currentInterval(uint256 startTime, uint256 interestInterval, uint256 maxIntervals)
        private
        view
        returns (uint256)
    {
        if (startTime == 0) return 0;
        uint256 interval = ((block.timestamp - startTime) / interestInterval);
        return interval > maxIntervals ? maxIntervals : interval;
    }

    /// @dev Returns the next interval at a given timestamp
    ///      Bound by max number of intervals of the current loan terms
    function _nextInterval(uint256 startTime, uint256 interestInterval, uint256 maxIntervals)
        private
        view
        returns (uint256)
    {
        return _currentInterval(startTime, interestInterval, maxIntervals) + 1;
    }

    /// @dev Aggregate storage variables and return as a cache struct
    function _interestTotalsCache() internal view returns (InterestTotalsCache memory) {
        return InterestTotalsCache({
            duration: _loan.duration,
            startTime: _loan.startTime,
            interval: _loan.interestInterval,
            principal: _loan.outstandingPrincipal,
            lateGracePeriod: _loan.lateInterestGracePeriod,
            lateInterestPenalty: _loan.lateInterestPenalty,
            maxIntervals: _interestParams.numIntervals,
            intervalRate: _interestParams.intervalRate,
            lastPaidTime: _interestParams.lastPaymentTime,
            lastPaidInterval: _interestParams.lastPaymentInterval,
            penaltiesEnabled: penaltiesEnabled
        });
    }

    /// @dev Checks that the duration and interest interval are a valid pair
    function _requireIntervalDurationPair(uint256 duration, uint256 interestInterval) private pure {
        if (interestInterval == 0) revert InvalidIntervalLength();
        if (duration < interestInterval) revert InvalidIntervalLength();
        if (duration % interestInterval != 0) revert InvalidIntervalDurationPair();
    }

    /// @dev Checks that the loan is matured
    function _requireLoanMatured() internal view {
        if (block.timestamp < _loan.startTime + _loan.duration && loanState != LoanState.Repaid) {
            revert LoanNotMatured();
        }
    }

    /// @dev Checks that deposits are allowed
    function _requireCanRequestDeposit() internal view {
        if (loanState != LoanState.TermsSet && loanState != LoanState.OngoingDynamic) {
            revert DepositNotAllowed();
        }
    }

    /// @dev Checks that the deposit amount is below the max capacity
    function _requireBelowMaxCapacity(uint256 assets) internal view {
        if (assets > _maxDeposit()) revert ExceedsMaxDeposit();
    }

    /// @dev Checks that redeem requests are allowed
    ///      It allows redemption requests in the following states:
    ///      [InDefaultClaims] || [Repaid] || [Rejected]
    function _requireCanRequestRedeem() internal view {
        if (loanState != LoanState.InDefaultClaims && loanState != LoanState.Repaid && loanState != LoanState.Rejected)
        {
            revert RedeemNotAllowed();
        }
    }

    /// @dev Returns whether the min cap has been filled
    function _minCapFilled() internal view returns (bool) {
        return (_loan.outstandingPrincipal + _loan.drawableFunds) >= _loan.minCapacity;
    }

    /// @dev Checks whether the current timestamp is within the deposit period
    function _isInDepositPeriod() internal view returns (bool) {
        LoanState loanState_ = loanState;
        return block.timestamp <= _loan.termsSetTime + _loan.depositPeriod
            && (loanState_ != LoanState.OngoingLocked && loanState_ != LoanState.OngoingDynamic);
    }

    /// @dev Hook for UUPS upgradeable contract
    function _authorizeUpgrade(address newImplementation) internal override onlyManagerOrSecurityAdmin {}
}
