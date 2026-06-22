// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title RETHPriceFeedARB
 * @dev Retrieves the latest RETH price in USD from Chainlink price feeds.
 */
import {IChainLinkOracle} from "src/interfaces/IChainLinkOracle.sol";

contract RETHPriceFeedARB {
    // Chainlink RETH/ETH and ETH/USD price feed contracts
    IChainLinkOracle public immutable rethPriceFeed;
    IChainLinkOracle public immutable ethPriceFeed;
    uint8 public constant DECIMALS = 18;
    uint256 private immutable rethScale;
    uint256 private immutable ethScale;

    /*//////////////////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor to initialize the RETHPriceFeed contract.
     * @param _rethPriceFeed Address of the Chainlink RETH/ETH price feed contract
     * @param _ethPriceFeed Address of the Chainlink ETH/USD price feed contract
     */
    constructor(address _rethPriceFeed, address _ethPriceFeed) {
        require(_rethPriceFeed != address(0), "Invalid RETH price feed address");
        require(_ethPriceFeed != address(0), "Invalid ETH price feed address");

        rethPriceFeed = IChainLinkOracle(_rethPriceFeed);
        ethPriceFeed = IChainLinkOracle(_ethPriceFeed);

        uint8 rethPriceFeedDecimals = rethPriceFeed.decimals();
        uint8 ethPriceFeedDecimals = ethPriceFeed.decimals();

        require(DECIMALS >= rethPriceFeedDecimals, "Invalid RETH price feed decimals");
        require(DECIMALS >= ethPriceFeedDecimals, "Invalid ETH price feed decimals");

        rethScale = 10 ** (DECIMALS - rethPriceFeedDecimals);
        ethScale = 10 ** (DECIMALS - ethPriceFeedDecimals);
    }

    /*//////////////////////////////////////////////////////////////////////////
                               PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Retrieves the price of RETH in USD, scaled by 1e18.
     * @return usdPrice - Price of RTETH in USD, scaled to 18 decimals.
     */
    function latestAnswer() external view returns (uint256 usdPrice) {
        int256 rethPriceInEth = rethPriceFeed.latestAnswer();
        require(rethPriceInEth > 0, "Invalid WSTETH price data");

        int256 ethPriceInUsd = ethPriceFeed.latestAnswer();
        require(ethPriceInUsd > 0, "Invalid ETH price data");

        uint256 rethPriceInEthScaled = uint256(rethPriceInEth) * rethScale;
        uint256 ethPriceInUsdScaled = uint256(ethPriceInUsd) * ethScale;

        usdPrice = (rethPriceInEthScaled * ethPriceInUsdScaled) / (10 ** DECIMALS);
        return usdPrice;
    }
}
