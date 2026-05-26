// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IERC20MetadataUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "../interfaces/IPoolFlex.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IVault.sol";

/**
 * @title Collection of functions used by the Pool and PoolController.
 */
library PoolLibFlex {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    error InterestRateTooHigh(uint256);
    uint256 public constant RAY = 10 ** 27;

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    function getPoolFlexConfigurationState(
        address pool
    )
        public
        view
        returns (IPoolConfigurationStateFlex memory _poolConfigurationState)
    {
        IPoolFlex poolFlex = IPoolFlex(pool);
        IPoolControllerFlex poolController = IPoolControllerFlex(
            address(poolFlex.poolController())
        );

        return
            IPoolConfigurationStateFlex({
                poolAddr: pool,
                dailyOriginationFeeRate: poolController
                    .dailyOriginationFeeRate(),
                originationFee: poolController.originationFee(),
                closeOfDepositTime: poolController.closeOfDepositTime(),
                closeOfWithdrawTime: poolController.closeOfWithdrawTime(),
                transferInDays: poolController.transferInDays(),
                transferOutDays: poolController.transferOutDays(),
                liquidityAssetAddr: poolFlex.liquidityAssetAddr(),
                poolAdminAddr: poolFlex.admin(),
                poolControllerAddr: address(poolFlex.poolController()),
                withdrawControllerAddr: address(
                    poolFlex.withdrawDepositController()
                ),
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
                totalPrincipalEarningInterest: accountings
                    .totalPrincipalEarningInterest,
                totalInterestAccrued: accountings.totalInterestAccrued,
                totalAssetsDeposited: accountings.totalAssetsDeposited,
                totalAssetsWithdrawn: accountings.totalAssetsWithdrawn,
                exchangeRate: accountings.exchangeRate,
                totalSupply: poolFlex.totalSupply(),
                totalRequestedShares: withdrawDepositController
                    .totalRequestedShares(),
                totalRequestedAssets: withdrawDepositController
                    .totalRequestedAssets(),
                totalAssetsTransitioningIn: withdrawDepositController
                    .totalAssetsTransitioningIn(),
                totalSharesTransitioningIn: withdrawDepositController
                    .totalSharesTransitioningIn(),
                totalAssetsDueForWithdraws: withdrawDepositController
                    .totalAssetsDueForWithdraws(),
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
        uint256 c = a + (b -1);
        return c / b;
    }

    function getPoolAccountState(
        address poolAddr,
        address accountAddr
    ) public view returns (IPoolAccountStateFlex memory _poolAccountState) {
        IPoolFlex pool = IPoolFlex(poolAddr);
        address withdrawDepositController = address(
            pool.withdrawDepositController()
        );
        IWithdrawDepositControllerFlex withdrawDepositControllerFlex = IWithdrawDepositControllerFlex(
                withdrawDepositController
            );

        IPoolLenderTotals memory lenderTotals = withdrawDepositControllerFlex
            .lenderTotals(accountAddr);

        uint256 tokenBalance = pool.balanceOf(accountAddr);
 
        uint256 principalExpanded = ((tokenBalance -
            lenderTotals.sharesTransitioningIn -
            lenderTotals.requestedShares) *
            IPoolFlex(pool).accountings().exchangeRate);

        uint256 principalEarningInterest = roundUpDiv(principalExpanded, 1e18);


        uint256 interestAccrued;
        if ( (principalEarningInterest +
            lenderTotals.assetsTransitioningIn +
            lenderTotals.requestedAssets +
            lenderTotals.assetsWithdrawn ) >lenderTotals.assetsDeposited) {
                interestAccrued = principalEarningInterest +
                    lenderTotals.assetsTransitioningIn +
                    lenderTotals.requestedAssets +
                    lenderTotals.assetsWithdrawn -
                    lenderTotals.assetsDeposited;
            }
        else {
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

    function originalAnnualAPRToDailyRate(
        uint256 _interestRate
    ) public pure returns (uint256) {
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

    function annualAPRToDailyRate(
        uint256 _interestRate,
        uint256 _estimatedDailyRate
    ) public pure returns (uint256) {
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
}
