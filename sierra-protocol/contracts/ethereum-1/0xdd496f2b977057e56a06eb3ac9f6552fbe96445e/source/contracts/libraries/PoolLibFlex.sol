//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import "../interfaces/IPoolRegistry.sol";

import { IERC20MetadataUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IVault.sol";

import "../interfaces/IPoolFlex.sol";

/**
 * @title Collection of functions used by the Pool and PoolController.
 */
library PoolLibFlex {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;
  using EnumerableSet for EnumerableSet.AddressSet;

  event PoolDeposit(address indexed lender, uint256 assets, uint256 shares, uint256 transferInDayTimestamp);
  event CrossChainTransferBurnSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    uint256 amount,
    uint256 shares
  );
  event CrossChainTransferMintDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address sourceWalletAddr,
    uint256 amount
  );
  event RedeemRequested(address indexed lender, uint256 assets, uint256 shares);

  event RepayToPoolProcessed(address indexed lender, uint256 indexed eventId, uint256 shares, uint256 assets);
  error ZeroDeposit(uint256, uint256, address);
  error ExceedsMaxDeposit(uint256, uint256, address);
  error PoolInvalidState();
  error AccuralCalledTooEarly(uint256, uint256);
  error InvalidRepayment();
  error InterestRateTooHigh(uint256);
  uint256 public constant RAY = 10 ** 27;

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  function getPoolFlexConfigurationState(
    address pool
  ) public view returns (IPoolConfigurationStateFlex memory _poolConfigurationState) {
    IPoolFlex poolFlex = IPoolFlex(pool);
    IPoolControllerFlex poolController = IPoolControllerFlex(address(poolFlex.poolController()));

    return
      IPoolConfigurationStateFlex({
        poolAddr: pool,
        dailyOriginationFeeRate: poolController.dailyOriginationFeeRate(),
        originationFee: poolController.originationFee(),
        closeOfDepositTime: poolController.closeOfDepositTime(),
        closeOfWithdrawTime: poolController.closeOfWithdrawTime(),
        transferInDays: poolController.transferInDays(),
        transferOutDays: poolController.transferOutDays(),
        liquidityAssetAddr: poolFlex.liquidityAssetAddr(),
        poolAdminAddr: poolFlex.admin(),
        poolControllerAddr: address(poolFlex.poolController()),
        withdrawControllerAddr: address(poolFlex.withdrawDepositController()),
        borrowerVaultAddr: poolFlex.borrowerVaultAddr(),
        name: ERC20Upgradeable(pool).name(),
        symbol: ERC20Upgradeable(pool).symbol(),
        borrowerManagerAddr: poolFlex.borrowerManagerAddr(),
        borrowerWalletAddr: poolFlex.borrowerWalletAddr(),
        maxCapacity: poolController.settings().maxCapacity,
        nonBusinessDays: poolFlex.nonBusinessDays(),
        businessDayRegistryAddr: address(poolFlex.businessDayRegistry())
      });
  }

  function getPoolFlexOverviewState(
    address poolAddr
  ) public view returns (IPoolOverviewStateFlex memory _poolOverviewState) {
    IPoolFlex poolFlex = IPoolFlex(poolAddr);
    IWithdrawDepositControllerFlex withdrawDepositController = IWithdrawDepositControllerFlex(
      address(poolFlex.withdrawDepositController())
    );

    IPoolAccountingsFlex memory accountings = poolFlex.accountings();
    return
      IPoolOverviewStateFlex({
        poolAddr: poolAddr,
        interestRate: accountings.interestRate,
        dailyInterestRate: accountings.dailyInterestRate,
        totalPrincipalEarningInterest: accountings.totalPrincipalEarningInterest,
        totalInterestAccrued: accountings.totalInterestAccrued,
        totalAssetsDeposited: accountings.totalAssetsDeposited,
        totalAssetsWithdrawn: accountings.totalAssetsWithdrawn,
        exchangeRate: accountings.exchangeRate,
        totalSupply: poolFlex.totalSupply(),
        totalRequestedShares: withdrawDepositController.totalRequestedShares(),
        totalRequestedAssets: withdrawDepositController.totalRequestedAssets(),
        totalAssetsTransitioningIn: withdrawDepositController.totalAssetsTransitioningIn(),
        totalSharesTransitioningIn: withdrawDepositController.totalSharesTransitioningIn(),
        totalAssetsDueForWithdraws: withdrawDepositController.totalAssetsDueForWithdraws(),
        totalFees: accountings.totalFees,
        feesOutstanding: accountings.feesOutstanding,
        nonBusinessDays: poolFlex.nonBusinessDays(),
        state: uint8(poolFlex.state()),
        lastDayAccrued: accountings.lastDayAccrued
      });
  }

  function roundDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + (b / 2);
    return c / b;
  }

  function roundUpDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + (b - 1);
    return c / b;
  }

  function getPoolAccountState(
    address poolAddr,
    address accountAddr
  ) public view returns (IPoolAccountStateFlex memory _poolAccountState) {
    IPoolFlex pool = IPoolFlex(poolAddr);
    address withdrawDepositController = address(pool.withdrawDepositController());
    IWithdrawDepositControllerFlex withdrawDepositControllerFlex = IWithdrawDepositControllerFlex(
      withdrawDepositController
    );

    IPoolLenderTotals memory lenderTotals = withdrawDepositControllerFlex.lenderTotals(accountAddr);

    uint256 tokenBalance = pool.balanceOf(accountAddr);

    uint256 principalExpanded = ((tokenBalance - lenderTotals.sharesTransitioningIn - lenderTotals.requestedShares) *
      IPoolFlex(pool).accountings().exchangeRate);

    uint256 principalEarningInterest = roundDiv(principalExpanded, 1e18);

    uint256 interestAccrued;
    if (
      (principalEarningInterest +
        lenderTotals.assetsTransitioningIn +
        lenderTotals.requestedAssets +
        lenderTotals.assetsWithdrawn) > lenderTotals.assetsDeposited
    ) {
      interestAccrued =
        principalEarningInterest +
        lenderTotals.assetsTransitioningIn +
        lenderTotals.requestedAssets +
        lenderTotals.assetsWithdrawn -
        lenderTotals.assetsDeposited;
    } else {
      interestAccrued = 0;
    }

    uint256 maxWithdrawRequest = pool.maxWithdrawRequest(accountAddr);

    uint256 maxRedeemRequest = pool.maxRedeemRequest(accountAddr);

    return
      IPoolAccountStateFlex({
        poolAddr: address(pool),
        accountAddr: accountAddr,
        tokenBalance: tokenBalance,
        maxWithdrawRequest: maxWithdrawRequest,
        maxRedeemRequest: maxRedeemRequest,
        requestedSharesOf: lenderTotals.requestedShares,
        requestedAssetsOf: lenderTotals.requestedAssets,
        principalEarningInterest: principalEarningInterest,
        interestAccrued: interestAccrued,
        assetsDeposited: lenderTotals.assetsDeposited,
        assetsWithdrawn: lenderTotals.assetsWithdrawn,
        sharesTransitioningIn: lenderTotals.sharesTransitioningIn,
        assetsTransitioningIn: lenderTotals.assetsTransitioningIn,
        assetsDueForWithdraws: lenderTotals.assetsDueForWithdraws,
        sharesDueForWithdraws: lenderTotals.sharesDueForWithdraws
      });
  }

  function originalAnnualAPRToDailyRate(uint256 _interestRate) public pure returns (uint256) {
    if (_interestRate > 2000) revert InterestRateTooHigh(_interestRate);
    uint256 start = 1e18 + ((_interestRate * 1e18) / 1e4);

    uint256 ratio = 1e18 + ((_interestRate * 1e18) / 1e4 / 365);
    uint256 min = 1e18 + ((_interestRate * 1e18) / 1e4 / 400);

    uint256 max = ratio;
    while (max - min > 1e10) {
      uint256 mid = (min + max) / 2;
      uint256 midPow = pow365(mid);

      if (midPow == start) {
        return mid;
      } else if (midPow < start) {
        min = mid;
      } else {
        max = mid;
      }
    }

    return min - 1e18;
  }

  function annualAPRToDailyRate(uint256 _interestRate, uint256 _estimatedDailyRate) public pure returns (uint256) {
    // uint256 originalRet = originalAnnualAPRToDailyRate(_interestRate);

    if (_interestRate > 2000) revert InterestRateTooHigh(_interestRate);
    uint256 start = 1e18 + ((_interestRate * 1e18) / 1e4);

    uint256 ratio = 1e18 + ((_interestRate * 1e18) / 1e4 / 365);

    uint256 min;

    if (ratio < (1e18 + _estimatedDailyRate)) {
      min = 1e18 + ((_interestRate * 1e18) / 1e4 / 420);
    } else {
      uint256 diff = ratio - (1e18 + _estimatedDailyRate);

      min = ratio - 2 * (diff);
      if (pow365(min) > start) {
        min = 1e18 + ((_interestRate * 1e18) / 1e4 / 420);
      }
    }

    uint256 max = ratio;

    while (max - min > 1e10) {
      uint256 mid = (min + max) / 2;

      uint256 midPow = pow365(mid);

      if (midPow > start && midPow - start < 1e10) {
        return mid - 1e18;
      } else if (midPow < start && start - midPow < 1e10) {
        return mid - 1e18;
      } else if (midPow == start) {
        return mid - 1e18;
      } else if (midPow < start) {
        min = mid;
      } else {
        max = mid;
      }
    }

    return min - 1e18;
  }

  // Helper function to calculate power (base^exp)
  function pow365(uint256 base) internal pure returns (uint256) {
    uint256 result = (base * base) / 1e18; // 2
    result = (result * result) / 1e18; // 4
    uint256 result4 = result;
    result = (result * result) / 1e18; // 8
    uint256 result8 = result;
    result = (result * result) / 1e18; // 16

    result = (result * result) / 1e18; // 32
    uint256 result32 = result;
    result = (result * result) / 1e18; // 64
    uint256 result64 = result;
    result = (result * result) / 1e18; // 128
    result = (result * result) / 1e18; // 256
    result = (result * result64) / 1e18; // 320
    result = (result * result32) / 1e18; // 352
    result = (result * result8) / 1e18; // 360
    result = (result * result4) / 1e18; // 364
    result = (result * base) / 1e18; // 365
    return result;
  }
  function updatePoolData(address pool) internal {
    IPoolFlex poolContract = IPoolFlex(pool);
    address poolRegistryAddr = poolContract.serviceConfiguration().getPoolRegistry();

    IPoolRegistry(poolRegistryAddr).updatePoolData(pool);
  }

  function executeDailyInterestAccural(address pool, IPoolAccountingsFlex storage accountings) public {
    IPoolFlex poolContract = IPoolFlex(pool);

    uint256 midnight = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      midnight = midnight - 1 days;
    }

    if (midnight <= accountings.lastDayAccrued) {
      revert AccuralCalledTooEarly(midnight, accountings.lastDayAccrued);
    }

    uint256 numberOfDaysToAccrue = (midnight - accountings.lastDayAccrued) / 1 days;

    uint256 currentDay = accountings.lastDayAccrued;

    for (uint256 i = 0; i < numberOfDaysToAccrue; i++) {
      currentDay = currentDay + 1 days;
      accountings.exchangeRate = accountings.exchangeRate.mul(accountings.dailyInterestRate + 1e18).div(1e18);

      uint256 todaysInterest = (accountings.totalPrincipalEarningInterest * (accountings.dailyInterestRate)) / 1e18;
      uint256 todaysFees = (accountings.totalPrincipalEarningInterest *
        (poolContract.poolController().dailyOriginationFeeRate())) / 1e18;
      accountings.totalPrincipalEarningInterest += todaysInterest;
      accountings.totalInterestAccrued += todaysInterest;
      accountings.totalFees += todaysFees;
      accountings.feesOutstanding += todaysFees;

      uint256 inflows = poolContract.withdrawDepositController().dailyInterestAccural(currentDay);

      accountings.totalPrincipalEarningInterest += inflows;
    }

    // uint256 expected = accountings.exchangeRate.mul(totalSupply()).div(1e18);
    // if (expected > accountings.totalPrincipalEarningInterest) {
    //   uint256 adjustment = expected.sub(accountings.totalPrincipalEarningInterest);
    //   if (0 < adjustment && adjustment < 10) {
    //     accountings.totalPrincipalEarningInterest += adjustment;
    //     accountings.totalInterestAccrued += adjustment;
    //   }
    // }

    uint256 newlastDayAccrued = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      newlastDayAccrued = newlastDayAccrued - 1 days;
    }

    accountings.lastDayAccrued = newlastDayAccrued;
    updatePoolData(pool);
  }
  function executeRepayLoans(address pool, uint256 assets, uint256 eventId) external {
    IPoolFlex poolContract = IPoolFlex(pool);

    IPoolLenderWithdrawEvent[] memory _withdrawEvents = poolContract.withdrawDepositController().withdrawEvents();
    IPoolLenderWithdrawEvent memory ev;
    bool isFound = false;

    for (uint i = 0; i < _withdrawEvents.length; i++) {
      if (_withdrawEvents[i].eventId == eventId) {
        ev = _withdrawEvents[i];
        isFound = true;
      }
    }
    if (!isFound || ev.requestedAssets > assets) {
      revert InvalidRepayment();
    }

    poolContract.withdrawDepositController().repayLoans(assets);

    emit RepayToPoolProcessed(ev.lender, eventId, ev.requestedShares, ev.requestedAssets);

    updatePoolData(pool);
  }

  function executCrossChainTransferBurnSource(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 amount
  ) external returns (uint256 shares) {
    IPoolFlex poolContract = IPoolFlex(pool);

    shares = poolContract.convertToShares(amount);

    accountings.totalAssetsWithdrawn += amount;
    accountings.totalPrincipalEarningInterest -= Math.min(amount, accountings.totalPrincipalEarningInterest);

    updatePoolData(pool);
  }

  function executeRequestRedeem(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 shares
  ) external returns (uint256 assets) {
    IPoolFlex poolContract = IPoolFlex(pool);
    assets = poolContract.convertToAssets(shares);
    if (assets > accountings.totalPrincipalEarningInterest) {
      assets = accountings.totalPrincipalEarningInterest;
    }

    poolContract.withdrawDepositController().performRequest(msg.sender, shares, assets);

    accountings.totalPrincipalEarningInterest -= assets;

    updatePoolData(pool);

    emit RedeemRequested(msg.sender, assets, shares);
  }
  function executeDeposit(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 assets,
    address lender
  ) external returns (uint256 shares, uint256 transferInDayTimestamp) {
    IPoolFlex poolContract = IPoolFlex(pool);

    uint256 midnight = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      midnight = midnight - 1 days;
    }

    if (midnight > accountings.lastDayAccrued) {
      executeDailyInterestAccural(address(this), accountings);
    }
    if (poolContract.poolController().state() == IPoolLifeCycleStateFlex.DisruptionOrDefault || msg.sender != lender)
      revert PoolInvalidState();
    if (assets > poolContract.maxDeposit(lender)) {
      revert ExceedsMaxDeposit(poolContract.maxDeposit(lender), assets, lender);
    }
    if (assets == 0) {
      revert ZeroDeposit(poolContract.maxDeposit(lender), assets, lender);
    }
    uint256 inflows;

    (inflows, shares, transferInDayTimestamp) = poolContract.withdrawDepositController().deposit(
      lender,
      assets,
      accountings.exchangeRate,
      accountings.dailyInterestRate
    );

    accountings.totalAssetsDeposited += assets;

    accountings.totalPrincipalEarningInterest += inflows;
    emit PoolDeposit(lender, assets, shares, transferInDayTimestamp);
    updatePoolData(pool);
  }

  function executeSetDailyInterestRate(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 _interestRate,
    uint256 _estimatedDailyRate
  ) external {
    uint256 _dailyInterestRate = annualAPRToDailyRate(_interestRate, _estimatedDailyRate);
    accountings.dailyInterestRate = _dailyInterestRate;
    accountings.interestRate = _interestRate;
    accountings.interstRateSetTime = block.timestamp;
    updatePoolData(pool);
  }
}
