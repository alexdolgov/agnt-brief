// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {MathLib} from "../library/MathLib.sol";
import {Rebase, AuxRebase} from "../library/AuxRebase.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {ILender} from "../interface/ILender.sol";
import {IOracle} from "../interface/IOracle.sol";
import {IVault} from "../interface/IVault.sol";

/**
 * @title LenderLib
 * @dev Library for lending calculations and position management
 * @notice Provides core lending functions for:
 * 1. Borrow tracking and interest accrual
 * 2. Collateral valuation and position health monitoring
 * 3. Liquidation calculations and solvency checks
 */
library LenderLib {
    using AuxRebase for Rebase;
    /// @notice Precision constants
    uint256 public constant TENK_PRECISION = 10_000;
    uint256 public constant HUNDREDK_PRECISION = 100_000;
    uint256 public constant MANTISSA_ONE = 1e18;

    /*//////////////////////////////////////////////////////////////
                        BORROWING CALCULATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Gets user's borrowed amount with accrued interest
     * @param lender Lending contract
     * @param user User address
     * @return borrowAmount Current borrowed amount including interest
     * @dev Calculates user's share of total borrowed amount using borrow parts
     */
    function getUserBorrowedAmount(
        ILender lender,
        address user
    ) internal view returns (uint256 borrowAmount) {
        Rebase memory totalBorrow = getTotalBorrowedWithAccruedInterests(
            lender
        );
        if (totalBorrow.base == 0) return 0;
        return
            (lender.userBorrowPart(user) * totalBorrow.elastic) /
            totalBorrow.base;
    }

    /**
     * @notice Calculates total borrowed amount including accrued interest
     * @param lender Lending contract
     * @return totalBorrow Updated total borrow state with accrued interest
     * @dev Interest is calculated based on time elapsed since last accrual
     */
    function getTotalBorrowedWithAccruedInterests(
        ILender lender
    ) internal view returns (Rebase memory totalBorrow) {
        totalBorrow = lender.totalBorrow();
        (uint256 lastAccrued, , uint256 interestPerSecond) = lender
            .accrueInfo();
        uint256 elapsedTime = block.timestamp - lastAccrued;
        if (elapsedTime != 0 && totalBorrow.base != 0) {
            totalBorrow.elastic += ((totalBorrow.elastic *
                interestPerSecond *
                elapsedTime) / MANTISSA_ONE);
        }
    }

    /*//////////////////////////////////////////////////////////////
                        COLLATERAL VALUATION
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Gets current oracle exchange rate for collateral
     * @param lender Lending contract
     * @return uint256 Current exchange rate from oracle
     * @dev Fetches real-time price from oracle for collateral token
     */
    function getOracleExchangeRate(
        ILender lender
    ) internal view returns (uint256) {
        IERC20Custom collateral = lender.collateral();
        IOracle oracle = lender.oracle();
        return oracle.getPrice(address(collateral));
    }

    /**
     * @notice Gets user's collateral amount and USD value
     * @param lender Lending contract
     * @param account User address
     * @return amount Raw collateral token amount
     * @return value Collateral value in USD (scaled by collateralPrecision)
     * @dev Converts share to amount and calculates USD value using oracle price
     */
    function getUserCollateral(
        ILender lender,
        address account
    ) internal view returns (uint256 amount, uint256 value) {
        uint256 collateralPrecision = lender.collateralPrecision();
        IVault vault = lender.vault();
        uint256 share = lender.userCollateralShare(account);
        amount = vault.toAmount(lender.collateral(), share, false);
        value = (amount * getOracleExchangeRate(lender)) / collateralPrecision;
    }

    /*//////////////////////////////////////////////////////////////
                        POSITION MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Gets detailed position information for a user
     * @param lender Lending contract
     * @param account User address
     * @return ltvBps Loan-to-Value ratio in basis points (10000 = 100%)
     * @return healthFactor Position health factor (1e18 = 100% healthy)
     * @return borrowValue Total borrowed value in USD
     * @return collateralValue Total collateral value in USD
     * @return liquidationPrice Price at which position becomes liquidatable
     * @return collateralAmount Raw amount of collateral deposited
     * @dev All calculations use precise decimal handling with collateralPrecision
     */
    function getUserPositionInfo(
        ILender lender,
        address account
    )
        internal
        view
        returns (
            uint256 ltvBps,
            uint256 healthFactor,
            uint256 borrowValue,
            uint256 collateralValue,
            uint256 liquidationPrice,
            uint256 collateralAmount
        )
    {
        (collateralAmount, collateralValue) = getUserCollateral(
            lender,
            account
        );
        borrowValue = getUserBorrowedAmount(lender, account);
        if (collateralValue > 0) {
            ltvBps = (borrowValue * TENK_PRECISION) / collateralValue;
            uint256 collateralRatio = lender.collateralRatio();
            uint256 collateralPrecision = lender.collateralPrecision();
            liquidationPrice =
                (borrowValue * collateralPrecision ** 2 * HUNDREDK_PRECISION) /
                collateralRatio /
                collateralAmount /
                MANTISSA_ONE;
            healthFactor = MathLib.subWithZeroFloor(
                MANTISSA_ONE,
                ((MANTISSA_ONE ** 2) * liquidationPrice) /
                    getOracleExchangeRate(lender) /
                    collateralPrecision
            );
        }
    }

    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION HANDLING
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Calculates liquidation amounts for a position
     * @param lender Lending contract
     * @param account User address to liquidate
     * @param borrowPart Amount of borrow part to liquidate
     * @return collateralAmount Amount of collateral to receive
     * @return adjustedBorrowPart Final borrow part after adjustments
     * @return requiredDUSX Amount of DUSX needed for liquidation
     * @dev Includes liquidation multiplier and precision handling
     */
    function getLiquidationCollateralAndBorrowAmount(
        ILender lender,
        address account,
        uint256 borrowPart
    )
        internal
        view
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSX
        )
    {
        uint256 exchangeRate = getOracleExchangeRate(lender);
        Rebase memory totalBorrow = getTotalBorrowedWithAccruedInterests(
            lender
        );
        IVault vault = lender.vault();
        uint256 collateralShare = lender.userCollateralShare(account);
        IERC20Custom collateral = lender.collateral();
        uint256 collateralPrecision = lender.collateralPrecision();
        {
            Rebase memory vaultTotals = vault.totals(collateral);
            uint256 maxBorrowPart = (vaultTotals.toElastic(
                collateralShare,
                false
            ) *
                HUNDREDK_PRECISION *
                exchangeRate) /
                lender.liquidationMultiplier() /
                collateralPrecision;
            maxBorrowPart = totalBorrow.toBase(maxBorrowPart, false);
            if (borrowPart > maxBorrowPart) {
                borrowPart = maxBorrowPart;
            }
        }
        requiredDUSX = totalBorrow.toElastic(borrowPart, false);
        {
            Rebase memory vaultTotals = vault.totals(collateral);
            collateralShare = vaultTotals.toBase(
                (requiredDUSX *
                    lender.liquidationMultiplier() *
                    collateralPrecision) /
                    exchangeRate /
                    HUNDREDK_PRECISION,
                false
            );
            collateralAmount = vault.toAmount(
                collateral,
                collateralShare,
                false
            );
        }
        {
            requiredDUSX +=
                ((((requiredDUSX * lender.liquidationMultiplier()) /
                    HUNDREDK_PRECISION) - requiredDUSX) * 10) /
                100;
            IERC20Custom dusx = lender.dusx();
            requiredDUSX = vault.toAmount(
                dusx,
                vault.toShare(dusx, requiredDUSX, true),
                true
            );
        }
        adjustedBorrowPart = borrowPart;
    }

    /**
     * @notice Checks if a user's position is solvent
     * @param lender Lending contract
     * @param account User address to check
     * @return bool True if position is solvent, false otherwise
     * @dev A position is solvent if collateral value >= required collateral ratio
     */
    function isSolvent(
        ILender lender,
        address account
    ) internal view returns (bool) {
        IVault vault = lender.vault();
        Rebase memory totalBorrow = getTotalBorrowedWithAccruedInterests(
            lender
        );
        uint256 exchangeRate = getOracleExchangeRate(lender);
        IERC20Custom collateral = lender.collateral();
        uint256 collateralPrecision = lender.collateralPrecision();
        uint256 collateralRatio = lender.collateralRatio();
        uint256 collateralShare = lender.userCollateralShare(account);
        uint256 borrowPart = lender.userBorrowPart(account);
        if (borrowPart == 0) return true;
        if (collateralShare == 0) return false;
        return
            vault.toAmount(
                collateral,
                (collateralShare * collateralRatio) / HUNDREDK_PRECISION,
                false
            ) >=
            (borrowPart * totalBorrow.elastic * collateralPrecision) /
                totalBorrow.base /
                exchangeRate;
    }
}
