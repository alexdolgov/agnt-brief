// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    RebalanceConfig,
    NftKey,
    NftInfo,
    NftSettings,
    INftSettingsRegistry,
    RewardBehavior
} from "contracts/interfaces/INftSettingsRegistry.sol";
import { NftSettingsRegistry } from "contracts/NftSettingsRegistry.sol";
import { IFarmConnector } from "contracts/interfaces/IFarmConnector.sol";
import {
    IUniswapV3Pool,
    IUniswapV3PoolState,
    IUniswapV3PoolImmutables
} from "contracts/interfaces/external/uniswap/IUniswapV3Pool.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";
import { StrategyModule } from "contracts/modules/StrategyModule.sol";
import { ZapLib } from "contracts/libraries/ZapLib.sol";
import { FeesLib } from "contracts/libraries/FeesLib.sol";
import { TransferLib } from "contracts/libraries/TransferLib.sol";
import { NftSettingsLib } from "contracts/libraries/NftSettingsLib.sol";
import { SickleFactory } from "contracts/SickleFactory.sol";
import { ConnectorRegistry } from "contracts/ConnectorRegistry.sol";
import { Sickle } from "contracts/Sickle.sol";
import {
    IRebalanceable,
    RebalanceParams
} from "contracts/interfaces/IRebalanceable.sol";
import {
    DepositParams,
    HarvestParams,
    WithdrawParams
} from "contracts/structs/FarmStrategyStructs.sol";

library RebalanceStrategyFees {
    bytes4 constant Harvest = bytes4(keccak256("RebalanceHarvestFee"));
    bytes4 constant HarvestFor = bytes4(keccak256("RebalanceHarvestForFee"));
    bytes4 constant RebalanceLow = bytes4(keccak256("RebalanceLowFee"));
    bytes4 constant RebalanceMid = bytes4(keccak256("RebalanceMidFee"));
    bytes4 constant RebalanceHigh = bytes4(keccak256("RebalanceHighFee"));
}

interface IPreviousRebalanceRegistry {
    struct OldRebalanceConfig {
        int24 tickLow;
        int24 tickHigh;
        uint256 slippageBP;
        int24 minTickLow;
        int24 maxTickHigh;
        uint8 delayMin;
    }

    function getRebalanceConfig(NftKey memory key)
        external
        returns (OldRebalanceConfig memory);
}

contract RebalanceStrategy is
    NftSettingsRegistry,
    StrategyModule,
    IRebalanceable
{
    error TokenOutRequired();
    error RebalanceConfigNotSet();
    error TickWithinRange();
    error TickOutsideStopLossRange();
    error NftSupplyChanged();

    struct Libraries {
        ZapLib zapLib;
        FeesLib feesLib;
        TransferLib transferLib;
        NftSettingsLib nftSettingsLib;
    }

    ZapLib public immutable zapLib;
    FeesLib public immutable feesLib;
    TransferLib public immutable transferLib;
    NftSettingsLib public immutable nftSettingsLib;

    address public immutable strategyAddress;

    constructor(
        SickleFactory factory,
        ConnectorRegistry connectorRegistry,
        Libraries memory libraries
    ) StrategyModule(factory, connectorRegistry) NftSettingsRegistry() {
        strategyAddress = address(this);
        zapLib = libraries.zapLib;
        feesLib = libraries.feesLib;
        transferLib = libraries.transferLib;
        nftSettingsLib = libraries.nftSettingsLib;
    }

    /* External functions */

    function setNftSettings(
        INonfungiblePositionManager nftManager,
        uint256 tokenId,
        NftSettings calldata settings
    ) external {
        Sickle sickle = getSickle(msg.sender);
        NftKey memory key = NftKey(sickle, nftManager, tokenId);
        _set_nft_settings(key, settings);
    }

    function migrateNftSettings(
        IPreviousRebalanceRegistry previousRebalanceRegistry,
        INonfungiblePositionManager nftManager,
        uint256[] memory tokenIds
    ) external {
        Sickle sickle = getSickle(msg.sender);

        uint256 tokenLength = tokenIds.length;
        for (uint256 i; i < tokenLength; i++) {
            NftKey memory key = NftKey(sickle, nftManager, tokenIds[i]);
            IPreviousRebalanceRegistry.OldRebalanceConfig memory oldConfig =
                previousRebalanceRegistry.getRebalanceConfig(key);
            (,,,,, int24 tickLower, int24 tickUpper,,,,,) =
                nftManager.positions(key.tokenId);
            int24 diffToRebalanceBelowTick = tickLower - oldConfig.tickLow;
            int24 diffToRebalanceAboveTick = oldConfig.tickHigh - tickUpper;
            if (diffToRebalanceBelowTick < 0) {
                diffToRebalanceBelowTick = 0;
            }
            if (diffToRebalanceAboveTick < 0) {
                diffToRebalanceAboveTick = 0;
            }
            RebalanceConfig memory newConfig = RebalanceConfig(
                uint24(diffToRebalanceBelowTick),
                uint24(diffToRebalanceAboveTick),
                oldConfig.slippageBP,
                oldConfig.minTickLow,
                oldConfig.maxTickHigh,
                oldConfig.delayMin
            );
            NftSettings memory settings = NftSettings(
                true, RewardBehavior.Compound, address(0), newConfig
            );
            _set_nft_settings(key, settings);
        }
    }

    function unsetNftSettings(
        INonfungiblePositionManager nftManager,
        uint256 tokenId
    ) external {
        Sickle sickle = getSickle(msg.sender);
        NftKey memory key = NftKey(sickle, nftManager, tokenId);
        _unset_nft_settings(key);
    }

    function rebalanceFor(
        Sickle sickle,
        RebalanceParams calldata params,
        address[] calldata sweepTokens
    ) external onlyApproved(sickle) {
        if (params.withdrawParams.tokensOut.length == 0) {
            revert TokenOutRequired();
        }

        _validate_rebalance_config(sickle, params.nftInfo);

        uint256 nftTotalSupply = params.nftInfo.nftManager.totalSupply();

        address[] memory targets = new address[](9);
        bytes[] memory data = new bytes[](9);

        targets[0] = connectorRegistry.connectorOf(
            params.harvestParams.stakingContractAddress
        );
        data[0] = abi.encodeCall(
            IFarmConnector.claim,
            (
                params.harvestParams.stakingContractAddress,
                params.harvestParams.extraData
            )
        );

        targets[1] = address(feesLib);
        data[1] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                RebalanceStrategyFees.HarvestFor,
                params.harvestParams.tokensOut
            )
        );

        targets[2] = connectorRegistry.connectorOf(
            params.withdrawParams.stakingContractAddress
        );
        data[2] = abi.encodeCall(
            IFarmConnector.withdraw,
            (
                params.withdrawParams.stakingContractAddress,
                params.withdrawParams.zapData.removeLiquidityData.lpAmountIn,
                params.withdrawParams.extraData
            )
        );

        targets[3] = address(zapLib);
        data[3] = abi.encodeCall(ZapLib.zapOut, (params.withdrawParams.zapData));

        targets[4] = address(feesLib);
        data[4] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                _get_rebalance_fee(params.nftInfo.pool),
                params.withdrawParams.tokensOut
            )
        );

        targets[5] = address(zapLib);
        data[5] = abi.encodeCall(ZapLib.zapIn, (params.depositParams.zapData));

        targets[6] = address(nftSettingsLib);
        data[6] = abi.encodeCall(
            NftSettingsLib.resetNftSettings,
            (INftSettingsRegistry(strategyAddress), params.nftInfo)
        );

        targets[7] = connectorRegistry.connectorOf(
            params.depositParams.stakingContractAddress
        );
        data[7] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                params.depositParams.stakingContractAddress,
                params.depositParams.zapData.addLiquidityData.lpToken,
                params.depositParams.extraData
            )
        );

        if (sweepTokens.length > 0) {
            targets[8] = address(transferLib);
            data[8] =
                abi.encodeCall(TransferLib.transferTokensToUser, (sweepTokens));
        }

        sickle.multicall(targets, data);

        if (nftTotalSupply != params.nftInfo.nftManager.totalSupply()) {
            revert NftSupplyChanged();
        }
    }

    function rebalance(
        IUniswapV3Pool pool,
        HarvestParams calldata harvestParams,
        WithdrawParams calldata withdrawParams,
        DepositParams calldata depositParams,
        address[] memory sweepTokens
    ) external {
        if (withdrawParams.tokensOut.length == 0) {
            revert TokenOutRequired();
        }

        Sickle sickle = getSickle(msg.sender);

        address[] memory targets = new address[](8);
        bytes[] memory data = new bytes[](8);

        targets[0] =
            connectorRegistry.connectorOf(harvestParams.stakingContractAddress);
        data[0] = abi.encodeCall(
            IFarmConnector.claim,
            (harvestParams.stakingContractAddress, harvestParams.extraData)
        );

        targets[1] = address(feesLib);
        data[1] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                RebalanceStrategyFees.Harvest,
                harvestParams.tokensOut
            )
        );

        targets[2] =
            connectorRegistry.connectorOf(withdrawParams.stakingContractAddress);
        data[2] = abi.encodeCall(
            IFarmConnector.withdraw,
            (
                withdrawParams.stakingContractAddress,
                withdrawParams.zapData.removeLiquidityData.lpAmountIn,
                withdrawParams.extraData
            )
        );

        targets[3] = address(zapLib);
        data[3] = abi.encodeCall(ZapLib.zapOut, (withdrawParams.zapData));

        targets[4] = address(feesLib);
        data[4] = abi.encodeCall(
            FeesLib.chargeFees,
            (
                strategyAddress,
                _get_rebalance_fee(pool),
                withdrawParams.tokensOut
            )
        );

        targets[5] = address(zapLib);
        data[5] = abi.encodeCall(ZapLib.zapIn, (depositParams.zapData));

        targets[6] =
            connectorRegistry.connectorOf(depositParams.stakingContractAddress);
        data[6] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                depositParams.stakingContractAddress,
                depositParams.zapData.addLiquidityData.lpToken,
                depositParams.extraData
            )
        );

        if (sweepTokens.length > 0) {
            targets[7] = address(transferLib);
            data[7] =
                abi.encodeCall(TransferLib.transferTokensToUser, (sweepTokens));
        }

        sickle.multicall(targets, data);
    }

    /* Internal functions */

    // Tick is the 2nd field in slot0, the rest can vary
    function _get_curent_tick(IUniswapV3Pool pool) internal returns (int24) {
        (, bytes memory result) =
            address(pool).call(abi.encodeCall(IUniswapV3PoolState.slot0, ()));

        int24 tick;

        assembly {
            tick := mload(add(add(result, 32), 32))
        }

        return tick;
    }

    function _get_rebalance_fee(IUniswapV3Pool pool)
        internal
        view
        returns (bytes4)
    {
        uint24 fee = IUniswapV3PoolImmutables(pool).fee();
        if (fee <= 500) {
            return RebalanceStrategyFees.RebalanceLow;
        } else if (fee <= 3000) {
            return RebalanceStrategyFees.RebalanceMid;
        } else {
            return RebalanceStrategyFees.RebalanceHigh;
        }
    }

    function _validate_rebalance_config(
        Sickle sickle,
        NftInfo calldata nftInfo
    ) private {
        RebalanceConfig memory config = getNftSettings(
            NftKey(sickle, nftInfo.nftManager, nftInfo.tokenId)
        ).rebalanceConfig;

        if (config.stopLossTickLow == 0 && config.stopLossTickHigh == 0) {
            revert RebalanceConfigNotSet();
        }

        (,,,,, int24 tickLower, int24 tickUpper,,,,,) =
            nftInfo.nftManager.positions(nftInfo.tokenId);

        int24 tick = _get_curent_tick(nftInfo.pool);

        if (
            tick >= tickLower - int24(config.diffToRebalanceBelowTick)
                && tick < tickUpper + int24(config.diffToRebalanceAboveTick)
        ) {
            revert TickWithinRange();
        }
        if (tick <= config.stopLossTickLow || tick >= config.stopLossTickHigh) {
            revert TickOutsideStopLossRange();
        }
    }
}
