// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface TreeshouseEth is IERC20 {
    function convertToAssets(uint256 _amount) external view returns (uint256);
}

contract TermTEthPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable public wstETHFeed = AggregatorV3Interface(0xA64a0A25de00c7cEd3cCaa1F7EC51c3c8e3E899d);

    TreeshouseEth immutable public tEth = TreeshouseEth(0xD11c452fc99cF405034ee446803b6F6c1F6d5ED8);

    function decimals() external view returns (uint8) {
        return wstETHFeed.decimals();
    }

    function description() external pure returns (string memory) {
        return "Term Finance price feed for tEth";
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
        uint256 wstEthAssets = tEth.convertToAssets(1e18); //18 decimals for tETH

        (, int256 wstEthPrice, , uint256 wstEthUpdatedAt , ) = wstETHFeed.getRoundData(_roundId);
        
        int256 price = int256(wstEthAssets) * wstEthPrice / 1e18;

        return (_roundId, price, 0, wstEthUpdatedAt ,0  );
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
        
        uint256 wstEthAssets = tEth.convertToAssets(1e18); //18 decimals for tETH
        (uint80 fetchedRoundId, int256 wstEthPrice, , uint256 wstEthUpdatedAt , ) = wstETHFeed.latestRoundData();
        
        int256 price = int256(wstEthAssets) * wstEthPrice / 1e18;

        return (fetchedRoundId, price, 0, wstEthUpdatedAt ,0  );
    }
}
