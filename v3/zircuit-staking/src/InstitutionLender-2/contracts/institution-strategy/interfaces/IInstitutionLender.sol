// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

interface IInstitutionLender {
    struct InvestmentAccounting {
        uint256 amount;
        uint256 timestamp;
    }

    event WithdrawalSignal(
        uint256 indexed id,
        uint256 withdrawalAmount, // The full amount requested for withdrawal. Part of this may be covered by prior repayments
        uint256 remainingRepayment, // The part of the withdrawalAmount that is not covered by prior repayments. The institution has to pay this amount back
        uint256 deadline
    );
    event CancelWithdrawal(uint256 indexed amount);
    event Invest(uint256 amount);
    event RepaymentReceived(
        uint256 amount, // Total repayment received
        uint256 amountApplied, // The amount of repayment that was applied to pending withdrawals
        uint256 excess // The amount of repayment that exceeded the investment
    );

    event ReservedIdleReleased(uint256 amount);
    event ExcessReturned(uint256 amount);
    event ExcessAccepted(uint256 amount);
    event ExcessReceived(uint256 amount);
    event InvestmentCapProposed(uint256 newCap);
    event InvestmentCapAccepted(uint256 oldCap, uint256 newCap);
    event InvestmentCapCancelled(uint256 cancelledCap);
    event AssetsReported(uint256 totalAssets);
    event ReportAccepted(uint256 oldTotalAssets, uint256 newTotalAssets);

    event InstitutionReceiverChanged(
        address oldInstitutionReceiver,
        address newInstitutionReceiver
    );
    event InstitutionSenderChanged(
        address oldInstitutionSender,
        address newInstitutionSender
    );

    event AuditOracleChanged(address oldAuditOracle, address newAuditOracle);

    error OldReport();
    error UnexpectedTotalAssetAmount();
    error MoreThanInvested();
    error NotSupported();
    error AmountMustBeGreaterThanZero();
    error AddressCannotBeZero();
    error CallerMustBeAuditOracle();
    error CallerMustBeInstitutionSender();
    error NoPendingCap();
    error InvalidCap();
    error NotEnoughPendingWithdrawals();
    error ExceedsTrackedExcess();

    function institutionReceiver() external view returns (address);
    function currentInvestment() external view returns (uint256, uint256);
    function pendingCurrentInvestment()
        external
        view
        returns (uint256, uint256);
    function reservedIdle() external view returns (uint256);
    function unreconciledRepayments() external view returns (uint256);
    function excessReturns() external view returns (uint256);
    function nextWithdrawalId() external view returns (uint256);
    function investmentCap() external view returns (uint256);
    function pendingInvestmentCap() external view returns (uint256);
    function investmentCapProposedAt() external view returns (uint256);
    function signalWithdraw(uint256 _amount) external;
    function setInstitutionReceiver(address _institutionReceiver) external;
    function setInstitutionSender(address _institutionSender) external;
    function setAuditOracle(address _auditOracle) external;
    function auditOracle() external view returns (address);
    function reportTotalAsset(uint256 _totalAssetAmount) external;
    function returnFunds(uint256 _amount) external;
    function proposeInvestmentCap(uint256 _investmentCap) external;
    function acceptInvestmentCap(uint256 _investmentCap) external;
    function releaseReservedIdle(uint256 _amount) external;
    function returnExcessToInstitution(uint256 _amount) external;
    function acceptExcessReturns(uint256 _amount) external;
    function acceptReportTotalAsset(uint256 _totalAssetAmount) external;
    function cancelWithdrawal(uint256 _amount) external;
}
