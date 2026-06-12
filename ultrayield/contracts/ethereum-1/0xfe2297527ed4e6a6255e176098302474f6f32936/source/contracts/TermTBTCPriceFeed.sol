// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermTBTCPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable btcFeed = AggregatorV3Interface(0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c);
    AggregatorV3Interface immutable tbtcFeed = AggregatorV3Interface(0x8350b7De6a6a2C1368E7D4Bd968190e13E354297);

    function decimals() external pure returns (uint8) {
        return 8;
    }

    function description() external pure returns (string memory) {
        return "Term Finance price feed for tbtc";
    }

    function version() external pure returns (uint256) {
        return 0;
    }

    function getRoundData(
        uint80 _roundId 
    )
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
        (, int256 btcPrice, , uint256 btcUpdatedAt , ) = btcFeed.getRoundData(_roundId);
        (, int256 tbtcPrice, , uint256 tbtcUpdatedAt , ) = tbtcFeed.getRoundData(_roundId);
        
        if (btcPrice <= tbtcPrice) {
            return (0, btcPrice, 0, btcUpdatedAt ,0  );
        } else {
            return (0, tbtcPrice, 0, tbtcUpdatedAt ,0  );
        }
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
        (, int256 btcPrice, , uint256 btcUpdatedAt , ) = btcFeed.latestRoundData();
        (, int256 tbtcPrice, , uint256 tbtcUpdatedAt , ) = tbtcFeed.latestRoundData();
        
        if (btcPrice <= tbtcPrice) {
            return (0, btcPrice, 0, btcUpdatedAt ,0  );
        } else {
            return (0, tbtcPrice, 0, tbtcUpdatedAt ,0  );
        }
    }
}
