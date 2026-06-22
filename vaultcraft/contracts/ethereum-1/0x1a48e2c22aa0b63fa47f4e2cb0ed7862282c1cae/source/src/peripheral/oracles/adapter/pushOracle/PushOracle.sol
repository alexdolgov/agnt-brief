// SPDX-License-Identifier: GPL-3.0
// Docgen-SOLC: 0.8.25

pragma solidity ^0.8.25;

import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {Owned} from "src/utils/Owned.sol";
import {ScaleUtils, Scale} from "src/lib/euler/ScaleUtils.sol";
import {BaseAdapter, Errors} from "../BaseAdapter.sol";
import {IPushOracle, Price} from "src/interfaces/IPushOracle.sol";
/**
 * @title   PushOracle
 * @author  RedVeil
 * @notice  A simple oracle that allows for setting prices for base/quote pairs by permissioned entities
 * @dev     The safety and reliability of these prices must be handled by other contracts/infrastructure
 */
contract PushOracle is BaseAdapter, Owned {
    string public constant name = "PushOracle";

    /// @dev base => quote => price
    mapping(address => mapping(address => Price)) public prices;

    event PriceUpdated(
        address base,
        address quote,
        uint256 bqPrice,
        uint256 qbPrice,
        uint256 targetBqPrice,
        uint256 targetQbPrice,
        uint256 changePerBlock
    );

    error Misconfigured();

    constructor(address _owner) Owned(_owner) {}

    /*//////////////////////////////////////////////////////////////
                        SET PRICE LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set the price of a base/quote pair
     * @param base The base asset
     * @param quote The quote asset
     * @param bqPrice The price of the base in terms of the quote
     * @param qbPrice The price of the quote in terms of the base
     */
    function setPrice(
        address base,
        address quote,
        uint256 bqPrice,
        uint256 qbPrice
    ) external onlyOwner {
        _setPrice(base, quote, bqPrice, qbPrice);
    }

    /**
     * @notice Set the prices of multiple base/quote pairs
     * @param bases The base assets
     * @param quotes The quote assets
     * @param bqPrices The prices of the bases in terms of the quotes
     * @param qbPrices The prices of the quotes in terms of the bases
     * @dev The lengths of the arrays must be the same
     */
    function setPrices(
        address[] memory bases,
        address[] memory quotes,
        uint256[] memory bqPrices,
        uint256[] memory qbPrices
    ) external onlyOwner checkLength(bases.length, quotes.length) {
        _checkLength(bases.length, bqPrices.length);
        _checkLength(bases.length, qbPrices.length);

        for (uint256 i = 0; i < bases.length; i++) {
            _setPrice(bases[i], quotes[i], bqPrices[i], qbPrices[i]);
        }
    }

    /// @dev Internal function to set the price of a base/quote pair
    function _setPrice(
        address base,
        address quote,
        uint256 bqPrice,
        uint256 qbPrice
    ) internal {
        // Both prices must be set
        if ((bqPrice == 0 && qbPrice != 0) || (qbPrice == 0 && bqPrice != 0))
            revert Misconfigured();

        prices[base][quote] = Price({
            price: bqPrice,
            targetPrice: bqPrice,
            changePerBlock: 0,
            lastUpdatedBlock: block.number,
            increase: false
        });
        prices[quote][base] = Price({
            price: qbPrice,
            targetPrice: qbPrice,
            changePerBlock: 0,
            lastUpdatedBlock: block.number,
            increase: false
        });

        emit PriceUpdated(base, quote, bqPrice, qbPrice, bqPrice, qbPrice, 0);
    }

    /*//////////////////////////////////////////////////////////////
                    SET PRICE OVER TIME LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set the price of a base/quote pair
     * @param base The base asset
     * @param quote The quote asset
     * @param bqTargetPrice The target price of the base in terms of the quote
     * @param qbTargetPrice The target price of the quote in terms of the base
     * @param changePerBlock The price increase per block
     * @param increase Whether the price is increasing or decreasing
     */
    function setPriceOverTime(
        address base,
        address quote,
        uint256 bqTargetPrice,
        uint256 qbTargetPrice,
        uint256 changePerBlock,
        bool increase
    ) external onlyOwner {
        _setPriceOverTime(
            base,
            quote,
            bqTargetPrice,
            qbTargetPrice,
            changePerBlock,
            increase
        );
    }

    /**
     * @notice Set the prices of multiple base/quote pairs
     * @param bases The base assets
     * @param quotes The quote assets
     * @param bqTargetPrices The target prices of the bases in terms of the quotes
     * @param qbTargetPrices The target prices of the quotes in terms of the bases
     * @param changesPerBlock The price increases per block
     * @param increases Whether the price is increasing or decreasing
     * @dev The lengths of the arrays must be the same
     */
    function setPricesOverTime(
        address[] memory bases,
        address[] memory quotes,
        uint256[] memory bqTargetPrices,
        uint256[] memory qbTargetPrices,
        uint256[] memory changesPerBlock,
        bool[] memory increases
    ) external onlyOwner checkLength(bases.length, quotes.length) {
        _checkLength(bases.length, bqTargetPrices.length);
        _checkLength(bases.length, qbTargetPrices.length);
        _checkLength(bases.length, changesPerBlock.length);
        _checkLength(bases.length, increases.length);

        for (uint256 i = 0; i < bases.length; i++) {
            _setPriceOverTime(
                bases[i],
                quotes[i],
                bqTargetPrices[i],
                qbTargetPrices[i],
                changesPerBlock[i],
                increases[i]
            );
        }
    }

    /// @dev Internal function to set the price of a base/quote pair
    function _setPriceOverTime(
        address base,
        address quote,
        uint256 bqTargetPrice,
        uint256 qbTargetPrice,
        uint256 changePerBlock,
        bool increase
    ) internal {
        // Both prices must be set
        if (
            (bqTargetPrice == 0 && qbTargetPrice != 0) ||
            (qbTargetPrice == 0 && bqTargetPrice != 0) ||
            (changePerBlock == 0)
        ) revert Misconfigured();

        uint256 bqPrice = _getCurrentPrice(base, quote);
        uint256 qbPrice = _getCurrentPrice(quote, base);

        if (bqPrice == 0 || qbPrice == 0) revert Misconfigured();

        if (increase) {
            if (bqPrice > bqTargetPrice) revert Misconfigured();
        } else {
            if (bqPrice < bqTargetPrice) revert Misconfigured();
        }

        prices[base][quote] = Price({
            price: bqPrice,
            targetPrice: bqTargetPrice,
            changePerBlock: changePerBlock,
            lastUpdatedBlock: block.number,
            increase: increase
        });
        prices[quote][base] = Price({
            price: qbPrice,
            targetPrice: qbTargetPrice,
            changePerBlock: changePerBlock,
            lastUpdatedBlock: block.number,
            increase: !increase
        });

        emit PriceUpdated(
            base,
            quote,
            bqPrice,
            qbPrice,
            bqTargetPrice,
            qbTargetPrice,
            changePerBlock
        );
    }

    /*//////////////////////////////////////////////////////////////
                            QUOTE LOGIC
    //////////////////////////////////////////////////////////////*/

    function getCurrentPrice(
        address base,
        address quote
    ) public view returns (uint256) {
        return _getCurrentPrice(base, quote);
    }

    function _getCurrentPrice(
        address base,
        address quote
    ) internal view returns (uint256) {
        Price memory price = prices[base][quote];

        if (price.changePerBlock == 0 || price.lastUpdatedBlock == block.number)
            return price.price;

        uint256 change = price.changePerBlock *
            (block.number - price.lastUpdatedBlock);

        uint256 newPrice = price.price + change;
        if (price.increase) {
            return newPrice > price.targetPrice ? price.targetPrice : newPrice;
        } else {
            newPrice = change > price.price ? 0 : price.price - change;
            return newPrice < price.targetPrice ? price.targetPrice : newPrice;
        }
    }

    /// @dev Internal function to get the quote amount for a given base amount
    function _getQuote(
        uint256 inAmount,
        address base,
        address quote
    ) internal view override returns (uint256) {
        uint256 price = _getCurrentPrice(base, quote);

        if (price == 0) revert Errors.PriceOracle_NotSupported(base, quote);

        uint8 baseDecimals = _getDecimals(base);
        uint8 quoteDecimals = _getDecimals(quote);
        Scale scale = ScaleUtils.calcScale(baseDecimals, quoteDecimals, 18);

        return ScaleUtils.calcOutAmount(inAmount, price, scale, false);
    }

    /*//////////////////////////////////////////////////////////////
                            UTILS
    //////////////////////////////////////////////////////////////*/

    /// @dev Modifier to check the lengths of two arrays
    modifier checkLength(uint256 lengthA, uint256 lengthB) {
        _checkLength(lengthA, lengthB);
        _;
    }

    /// @dev Internal function to check the lengths of two arrays
    function _checkLength(uint256 lengthA, uint256 lengthB) internal pure {
        if (lengthA != lengthB) revert Misconfigured();
    }
}
