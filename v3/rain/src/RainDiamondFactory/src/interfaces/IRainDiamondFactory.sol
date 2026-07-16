// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IDiamondCut } from "../diamond/interfaces/IDiamondCut.sol";

import { IRainPool } from "./IRainPool.sol";

interface IRainDiamondFactory {
    function createRainDiamond(
        IDiamondCut.FacetCut[] calldata diamondCut,
        IRainPool.Params calldata poolParams
    ) external returns (address);
}
