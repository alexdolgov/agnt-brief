// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IERC4626} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";

import {IOracle} from "../../lib/morpho-blue/src/interfaces/IOracle.sol";

interface IMorphoOracleFactory {
    function createMorphoChainlinkOracleV2(
        IERC4626 baseVault,
        uint256 baseVaultConversionSample,
        AggregatorV3Interface baseFeed1,
        AggregatorV3Interface baseFeed2,
        uint256 baseTokenDecimals,
        IERC4626 quoteVault,
        uint256 quoteVaultConversionSample,
        AggregatorV3Interface quoteFeed1,
        AggregatorV3Interface quoteFeed2,
        uint256 quoteTokenDecimals,
        bytes32 salt
    ) external returns (IOracle oracle);
}
