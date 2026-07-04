// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";


/**
 * @title TermPTsUSDePriceFeed Oracle
 * @notice Get TermPTsUSDePriceFeed price
 */
contract TermPTsUSDePriceFeed is AggregatorV3Interface {
    using SafeCast for uint256;

    uint256 public constant expirTime = 1753920000;

    AggregatorV3Interface internal immutable usdePriceFeed;

    constructor(AggregatorV3Interface usdePriceFeed_) {
        require(
            usdePriceFeed_ != AggregatorV3Interface(address(0)),
            "feed address cannot be zero"
        );
        usdePriceFeed = usdePriceFeed_;
    }

    function description() external pure override returns (string memory) {
        return "PT-sUSDe-31JUL2025 Price Feed";
    }

    function version() external pure override returns (uint256) {
        return 1;
    }

    function decimals() external view override returns (uint8) {
        return usdePriceFeed.decimals();
    }

    function getRoundData(
        uint80 /* roundId */
    )
        external
        pure
        override
        returns (uint80, int256, uint256, uint256, uint80)
    {
        return (0, 0, 0, 0, 0);
    }

    function latestRoundData()
        external
        view
        override
        returns (uint80, int256, uint256, uint256, uint80)
    {
        // slither-disable-next-line unused-return
        (, int256 usdePrice, , uint256 updatedAt, ) = usdePriceFeed.latestRoundData();

        if (usdePrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        if (block.timestamp > expirTime) {
            return (0, usdePrice, 0, updatedAt, 0);
        }

        return (0, _convertAnswer(usdePrice), 0, updatedAt, 0);
    }

    function _convertAnswer(int256 answer) internal view returns (int256) {
        uint256 dayCountFraction = ((expirTime - block.timestamp) * 1e18) / (360 days);
        uint256 discountFactor = 0.20e18 * dayCountFraction / 1e18;
        int256 priceScaled = (answer * 1e18) / (int256(discountFactor) + 1e18);
        return priceScaled;
    }
}
