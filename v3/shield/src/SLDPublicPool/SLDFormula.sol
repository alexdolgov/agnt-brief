// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "./Aggregator.sol";
import "./SLDInterfaces.sol";
import "./SLDFraction.sol";

/**
 * @notice Formula contract which provides for calculating history volatility and funding fee.
 */
contract Formula is IFormulaContracts, Ownable {
    using Fraction for Fraction.fractionNumber;

    string public name; // The literal description of the formula.

    uint256 internal constant USD_DECIMALS = 1e6;
    uint256 internal constant TOKEN_DECIMALS = 1e18;

    uint256 internal constant tradingFeeRatio = (1 * TOKEN_DECIMALS) / 1000; // 0.1% for trading fee
    uint256 internal constant priMarginRatio = (18 * TOKEN_DECIMALS) / 100; // Margin fee rate for private pool, 18%
    uint256 internal constant priLiquidateRatio = (2 * TOKEN_DECIMALS) / 100; // 2% for private maker liquidation fee
    uint256 internal constant pubMarginRatio = (39 * TOKEN_DECIMALS) / 100; // Margin fee rate for public pool, 39%
    uint256 internal constant pubLiquidateRatio = (1 * TOKEN_DECIMALS) / 100; // 1% for public maker liquidation fee

    uint256 internal constant daysOfYear = 365;

    uint256 internal constant minHistoryVolatility = (2 * TOKEN_DECIMALS) / 10;
    uint256 internal constant intervalTime = 86400; // Interval for updating volatility, 86400s = 24h

    uint256 public lastUpdateTime = 0; // The lastest timstamp of volatility update

    uint256 internal apr = 1e17;

    uint256 public cyclicCounter = 0; // Cyclic counter for the latest historic prices within 30 days

    uint256 public historyVolatility;

    Aggregator public aggregator;

    Settings public settings;

    uint256[] latestPricesTM; // The timestamp of the latest historic prices
    uint256[] latestPrices; // The lastest prices

    uint256 public percentFlag; // The coefficient used to adjust volatility value

    /**
     * @dev Contract constructor.
     * @param _name The literal name of a formula provided for calculating history volatility and funding fee.
     * @param _aggregator The aggregator address for price feeding.
     * @param _latestPricesTM The timestamp of the latest historic array.
     * @param _latestPrices The lastest prices array.
     */
    constructor(
        string memory _name,
        address _aggregator,
        uint256[] memory _latestPricesTM,
        uint256[] memory _latestPrices
    ) public {
        require(
            _latestPricesTM.length == _latestPrices.length &&
                _latestPricesTM.length == 31,
            "should initialize prices with 31 periods"
        );

        for (uint256 i = 0; i < 31; i++) {
            latestPricesTM.push(_latestPricesTM[i]);
            latestPrices.push(_latestPrices[i]);
        }

        name = _name;
        aggregator = Aggregator(_aggregator);

        settings.delta = (4 * TOKEN_DECIMALS) / 10;
        historyVolatility = _calHistoryVolatility();

        if (historyVolatility < minHistoryVolatility) {
            historyVolatility = minHistoryVolatility;
        }

        settings.realVolatility = historyVolatility;
        settings.historyVolatility = historyVolatility;

        lastUpdateTime = block.timestamp;

        percentFlag = 100;
    }

    /**
     * @dev Update history volatility.
     */
    function updateHistoryVolatility() external onlyOwner returns (bool) {
        // Comment this revert condition when running tests
        require(
            block.timestamp - lastUpdateTime >= intervalTime,
            "Already updated within 24 hours"
        );

        if (_updatePrice()) {
            lastUpdateTime = block.timestamp;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Update daily price.
     */
    function updatePrice() external returns (bool) {
        // Comment this revert condition when running tests
        require(
            block.timestamp - lastUpdateTime < intervalTime,
            "Update too frequent"
        );
        if (cyclicCounter == 0) {
            cyclicCounter = 30;
            if (_updatePrice()) {
                return true;
            } else {
                return false;
            }
        } else {
            cyclicCounter--;
            if (_updatePrice()) {
                return true;
            } else {
                return false;
            }
        }
    }

    /**
     * @dev Internal function used to update price.
     */
    function _updatePrice() internal returns (bool) {
        (uint256 price, uint8 decimals) = getPriceByAggregator();
        if (price > 0) {
            if (cyclicCounter >= 31) {
                cyclicCounter = 0;
            }

            latestPrices[cyclicCounter] =
                (price * TOKEN_DECIMALS) /
                (10**uint256(decimals));
            latestPricesTM[cyclicCounter] = block.timestamp;

            if (cyclicCounter == 30) {
                cyclicCounter = 0;
            } else {
                cyclicCounter++;
            }

            historyVolatility = _calHistoryVolatility();
            if (historyVolatility < minHistoryVolatility) {
                settings.realVolatility = minHistoryVolatility;
                settings.historyVolatility = minHistoryVolatility;
            } else {
                settings.realVolatility = historyVolatility;
                settings.historyVolatility = historyVolatility
                    .mul(percentFlag)
                    .div(100);
            }
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Get margin amount when execute an order.
     * @param amount Amount of the assets to buy or sell.
     * @param openPrice Price of execution for the order.
     * @param poolType Pool type: 0 indicates public pool, 1 indicates private pool
     * @return marginFee and liquidateFee
     */
    function getMargin(
        uint256 amount,
        uint256 openPrice,
        uint256 poolType
    ) public pure returns (uint256 marginFee, uint256 liquidateFee) {
        require(
            amount != 0 && openPrice != 0 && poolType <= 2,
            "invalid param"
        );

        if (poolType == 1) {
            marginFee = amount
                .mul(openPrice)
                .div(TOKEN_DECIMALS)
                .mul(pubMarginRatio)
                .div(TOKEN_DECIMALS);
            liquidateFee = amount
                .mul(openPrice)
                .div(TOKEN_DECIMALS)
                .mul(pubLiquidateRatio)
                .div(TOKEN_DECIMALS);
        } else {
            marginFee = amount
                .mul(openPrice)
                .div(TOKEN_DECIMALS)
                .mul(priMarginRatio)
                .div(TOKEN_DECIMALS);
            liquidateFee = amount
                .mul(openPrice)
                .div(TOKEN_DECIMALS)
                .mul(priLiquidateRatio)
                .div(TOKEN_DECIMALS);
        }
    }

    /**
     * @dev Get funding fee when execute an order.
     * @param amount Amount of the assets to call or put.
     * @param openPrice Price of execution for the order.
     * @param latestPrice Current price feeding by oracle.
     * @param contractPeriod Period till order expired.
     * @param contractType LONG or SHORT.
     * @return fundingFee need to pay to hold the order
     */
    function getFundingFee(
        uint256 amount,
        uint256 openPrice,
        uint256 latestPrice,
        uint256 contractPeriod,
        ContractType contractType
    ) public view returns (uint256 fundingFee) {
        fundingFee = 0;
        uint256 delta = getDelta();
        (, uint256 _historyVolatility) = getHistoryVolatility();

        if (
            contractPeriod > 0 &&
            amount > 0 &&
            latestPrice > 0 &&
            openPrice > 0 &&
            delta > 0
        ) {
            // if(openPrice == latestPrice) {
            //     fundingFee = amount.mul(delta).div(TOKEN_DECIMALS).mul(openPrice).div(TOKEN_DECIMALS);
            //     fundingFee = fundingFee.mul(historyVolatility).div(TOKEN_DECIMALS).mul(sqrt(contractPeriod.mul(TOKEN_DECIMALS).mul(TOKEN_DECIMALS).div(daysOfYear))).div(TOKEN_DECIMALS);
            // }
            fundingFee = getPremium(
                latestPrice,
                openPrice,
                _historyVolatility,
                contractType
            );
            if (fundingFee == 0) {
                fundingFee = amount
                    .mul(delta)
                    .div(TOKEN_DECIMALS)
                    .mul(openPrice)
                    .div(TOKEN_DECIMALS);
                fundingFee = fundingFee
                    .mul(_historyVolatility)
                    .div(TOKEN_DECIMALS)
                    .mul(
                        _sqrt(
                            contractPeriod
                                .mul(TOKEN_DECIMALS)
                                .mul(TOKEN_DECIMALS)
                                .div(daysOfYear)
                        )
                    )
                    .div(TOKEN_DECIMALS);
            } else {
                fundingFee = fundingFee.mul(amount).div(TOKEN_DECIMALS);
            }
        }
    }

    /**
     * @dev Get trading fee of the order
     * @param amount Amount of the assets to buy or sell.
     * @param openPrice Price of execution for the order.
     * @return tradingFee
     */
    function getTradingFee(uint256 amount, uint256 openPrice)
        public
        pure
        returns (uint256 tradingFee)
    {
        require(openPrice != 0 && amount != 0, "invalid param");
        tradingFee = amount
            .mul(tradingFeeRatio)
            .div(TOKEN_DECIMALS)
            .mul(openPrice)
            .div(TOKEN_DECIMALS);
    }

    /**
     * @dev Get premium of the order
     * @param s The vaule of s
     * @param k The vaule of k
     * @param _historyVolatility The value of history volatility
     * @param contractType LONG or SHORT
     * d1 = (log(s / k) + (r + pow(δ, 2) / 2) * t) / (δ * sqrt(t)); r = 4 * 1e16, δ:historyVolatility
     * d2 = d1 - δ * sqrt(t)
     * Call = s * N(d1) - k * pow(e, -r * t) * N(d2)
     * Put = k * pow(e, -r * t) * N(-d2) - s * N(-d1)
     * Call_delta = Call / s / δ / sqrt(t), Put_delta = Put / s / δ / sqrt(t),
     * @return premium of the option order
     */
    function getPremium(
        uint256 s,
        uint256 k,
        uint256 _historyVolatility,
        ContractType contractType
    ) public view returns (uint256 premium) {
        require(s > 0 && k > 0 && _historyVolatility > 0, "wrong parameter");
        uint256 t = TOKEN_DECIMALS.div(daysOfYear); // 256
        uint256 t1 = _sqrt(t.mul(TOKEN_DECIMALS));
        Fraction.fractionNumber memory xe = _getRef(k, t);
        Fraction.fractionNumber memory d1 = Fraction.sub(
            Fraction.ln(Fraction.fractionNumber(int256(s), 1e18)),
            Fraction.ln(Fraction.fractionNumber(int256(k), 1e18))
        ); //Fraction.ln(Fraction.div(Fraction.fractionNumber(int256(s), 1e18), Fraction.fractionNumber(int256(k), 1e18)));
        uint256 temp2 = _historyVolatility.mul(_historyVolatility).div(2).div(
            1e18
        );
        temp2 = temp2.add(apr).mul(t).div(TOKEN_DECIMALS);
        d1 = Fraction.add(d1, Fraction.fractionNumber(int256(temp2), 1e18));
        Fraction.fractionNumber memory d2 = Fraction.mul(
            Fraction.fractionNumber(int256(_historyVolatility), 1e18),
            Fraction.fractionNumber(int256(t1), 1e18)
        );
        d1 = Fraction.div(d1, d2);
        d2 = Fraction.sub(d1, d2);
        Fraction.fractionNumber memory callput;
        if (contractType == ContractType.LONG) {
            callput = Fraction.mul(
                Fraction.fractionNumber(int256(s), 1e18),
                Fraction.normsDist(d1)
            );
            xe = Fraction.mul(xe, Fraction.normsDist(d2));
            callput = Fraction.sub(callput, xe);
        } else {
            d1.numerator = d1.numerator * -1;
            d2.numerator = d2.numerator * -1;
            callput = Fraction.mul(
                Fraction.fractionNumber(int256(s), 1e18),
                Fraction.normsDist(d1)
            );
            xe = Fraction.mul(xe, Fraction.normsDist(d2));
            callput = Fraction.sub(xe, callput);
        }
        premium = uint256((callput.numerator * 1e18) / callput.denominator);
    }

    /**
     * @dev Set deviation percentage to adjust history volatility
     * @param _perCent The vaule of deviation percentage
     * @return historyVolatility The new value of history volatility
     */
    function setHistoryVolatilityPercent(uint256 _perCent)
        public
        onlyOwner
        returns (uint256)
    {
        percentFlag = _perCent;

        return
            settings.realVolatility = settings.realVolatility.mul(_perCent).div(
                100
            );
    }

    /**
     * @dev Force set history volatility
     * @param value The vaule of new history volatility
     */
    function setHistoryVolatility(uint256 value) external onlyOwner {
        //test onlyOwner
        require(value > 0, "invalid value");

        settings.historyVolatility = value;
        lastUpdateTime = block.timestamp;
    }

    /**
     * @dev Force update history volatility
     */
    function forceUpdateHistoryVolatility() public onlyOwner {
        historyVolatility = _calHistoryVolatility();
        if (historyVolatility < minHistoryVolatility) {
            historyVolatility = minHistoryVolatility;
        }
        settings.historyVolatility = historyVolatility;
        settings.realVolatility = historyVolatility;
    }

    /**
     * @dev Set APR
     * @param value The vaule of APR
     */
    function setAPR(uint256 value) external onlyOwner {
        require(value > 0, "invalid value");
        apr = value;
    }

    /**
     * @dev Get price feeding by aggregator.
     */
    function getPriceByAggregator() public view returns (uint256, uint8) {
        return aggregator.latestRoundData();
    }

    /**
     * @dev Get current date and block time.
     */
    function getDate() public view returns (uint256 today, uint256 blocktime) {
        today = block.timestamp / 1 days;
        blocktime = block.timestamp;
    }

    /**
     * @dev Using history prices to calculate volatility.
     */
    function _calHistoryVolatility() internal view returns (uint256 result) {
        int256 average;
        int256[31] memory xi;
        uint256 tmpIndex = cyclicCounter;
        for (uint256 i = 0; i < 30; i++) {
            if (tmpIndex + 1 > 30) {
                xi[i] =
                    int256(
                        (latestPrices[0] - latestPrices[30]) *
                            TOKEN_DECIMALS *
                            TOKEN_DECIMALS
                    ) /
                    int256(latestPrices[30]);
                average += xi[i];
                tmpIndex = 0;
            } else {
                xi[i] =
                    int256(
                        (latestPrices[tmpIndex + 1] - latestPrices[tmpIndex]) *
                            TOKEN_DECIMALS *
                            TOKEN_DECIMALS
                    ) /
                    int256(latestPrices[tmpIndex]);
                average += xi[i];
                tmpIndex++;
            }
        }
        int256 sum = 0;
        average = average / 30;
        for (uint256 i = 0; i < 30; i++) {
            sum += (xi[i] - average) * (xi[i] - average);
        }
        return
            _sqrt(uint256(sum) / 29)
                .mul(_sqrt(daysOfYear * TOKEN_DECIMALS * TOKEN_DECIMALS))
                .div(TOKEN_DECIMALS)
                .div(TOKEN_DECIMALS);
    }

    /**
     * @dev Get history volatility(HV)
     * @return The value of HV
     */
    function getHistoryVolatility() public view returns (uint256, uint256) {
        return (settings.realVolatility, settings.historyVolatility);
    }

    /**
     * @dev Get delta of the option
     * @return Delta factor
     */
    function getDelta() public view returns (uint256) {
        return settings.delta;
    }

    /**
     * @dev k * pow(e, -r * t)
     */
    function _getRef(uint256 strikePrice, uint256 time)
        internal
        view
        returns (Fraction.fractionNumber memory result)
    {
        Fraction.fractionNumber memory k = Fraction.fractionNumber(
            int256(strikePrice),
            1e18
        );
        Fraction.fractionNumber memory t = Fraction.fractionNumber(
            int256(time),
            1e18
        );
        Fraction.fractionNumber memory r = Fraction.fractionNumber(
            int256(apr),
            1e18
        );
        result = Fraction.mul(r, t);
        result.numerator *= -1;
        result = Fraction.exp(result);
        result = Fraction.mul(k, result);
    }

    /**
     * @dev Math function using for calculating the square root of a number.
     */
    function _sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y.div(2).add(1); //  x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = y.div(x).add(x).div(2); //  x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    /**
     * @dev Get all prices and timestamp within 31 days.
     */
    function getPrices()
        public
        view
        returns (uint256[] memory prices, uint256[] memory pricesTM)
    {
        prices = latestPrices;
        pricesTM = latestPricesTM;
    }
}
