// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ILiquidationPair } from "../../lib/pt-v5-liquidator-interfaces/src/interfaces/ILiquidationPair.sol";

interface ILiquidationPairFactory {
    function allPairs(uint256 index) external returns(ILiquidationPair);
}