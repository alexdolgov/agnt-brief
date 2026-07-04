// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "../utils/Ownable.sol";
import { IAggregator } from "../interfaces/IAggregator.sol";
import { IAdapter } from "../interfaces/IAdapter.sol";
import { IOracle } from "../interfaces/IOracle.sol";
import { IERC4626 } from "../interfaces/IERC4626.sol";

interface IAccountant {
    function getRateSafe() external view returns (uint256 rate);
    function decimals() external view returns (uint8);
    function getRateInQuoteSafe(address quote) external view returns (uint256);
}

contract wHlpAdapter {
    /// @notice contract providing price of the quote asset (USDT/USD redstone)
    IOracle public priceProvider = IOracle(0x5e21f6530f656A38caE4F55500944753F662D184);
    /// @notice wHLP accountant contract
    IAccountant public accountant = IAccountant(0x470bd109A24f608590d85fc1f5a4B6e625E8bDfF);

    /// @notice address of the quote asset (USDT0)
    address public quoteAsset = 0xB8CE59FC3717ada4C02eaDF9682A9e934F625ebb ;
    /// @notice decimals of the wHLP/USDT0 ratio
    uint256 public ratioDecimals;

    constructor() {
        ratioDecimals = accountant.decimals();
    }

    function decimals() external view returns (uint8){
        return 8;
    }

    /// @notice returns the latest price
    function latestAnswer() external view returns (int256) {
        ( , int256 answer , , , ) = getData();
        return answer;
    }

    /// @notice returns the latest price in chainlink-compatible format 
    function latestRoundData() external view returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    ){  
        return getData();
    }

    /// @notice calculate the final price from USDT0/USD price and wHLP/USDT0 ratio
    function getData() internal view returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    ) {
        //fetch quote asset price (USDT0)
        (
            uint80 _roundId,
            int256 _answer,
            uint256 _startedAt,
            uint256 _updatedAt,
            uint80 _answeredInRound
        ) = priceProvider.latestRoundData();
        require(_answer > 0, "price <= 0");

        //get the wHLP/USDT0 ratio
        uint256 _ratioAnswer = accountant.getRateInQuoteSafe(quoteAsset);

        answer = _answer * int256(_ratioAnswer) / int256(10**ratioDecimals);

        //return round data for the underlying price
        roundId = _roundId;
        startedAt = _startedAt;
        updatedAt = _updatedAt;
        answeredInRound = _answeredInRound;
    }
}
