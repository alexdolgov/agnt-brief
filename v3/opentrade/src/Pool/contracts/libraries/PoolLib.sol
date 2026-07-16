//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IPoolStructures.sol";
import "../interfaces/ILoan.sol";
import "../interfaces/IPool.sol";
import "../interfaces/IPoolRegistry.sol";
// import "../controllers/interfaces/IPoolController.sol";
// import "../interfaces/IVault.sol";
// import "../factories/LoanFactory.sol";

/**
 * @title Collection of functions used by the Pool and PoolController.
 */
library PoolLib {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;
  using EnumerableSet for EnumerableSet.AddressSet;

  uint256 public constant RAY = 10 ** 27;

  /**
   * @dev See IERC4626
   */
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);
  event RedeemReleased(address indexed lender, address indexed loan, uint256 shares, uint256 assets);
  event RedeemRequested(address indexed lender, address indexed loan, uint256 assets, uint256 shares);
  event Redeem(address indexed lender, address indexed loan, uint256 shares, uint256 assets);

  event WithdrawEarlyRepay(
    address indexed lender,
    address indexed loan,
    uint256 shares,
    uint256 principal,
    uint256 repayment,
    uint256 fees
  );
  event WithdrawFeeVault(address indexed receiver, uint256 amount);
  event LoanRepayment(address indexed loan, uint256 feeAmount, uint256 assetsReturnedToPool);
  event LoanRolloverInitiated(
    address indexed loan,
    address indexed priorLoan,
    uint256 assetsFromPriorToNextLoan,
    uint256 assetsFromPool,
    uint256 assetToAReturnToPool
  );

  event LoanMatured(address indexed loan);

  event LoanRolloverFinalized(address indexed loan, address indexed priorLoan);

  error InvalidAccess();
  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  /**
   * @dev Private method to determine if a pool is solvent given
   * the parameters.
   *
   * If the pool has assets, it is solvent. If no assets are available,
   * but no shares have been issued, it is solvent. Otherwise, it is insolvent.
   */
  function isSolvent(uint256 totalAssets, uint256 totalShares) private pure returns (bool) {
    return totalAssets > 0 || totalShares == 0;
  }

  /**
   * @dev Calculates total assets held by Vault (including those marked for withdrawal)
   * @param asset Amount of total assets held by the Vault
   * @param vault Address of the ERC4626 vault
   * @param outstandingLoanPrincipals Sum of all outstanding loan principals
   * @return totalAssets Total assets
   */
  function calculateTotalAssets(
    address asset,
    address vault,
    uint256 outstandingLoanPrincipals,
    uint256 currentExpectedInterest
  ) public view returns (uint256 totalAssets) {
    totalAssets = IERC20(asset).balanceOf(vault) + outstandingLoanPrincipals + currentExpectedInterest;
  }

  /**
   * @dev Calculates total assets held by Vault (excluding marked for withdrawal)
   * @param asset Amount of total assets held by the Vault
   * @param vault Address of the ERC4626 vault
   * @param outstandingLoanPrincipals Sum of all outstanding loan principals
   * @param withdrawableAssets Sum of all withdrawable assets
   * @return totalAvailableAssets Total available assets (excluding marked for withdrawal)
   */
  function calculateTotalAvailableAssets(
    address asset,
    address vault,
    uint256 outstandingLoanPrincipals,
    uint256 withdrawableAssets,
    address loanAddr
  ) external view returns (uint256 totalAvailableAssets) {
    if (loanAddr != address(0)) {
      ILoan loan = ILoan(loanAddr);

      totalAvailableAssets =
        IERC20(asset).balanceOf(vault) +
        //loan.outstandingPrincipal() +
        outstandingLoanPrincipals +
        loan.interest() -
        withdrawableAssets;
    } else {
      totalAvailableAssets = IERC20(asset).balanceOf(vault) + outstandingLoanPrincipals - withdrawableAssets;
    }
  }

  /**
   * @dev Calculates total shares held by Vault (excluding marked for redemption)
   * @param vault Address of the ERC4626 vault
   * @param redeemableShares Sum of all withdrawable assets
   * @return totalAvailableShares Total redeemable shares (excluding marked for redemption)
   */
  function calculateTotalAvailableShares(
    address vault,
    uint256 redeemableShares
  ) external view returns (uint256 totalAvailableShares) {
    totalAvailableShares = IERC20(vault).totalSupply() - redeemableShares;
  }

  /**
   * @dev Calculates the max deposit allowed in the pool
   * @param isActiveState The current pool lifecycle state
   * @param poolMaxCapacity Max pool capacity allowed per the pool settings
   * @param totalAvailableAssets Sum of all pool assets (excluding marked for withdrawal)
   * @return Max deposit allowed
   */
  function calculateMaxDeposit(
    bool isActiveState,
    uint256 poolMaxCapacity,
    uint256 totalAvailableAssets
  ) external pure returns (uint256) {
    uint256 remainingCapacity = poolMaxCapacity > totalAvailableAssets ? poolMaxCapacity - totalAvailableAssets : 0;
    return isActiveState ? remainingCapacity : 0;
  }

  /*//////////////////////////////////////////////////////////////
                    Withdrawal Request Methods
    //////////////////////////////////////////////////////////////*/

  function executeInitiateRollover(
    address loan,
    address priorLoan,
    address pool,
    IPoolAccountings storage accountings
  ) external {
    // returns (uint256 assetsFromPool, uint256 assetsFromPriorToNextLoan, uint256 assetToAReturnToPool) {
    IPool poolContract = IPool(pool);
    address liquidityAsset = poolContract.liquidityAssetAddr();
    IERC20 liquidiityAssetContract = IERC20(liquidityAsset);
    uint256 assetsFromPool;
    uint256 assetsFromPriorToNextLoan;
    uint256 assetToAReturnToPool;
    require(
      address(poolContract.poolController()) != address(0) && msg.sender == address(IPool(pool).poolController()),
      "PoolLib: caller is not pool controller"
    );
    uint256 totalSupply;
    if (priorLoan == address(0)) {
      accountings.outstandingLoanPrincipals = liquidiityAssetContract.balanceOf(pool);
      // require(
      //     IPool(pool).totalAvailableSupply() > 0,
      //     "No Funds to start loan"
      // );

      assetsFromPool = accountings.outstandingLoanPrincipals;
      assetsFromPriorToNextLoan = 0;
      totalSupply = poolContract.totalAvailableSupply();
      assetToAReturnToPool = 0;
    } else {
      uint256 requestedAssets = (
        poolContract.withdrawController().totalRequestedShares().mul(poolContract.exchangeRateAtMaturity())
      ).div(1e18);
      uint256 poolBalance = liquidiityAssetContract.balanceOf(pool);
      totalSupply = poolContract.totalAvailableSupply() - poolContract.withdrawController().totalRequestedShares();

      if (requestedAssets < poolBalance) {
        assetsFromPool = poolBalance - requestedAssets;
        assetsFromPriorToNextLoan = ILoan(priorLoan).principal() + ILoan(priorLoan).interest();

        assetToAReturnToPool = 0;
        accountings.outstandingLoanPrincipals = accountings.outstandingLoanPrincipals + assetsFromPool;
      } else {
        assetsFromPool = 0;
        assetsFromPriorToNextLoan =
          poolBalance +
          ILoan(priorLoan).principal() +
          ILoan(priorLoan).interest() -
          requestedAssets;

        assetToAReturnToPool = requestedAssets - liquidiityAssetContract.balanceOf(pool);

        accountings.outstandingLoanPrincipals =
          accountings.outstandingLoanPrincipals +
          liquidiityAssetContract.balanceOf(pool);
      }
    }

    liquidiityAssetContract.safeApprove(loan, assetsFromPool);
    ILoan(loan).fundRollover(assetsFromPool, assetsFromPriorToNextLoan, totalSupply, priorLoan);
    if (priorLoan != address(0)) {
      ILoan(priorLoan).rolloverAllocation(assetsFromPriorToNextLoan, assetToAReturnToPool);
    }
    emit LoanRolloverInitiated(loan, priorLoan, assetsFromPriorToNextLoan, assetsFromPool, assetToAReturnToPool);
    updatePoolData(pool);
  }
  function executeRolloverAndFinalizeApr(
    address pool,
    uint256 _apr,
    IPoolAccountings storage accountings
  ) external returns (address activeLoan, address requestedLoan, address maturedLoan) {
    IPool poolContract = IPool(pool);
    activeLoan = poolContract.activeLoan();
    requestedLoan = poolContract.requestedLoan();
    if (activeLoan != address(0)) {
      ILoan(activeLoan).rolloverMaturedLoan();
      emit LoanMatured(msg.sender);
      maturedLoan = activeLoan;
    }

    ILoan(requestedLoan).rolloverAndFinalizeApr(_apr);
    activeLoan = requestedLoan;
    accountings.totalAvailableAssets += ILoan(activeLoan).interest();
    requestedLoan = address(0);
    emit LoanRolloverFinalized(activeLoan, maturedLoan);
    updatePoolData(pool);
  }

  function updatePoolData(address pool) internal {
    IPool poolContract = IPool(pool);
    address poolRegistryAddr = poolContract.serviceConfiguration().getPoolRegistry();

    IPoolRegistry(poolRegistryAddr).updatePoolData(pool);
  }

  function executeCompleteRolloverNetPayment(
    address settlingLoan,
    address pool,
    IPoolAccountings storage accountings
  ) external {
    uint256 feeVaultAmount;
    uint256 assetsReturnedToPool;
    uint256 interestAccrued;
    IPool poolContract = IPool(pool);
    address liquidityAsset = poolContract.liquidityAssetAddr();
    (feeVaultAmount, assetsReturnedToPool, interestAccrued) = ILoan(settlingLoan).completeRolloverNetPayment();
    accountings.outstandingLoanPrincipals += interestAccrued;
    accountings.outstandingLoanPrincipals -= assetsReturnedToPool;
    emit LoanRepayment(settlingLoan, feeVaultAmount, assetsReturnedToPool);
    address receiver = poolContract.serviceConfiguration().getPoolAdminWallet();
    uint256 amount = IERC20(liquidityAsset).balanceOf(poolContract.withdrawController().feeVault());
    poolContract.withdrawController().withdrawFeeVault(amount, receiver);
    emit WithdrawFeeVault(receiver, amount);
    updatePoolData(pool);
  }

  /**
   * @dev Executes a deposit into the pool

   * @param pool Address of ERC4626 vault
   * @param lender Address of receiver of shares
   * @param assets Amount of assets being deposited
   * @return The amount of shares being minted
   */
  function executeDeposit(
    address pool,
    address lender,
    uint256 assets,
    IPoolAccountings storage accountings
  ) external returns (uint256) {
    IPool poolContract = IPool(pool);

    address liquididtyAsset = poolContract.liquidityAssetAddr();
    address requestedLoan = poolContract.requestedLoan();

    uint256 shares = poolContract.convertToShares(assets);
    uint256 maxDeposit = poolContract.maxDeposit(lender);
    require(assets <= maxDeposit, "Pool: Exceeds max deposit");
    require(shares > 0, "Pool: 0 deposit not allowed");
    IERC20(liquididtyAsset).safeTransferFrom(msg.sender, pool, assets);
    if (requestedLoan != address(0)) {
      ILoan(requestedLoan).depoistToLoan(lender, assets, shares);
    }

    emit Deposit(msg.sender, lender, assets, shares);
    accountings.totalAvailableAssets += assets;
    accountings.totalAssetsDeposited += assets;
    return shares;
  }
  function executeReleaseRolloverRedemption(
    address owner,
    address pool
  ) external returns (uint256 shares, uint256 assets) {
    IPool poolContract = IPool(pool);

    (shares, assets) = poolContract.withdrawController().releaseRolloverRedemption(owner);

    emit RedeemReleased(owner, poolContract.maturedLoan(), shares, assets);

    assets = poolContract.withdrawController().redeem(owner, shares);

    emit Redeem(owner, poolContract.maturedLoan(), shares, assets);

    updatePoolData(pool);
    return (shares, assets);
  }
  function executeRequestRedeemn(uint256 shares, address pool) external returns (uint256 assets) {
    IPool poolContract = IPool(pool);
    assets = poolContract.convertToAssets(shares);

    poolContract.withdrawController().performRequest(msg.sender, shares, assets);

    emit RedeemRequested(msg.sender, poolContract.activeLoan(), assets, shares);
    updatePoolData(pool);
  }
  function executewWithdrawFeeVault(uint256 amount, address receiver, address pool) external {
    IPool poolContract = IPool(pool);
    poolContract.withdrawController().withdrawFeeVault(amount, receiver);
    emit WithdrawFeeVault(receiver, amount);
    updatePoolData(pool);
  }

  function executeRepayEarlyWithdraw(
    address investorAddr,
    uint256 amount,
    address pool,
    IPoolAccountings storage accountings
  ) external returns (uint256 repayment, uint256 redeemedShares, uint256 principal, uint256 fees) {
    uint256 assetReduction;
    address feeReceiver;

    (principal, repayment, redeemedShares, fees, assetReduction, feeReceiver) = IPool(pool)
      .withdrawController()
      .repayEarlyWithdraw(investorAddr, amount, accountings);

    address activeLoan = IPool(pool).activeLoan();
    ILoan(activeLoan).repayEarlyWithdraw(principal, assetReduction);

    accountings.outstandingLoanPrincipals -= principal;
    accountings.totalAvailableAssets -= assetReduction;
    accountings.totalAssetsWithdrawn += repayment;

    emit WithdrawEarlyRepay(investorAddr, activeLoan, redeemedShares, principal, repayment, fees);

    emit WithdrawFeeVault(feeReceiver, fees);
    updatePoolData(pool);
  }

  function executeRedeem(
    uint256 shares,
    address receiver,
    address owner,
    address pool
  ) external returns (uint256 assets) {
    IPool poolContract = IPool(pool);
    if (receiver != owner || receiver != msg.sender) revert InvalidAccess();

    // Update the withdraw state
    assets = poolContract.withdrawController().redeem(owner, shares);

    emit Redeem(owner, poolContract.maturedLoan(), shares, assets);
    updatePoolData(pool);
  }

  function executeCrossChainTransferBurnSource(
    uint256 amount,
    address pool,
    IPoolAccountings storage accountings
  ) external returns (uint256 shares) {
    IPool poolContract = IPool(pool);
    address activeLoan = poolContract.activeLoan();

    uint256 assetsAtMaturity;
    (shares, assetsAtMaturity) = ILoan(activeLoan).crossChainTransferBurnSource(amount);

    accountings.totalAvailableAssets -= assetsAtMaturity;
    accountings.totalAssetsWithdrawn += amount;
    accountings.outstandingLoanPrincipals -= amount;
    uint256 maxShares = poolContract.balanceOf(msg.sender);

    shares = Math.min(shares, maxShares);
    updatePoolData(pool);
  }

  function executeCrossChainTransferMintDestination(
    uint256 amount,
    address pool,
    IPoolAccountings storage accountings
  ) external returns (uint256 shares) {
    IPool poolContract = IPool(pool);
    address activeLoan = poolContract.activeLoan();
    shares = poolContract.convertToSharesAtDeposit(amount);
    uint256 assetsAtMaturity = poolContract.convertToAssets(shares);
    accountings.totalAssetsDeposited += amount;
    accountings.outstandingLoanPrincipals += amount;
    accountings.totalAvailableAssets += assetsAtMaturity;
    ILoan(activeLoan).crossChainTransferMintDestination(amount, assetsAtMaturity);
    updatePoolData(pool);
  }
}
