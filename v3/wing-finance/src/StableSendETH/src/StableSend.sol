// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/shared/interfaces/AggregatorV3Interface.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract StableSend is Ownable {
    /// @notice Mapping of token to price feed
    mapping(address => address) public priceFeeds;

    error PriceFeedNotFound();
    error StalePrice();
    error PriceFeedAlreadySet();

    constructor() Ownable(msg.sender) {}

    /**
     * @notice Sends value to a recipient denominated in the `valueToken` but paid in the `paymentToken`.
     * @param valueToken The token used for amount denomination. Usually USDC.
     * @param amount The amount of `valueToken` to send.
     * @param paymentToken The asset used for disbursing payment. Usually ETH, COMP, UNI, etc.
     * @param to The recipient of the payment.
     */
    function sendValue(address valueToken, uint256 amount, address paymentToken, address to) external {
        address valuePriceFeed = priceFeeds[valueToken];
        address paymentPriceFeed = priceFeeds[paymentToken];

        if (valuePriceFeed == address(0) || paymentPriceFeed == address(0)) {
            // Token not supported
            revert PriceFeedNotFound();
        }

        int256 valuePrice;
        int256 paymentPrice;

        {
            uint256 valueUpdateTime;
            uint256 paymentUpdateTime;
            (, valuePrice,, valueUpdateTime,) = AggregatorV3Interface(valuePriceFeed).latestRoundData();

            (, paymentPrice,, paymentUpdateTime,) = AggregatorV3Interface(paymentPriceFeed).latestRoundData();

            if (block.timestamp - valueUpdateTime > 1 days || block.timestamp - paymentUpdateTime > 1 days) {
                revert StalePrice();
            }
        }

        uint8 valuePriceDecimals = AggregatorV3Interface(valuePriceFeed).decimals();
        uint256 valueTokenDecimals = IERC20Metadata(valueToken).decimals();

        uint8 paymentPriceDecimals = AggregatorV3Interface(paymentPriceFeed).decimals();
        uint256 paymentTokenDecimals = IERC20Metadata(paymentToken).decimals();

        uint256 amountToSend = (amount * uint256(valuePrice) * 10 ** (paymentTokenDecimals + paymentPriceDecimals))
            / (uint256(paymentPrice) * 10 ** (valueTokenDecimals + valuePriceDecimals));

        IERC20Metadata(paymentToken).transferFrom(msg.sender, to, amountToSend);
    }

    /**
     * @notice Helper to get the current chainlink price for a given supported token.
     * @param token Address of the token to get the price for.
     */
    function getPrice(address token) public view returns (uint256) {
        address priceFeed = priceFeeds[token];
        if (priceFeed == address(0)) revert PriceFeedNotFound();
        (, int256 price,,,) = AggregatorV3Interface(priceFeed).latestRoundData();
        return uint256(price);
    }

    /**
     * @notice Allow the owner to add price feeds after deployment. May not alter existing price feeds.
     * @param token Token to set the price feed for.
     * @param priceFeed Address for the price feed.
     */
    function setPriceFeed(address token, address priceFeed) external onlyOwner {
        if (priceFeeds[token] != address(0)) revert PriceFeedAlreadySet();

        priceFeeds[token] = priceFeed;
    }
}
