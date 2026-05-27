// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Sickle } from "contracts/Sickle.sol";
import { HarvestParams } from "contracts/structs/FarmStrategyStructs.sol";

interface IHarvestable {
    function harvestFor(
        Sickle sickle,
        HarvestParams calldata params,
        address[] memory sweepTokens
    ) external;
}
