// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {IUsualTokenMapping} from "./interfaces/IUsualTokenMapping.sol";
import {IUsualClassicalOracle} from "./interfaces/IUsualClassicalOracle.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract TermUsualPriceFeed is AggregatorV3Interface {

    address constant public TOKEN_MAPPING = 0x43882C864a406D55411b8C166bCA604709fDF624;
    address constant public USUAL_CLASSICAL_ORACLE = 0x43882C864a406D55411b8C166bCA604709fDF624;
    address constant public USUAL_SAFE = 0xdd82875f0840AAD58a455A70B88eEd9F59ceC7c7;
    address constant public USD0_TOKEN = 0x73A15FeD60Bf67631dC6cd7Bc5B6e8da8190aCF5;

    IUsualTokenMapping immutable tokenMapping = IUsualTokenMapping(TOKEN_MAPPING);
    IUsualClassicalOracle immutable usualClassicalOracle = IUsualClassicalOracle(USUAL_CLASSICAL_ORACLE);
    ERC20 immutable usd0Token = ERC20(USD0_TOKEN);

    constructor() {
    }

    function decimals() external view returns (uint8) {
        return 18;
    }

    function description() external pure returns (string memory) {
        return "Term Finance price feed";
    }

    function version() external pure returns (uint256) {
        return 0;
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
        address[] memory usd0RwaTokens = tokenMapping.getAllUsd0Rwa();
        address token;
        int256 tokenPrice;
        int256 cumulativeTokenPrice;
        ERC20 tokenInterface;
        for (uint256 i = 0; i < usd0RwaTokens.length; i++) {
            token = usd0RwaTokens[i];
            tokenPrice = usualClassicalOracle.getPrice(token);
            tokenInterface = ERC20(token);
            cumulativeTokenPrice += tokenInterface.decimals() < 18 ? tokenPrice * int256(tokenInterface.balanceOf(USUAL_SAFE) * 10 ** (18 - tokenInterface.decimals())) : tokenPrice * int256(tokenInterface.balanceOf(USUAL_SAFE));
        }
        int256 calculatedUsd0Price = cumulativeTokenPrice / int256(usd0Token.totalSupply());

        int256 usd0Price = calculatedUsd0Price < 10 ** 18 ? calculatedUsd0Price : int256(10 ** 18) ;

        return (0, usd0Price, 0, 0, 0);
    }
}
