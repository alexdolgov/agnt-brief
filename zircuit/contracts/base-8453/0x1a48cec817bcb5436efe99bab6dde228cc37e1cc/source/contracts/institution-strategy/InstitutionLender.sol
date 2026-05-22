// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

import { IInstitutionLender } from "./interfaces/IInstitutionLender.sol";
import { ZircuitBaseStrategy } from "../ZircuitBaseStrategy.sol";
import { ERC20 } from "../tokenized-strategy/BaseStrategy.sol";

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract InstitutionLender is
    IInstitutionLender,
    ZircuitBaseStrategy,
    ReentrancyGuard
{
    using SafeERC20 for ERC20;

    // Institution address that receives deployed funds
    address public institutionReceiver;

    // Institution address that sends returned funds back
    address public institutionSender;

    // Third party oracle to report available funds
    address public auditOracle;

    // Total AUM (two-step update)
    InvestmentAccounting public currentInvestment;
    InvestmentAccounting public pendingCurrentInvestment;

    // Investment cap (two-step update)
    uint256 public investmentCap;
    uint256 public pendingInvestmentCap;
    uint256 public investmentCapProposedAt;

    uint256 public nextWithdrawalId;

    // Invariant: at most one of unreconciledRepayments or pendingToWithdraw is nonzero
    // Tracks the amount of funds that are pending to be withdrawn, so
    // lender can't request more funds than invested
    uint256 public pendingToWithdraw;

    // Simple counter to flag that we need to reconcile repayments
    uint256 public unreconciledRepayments;

    // Funds reserved after withdrawals from institution, need to be unlocked
    // before reinvesting
    uint256 public reservedIdle;

    // Funds not expected to be returned by the institution
    // intended to account for errors, rounding up, dust
    uint256 public excessReturns;

    uint256 public immutable withdrawalMaxTime;

    // Used in pre and post withdrawal hooks to track withdrawn amount.
    uint256 public preWithdrawalBalance;

    constructor(
        address _asset,
        string memory _name,
        address _institutionReceiver,
        address _institutionSender,
        uint256 _investmentCap,
        uint256 _withdrawalMaxTime
    ) ZircuitBaseStrategy(_asset, _name) {
        if (_institutionReceiver == address(0)) revert AddressCannotBeZero();
        institutionReceiver = _institutionReceiver;
        institutionSender = _institutionSender;
        investmentCap = _investmentCap;
        withdrawalMaxTime = _withdrawalMaxTime;
    }

    ////////////////////////////////////////////////////////////////
    //                  MANAGEMENT SETTERS                        //
    ////////////////////////////////////////////////////////////////

    function setInstitutionReceiver(
        address _institutionReceiver
    ) external onlyManagement {
        if (_institutionReceiver == address(0)) revert AddressCannotBeZero();
        emit InstitutionReceiverChanged(
            institutionReceiver,
            _institutionReceiver
        );
        institutionReceiver = _institutionReceiver;
    }

    function setInstitutionSender(
        address _institutionSender
    ) external onlyManagement {
        if (_institutionSender == address(0)) revert AddressCannotBeZero();
        emit InstitutionSenderChanged(institutionSender, _institutionSender);
        institutionSender = _institutionSender;
    }

    function setAuditOracle(address _auditOracle) external onlyManagement {
        if (_auditOracle == address(0)) revert AddressCannotBeZero();
        emit AuditOracleChanged(auditOracle, _auditOracle);
        auditOracle = _auditOracle;
    }

    modifier onlyAuditOracle() {
        if (msg.sender != auditOracle) revert CallerMustBeAuditOracle();
        _;
    }

    modifier onlyInstitutionSender() {
        if (msg.sender != institutionSender)
            revert CallerMustBeInstitutionSender();
        _;
    }
    ////////////////////////////////////////////////////////////////
    //          For Institution to request/return funds           //
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Audit Oracle (managed by institution) reports the total assets
     * @dev This is the first step of two-step setter
     * @param _totalAssetAmount Total asset amount
     */
    function reportTotalAsset(
        uint256 _totalAssetAmount
    ) external onlyAuditOracle {
        emit AssetsReported(_totalAssetAmount);
        pendingCurrentInvestment.amount = _totalAssetAmount;
        pendingCurrentInvestment.timestamp = block.timestamp;
    }

    /**
     * @notice Proposes a new investment cap
     * @dev First step of two-step setter
     * @param _investmentCap New cap amount
     */
    function proposeInvestmentCap(
        uint256 _investmentCap
    ) external onlyAuditOracle {
        pendingInvestmentCap = _investmentCap;
        investmentCapProposedAt = block.timestamp;
        emit InvestmentCapProposed(_investmentCap);
    }

    /**
     * @notice Institution returns funds
     * @dev Tracks excess returns separately for explicit management review
     * @param _amount Amount to return
     */
    function returnFunds(
        uint256 _amount
    ) external onlyInstitutionSender nonReentrant {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();

        asset.safeTransferFrom(msg.sender, address(this), _amount);

        uint256 expectedAmount = _amount;
        uint256 excessAmount = 0;

        // If returning more than current investment, split into expected + excess
        // Track excess separately - not accounted until management approves
        if (_amount > currentInvestment.amount) {
            excessAmount = _amount - currentInvestment.amount;
            expectedAmount = currentInvestment.amount;

            excessReturns += excessAmount;

            emit ExcessReceived(excessAmount);
        }

        // Update current investment
        currentInvestment.amount -= expectedAmount;
        currentInvestment.timestamp = block.timestamp;

        // Apply received funds to pending withdrawals
        uint256 amountToApply = expectedAmount > pendingToWithdraw
            ? pendingToWithdraw
            : expectedAmount;
        pendingToWithdraw -= amountToApply;

        // Whatever remains after settling pending withdrawals is added to unreconciled repayments
        uint256 remainingFunds = expectedAmount - amountToApply;
        unreconciledRepayments += remainingFunds;

        // Lock ALL funds (expected + excess) as not ready for redeployment
        // We don't add the part that was applied to withdrawals as this was
        // already accounted for in signalWithdraw() which also increases reservedIdle
        reservedIdle += remainingFunds + excessAmount;

        emit RepaymentReceived(_amount, amountToApply, excessAmount);
    }

    ////////////////////////////////////////////////////////////////
    //                     Management                             //
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Accepts the pending investment cap
     * @dev Second step of two-step setter, can only be called by management
     */
    function acceptInvestmentCap(
        uint256 _investmentCap
    ) external onlyManagement {
        if (investmentCapProposedAt == 0) revert NoPendingCap();
        if (_investmentCap != pendingInvestmentCap) revert InvalidCap();

        uint256 oldCap = investmentCap;
        investmentCap = pendingInvestmentCap;

        // Clear pending state
        pendingInvestmentCap = 0;
        investmentCapProposedAt = 0;

        emit InvestmentCapAccepted(oldCap, investmentCap);
    }

    /**
     * @notice Accepts the pending total asset report
     * @dev Second step of two-step setter, can only be called by keepers
     * @param _totalAssetAmount Total asset amount
     */
    function acceptReportTotalAsset(
        uint256 _totalAssetAmount
    ) external onlyKeepers {
        if (pendingCurrentInvestment.timestamp <= currentInvestment.timestamp) {
            revert OldReport();
        }

        // This is to protect from front-running of the AuditOracle
        if (_totalAssetAmount != pendingCurrentInvestment.amount) {
            revert UnexpectedTotalAssetAmount();
        }

        emit ReportAccepted(currentInvestment.amount, _totalAssetAmount);
        currentInvestment.amount = pendingCurrentInvestment.amount;
        currentInvestment.timestamp = pendingCurrentInvestment.timestamp;
        pendingCurrentInvestment.amount = 0;
    }

    ////////////////////////////////////////////////////////////////
    //                   Withdrawal Requests                      //
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Emits event to tell institutions that a withdrawal request is being made
     * @param _amount Amount to withdraw
     */
    function signalWithdraw(uint256 _amount) external onlyKeepers {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();
        if (
            _amount + pendingToWithdraw >
            currentInvestment.amount + unreconciledRepayments
        ) {
            revert MoreThanInvested();
        }

        uint256 deadline = block.timestamp + withdrawalMaxTime;

        // If there are any unreconciled repayments, apply them towards the withdrawal
        uint256 repaymentToApply = unreconciledRepayments > _amount
            ? _amount
            : unreconciledRepayments;
        unreconciledRepayments -= repaymentToApply;

        // remainingRepayment is the amount that the institution needs to pay back
        // to fulfill the withdrawal
        uint256 remainingRepayment = _amount - repaymentToApply;
        pendingToWithdraw += remainingRepayment;

        // We add remaining payment to reserved idle, because we want any future
        // deposits up to this point to be available for withdrawal
        reservedIdle += remainingRepayment;

        emit WithdrawalSignal(
            nextWithdrawalId++,
            _amount,
            remainingRepayment,
            deadline
        );
    }

    /**
     * @notice Cancels a withdrawal amount
     * @dev Can only be called by keepers
     * @param _amount The withdrawal amount to cancel
     */
    function cancelWithdrawal(uint256 _amount) external onlyKeepers {
        if (pendingToWithdraw < _amount) revert NotEnoughPendingWithdrawals();

        pendingToWithdraw -= _amount;
        reservedIdle -= _amount;

        emit CancelWithdrawal(_amount);
    }

    /**
     * @notice Releases reserved idle funds, so they are available for reinvestment
     * @dev Can only be called by keepers
     * @param _amount Amount of idle to release
     */
    function releaseReservedIdle(uint256 _amount) external onlyKeepers {
        // Cannot release funds that include unreviewed excess returns
        // reservedIdle should never be less than excessReturns.
        uint256 releasableIdle = reservedIdle -
            excessReturns -
            unreconciledRepayments -
            pendingToWithdraw;

        if (_amount > releasableIdle) _amount = releasableIdle;

        reservedIdle -= _amount;
        emit ReservedIdleReleased(_amount);
    }

    /**
     * @notice Returns excess funds back to institution (e.g., fat finger error)
     * @dev Reduces excessReturns and sends tokens back
     * @param _amount Amount of excess to return to institution
     */
    function returnExcessToInstitution(
        uint256 _amount
    ) external onlyManagement {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();
        if (_amount > excessReturns) revert ExceedsTrackedExcess();

        excessReturns -= _amount;
        reservedIdle -= _amount;

        asset.safeTransfer(institutionReceiver, _amount);
        emit ExcessReturned(_amount);
    }

    /**
     * @notice Accepts excess returns as legitimate (e.g., interest, early return)
     * @dev Converts excessReturns into accounted currentInvestment
     * @param _amount Amount of excess to accept
     */
    function acceptExcessReturns(uint256 _amount) external onlyManagement {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();
        if (_amount > excessReturns) revert ExceedsTrackedExcess();

        excessReturns -= _amount;
        // Funds already in reservedIdle, no need to move them
        // Just recognize them - they can be released via releaseReservedIdle later

        emit ExcessAccepted(_amount);
    }

    /*//////////////////////////////////////////////////////////////
                NEEDED TO BE OVERRIDDEN BY STRATEGIST
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Should deploy up to '_amount' of 'asset' in the yield source.
     *
     * This function is called at the end of a {deposit} or {mint}
     * call. Meaning that unless a whitelist is implemented it will
     * be entirely permissionless and thus can be sandwiched or otherwise
     * manipulated.
     *
     * @param _amount The amount of 'asset' that the strategy should attempt
     * to deposit in the yield source.
     */
    function _deployFunds(uint256 _amount) internal override {
        // Respect the reservation - don't deploy reserved idle
        uint256 investableIdle = _amount > reservedIdle
            ? _amount - reservedIdle
            : 0;

        // Respect the investment cap
        uint256 availableCap = investmentCap > currentInvestment.amount
            ? investmentCap - currentInvestment.amount
            : 0;

        // Deploy the minimum of what's available and what's allowed
        uint256 toInvest = investableIdle < availableCap
            ? investableIdle
            : availableCap;

        if (toInvest == 0) return;

        // Transfer the assets to the institution address
        asset.safeTransfer(institutionReceiver, toInvest);

        // Update the current investment
        currentInvestment.amount += toInvest;
        currentInvestment.timestamp = block.timestamp;

        emit Invest(toInvest);
    }

    // Don't count excess returns until management accepts them
    function balanceOfAsset() public view returns (uint256) {
        uint256 balance = asset.balanceOf(address(this));
        return balance > excessReturns ? balance - excessReturns : 0;
    }

    /**
     * @notice Gets the max amount of `asset` that can be withdrawn.
     * @dev Defaults to an unlimited amount for any address. But can
     * be overridden by strategists.
     *
     * This function will be called before any withdraw or redeem to enforce
     * any limits desired by the strategist. This can be used for illiquid
     * or sandwichable strategies. It should never be lower than `totalIdle`.
     *
     *   EX:
     *       return TokenizedStrategy.totalIdle();
     *
     * This does not need to take into account the `_owner`'s share balance
     * or conversion rates from shares to assets.
     *
     * @param . The address that is withdrawing from the strategy.
     * @return . The available amount that can be withdrawn in terms of `asset`
     */
    function availableWithdrawLimit(
        address /*_owner*/
    ) public view override returns (uint256) {
        uint256 _reservedIdle = reservedIdle;

        uint256 withdrawableIdle = _reservedIdle >= excessReturns
            ? _reservedIdle - excessReturns
            : 0; //Second case should never happen as excessReturns is always <= _reservedIdle

        uint256 balance = balanceOfAsset();

        //Take the min of the two numbers. This ensures:
        //1. We are not withdrawing more than the balance of the contract (less the excess returns)
        //2. We are not withdrawing such that excessReturns ends up greater than reservedIdle
        //Case #2 will be rare as it requires that the asset balance is greater than the reservedIdle. This only happens if:
        //releaseReservedIdle is called and the released funds have not yet been deployed to the institution
        //direct transfers of the asset are made to the contract
        uint256 withdrawableAmount = balance > withdrawableIdle
            ? withdrawableIdle
            : balance;

        return withdrawableAmount;
    }

    /**
     * _freeFunds() is unreachable. If there aren't enough funds in the contract for the withdrawalTokenizedStrategy will
     * revert with either `ERC4626: withdraw more than max` or `ERC4626: redeem more than max` because of the
     * availableWithdrawLimit() override.
     */
    function _freeFunds(uint256 /* _amount */) internal pure override {
        // Centralized Lending cannot free funds on-chain,
        // it must go through the signal and return
        revert NotSupported();
    }

    function _harvestAndReport()
        internal
        override
        returns (uint256 _totalAssets)
    {
        _totalAssets = currentInvestment.amount + balanceOfAsset();
        // If the institution returns funds for a withdrawal that was already
        // filled by subsequent deposits, we want to invest the funds
        // The logic for how much to invest is in _deployFunds
        _deployFunds(asset.balanceOf(address(this)));
    }

    function _preWithdrawHook(
        uint256 /* assets */,
        uint256 /* shares */,
        address /* receiver */,
        address /* owner */,
        uint256 /* maxLoss */
    ) internal override {
        preWithdrawalBalance = asset.balanceOf(address(this));
    }

    function _postWithdrawHook(
        uint256 /* assets */,
        uint256 /* shares */,
        address /* receiver */,
        address /* owner */,
        uint256 /* maxLoss */
    ) internal override {
        uint256 _reservedIdle = reservedIdle;
        uint256 postWithdrawalBalance = asset.balanceOf(address(this));
        uint256 withdrawnAmount = preWithdrawalBalance > postWithdrawalBalance
            ? preWithdrawalBalance - postWithdrawalBalance
            : 0;
        preWithdrawalBalance = 0;
        reservedIdle = (_reservedIdle > withdrawnAmount)
            ? _reservedIdle - withdrawnAmount
            : 0;
    }
}
