// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Sickle } from "contracts/Sickle.sol";
import { CompoundParams } from "contracts/structs/FarmStrategyStructs.sol";

interface ICompoundable {
    function compoundFor(
        Sickle sickle,
        CompoundParams calldata params,
        address[] memory sweepTokens
    ) external;
}
