// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {Comptroller} from "../Compound/Comptroller.sol";
import {CToken} from "../Compound/CToken.sol";
import {ComptrollerV2Storage} from "../Compound/ComptrollerStorage.sol";
import {ExponentialNoError} from "../Compound/ExponentialNoError.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IERC20Decimal {
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
}

interface ICErc20 {
    function underlying() external view returns (address);
}

interface IChainlinkPriceOracle {
    function feeds(address) external view returns (address);
}

interface IRedstonePriceOracle {
    function priceIds(address) external view returns (bytes32);
}

interface IPythPriceOracle {
    function priceIds(address) external view returns (bytes32);
}

interface IAggregatorProxy {
    function aggregator() external view returns (address);
    function decimals() external view returns (uint8);
    function description() external view returns (string memory);
    function getTimestamp(uint256 _roundId) external view returns (uint256);
    function latestAnswer() external view returns (int256);
    function latestRound() external view returns (uint256);
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function latestTimestamp() external view returns (uint256);
}

struct CMarketDetails {
    bytes32 priceId;
}

struct TokenDetails {
    address tokenAddress;
    uint8 decimals;
    string symbol;
}

struct AssetValuation {
    address cTokenAddress;
    address underlying;
    uint256 collateral;
    uint256 borrow;
    uint256 price36Decimals;
    uint256 notionalAdjustedCollateral;
    uint256 notionalBorrow;
}

struct TokenBalance {
    address tokenAddress;
    uint8 decimals;
    uint256 balance;
}

contract LiquidatorHelper is ExponentialNoError {
    uint8 constant PRICE_AND_TOKEN_DECIMALS = 36;

    Comptroller public immutable comptroller;

    enum Error {
        NO_ERROR,
        UNAUTHORIZED,
        COMPTROLLER_MISMATCH,
        INSUFFICIENT_SHORTFALL,
        INSUFFICIENT_LIQUIDITY,
        INVALID_CLOSE_FACTOR,
        INVALID_COLLATERAL_FACTOR,
        INVALID_LIQUIDATION_INCENTIVE,
        MARKET_NOT_ENTERED, // no longer possible
        MARKET_NOT_LISTED,
        MARKET_ALREADY_LISTED,
        MATH_ERROR,
        NONZERO_BORROW_BALANCE,
        PRICE_ERROR,
        REJECTION,
        SNAPSHOT_ERROR,
        TOO_MANY_ASSETS,
        TOO_MUCH_REPAY
    }

    constructor(address _comptroller) {
        comptroller = Comptroller(_comptroller);
    }

    function getFromChainlinkSc(address oracle, address cTokenAddress)
        public
        view
        returns (
            TokenDetails memory cToken,
            TokenDetails memory underlying,
            bool enabled,
            bytes32 priceId,
            address aggregatorProxyAddress,
            string memory description
        )
    {
        (cToken, underlying, enabled) = _getCTokenDetails(cTokenAddress);

        aggregatorProxyAddress = IChainlinkPriceOracle(oracle).feeds(cTokenAddress);
        if (aggregatorProxyAddress == address(0)) {
            return (cToken, underlying, false, bytes32(0), address(0), "");
        }

        description = IAggregatorProxy(aggregatorProxyAddress).description();
    }

    function getFromRedstoneSc(address oracle, address cTokenAddress)
        public
        view
        returns (TokenDetails memory cToken, TokenDetails memory underlying, bool enabled, bytes32 priceId)
    {
        (cToken, underlying, enabled) = _getCTokenDetails(cTokenAddress);

        priceId = IRedstonePriceOracle(oracle).priceIds(cTokenAddress);
    }

    function getFromPythSc(address oracle, address cTokenAddress)
        public
        view
        returns (TokenDetails memory cToken, TokenDetails memory underlying, bool enabled, bytes32 priceId)
    {
        (cToken, underlying, enabled) = _getCTokenDetails(cTokenAddress);

        priceId = IPythPriceOracle(oracle).priceIds(cTokenAddress);
    }

    function getAccountSnapshots(address account) public view returns (uint256[][] memory) {
        CToken[] memory assets = comptroller.getAssetsIn(account);
        uint256[][] memory snapshots = new uint256[][](assets.length);

        for (uint256 j = 0; j < assets.length; j++) {
            CToken asset = assets[j];
            (uint256 oErr, uint256 cTokenBalance, uint256 borrowBalance, uint256 exchangeRateMantissa) =
                asset.getAccountSnapshot(account);

            snapshots[j] = new uint256[](4);
            snapshots[j][0] = oErr;
            snapshots[j][1] = cTokenBalance;
            snapshots[j][2] = borrowBalance;
            snapshots[j][3] = exchangeRateMantissa;
        }

        return snapshots;
    }

    /**
     * @notice Determine the current account liquidity wrt collateral requirements
     * @param account The address of the account to look up
     * @param prices The price of the underlying assets. The price will be read "in order" as the return array of comptroller.getAssetsIn(account) (retuens cToken[])
     * @return err possible error code (semi-opaque)
     * @return liquidity account liquidity in excess of collateral requirements
     * @return shortfall account shortfall below collateral requirements
     * @return assetVal calculations data  per asset "in order" of getAssetsIn
     */
    function simAccountLiquidity(address account, uint256[] calldata prices)
        public
        view
        returns (uint256 err, uint256 liquidity, uint256 shortfall, AssetValuation[] memory assetVal)
    {
        Error oErr;
        (oErr, liquidity, shortfall, assetVal) = _simHypotheticalAccountLiquidityInternal(account, prices);
        err = uint256(oErr);
    }

    function getAccountLiquidityPure(address account)
        public
        view
        returns (uint256 err, uint256 liquidity, uint256 shortfall, AssetValuation[] memory assetVal)
    {
        Error oErr;
        (oErr, liquidity, shortfall, assetVal) = _getHypotheticalAccountLiquidityInternalPure(account);
        err = uint256(oErr);
    }

    function getBalances(address account, address owner, address defaultHolding)
        public
        view
        returns (TokenBalance[] memory tokenBalances, TokenBalance memory defaultBalance)
    {
        CToken[] memory assets = comptroller.getAssetsIn(account);
        tokenBalances = new TokenBalance[](assets.length);
        for (uint256 i = 0; i < assets.length; i++) {
            CToken asset = assets[i];
            address underlying = ICErc20(address(asset)).underlying();
            tokenBalances[i] = TokenBalance({
                tokenAddress: underlying,
                balance: IERC20(underlying).balanceOf(owner),
                decimals: IERC20Decimal(underlying).decimals()
            });
        }

        defaultBalance = TokenBalance({
            tokenAddress: defaultHolding,
            balance: IERC20(defaultHolding).balanceOf(owner),
            decimals: IERC20Decimal(defaultHolding).decimals()
        });
    }

    function _getCTokenDetails(address cTokenAddress)
        internal
        view
        returns (TokenDetails memory cToken, TokenDetails memory underlying, bool enabled)
    {
        address underlyingAddress = ICErc20(cTokenAddress).underlying();

        cToken = TokenDetails({
            tokenAddress: cTokenAddress,
            decimals: IERC20Decimal(cTokenAddress).decimals(),
            symbol: IERC20Decimal(cTokenAddress).symbol()
        });

        underlying = TokenDetails({
            tokenAddress: underlyingAddress,
            decimals: IERC20Decimal(underlyingAddress).decimals(),
            symbol: IERC20Decimal(underlyingAddress).symbol()
        });

        (bool success, bytes memory result) = address(comptroller).staticcall(
            abi.encodeWithSelector(comptroller.mintAllowed.selector, cTokenAddress, address(0), 1)
        );
        if (!success) enabled = false;
        else if (abi.decode(result, (uint256)) != uint256(Error.NO_ERROR)) enabled = false;
        else enabled = true;
    }

    /**
     * @notice Determine what the account liquidity currently is
     * @param account The account to determine liquidity for
     * @param prices The price of the underlying assets
     * @dev Note that we calculate the exchangeRateStored for each collateral cToken using stored data,
     *  without calculating accumulated interest.
     * @return err possible error code (semi-opaque)
     * @return liquidity account liquidity in excess of collateral requirements
     * @return shortfall account shortfall below collateral requirements
     * @return assetVal calculations data  per asset "in order" of getAssetsIn
     */
    function _simHypotheticalAccountLiquidityInternal(address account, uint256[] calldata prices)
        internal
        view
        returns (Error, uint256, uint256, AssetValuation[] memory)
    {
        Comptroller.AccountLiquidityLocalVars memory vars; // Holds all our calculation results
        uint256 oErr; // hold account snapshot error code

        // For each asset the account is in
        CToken[] memory assets = comptroller.getAssetsIn(account);
        AssetValuation[] memory valuations = new AssetValuation[](assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            // (oErr, vars, valuations[i]) = calculateAssetLiquidity(account, assets[i], prices[i], vars);
            CToken asset = assets[i];

            // Read the balances and exchange rate from the cToken
            (oErr, vars.cTokenBalance, vars.borrowBalance, vars.exchangeRateMantissa) =
                asset.getAccountSnapshot(account);
            if (oErr != 0) {
                // semi-opaque error code, we assume NO_ERROR == 0 is invariant between upgrades
                return (Error.SNAPSHOT_ERROR, 0, 0, valuations);
            }

            (, uint256 collateralFactorMantissa) = comptroller.markets(address(asset));
            vars.collateralFactor = Exp({mantissa: collateralFactorMantissa});
            vars.exchangeRate = Exp({mantissa: vars.exchangeRateMantissa});

            // Get the normalized price of the asset
            vars.oraclePriceMantissa = _adjustPriceToX(ICErc20(address(asset)).underlying(), prices[i], 18);
            if (vars.oraclePriceMantissa == 0) {
                return (Error.PRICE_ERROR, 0, 0, valuations);
            }
            vars.oraclePrice = Exp({mantissa: vars.oraclePriceMantissa});

            // Pre-compute a conversion factor from tokens -> ether (normalized price value)
            vars.tokensToDenom = mul_(mul_(vars.collateralFactor, vars.exchangeRate), vars.oraclePrice);

            // sumCollateral += tokensToDenom * cTokenBalance
            vars.sumCollateral = mul_ScalarTruncateAddUInt(vars.tokensToDenom, vars.cTokenBalance, vars.sumCollateral);

            // sumBorrowPlusEffects += oraclePrice * borrowBalance
            vars.sumBorrowPlusEffects =
                mul_ScalarTruncateAddUInt(vars.oraclePrice, vars.borrowBalance, vars.sumBorrowPlusEffects);

            // store calculation data
            valuations[i].cTokenAddress = address(asset);
            valuations[i].underlying = ICErc20(address(asset)).underlying();
            valuations[i].collateral = mul_ScalarTruncateAddUInt(vars.exchangeRate, vars.cTokenBalance, 0);
            valuations[i].borrow = vars.borrowBalance;
            valuations[i].price36Decimals = vars.oraclePriceMantissa; //TODO: check this
            valuations[i].notionalAdjustedCollateral =
                mul_ScalarTruncateAddUInt(vars.tokensToDenom, vars.cTokenBalance, 0);
            valuations[i].notionalBorrow = mul_ScalarTruncateAddUInt(vars.oraclePrice, vars.borrowBalance, 0);
        }

        // These are safe, as the underflow condition is checked first
        if (vars.sumCollateral > vars.sumBorrowPlusEffects) {
            return (Error.NO_ERROR, vars.sumCollateral - vars.sumBorrowPlusEffects, 0, valuations);
        } else {
            return (Error.NO_ERROR, 0, vars.sumBorrowPlusEffects - vars.sumCollateral, valuations);
        }
    }

    function _getHypotheticalAccountLiquidityInternalPure(address account)
        internal
        view
        returns (Error, uint256, uint256, AssetValuation[] memory)
    {
        Comptroller.AccountLiquidityLocalVars memory vars; // Holds all our calculation results
        uint256 oErr;

        // For each asset the account is in
        CToken[] memory assets = comptroller.getAssetsIn(account);
        AssetValuation[] memory valuations = new AssetValuation[](assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            CToken asset = assets[i];

            // Read the balances and exchange rate from the cToken
            (oErr, vars.cTokenBalance, vars.borrowBalance, vars.exchangeRateMantissa) =
                asset.getAccountSnapshot(account);
            if (oErr != 0) {
                // semi-opaque error code, we assume NO_ERROR == 0 is invariant between upgrades
                return (Error.SNAPSHOT_ERROR, 0, 0, valuations);
            }

            (, uint256 collateralFactorMantissa) = comptroller.markets(address(asset));
            vars.collateralFactor = Exp({mantissa: collateralFactorMantissa});
            vars.exchangeRate = Exp({mantissa: vars.exchangeRateMantissa});

            // Get the normalized price of the asset
            vars.oraclePriceMantissa = comptroller.oracle().getUnderlyingPrice(asset);
            if (vars.oraclePriceMantissa == 0) {
                return (Error.PRICE_ERROR, 0, 0, valuations);
            }
            vars.oraclePrice = Exp({mantissa: vars.oraclePriceMantissa});

            // 3800, 3.8 * 10^3 -> 3800 + 18deicmals
            // Pre-compute a conversion factor from tokens -> ether (normalized price value)
            vars.tokensToDenom = mul_(mul_(vars.collateralFactor, vars.exchangeRate), vars.oraclePrice);

            // sumCollateral += tokensToDenom * cTokenBalance
            vars.sumCollateral = mul_ScalarTruncateAddUInt(vars.tokensToDenom, vars.cTokenBalance, vars.sumCollateral);

            // sumBorrowPlusEffects += oraclePrice * borrowBalance
            vars.sumBorrowPlusEffects =
                mul_ScalarTruncateAddUInt(vars.oraclePrice, vars.borrowBalance, vars.sumBorrowPlusEffects);

            // store calculation data
            valuations[i].cTokenAddress = address(asset);
            valuations[i].underlying = ICErc20(address(asset)).underlying();
            valuations[i].collateral = mul_ScalarTruncateAddUInt(vars.exchangeRate, vars.cTokenBalance, 0);
            valuations[i].borrow = vars.borrowBalance;
            valuations[i].price36Decimals = _padPriceTo36(valuations[i].underlying, vars.oraclePriceMantissa);
            valuations[i].notionalAdjustedCollateral =
                mul_ScalarTruncateAddUInt(vars.tokensToDenom, vars.cTokenBalance, 0);
            valuations[i].notionalBorrow = mul_ScalarTruncateAddUInt(vars.oraclePrice, vars.borrowBalance, 0);
        }

        // These are safe, as the underflow condition is checked first
        if (vars.sumCollateral > vars.sumBorrowPlusEffects) {
            return (Error.NO_ERROR, vars.sumCollateral - vars.sumBorrowPlusEffects, 0, valuations);
        } else {
            return (Error.NO_ERROR, 0, vars.sumBorrowPlusEffects - vars.sumCollateral, valuations);
        }
    }

    function _padPriceTo36(address underlyingToken, uint256 unadjustedPrice) internal view returns (uint256) {
        // Price + Token Decimal equals 36. aka, all arithmetics are done in 36.
        // Thus, to standardize price to fixed decimals (easiest is 36), multiply by underlying decimals
        uint8 decimals = IERC20Decimal(underlyingToken).decimals();
        return unadjustedPrice * (10 ** uint256(decimals));
    }

    function _adjustPriceToX(address underlyingToken, uint256 unadjustedPrice, uint8 targetDecimals)
        internal
        view
        returns (uint256)
    {
        uint8 decimals = IERC20Decimal(underlyingToken).decimals();

        if (decimals < targetDecimals) return unadjustedPrice * (10 ** uint256(targetDecimals - decimals));
        if (decimals > targetDecimals) return unadjustedPrice / (10 ** uint256(decimals - targetDecimals));

        return unadjustedPrice;
    }
}
