// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title BTCPriceFeed
 * @dev Retrieves the latest BTC price in USD from a Chainlink price feed.
 */
import {IChainLinkOracle} from "../interfaces/IChainLinkOracle.sol";

contract BTCPriceFeed {
    // Chainlink BTC/USD price feed contract
    IChainLinkOracle public immutable btcUsdPriceFeed;
    uint8 public constant DECIMALS = 18;
    uint256 private immutable scale;

    /*//////////////////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor to initialize the BTCPriceFeed contract.
     * @param _priceFeed Address of the Chainlink price feed contract
     */
    constructor(address _priceFeed) {
        require(_priceFeed != address(0), "Invalid price feed address");
        btcUsdPriceFeed = IChainLinkOracle(_priceFeed);

        uint8 priceFeedDecimals = btcUsdPriceFeed.decimals();
        require(DECIMALS >= priceFeedDecimals, "Invalid decimals");
        scale = 10 ** (DECIMALS - priceFeedDecimals);
    }

    /*//////////////////////////////////////////////////////////////////////////
                               PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Retrieves the price of 1 BTC in USD, scaled by 1e18.
     * @return usdPrice - Price of 1 BTC in USD, scaled to 18 decimals.
     */     
    function latestAnswer() external view returns (uint256 usdPrice) {
        int256 btcPriceUsd = btcUsdPriceFeed.latestAnswer();
        require(btcPriceUsd > 0, "Price feed returned invalid data");
        usdPrice = uint256(btcPriceUsd) * scale;
        return usdPrice;
    }

}
