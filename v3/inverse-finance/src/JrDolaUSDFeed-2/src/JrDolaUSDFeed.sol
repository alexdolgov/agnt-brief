// SPDX-License-Identifier: MIT License
pragma solidity ^0.8.24;

interface IChainlinkFeed {
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
    function decimals() external view returns (uint8);

    function latestAnswer() external view returns (int256);
}

interface IERC4626 {
    function convertToAssets(uint shares) external view returns (uint);
}

/**
 * @title JrDolaUSDFeed
 * @notice Chainlink-compatible price feed returning the jrDola/USD exchange rate using the jrDola/DOLA price and the DOLA/USD price.
 * @dev price = jrDolaPerDola * dolaUsdPrice / 10**dolaUsdDecimals
 */
contract JrDolaUSDFeed {

    IChainlinkFeed public immutable jrDolaToDolaFeed;
    IChainlinkFeed public immutable dolaUsdFeed;
    uint8 public constant decimals = 18;
    string public constant description = "jrDola/USD Price Feed";

    constructor(address _jrDolaToDolaFeed, address _dolaUsdFeed) {
        jrDolaToDolaFeed = IChainlinkFeed(_jrDolaToDolaFeed);
        dolaUsdFeed = IChainlinkFeed(_dolaUsdFeed);
    }

    /**
     * @notice Returns the latest jrDola/USD price.
     * @return roundId Always 0.
     * @return answer The jrDola/USD price with 18 decimals.
     * @return startedAt Always 0.
     * @return updatedAt The updatedAt timestamp of the DOLA/USD feed.
     * @return answeredInRound Always 0.
     */
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        (int256 price, uint256 _updatedAt) = _getPriceAndUpdatedAt();
        return (0, price, 0, _updatedAt, 0);
    }

    /**
     * @notice Returns the latest jrDola/USD price
     * @return The jrDola/USD price with 18 decimals.
     */
    function latestAnswer() external view returns (int256) {
        (int256 price,) = _getPriceAndUpdatedAt();
        return price;
    }

    /**
     * @dev Get the jrDola/USD price and the updatedAt of the DOLA/USD feed.
     */
    function _getPriceAndUpdatedAt() internal view returns (int256, uint256) {
        (, int256 dolaPerJrDola, , , ) = jrDolaToDolaFeed.latestRoundData();
        (, int256 dolaUsdPrice, , uint256 dolaUsdUpdatedAt, ) = dolaUsdFeed.latestRoundData();
        return (dolaPerJrDola * dolaUsdPrice / 1e18, dolaUsdUpdatedAt);
    }
}
