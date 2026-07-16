// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { RainPoolDiamond } from "./diamond/RainPoolDiamond.sol";

import { IDiamondCut } from "./diamond/interfaces/IDiamondCut.sol";

import { IRainPool } from "./interfaces/IRainPool.sol";

import { IRainDiamondFactory } from "./interfaces/IRainDiamondFactory.sol";

contract RainDiamondFactory is IRainDiamondFactory {
    function createRainDiamond(
        IDiamondCut.FacetCut[] calldata diamondCut,
        IRainPool.Params calldata poolParams
    ) external returns (address) {
        revert("V1 Deprecated: No new pools can be created");
    }
}
