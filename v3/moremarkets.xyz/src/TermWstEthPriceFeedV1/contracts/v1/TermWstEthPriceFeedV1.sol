// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

/// @notice IWstETH represents a Lido wrapped staked eth contract
interface IWstETH {
    /**
     * @notice Get amount of stETH for a one wstETH
     * @return Amount of stETH for 1 wstETH
     */
    function stEthPerToken() external view returns (uint256);
}

contract TermWstEthPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;
    AggregatorV3Interface immutable ethPriceFeed;
    IWstETH immutable wstEth;

    string _description;

    uint8 immutable feedDecimals;

    constructor(
        address referenceToken_,
        string memory description_,
        AggregatorV3Interface ethPriceFeed_
    ) {
        ethPriceFeed = ethPriceFeed_;

        referenceToken = referenceToken_;
        wstEth = IWstETH(referenceToken_);
        _description = description_;

        feedDecimals = ethPriceFeed.decimals();
    }

    function decimals() external view returns (uint8) {
        return feedDecimals;
    }

    function description() external view returns (string memory) {
        return _description;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function getRoundData(
        uint80 /* _roundId */
    )
        external
        pure
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (0, 0, 0, 0, 0);
    }

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
        // slither-disable-next-line unused-return
        (, int256 ethPrice, , uint256 ethUpdatedAt, ) = ethPriceFeed
            .latestRoundData();

        int256 wstEthPrice = (int256(wstEth.stEthPerToken()) * ethPrice) / int256(1e18);

        return (
            0,
            wstEthPrice,
            0,
            ethUpdatedAt,
            0
        );
    }
}
