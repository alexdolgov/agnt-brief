// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Diamond, DiamondArgs } from "../diamond/Diamond.sol";
import { IDiamondCut } from "../diamond/interfaces/IDiamondCut.sol";

contract ProxyDomaRecord is Diamond {
    constructor(
        IDiamondCut.FacetCut[] memory _diamondCut,
        DiamondArgs memory _args
    ) payable Diamond(_diamondCut, _args) {}
}
