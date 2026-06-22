// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title ETHPriceFeed
 * @dev Retrieves the latest ETH price in USD from a Chainlink price feed.
 */
import {IChainLinkOracle} from "src/interfaces/IChainLinkOracle.sol";

contract ETHPriceFeed {
    // Chainlink ETH/USD price feed contract
    IChainLinkOracle public immutable ethUsdPriceFeed;
    uint8 public constant DECIMALS = 18;
    uint256 private immutable scale;

    /*//////////////////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor to initialize the ETHPriceFeed contract.
     * @param _priceFeed Address of the Chainlink price feed contract
     */
    constructor(address _priceFeed) {
        require(_priceFeed != address(0), "Invalid price feed address");
        ethUsdPriceFeed = IChainLinkOracle(_priceFeed);

        uint8 priceFeedDecimals = ethUsdPriceFeed.decimals();
        require(DECIMALS >= priceFeedDecimals, "Invalid decimals");
        scale = 10 ** (DECIMALS - priceFeedDecimals);
    }

    /*//////////////////////////////////////////////////////////////////////////
                               PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Retrieves the price of 1 ETH in USD, scaled by 1e18.
     * @return usdPrice - Price of 1 ETH in USD, scaled to 18 decimals.
     */     
    function latestAnswer() external view returns (uint256 usdPrice) {
        int256 ethPriceUsd = ethUsdPriceFeed.latestAnswer();
        require(ethPriceUsd > 0, "Price feed returned invalid data");
        usdPrice = uint256(ethPriceUsd) * scale;
        return usdPrice;
    }

}
