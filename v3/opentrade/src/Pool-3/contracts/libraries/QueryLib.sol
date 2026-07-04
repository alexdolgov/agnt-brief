//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/ILoan.sol";
import "../interfaces/IPool.sol";
import "../interfaces/IPool.sol";
import "../interfaces/ILoan.sol";

import "../interfaces/IVault.sol";
import "../factories/LoanFactory.sol";
import { IERC20MetadataUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

library QueryLib {
  /*****
      If RequestedLoanState == Requested  -> ApproveNextLoan
      else If RequestedLoanState == ApprovedForDeposits  -> RolloverInitiate
      else If RequestedLoanState == TransitioningFundsIn -> RolloverFinalize
      else If MaturedLoanState == TransitioningFundsOut -> ReleaseRedemptions
      else  CreateNextLoan

    ***/
  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  function calculateRolloverState(
    address poolAddr
  ) internal view returns (IPoolRolloverStateStruct memory rolloverStateStruct) {
    IPoolRolloverState rolloverState;
    IPoolRolloverActor rolloverActor;
    uint256 rolloverTimeToActionWindow;
    uint256 rolloverTimeLeftInActionWindow;
    uint256 rolloverTimePastActionWindow;

    uint256 currentTime = block.timestamp;

    rolloverState = IPoolRolloverState.NotRollingOver;
    rolloverActor = IPoolRolloverActor.Investor;
    rolloverTimeToActionWindow = 0;
    rolloverTimeLeftInActionWindow = 0;
    rolloverTimePastActionWindow = 0;
    IPool pool = IPool(poolAddr);
    ILoan activeLoan;
    ILoan maturedLoan;
    ILoan requestedLoan;

    if (pool.activeLoan() != address(0)) {
      activeLoan = ILoan(pool.activeLoan());
    }
    if (pool.maturedLoan() != address(0)) {
      maturedLoan = ILoan(pool.maturedLoan());
    }
    if (pool.requestedLoan() != address(0)) {
      requestedLoan = ILoan(pool.requestedLoan());
    }

    if (pool.requestedLoan() != address(0)) {
      uint256 rolloverInitTime = requestedLoan.accrualStartTimestamp() -
        (1 days * requestedLoan.transferInWindowDurationDays());

      if (pool.activeLoan() != address(0)) {
        if (activeLoan.redemptionRequestClosingTimestamp() < rolloverInitTime) {
          rolloverInitTime = activeLoan.redemptionRequestClosingTimestamp();
        }
      }

      if (requestedLoan.transitionState() == ILoanTransitionState.Created) {
        rolloverActor = IPoolRolloverActor.PoolAdmin;

        if (rolloverInitTime - 1 days > currentTime) {
          rolloverState = IPoolRolloverState.ApproveNextLoan;
          rolloverTimeLeftInActionWindow = rolloverInitTime - 1 days - currentTime;
        } else if (rolloverInitTime >= currentTime) {
          rolloverState = IPoolRolloverState.LateApproveNextLoan;
          rolloverTimePastActionWindow = rolloverInitTime - currentTime;
        } else {
          rolloverState = IPoolRolloverState.LoanNeedsRescheduling;
          rolloverTimePastActionWindow = currentTime - rolloverInitTime;
        }
      } else if (requestedLoan.transitionState() == ILoanTransitionState.ApprovedForDeposits) {
        rolloverActor = IPoolRolloverActor.PoolAdmin;

        if (rolloverInitTime - 1 days > currentTime) {
          rolloverState = IPoolRolloverState.EarlyRolloverInitiate;
          rolloverTimeToActionWindow = rolloverInitTime - 1 days - currentTime;
        } else if (rolloverInitTime >= currentTime) {
          rolloverState = IPoolRolloverState.RolloverInitiate;
          rolloverTimeLeftInActionWindow = rolloverInitTime - currentTime;
        } else {
          rolloverState = IPoolRolloverState.LateRolloverInitiate;
          rolloverTimePastActionWindow = currentTime - rolloverInitTime;
        }
      } else if (requestedLoan.transitionState() == ILoanTransitionState.TransitioningFundsIn) {
        rolloverActor = IPoolRolloverActor.BorrowerManager;

        if (requestedLoan.accrualStartTimestamp() - 1 days > currentTime) {
          rolloverState = IPoolRolloverState.EarlyRolloverFinalize;
          rolloverTimeToActionWindow = requestedLoan.accrualStartTimestamp() - 1 days - currentTime;
        } else if (requestedLoan.accrualStartTimestamp() >= currentTime) {
          rolloverState = IPoolRolloverState.RolloverFinalize;
          rolloverTimeLeftInActionWindow = requestedLoan.accrualStartTimestamp() - currentTime;
        } else {
          rolloverState = IPoolRolloverState.LateRolloverFinalize;
          rolloverTimePastActionWindow = currentTime - requestedLoan.accrualStartTimestamp();
        }
      } else {
        rolloverActor = IPoolRolloverActor.Investor;
        rolloverState = IPoolRolloverState.NotRollingOver;
      }
    } else if (pool.maturedLoan() != address(0)) {
      uint256 repaymentAmount = maturedLoan.assetsToReturnToPool() + maturedLoan.originationFee();
      uint256 borrowerVaultBalance = IERC20(pool.liquidityAssetAddr()).balanceOf(
        pool.withdrawController().borrowerVault()
      );
      uint256 redemptionAvailableTimestamp = maturedLoan.redemptionAvailableTimestamp();
      if (borrowerVaultBalance < repaymentAmount) {
        rolloverActor = IPoolRolloverActor.BorrowerWallet;
        if (redemptionAvailableTimestamp - 1 days > currentTime) {
          rolloverState = IPoolRolloverState.EarlyRepayWithdrawsAndFees;
          rolloverTimeToActionWindow = redemptionAvailableTimestamp - 1 days - currentTime;
        } else if (redemptionAvailableTimestamp >= currentTime) {
          rolloverState = IPoolRolloverState.RepayWithdrawsAndFees;
          rolloverTimeLeftInActionWindow = redemptionAvailableTimestamp - currentTime;
        } else {
          rolloverState = IPoolRolloverState.LateRepayWithdrawsAndFees;
          rolloverTimePastActionWindow = currentTime - redemptionAvailableTimestamp;
        }
      } else if (maturedLoan.transitionState() == ILoanTransitionState.TransitioningFundsOut) {
        rolloverActor = IPoolRolloverActor.PoolAdmin;
        if (redemptionAvailableTimestamp - 1 days > currentTime) {
          rolloverState = IPoolRolloverState.EarlyReleaseRedemptions;
          rolloverTimeToActionWindow = redemptionAvailableTimestamp - 1 days - currentTime;
        } else if (redemptionAvailableTimestamp >= currentTime) {
          rolloverState = IPoolRolloverState.ReleaseRedemptions;
          rolloverTimeLeftInActionWindow = redemptionAvailableTimestamp - currentTime;
        } else {
          rolloverState = IPoolRolloverState.LateReleaseRedemptions;
          rolloverTimePastActionWindow = currentTime - redemptionAvailableTimestamp;
        }
      } else {
        rolloverActor = IPoolRolloverActor.PoolAdmin;
        rolloverState = IPoolRolloverState.InvalidState;
      }
    } else if (pool.createdLoan() != address(0)) {
      rolloverActor = IPoolRolloverActor.PoolAdmin;

      rolloverState = IPoolRolloverState.ApproveNextLoan;
    } else {
      rolloverActor = IPoolRolloverActor.BorrowerManager;
      rolloverState = IPoolRolloverState.CreateNextLoan;
    }

    return
      IPoolRolloverStateStruct(
        rolloverState,
        rolloverActor,
        rolloverTimeToActionWindow,
        rolloverTimeLeftInActionWindow,
        rolloverTimePastActionWindow
      );
  }

  function getCompleteLoanState(address loanAddr) public view returns (ILoanCompleteState memory loanCompleteState) {
    if (loanAddr == address(0)) {
      return
        ILoanCompleteState(
          address(0),
          address(0),
          address(0),
          address(0),
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          ILoanRolloverAccounting(0, 0, 0, 0, 0, 0),
          false
        );
    }
    ILoan loan = ILoan(loanAddr);
    uint256 principal = loan.principal();
    uint256 indicativeApr = loan.indicativeApr();
    uint256 finalizedApr = loan.finalizedApr();
    address pool = address(loan.pool());
    address poolAsset = IPool(pool).liquidityAssetAddr();

    uint256 state = uint256(loan.state());

    return
      ILoanCompleteState(
        address(loanAddr),
        address(loan.borrower()),
        address(loan.fundingVault()),
        address(loan.pool()),
        state,
        uint256(loan.transitionState()),
        loan.durationDays(),
        principal,
        loan.startingPrincipal(),
        loan.interest(),
        loan.indicativeInterest(),
        loan.originationFee(),
        indicativeApr,
        finalizedApr,
        loan.exchangeRateAtDeposit(),
        loan.exchangeRateAtMaturity(),
        IERC20(poolAsset).balanceOf(address(loan.fundingVault())),
        loan.assetsRolloverToNextLoan(),
        loan.assetsToReturnToPool(),
        loan.assetsFromPool(),
        loan.accrualStartDayTimestamp(),
        loan.accrualStartTimestamp(),
        loan.transferInWindowDurationDays(),
        loan.transferOutWindowDurationDays(),
        loan.depositClosingTimestamp(),
        loan.redemptionRequestClosingTimestamp(),
        loan.maturingTimestamp(),
        loan.redemptionAvailableTimestamp(),
        loan.getRolloverAccounting(),
        loan.canRequestRedemption()
      );
  }

  function getPoolConfigurationState(
    address pool
  ) public view returns (IPoolConfigurationState memory _poolConfigurationState) {
    address poolController = address(IPool(pool).poolController());

    return
      IPoolConfigurationState(
        address(pool),
        address(IPool(pool).admin()),
        address(IPool(pool).poolController()),
        address(IPool(pool).withdrawController().feeVault()),
        address(IPool(pool).withdrawController()),
        IERC20MetadataUpgradeable(pool).name(),
        IERC20MetadataUpgradeable(pool).symbol(),
        address(IPoolController(poolController).settings().borrowerManager),
        IPool(pool).borrowerWalletAddr(),
        // IPoolController(poolController).settings(),
        address(IPool(pool).withdrawController().borrowerVault()),
        IPoolController(poolController).settings().maxCapacity,
        IPoolController(poolController).settings().closeOfBusinessTime,
        IPoolController(poolController).settings().endDate,
        IPool(pool).liquidityAssetAddr()
      );
  }

  function getPoolOverviewState(address poolAddr) public view returns (IPoolOverviewState memory _poolOverviewState) {
    IPool pool = IPool(poolAddr);

    address withdrawController = address(pool.withdrawController());
    IPoolAccountings memory accountings = pool.accountings();

    address liquidityAsset = pool.liquidityAssetAddr();

    ILoanCompleteState memory requestedLoanState;

    requestedLoanState = getCompleteLoanState(pool.requestedLoan());

    ILoanCompleteState memory activeLoanState;

    activeLoanState = getCompleteLoanState(pool.activeLoan());

    ILoanCompleteState memory matureLoanState;
    matureLoanState = getCompleteLoanState(pool.maturedLoan());

    IRedemptionState memory redemptionState = IWithdrawController(withdrawController).redemptionState();

    IPoolRolloverStateStruct memory rolloverStateStruct = calculateRolloverState(poolAddr);
    return
      IPoolOverviewState(
        address(poolAddr),
        pool.settledLoans(),
        uint8(pool.state()),
        uint8(rolloverStateStruct.rolloverState),
        uint8(rolloverStateStruct.rolloverActor),
        rolloverStateStruct.rolloverTimeToActionWindow,
        rolloverStateStruct.rolloverTimeLeftInActionWindow,
        rolloverStateStruct.rolloverTimePastActionWindow,
        pool.totalAvailableAssets(),
        pool.totalAvailableSupply(),
        pool.currentExpectedInterest(),
        pool.liquidityPoolAssets(),
        pool.totalAssets(),
        accountings.outstandingLoanPrincipals,
        accountings.totalAssetsDeposited,
        accountings.totalAssetsWithdrawn,
        IWithdrawController(withdrawController).totalRequestedShares(),
        IWithdrawController(withdrawController).totalRedeemableShares(),
        IWithdrawController(withdrawController).totalWithdrawableAssets(),
        IWithdrawController(withdrawController).totalRequestedAssets(),
        IERC20(liquidityAsset).balanceOf(pool.withdrawController().feeVault()),
        IERC20(liquidityAsset).balanceOf(pool.withdrawController().borrowerVault()),
        IERC20(liquidityAsset).balanceOf(pool.borrowerWalletAddr()),
        IERC20(liquidityAsset).balanceOf(poolAddr),
        pool.exchangeRateAtMaturity(),
        requestedLoanState,
        activeLoanState,
        matureLoanState,
        getCompleteLoanState(pool.createdLoan()),
        redemptionState,
        IWithdrawController(withdrawController).totalEarlyRequestedShares(),
        IWithdrawController(withdrawController).totalEarlyRequestedAssets(),
        IWithdrawController(withdrawController).totalEarlyAcceptedShares(),
        IWithdrawController(withdrawController).totalEarlyAcceptedAssets()
      );
  }

  function getPoolAccountState(
    address pool,
    address account
  ) public view returns (IPoolAccountState memory _poolAccountState) {
    address withdrawController = address(IPool(pool).withdrawController());

    return
      IPoolAccountState(
        address(pool),
        account,
        IPool(pool).balanceOf(account),
        IPool(pool).maxWithdrawRequest(account),
        IPool(pool).maxRedeemRequest(account),
        IPool(pool).maxWithdraw(account),
        IPool(pool).maxRedeem(account),
        IWithdrawController(withdrawController).requestedSharesOf(account),
        IWithdrawController(withdrawController).redeemableSharesOf(account),
        IWithdrawController(withdrawController).requestedAssetsOf(account),
        IWithdrawController(withdrawController).withdrawableAssetsOf(account),
        IWithdrawController(withdrawController).earlyRequestedSharesOf(account),
        IWithdrawController(withdrawController).earlyRequestedAssetsOf(account),
        IWithdrawController(withdrawController).earlyAcceptedSharesOf(account),
        IWithdrawController(withdrawController).earlyAcceptedAssetsOf(account)
      );
  }
}
