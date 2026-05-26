// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./IERC4626.sol";
import "./IServiceConfiguration.sol";
import "../controllers/interfaces/IPoolController.sol";

import "./IPoolBase.sol";
import "../controllers/interfaces/IWithdrawController.sol";

import "./ILoan.sol";
import "../interfaces/IPoolAccessControl.sol";

/* Paired with rolloverTiming field */
enum IPoolRolloverState {
    EarlyRolloverInitiate, // 0 accept Deposits and WithdrawRequests, no early withdraws) transitionTiming = time to expected rollover */
    RolloverInitiate, // 1 no deposits or withdrawRequests)  transitionTiming = time left of  expected rollover */
    LateRolloverInitiate, // 2  transitionTiming = time expected rollover pastDue */
    EarlyRolloverFinalize, // 3 Requested
    RolloverFinalize, // 4 Requested
    LateRolloverFinalize, // 5 Requested
    EarlyRepayWithdrawsAndFees, // 6 Matured loan
    RepayWithdrawsAndFees, // 7 Matured loan
    LateRepayWithdrawsAndFees, // 8 Matured loan
    EarlyReleaseRedemptions, // 9 Matured loan
    ReleaseRedemptions, // 10 Matured loan
    LateReleaseRedemptions, // 11 Matured loan
    CreateNextLoan, // 12
    ApproveNextLoan, //13
    LateApproveNextLoan, //14
    LoanNeedsRescheduling, //15
    NotRollingOver, //16
    InvalidState // 17
}

enum IPoolRolloverActor {
    PoolAdmin, // 0
    BorrowerManager, //1
    BorrowerWallet, //2
    Investor // 3
}

struct IPoolAccountings {
    uint256 totalAvailableAssets;
    uint256 outstandingLoanPrincipals;
    uint256 totalAssetsDeposited;
    uint256 totalAssetsWithdrawn;
}

struct IPoolRolloverStateStruct {
    IPoolRolloverState rolloverState;
    IPoolRolloverActor rolloverActor;
    uint256 rolloverTimeToActionWindow;
    uint256 rolloverTimeLeftInActionWindow;
    uint256 rolloverTimePastActionWindow;
}

struct IPoolConfigurationState {
    address poolAddr;
    address admin;
    address poolController;
    address feeVault;
    address withdrawController;
    string name;
    string symbol;
    address borrowerManager;
    address borrowerWallet;
    address borrowerVault;
    uint256 maxCapacity;
    uint256 closeOfBusinessTime;
    uint256 poolEndDate;
    address liquidityPoolAssetAddr;
}
struct IRedemptionState {
    address[] redemptionLenders;
    uint256[] requestedShares;
    uint256[] redeemableShares;
}
struct IPoolOverviewState {
    address poolAddr;
    address[] settledLoans;
    uint8 state;
    uint8 rolloverState;
    uint8 rolloverActor;
    uint256 rolloverTimeToActionWindow;
    uint256 rolloverTimeLeftInActionWindow;
    uint256 rolloverTimePastActionWindow;
    uint256 totalAvailableAssets;
    uint256 totalAvailableSupply;
    uint256 currentExpectedInterest;
    uint256 liquidityPoolAssets;
    uint256 totalAssets;
    uint256 totalOutstandingLoanPrincipal;
    uint256 totalAssetsDeposited;
    uint256 totalAssetsWithdrawn;
    uint256 totalRequestedShares;
    uint256 totalRedeemableShares;
    uint256 totalWithdrawableAssets;
    uint256 totalRequestedAssets;
    uint256 feeVaultBalance;
    uint256 borrowerVaultBalance;
    uint256 borrowerWalletBalance;
    uint256 poolBalance;
    uint256 exchangeRateAtMaturity;
    ILoanCompleteState requestedLoanState;
    ILoanCompleteState activeLoanState;
    ILoanCompleteState maturedLoanState;
    ILoanCompleteState createdLoanState;
    IRedemptionState redemptionState;
    uint256 totalEarlyRequestedShares;
    uint256 totalEarlyRequestedAssets;
    uint256 totalEarlyAcceptedShares;
    uint256 totalEarlyAcceptedAssets;
}

struct IPoolAccountState {
    address poolAddr;
    address accountAddr;
    uint256 balance;
    uint256 maxWithdrawRequest;
    uint256 maxRedeemRequest;
    uint256 maxWithdraw;
    uint256 maxRedeem;
    uint256 requestedSharesOf;
    uint256 redeemableSharesOf;
    uint256 requestedAssetsOf;
    uint256 withdrawableAssetsOf;
    uint256 earlyRequestedSharesOf;
    uint256 earlyRequestedAssetsOf;
    uint256 earlyAcceptedSharesOf;
    uint256 earlyAcceptedAssetsOf;
}

struct PoolAddressList {
    address liquidityAsset;
    address poolAdmin;
    address serviceConfiguration;
    address withdrawControllerFactory;
    address poolControllerFactory;
    address vaultFactory;
    address poolAccessControlFactory;
    address poolRegistry;
}

/**
 * @title The interface for liquidity pools.
 */
interface IPool is IPoolBase {
    event Deposit(
        address indexed sender,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev The PoolController contract
     */
    function poolController() external view returns (IPoolController);

    /**
     * @dev The WithdrawController contract
     */
    function withdrawController() external view returns (IWithdrawController);

    /**
     * @dev The current configurable pool settings.
     */
    function settings()
        external
        view
        returns (IPoolConfigurableSettings calldata settings);

    /**
     * @dev The current pool state.
     */
    function state() external view returns (IPoolLifeCycleState);

    /**
     * @dev The pool accounting variables;
     */
    function accountings() external view returns (IPoolAccountings memory);

    function closeOfBusinessTime() external view returns (uint256);

    /**
     * @dev Callback from the pool controller when the pool is activated
     */
    function onActivated() external;

    function initiateRollover(address loan, address priorLoan) external;

    function completeRolloverNetPayment(address) external;

    function withdrawFeeVault(uint256 amount, address receiver) external;

    function loanCreated(address loan) external;

    function reschedule(
        address loan,
        uint256 accrualStartDayTimestamp,
        uint256 transferInWindowDurationDays,
        uint256 transferOutWindowDurationDays,
        uint256 durationDays
    ) external;

    function redemptionState()
        external
        view
        returns (IRedemptionState memory _redemptionState);

    function releaseRolloverRedemption(address owner) external;

    function exchangeRateAtMaturity()
        external
        view
        returns (uint256 _exchangeRateAtMaturity);

    function exchangeRateAtDeposit() external view returns (uint256);

    /**
     * @dev Calculate the total amount of underlying assets held by the vault,
     * excluding any assets due for withdrawal.
     */
    function totalAvailableAssets() external view returns (uint256);

    /**
     * @dev The total available supply that is not marked for withdrawal
     */
    function totalAvailableSupply() external view returns (uint256);

    /**
     * @dev The accrued interest at the current block.
     */
    function currentExpectedInterest() external view returns (uint256 interest);

    function rolloverAndFinalizeApr(uint256 _apr) external;

    /*//////////////////////////////////////////////////////////////
                       LOAN SET OPERATIONS
//////////////////////////////////////////////////////////////*/

    function approveLoanForPool(address loan) external;

    function createdLoan() external view returns (address);

    function activeLoan() external view returns (address);

    function requestedLoan() external view returns (address);

    function maturedLoan() external view returns (address);

    function settledLoans() external view returns (address[] memory);

    /*//////////////////////////////////////////////////////////////
                         Early Withdraw
   //////////////////////////////////////////////////////////////*/

    function requestEarlyRedeem(uint256 shares) external;

    function acceptEarlyRedeemRequest(
        address investorAddr
    ) external returns (uint256 principal);

    function repayEarlyWithdraw(
        address investorAddr,
        uint256 amount
    )
        external
        returns (
            uint256 principal,
            uint256 repayment,
            uint256 redeemedShares,
            uint256 fees
        );

    function deposit(
        uint256 assets,
        address lender
    ) external returns (uint256 shares);

    function convertToAssets(
        uint256 shares
    ) external view returns (uint256 assets);

    function convertToShares(
        uint256 assets
    ) external view returns (uint256 shares);

    function maxWithdraw(address owner) external view returns (uint256 assets);

    function maxRedeem(address owner) external view returns (uint256 maxShares);

    function totalAssets() external view returns (uint256);

    function asset() external view returns (address);
}
