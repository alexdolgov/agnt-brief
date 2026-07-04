// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IIrm} from "./interfaces/IIrm.sol";
import {Id, MarketParams, Market} from "./interfaces/IIMFMoneyMarkets.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {MarketParamsLib} from "./libraries/MarketParamsLib.sol";
import {ORACLE_PRICE_SCALE} from "./libraries/ConstantsLib.sol";
import {ExpLib} from "./libraries/ExpLib.sol";

/// @title Irm69
/// @author Some IMFer
/// @notice Calculate interest rate on a curve
///   - When below peg: base_interest_rate_per_second * exp(3.55 * (peg_price - price)
///   - When above peg: base_interest_rate_per_second * exp(-0.8 * (price - peg_price))
contract Irm69 is IIrm {
    using MarketParamsLib for MarketParams;

    /// @dev money oracle in USD
    IOracle public moneyUSDOracle;

    /// @dev peg price, with the same scale as moneyUSDOracle 
    uint256 public pegPrice;

    /// @dev scaling factor applied to both moneyUSDOracle and pegPrice
    uint256 public priceScale;

    /// @dev base interest rate per second, scaled by WAD
    int256 public baseInterestRatePerSecond;

    constructor(IOracle _moneyUSDOracle, uint256 _pegPrice, uint256 _priceScale, int256 _baseInterestRatePerSecond) {
        moneyUSDOracle = _moneyUSDOracle;
        pegPrice = _pegPrice;
        priceScale = _priceScale;
        baseInterestRatePerSecond = _baseInterestRatePerSecond;
    }

    function borrowRateView(MarketParams memory, Market memory) public view returns (uint256) {
        uint256 price = moneyUSDOracle.price();

        if (price < pegPrice) {
            return uint256(baseInterestRatePerSecond * ExpLib.wExp(int256(3.55e18 * (pegPrice - price) / priceScale))) / 1e18;
        } else {
            return uint256(baseInterestRatePerSecond * ExpLib.wExp(-1 * int256(0.8e18 * (price - pegPrice) / priceScale))) / 1e18;
        }
    }

    function borrowRate(MarketParams memory marketParams, Market memory market) external view returns (uint256) {
        return borrowRateView(marketParams, market);
    }
}

/**
# Jupyter notebook for IR Model

import numpy as np

# Define the parameters
peg_price = 6.90
base_interest_rate = 0.069

def interest_rate_below_peg(price, peg_price):
    return base_interest_rate * np.exp(3.55 * (peg_price - price))

# Define the exponential function for above the peg
def interest_rate_above_peg(price, peg_price):
    return base_interest_rate * np.exp(-0.8 * (price - peg_price))

# Define a function to calculate interest rate based on the price
def calculate_interest_rate(price, peg_price):
    if price < peg_price:
        return interest_rate_below_peg(price, peg_price)
    else:
        return interest_rate_above_peg(price, peg_price)

# Generate a finer range of prices to plot the interest rate curve
prices = np.linspace(3.5, 8.5, 1000)
interest_rates = [calculate_interest_rate(price, peg_price) for price in prices]

# Plotting the interest rate curve
plt.figure(figsize=(12, 8))
plt.plot(prices, interest_rates, label='Interest Rate Curve', color='orange')
plt.axvline(x=peg_price, color='red', linestyle='--', label='Peg Price ($6.90)')
plt.axhline(y=base_interest_rate, color='green', linestyle='--', label='Base Interest Rate (6.9%)')

# Zoom in on the x-axis and y-axis around the peg price
plt.xlim(5.5, 8.0)
plt.ylim(0, 3.5)

# Add grid lines at more specific points on the x and y axes
plt.xticks(np.arange(5.5, 8.1, 0.25))
plt.yticks(np.arange(0, 3.6, 0.2))

plt.title('Interest Rate Curve for $MONEY')
plt.xlabel('Price of $MONEY')
plt.ylabel('Interest Rate (%)')
plt.legend()
plt.grid(True)
plt.show()


 */