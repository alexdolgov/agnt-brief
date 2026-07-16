// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Sickle } from "contracts/Sickle.sol";
import {
    DepositParams,
    HarvestParams,
    WithdrawParams
} from "contracts/structs/FarmStrategyStructs.sol";
import { NftInfo } from "contracts/interfaces/INftSettingsRegistry.sol";

struct RebalanceParams {
    NftInfo nftInfo;
    HarvestParams harvestParams;
    WithdrawParams withdrawParams;
    DepositParams depositParams;
}

interface IRebalanceable {
    function rebalanceFor(
        Sickle sickle,
        RebalanceParams calldata params,
        address[] calldata sweepTokens
    ) external;
}
