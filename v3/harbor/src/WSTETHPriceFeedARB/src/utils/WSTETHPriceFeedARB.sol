// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title WSTETHPriceFeed
 * @dev Retrieves the latest WSTETH price in USD from Chainlink price feeds.
 */
import {IChainLinkOracle} from "src/interfaces/IChainLinkOracle.sol";

contract WSTETHPriceFeedARB {
    // Chainlink WSTETH/ETH and ETH/USD price feed contracts
    IChainLinkOracle public immutable wstethPriceFeed;
    IChainLinkOracle public immutable ethPriceFeed;
    uint8 public constant DECIMALS = 18;
    uint256 private immutable wstethScale;
    uint256 private immutable ethScale;

    /*//////////////////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor to initialize the WSTETHPriceFeed contract.
     * @param _wstethPriceFeed Address of the Chainlink WSTETH/ETH price feed contract
     * @param _ethPriceFeed Address of the Chainlink ETH/USD price feed contract
     */
    constructor(address _wstethPriceFeed, address _ethPriceFeed) {
        require(_wstethPriceFeed != address(0), "Invalid WSTETH price feed address");
        require(_ethPriceFeed != address(0), "Invalid ETH price feed address");

        wstethPriceFeed = IChainLinkOracle(_wstethPriceFeed);
        ethPriceFeed = IChainLinkOracle(_ethPriceFeed);

        uint8 wstethPriceFeedDecimals = wstethPriceFeed.decimals();
        uint8 ethPriceFeedDecimals = ethPriceFeed.decimals();

        require(DECIMALS >= wstethPriceFeedDecimals, "Invalid WSTETH price feed decimals");
        require(DECIMALS >= ethPriceFeedDecimals, "Invalid ETH price feed decimals");

        wstethScale = 10 ** (DECIMALS - wstethPriceFeedDecimals);
        ethScale = 10 ** (DECIMALS - ethPriceFeedDecimals);
    }

    /*//////////////////////////////////////////////////////////////////////////
                               PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Retrieves the price of WSTETH in USD, scaled by 1e18.
     * @return usdPrice - Price of WSTETH in USD, scaled to 18 decimals.
     */
    function latestAnswer() external view returns (uint256 usdPrice) {
        int256 wstethPriceInEth = wstethPriceFeed.latestAnswer();
        require(wstethPriceInEth > 0, "Invalid WSTETH price data");

        int256 ethPriceInUsd = ethPriceFeed.latestAnswer();
        require(ethPriceInUsd > 0, "Invalid ETH price data");

        uint256 wstethPriceInEthScaled = uint256(wstethPriceInEth) * wstethScale;
        uint256 ethPriceInUsdScaled = uint256(ethPriceInUsd) * ethScale;

        usdPrice = (wstethPriceInEthScaled * ethPriceInUsdScaled) / (10 ** DECIMALS);
        return usdPrice;
    }
}
