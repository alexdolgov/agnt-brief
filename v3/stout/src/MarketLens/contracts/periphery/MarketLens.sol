// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {LenderLib} from "../library/LenderLib.sol";
import {MathLib} from "../library/MathLib.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {ILender} from "../interface/ILender.sol";
import {IMarketLens} from "../interface/IMarketLens.sol";
import {IVault} from "../interface/IVault.sol";

/**
 * @title MarketLens
 * @dev Comprehensive view and analytics contract for lending markets
 * @notice Provides:
 * · Detailed market metrics
 * · User position insights
 * · Lending market analytics
 */
contract MarketLens is Ownable, IMarketLens {
    /*//////////////////////////////////////////////////////////////
                            DATA STRUCTURES
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Represents token amount with USD valuation
     * @param amount Quantity of tokens
     * @param value Equivalent USD value
     *
     * Use Cases:
     * · Collateral tracking
     * · Position valuation
     * · Financial reporting
     */
    struct AmountValue {
        uint256 amount; // Token quantity
        uint256 value; // USD equivalent
    }
    /**
     * @dev Comprehensive market information structure
     * @notice Encapsulates critical market parameters
     *
     * Includes:
     * · Lending market address
     * · Fee structures
     * · Borrowing limits
     * · Collateral metrics
     * · Interest calculations
     */
    struct MarketInfo {
        address lender; // Lending market contract
        uint256 maximumCollateralRatio; // Maximum allowed LTV
        uint256 liquidationFee; // Liquidation penalty
        uint256 interestPerYear; // Annual interest rate
        uint256 marketMaxBorrow; // Total market borrow limit
        uint256 userMaxBorrow; // Per-user borrow limit
        uint256 totalBorrowed; // Current total borrowed amount
        uint256 collateralPrice; // Collateral exchange rate
        AmountValue totalCollateral; // Total market collateral
    }
    /**
     * @dev Detailed user position representation
     * @notice Provides comprehensive user lending position insights
     *
     * Metrics:
     * · Lending market
     * · Loan-to-value ratio
     * · Health factor
     * · Borrowed value
     * · Collateral details
     * · Liquidation parameters
     */
    struct UserPosition {
        address lender; // Lending market
        address account; // User address
        uint256 ltvBps; // Loan-to-value ratio
        uint256 healthFactor; // Position stability indicator
        uint256 borrowValue; // Current borrowed value
        AmountValue collateral; // Collateral position
        uint256 liquidationPrice; // Price triggering liquidation
    }
    /*//////////////////////////////////////////////////////////////
                        MARKET METRIC CALCULATIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Precision constants
    uint256 public constant TENK_PRECISION = 10_000;
    uint256 public constant HUNDREDK_PRECISION = 100_000;

    /**
     * @notice Retrieves maximum collateral ratio
     * @param lender Lending market contract
     * @return collateralRatio Collateral ratio in basis points
     *
     * Calculation:
     * · Converts raw ratio to basis points
     * · Standardizes collateral limit representation
     */
    function getMaximumCollateralRatio(
        ILender lender
    ) public view returns (uint256 collateralRatio) {
        return (lender.collateralRatio() * TENK_PRECISION) / HUNDREDK_PRECISION;
    }

    /**
     * @notice Calculates liquidation fee percentage
     * @param lender Lending market contract
     * @return liquidationFee Liquidation fee in basis points
     *
     * Calculation:
     * · Derives fee from liquidation multiplier
     * · Converts to basis points representation
     */
    function getLiquidationFee(
        ILender lender
    ) public view returns (uint256 liquidationFee) {
        liquidationFee = lender.liquidationMultiplier() - HUNDREDK_PRECISION;
        return (liquidationFee * TENK_PRECISION) / HUNDREDK_PRECISION;
    }

    /**
     * @notice Calculates annual interest rate
     * @param lender Lending market contract
     * @return interestRate Annualized interest percentage
     *
     * Calculation:
     * · Converts per-second interest to yearly rate
     * · Uses precise time-based scaling
     */
    function getInterestPerYear(
        ILender lender
    ) public view returns (uint256 interestRate) {
        (, , uint256 interestPerSecond) = lender.accrueInfo();
        return (interestPerSecond * 100) / 316880879;
    }

    /**
     * @notice Retrieves token balance in vault
     * @param vault Vault contract
     * @param token Token contract
     * @param account User address
     * @return share Token share
     * @return amount Token amount
     *
     *
     * Calculation:
     * · Retrieves token balance from vault
     * · Converts balance to share representation
     */
    function getTokenInVault(
        IVault vault,
        IERC20Custom token,
        address account
    ) public view returns (uint256 share, uint256 amount) {
        share = vault.balanceOf(token, account);
        amount = vault.toAmount(token, share, false);
        return (share, amount);
    }

    /**
     * @notice Retrieves token balance share in vault
     * @param vault Vault contract
     * @param token Token contract
     * @param account User address
     * @return share Token balance share
     *
     * Calculation:
     * · Retrieves token balance share from vault
     */
    function getTokenInVaultShare(
        IVault vault,
        IERC20Custom token,
        address account
    ) public view returns (uint256 share) {
        return (share = vault.balanceOf(token, account));
    }

    /**
     * @notice Retrieves token balance amount in vault
     * @param vault Vault contract
     * @param token Token contract
     * @param account User address
     * @return amount Token balance amount
     *
     * Calculation:
     * · Retrieves token balance from vault
     * · Converts balance to amount representation
     */
    function getTokenInVaultAmount(
        IVault vault,
        IERC20Custom token,
        address account
    ) public view returns (uint256 amount) {
        uint256 share = vault.balanceOf(token, account);
        return (amount = vault.toAmount(token, share, false));
    }

    /**
     * @notice Calculates maximum market borrow limit
     * @param lender Lending market contract
     * @return maxBorrow Maximum market borrow limit
     *
     * Calculation:
     * · Retrieves total borrow limit from lender
     * · Calculates remaining borrow limit
     * · Returns minimum of dusx in vault and remaining borrow limit
     */
    function getMaxMarketBorrowForLender(
        ILender lender
    ) public view returns (uint256 maxBorrow) {
        (uint256 totalBorrowLimit, ) = lender.borrowLimit();
        uint256 dusxInVault = _getDUSXInVault(lender);
        uint256 remainingBorrowLimit = MathLib.subWithZeroFloor(
            totalBorrowLimit,
            getTotalBorrowed(lender)
        );
        return MathLib.min(dusxInVault, remainingBorrowLimit);
    }

    /**
     * @notice Calculates maximum user borrow limit
     * @param lender Lending market contract
     * @return userMaxBorrow Maximum user borrow limit
     *
     * Calculation:
     * · Retrieves total borrow limit and user borrow limit from lender
     * · Calculates remaining borrow limit
     * · Returns minimum of dusx in vault, remaining borrow limit, and user borrow limit
     */
    function getMaxUserBorrowForLender(
        ILender lender
    ) public view returns (uint256 userMaxBorrow) {
        (uint256 totalBorrowLimit, uint256 userBorrowLimit) = lender
            .borrowLimit();
        uint256[] memory values = new uint256[](3);
        values[0] = _getDUSXInVault(lender);
        values[1] = MathLib.subWithZeroFloor(
            totalBorrowLimit,
            getTotalBorrowed(lender)
        );
        values[2] = userBorrowLimit;
        return MathLib.min(values);
    }

    /**
     * @notice Retrieves total borrowed amount
     * @param lender Lending market contract
     * @return totalBorrowed Total borrowed amount
     *
     * Calculation:
     * · Retrieves total borrowed amount from lender
     * · Includes accrued interest
     */
    function getTotalBorrowed(
        ILender lender
    ) public view returns (uint256 totalBorrowed) {
        return LenderLib.getTotalBorrowedWithAccruedInterests(lender).elastic;
    }

    /**
     * @notice Retrieves oracle exchange rate
     * @param lender Lending market contract
     * @return exchangeRate Oracle exchange rate
     *
     * Calculation:
     * · Retrieves oracle exchange rate from lender
     */
    function getOracleExchangeRate(
        ILender lender
    ) public view returns (uint256 exchangeRate) {
        return LenderLib.getOracleExchangeRate(lender);
    }

    /**
     * @notice Retrieves total collateral
     * @param lender Lending market contract
     * @return totalCollateral Total collateral
     *
     * Calculation:
     * · Retrieves total collateral share from lender
     * · Converts share to amount representation
     * · Calculates collateral value using oracle exchange rate
     */
    function getTotalCollateral(
        ILender lender
    ) public view returns (AmountValue memory totalCollateral) {
        IVault vault = lender.vault();
        uint256 collateralPrecision = lender.collateralPrecision();
        uint256 amount = vault.toAmount(
            lender.collateral(),
            lender.totalCollateralShare(),
            false
        );
        uint256 value = (amount * getOracleExchangeRate(lender)) /
            collateralPrecision;
        return AmountValue(amount, value);
    }

    /**
     * @notice Retrieves user borrowed amount
     * @param lender Lending market contract
     * @param account User address
     * @return userBorrowed User borrowed amount
     *
     * Calculation:
     * · Retrieves user borrowed amount from lender
     */
    function getUserBorrowed(
        ILender lender,
        address account
    ) public view returns (uint256 userBorrowed) {
        return LenderLib.getUserBorrowedAmount(lender, account);
    }

    /**
     * @notice Calculates user maximum borrow limit
     * @param lender Lending market contract
     * @param account User address
     * @return maxBorrow User maximum borrow limit
     *
     * Calculation:
     * · Retrieves user collateral value from lender
     * · Calculates maximum borrow limit using collateral ratio
     * · Returns minimum of maximum borrow limit and user borrow limit
     */
    function getUserMaxBorrow(
        ILender lender,
        address account
    ) public view returns (uint256 maxBorrow) {
        (, uint256 value) = LenderLib.getUserCollateral(lender, account);
        maxBorrow =
            (value * getMaximumCollateralRatio(lender)) /
            TENK_PRECISION;
        uint256 borrowed = getUserBorrowed(lender, account);
        return borrowed >= maxBorrow ? 0 : maxBorrow - borrowed;
    }

    /**
     * @notice Retrieves user collateral
     * @param lender Lending market contract
     * @param account User address
     * @return userCollateral User collateral
     *
     * Calculation:
     * · Retrieves user collateral from lender
     */
    function getUserCollateral(
        ILender lender,
        address account
    ) public view returns (AmountValue memory userCollateral) {
        (uint256 amount, uint256 value) = LenderLib.getUserCollateral(
            lender,
            account
        );
        return AmountValue(amount, value);
    }

    /**
     * @notice Retrieves user loan-to-value ratio
     * @param lender Lending market contract
     * @param account User address
     * @return ltvBps User loan-to-value ratio
     *
     * Calculation:
     * · Retrieves user position info from lender
     */
    function getUserLtv(
        ILender lender,
        address account
    ) public view returns (uint256 ltvBps) {
        (ltvBps, , , , , ) = LenderLib.getUserPositionInfo(lender, account);
    }

    /**
     * @notice Calculates user health factor
     * @param lender Lending market contract
     * @param account User address
     * @param isStable Stable or variable borrow
     * @return healthFactor User health factor
     *
     * Calculation:
     * · Retrieves user position info from lender
     * · Calculates health factor using collateral value and borrowed amount
     */
    function getHealthFactor(
        ILender lender,
        address account,
        bool isStable
    ) public view returns (uint256 healthFactor) {
        (, healthFactor, , , , ) = LenderLib.getUserPositionInfo(
            lender,
            account
        );
        return isStable ? healthFactor * 10 : healthFactor;
    }

    /**
     * @notice Retrieves user liquidation price
     * @param lender Lending market contract
     * @param account User address
     * @return liquidationPrice User liquidation price
     *
     * Calculation:
     * · Retrieves user position info from lender
     */
    function getUserLiquidationPrice(
        ILender lender,
        address account
    ) public view returns (uint256 liquidationPrice) {
        (, , , , liquidationPrice, ) = LenderLib.getUserPositionInfo(
            lender,
            account
        );
    }

    /**
     * @notice Retrieves user position
     * @param lender Lending market contract
     * @param account User address
     * @return userPosition User position
     *
     * Calculation:
     * · Retrieves user position info from lender
     * · Calculates user position using collateral value and borrowed amount
     */
    function getUserPosition(
        ILender lender,
        address account
    ) public view returns (UserPosition memory userPosition) {
        (
            uint256 ltvBps,
            uint256 healthFactor,
            uint256 borrowValue,
            uint256 collateralValue,
            uint256 liquidationPrice,
            uint256 collateralAmount
        ) = LenderLib.getUserPositionInfo(lender, account);
        return
            UserPosition(
                address(lender),
                address(account),
                ltvBps,
                healthFactor,
                borrowValue,
                AmountValue({amount: collateralAmount, value: collateralValue}),
                liquidationPrice
            );
    }

    /**
     * @notice Retrieves users' positions
     * @param lender Lending market contract
     * @param users User addresses
     * @return positions Users' positions
     *
     * Calculation:
     * · Retrieves users' position info from lender
     * · Calculates users' positions using collateral value and borrowed amount
     */
    function getUsersPositions(
        ILender lender,
        address[] calldata users
    ) public view returns (UserPosition[] memory positions) {
        uint256 length = users.length;
        positions = new UserPosition[](length);
        for (uint256 i; i < length; i++) {
            positions[i] = getUserPosition(lender, users[i]);
        }
    }

    /**
     * @notice Retrieves market info
     * @param lender Lending market contract
     * @return marketInfo Market info
     *
     * Calculation:
     * · Retrieves market info from lender
     * · Calculates market max borrow and user max borrow
     */
    function getMarketInfoLender(
        ILender lender
    ) public view returns (MarketInfo memory marketInfo) {
        marketInfo = _getMarketInfoLender(lender);
        marketInfo.marketMaxBorrow = getMaxMarketBorrowForLender(lender);
        marketInfo.userMaxBorrow = getMaxUserBorrowForLender(lender);
    }

    /*//////////////////////////////////////////////////////////////
                        PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Calculates maximum market borrow limit
     * @param lender Lending market contract
     * @return maxBorrow Maximum market borrow limit
     *
     * Calculation:
     * · Retrieves dusx in vault
     */
    function _getMaxMarketBorrowForLender(
        ILender lender
    ) private view returns (uint256 maxBorrow) {
        return _getDUSXInVault(lender);
    }

    /**
     * @notice Calculates maximum user borrow limit
     * @param lender Lending market contract
     * @return userMaxBorrow Maximum user borrow limit
     *
     * Calculation:
     * · Retrieves dusx in vault
     */
    function _getMaxUserBorrowForLender(
        ILender lender
    ) private view returns (uint256 userMaxBorrow) {
        return _getDUSXInVault(lender);
    }

    /**
     * @notice Retrieves market info
     * @param lender Lending market contract
     * @return marketInfo Market info
     *
     * Calculation:
     * · Retrieves market info from lender
     */
    function _getMarketInfoLender(
        ILender lender
    ) private view returns (MarketInfo memory marketInfo) {
        return
            MarketInfo({
                lender: address(lender),
                maximumCollateralRatio: getMaximumCollateralRatio(lender),
                liquidationFee: getLiquidationFee(lender),
                interestPerYear: getInterestPerYear(lender),
                marketMaxBorrow: _getMaxMarketBorrowForLender(lender),
                userMaxBorrow: _getMaxUserBorrowForLender(lender),
                totalBorrowed: getTotalBorrowed(lender),
                collateralPrice: getOracleExchangeRate(lender),
                totalCollateral: getTotalCollateral(lender)
            });
    }

    /**
     * @notice Retrieves dusx in vault
     * @param lender Lending market contract
     * @return dusxInVault Dusx in vault
     *
     * Calculation:
     * · Retrieves dusx balance from vault
     * · Converts balance to amount representation
     */
    function _getDUSXInVault(
        ILender lender
    ) private view returns (uint256 dusxInVault) {
        IVault vault = lender.vault();
        IERC20Custom dusx = lender.dusx();
        uint256 poolBalance = vault.balanceOf(dusx, address(lender));
        dusxInVault = vault.toAmount(dusx, poolBalance, false);
    }
}
