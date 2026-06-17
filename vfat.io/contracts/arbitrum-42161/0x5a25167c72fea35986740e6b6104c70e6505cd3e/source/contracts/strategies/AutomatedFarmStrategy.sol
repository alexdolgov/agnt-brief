// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    StrategyModule,
    SickleFactory,
    Sickle,
    ConnectorRegistry
} from "contracts/modules/StrategyModule.sol";
import { IFarmConnector } from "contracts/interfaces/IFarmConnector.sol";
import {
    DepositParams,
    HarvestParams,
    WithdrawParams,
    CompoundParams
} from "contracts/structs/FarmStrategyStructs.sol";
import { ZapLib } from "contracts/libraries/ZapLib.sol";
import { FeesLib } from "contracts/libraries/FeesLib.sol";
import { TransferLib } from "contracts/libraries/TransferLib.sol";
import { SwapLib } from "contracts/libraries/SwapLib.sol";
import { ICompoundable } from "contracts/interfaces/ICompoundable.sol";
import { IHarvestable } from "./../interfaces/IHarvestable.sol";

library AutomatedFarmStrategyFees {
    bytes4 constant HarvestFor = bytes4(keccak256("FarmHarvestForFee"));
    bytes4 constant CompoundFor = bytes4(keccak256("FarmCompoundForFee"));
}

import { ICompoundable } from "contracts/interfaces/ICompoundable.sol";

contract AutomatedFarmStrategy is
    StrategyModule,
    ICompoundable,
    IHarvestable
{
    struct Libraries {
        TransferLib transferLib;
        SwapLib swapLib;
        FeesLib feesLib;
        ZapLib zapLib;
    }

    error TokenOutRequired();

    ZapLib public immutable zapLib;
    SwapLib public immutable swapLib;
    TransferLib public immutable transferLib;
    FeesLib public immutable feesLib;

    address public immutable strategyAddress;

    constructor(
        SickleFactory factory,
        ConnectorRegistry connectorRegistry,
        Libraries memory libraries
    ) StrategyModule(factory, connectorRegistry) {
        zapLib = libraries.zapLib;
        swapLib = libraries.swapLib;
        transferLib = libraries.transferLib;
        feesLib = libraries.feesLib;
        strategyAddress = address(this);
    }

    function compoundFor(
        Sickle sickle,
        CompoundParams calldata params,
        bool inPlace,
        address[] memory sweepTokens
    ) external onlyApproved(sickle) {
        address[] memory targets = new address[](6);
        bytes[] memory data = new bytes[](6);

        address farmConnector =
            connectorRegistry.connectorOf(params.claimContractAddress);

        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.claim,
            (params.claimContractAddress, params.claimExtraData)
        );

        targets[1] = address(feesLib);
        data[1] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                AutomatedFarmStrategyFees.CompoundFor,
                params.rewardTokens
            )
        );

        if (!inPlace) {
            targets[2] =
                connectorRegistry.connectorOf(params.claimContractAddress);
            data[2] = abi.encodeCall(
                IFarmConnector.withdraw,
                (params.claimContractAddress, 0, params.claimExtraData)
            );
        }

        targets[3] = address(zapLib);
        data[3] = abi.encodeCall(ZapLib.zapIn, (params.zapData));
        targets[4] =
            connectorRegistry.connectorOf(params.depositContractAddress);
        data[4] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                params.depositContractAddress,
                params.zapData.addLiquidityData.lpToken,
                params.depositExtraData
            )
        );

        targets[5] = address(transferLib);
        data[5] =
            abi.encodeCall(TransferLib.transferTokensToUser, (sweepTokens));

        sickle.multicall(targets, data);
    }

    function harvestFor(
        Sickle sickle,
        HarvestParams calldata params,
        address[] memory sweepTokens
    ) external onlyApproved(sickle) {
        address[] memory targets = new address[](4);
        bytes[] memory data = new bytes[](4);

        address farmConnector =
            connectorRegistry.connectorOf(params.stakingContractAddress);
        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.claim,
            (params.stakingContractAddress, params.extraData)
        );

        targets[1] = address(swapLib);
        data[1] = abi.encodeCall(SwapLib.swapMultiple, (params.swaps));
        targets[2] = address(feesLib);
        data[2] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                AutomatedFarmStrategyFees.HarvestFor,
                params.tokensOut
            )
        );

        if (sweepTokens.length > 0) {
            targets[3] = address(transferLib);
            data[3] =
                abi.encodeCall(TransferLib.transferTokensToUser, (sweepTokens));
        }

        sickle.multicall(targets, data);
    }
}
