// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    IUniswapV3Pool,
    IUniswapV3PoolState,
    IUniswapV3PoolImmutables
} from "contracts/interfaces/external/uniswap/IUniswapV3Pool.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";

import { Sickle } from "contracts/Sickle.sol";
import { INftLiquidityConnector } from
    "contracts/interfaces/INftLiquidityConnector.sol";
import { INftSettingsRegistry } from
    "contracts/interfaces/INftSettingsRegistry.sol";
import {
    RewardBehavior,
    RewardConfig
} from "contracts/structs/PositionSettingsStructs.sol";
import {
    NftKey,
    NftSettings,
    ExitConfig,
    RebalanceConfig
} from "contracts/structs/NftSettingsStructs.sol";
import { SickleFactory } from "contracts/SickleFactory.sol";
import { ConnectorRegistry } from "contracts/ConnectorRegistry.sol";

contract NftSettingsRegistry is INftSettingsRegistry {
    error AutoHarvestNotSet();
    error AutoCompoundNotSet();
    error AutoRebalanceNotSet();
    error AutoExitNotSet();
    error CompoundOrHarvestNotSet();
    error CompoundAndHarvestBothSet();
    error ExitTriggersNotSet();
    error InvalidTokenOut();
    error InvalidMinMaxTickRange();
    error InvalidSlippageBP();
    error InvalidPriceImpactBP();
    error InvalidDustBP();
    error InvalidMinTickLow();
    error InvalidMaxTickHigh();
    error OnlySickle();
    error RebalanceConfigNotSet();
    error TickWithinRange();
    error TickOutsideStopLossRange();
    error SickleNotDeployed();
    error InvalidWidth(uint24 actual, uint24 expected);

    event NftSettingsSet(NftKey key, NftSettings settings);
    event NftSettingsUnset(NftKey key);

    uint256 constant MAX_SLIPPAGE_BP = 500;
    uint256 constant MAX_PRICE_IMPACT_BP = 5000;
    uint256 constant MAX_DUST_BP = 5000;
    int24 constant MAX_TICK = 887_272;
    int24 constant MIN_TICK = -MAX_TICK;

    SickleFactory public immutable factory;
    ConnectorRegistry public immutable connectorRegistry;

    constructor(SickleFactory _factory, ConnectorRegistry _connectorRegistry) {
        factory = _factory;
        connectorRegistry = _connectorRegistry;
    }

    mapping(bytes32 => NftSettings) settingsMap;

    /* Public functions */

    function getNftSettings(
        NftKey memory key
    ) public view returns (NftSettings memory) {
        return settingsMap[keccak256(abi.encode(key))];
    }

    function validateHarvestFor(
        NftKey memory key
    ) public view {
        NftSettings memory settings = getNftSettings(key);
        if (
            !settings.automateRewards
                || settings.rewardConfig.rewardBehavior != RewardBehavior.Harvest
        ) {
            revert AutoHarvestNotSet();
        }
    }

    function validateCompoundFor(
        NftKey memory key
    ) public view {
        NftSettings memory settings = getNftSettings(key);
        if (
            !settings.automateRewards
                || settings.rewardConfig.rewardBehavior != RewardBehavior.Compound
        ) {
            revert AutoCompoundNotSet();
        }
    }

    // Validate that a rebalanceFor meets the user requirements
    function validateRebalanceFor(
        NftKey memory key
    ) public view {
        NftSettings memory settings = getNftSettings(key);
        RebalanceConfig memory config = settings.rebalanceConfig;

        if (!settings.autoRebalance) {
            revert AutoRebalanceNotSet();
        }
        if (config.cutoffTickLow == 0) {
            revert RebalanceConfigNotSet();
        }

        INftLiquidityConnector connector = INftLiquidityConnector(
            connectorRegistry.connectorOf(address(key.nftManager))
        );
        (int24 tickLower, int24 tickUpper) =
            connector.ticks(address(key.nftManager), key.tokenId);

        int24 tick = connector.tick(address(settings.pool));

        if (
            tick >= tickLower - int24(config.bufferTicksBelow)
                && tick < tickUpper + int24(config.bufferTicksAbove)
        ) {
            revert TickWithinRange();
        }
        if (tick <= config.cutoffTickLow || tick >= config.cutoffTickHigh) {
            revert TickOutsideStopLossRange();
        }
    }

    function validateExitFor(
        NftKey memory key
    ) public view {
        NftSettings memory settings = getNftSettings(key);
        ExitConfig memory config = settings.exitConfig;

        if (!settings.autoExit) {
            revert AutoExitNotSet();
        }

        INftLiquidityConnector connector = INftLiquidityConnector(
            connectorRegistry.connectorOf(address(key.nftManager))
        );
        int24 tick = connector.tick(address(settings.pool));

        if (tick >= config.triggerTickLow && tick < config.triggerTickHigh) {
            revert TickWithinRange();
        }
    }

    /* Sickle Owner functions */

    function setNftSettings(
        INonfungiblePositionManager nftManager,
        uint256 tokenId,
        NftSettings calldata settings
    ) external {
        Sickle sickle = _get_sickle_by_owner(msg.sender);
        NftKey memory key = NftKey(sickle, nftManager, tokenId);
        _set_nft_settings(key, settings);
    }

    function unsetNftSettings(
        INonfungiblePositionManager nftManager,
        uint256 tokenId
    ) external {
        Sickle sickle = _get_sickle_by_owner(msg.sender);
        NftKey memory key = NftKey(sickle, nftManager, tokenId);
        _unset_nft_settings(key);
    }

    /* Sickle (delegatecall) functions */

    function setNftSettings(
        NftKey calldata key,
        NftSettings calldata settings
    ) external {
        Sickle sickle = Sickle(payable(msg.sender));

        if (key.sickle != sickle) {
            revert OnlySickle();
        }

        _set_nft_settings(key, settings);
    }

    function resetNftSettings(
        NftKey calldata oldKey,
        NftKey calldata newKey,
        NftSettings calldata settings
    ) external {
        Sickle sickle = Sickle(payable(msg.sender));

        if (oldKey.sickle != sickle || newKey.sickle != sickle) {
            revert OnlySickle();
        }

        _unset_nft_settings(oldKey);

        _set_nft_settings(newKey, settings);
    }

    function migrateNftSettings(
        INftSettingsRegistry previousNftSettingsRegistry,
        INonfungiblePositionManager nftManager,
        uint256[] memory tokenIds
    ) external {
        Sickle sickle = _get_sickle_by_owner(msg.sender);

        uint256 tokenLength = tokenIds.length;
        for (uint256 i; i < tokenLength; i++) {
            NftKey memory key = NftKey(sickle, nftManager, tokenIds[i]);
            NftSettings memory settings =
                previousNftSettingsRegistry.getNftSettings(key);
            _set_nft_settings(key, settings);
        }
    }

    /* Modifiers */

    modifier checkConfigValues(NftKey memory key, NftSettings memory settings) {
        if (settings.autoRebalance) {
            _check_rebalance_config(settings.rebalanceConfig);
            _check_tick_width(key, settings);
        } else {
            if (
                settings.rebalanceConfig.cutoffTickLow != 0
                    || settings.rebalanceConfig.cutoffTickHigh != 0
            ) {
                revert AutoRebalanceNotSet();
            }
        }
        if (
            settings.rewardConfig.rewardBehavior != RewardBehavior.Harvest
                && settings.rewardConfig.harvestTokenOut != address(0)
        ) {
            revert InvalidTokenOut();
        }
        if (!settings.autoExit) {
            if (
                settings.exitConfig.triggerTickLow != 0
                    || settings.exitConfig.triggerTickHigh != 0
                    || settings.exitConfig.exitTokenOutLow != address(0)
                    || settings.exitConfig.exitTokenOutHigh != address(0)
                    || settings.exitConfig.slippageBP != 0
                    || settings.exitConfig.priceImpactBP != 0
            ) {
                revert AutoExitNotSet();
            }
        } else {
            if (
                settings.exitConfig.triggerTickLow == 0
                    && settings.exitConfig.triggerTickHigh == 0
            ) {
                revert ExitTriggersNotSet();
            }
            if (settings.exitConfig.slippageBP > MAX_SLIPPAGE_BP) {
                revert InvalidSlippageBP();
            }
            if (
                settings.exitConfig.priceImpactBP > MAX_PRICE_IMPACT_BP
                    || settings.exitConfig.priceImpactBP == 0
            ) {
                revert InvalidPriceImpactBP();
            }
        }
        _;
    }

    /* Internal */

    function _get_sickle_by_owner(
        address owner
    ) internal view returns (Sickle) {
        Sickle sickle = Sickle(payable(factory.sickles(owner)));
        if (address(sickle) == address(0)) {
            revert SickleNotDeployed();
        }
        return sickle;
    }

    function _set_nft_settings(
        NftKey memory key,
        NftSettings memory settings
    ) internal checkConfigValues(key, settings) {
        settingsMap[keccak256(abi.encode(key))] = settings;
        emit NftSettingsSet(key, settings);
    }

    function _unset_nft_settings(
        NftKey memory key
    ) internal {
        delete settingsMap[keccak256(abi.encode(key))];
        emit NftSettingsUnset(key);
    }

    // Check configuratgion parameters for errors
    function _check_rebalance_config(
        RebalanceConfig memory config
    ) internal pure {
        if (config.cutoffTickLow < MIN_TICK) {
            revert InvalidMinTickLow();
        }
        if (config.cutoffTickLow >= config.cutoffTickHigh) {
            revert InvalidMinMaxTickRange();
        }
        if (config.cutoffTickHigh > MAX_TICK) {
            revert InvalidMaxTickHigh();
        }
        if (config.slippageBP > MAX_SLIPPAGE_BP) {
            revert InvalidSlippageBP();
        }
        if (
            config.priceImpactBP > MAX_PRICE_IMPACT_BP
                || config.priceImpactBP == 0
        ) {
            revert InvalidPriceImpactBP();
        }
        if (config.dustBP > MAX_DUST_BP || config.dustBP == 0) {
            revert InvalidDustBP();
        }
        if (
            config.rewardConfig.rewardBehavior != RewardBehavior.Harvest
                && config.rewardConfig.harvestTokenOut != address(0)
        ) {
            revert InvalidTokenOut();
        }
    }

    function _check_tick_width(
        NftKey memory key,
        NftSettings memory settings
    ) internal view {
        INftLiquidityConnector connector = INftLiquidityConnector(
            connectorRegistry.connectorOf(address(key.nftManager))
        );
        (int24 tickLower, int24 tickUpper) =
            connector.ticks(address(key.nftManager), key.tokenId);
        uint24 tickSpacing = connector.tickSpacing(address(settings.pool));

        uint24 actualWidth = uint24(tickUpper - tickLower) / uint24(tickSpacing);
        uint24 expectedWidth = settings.rebalanceConfig.tickSpacesBelow
            + settings.rebalanceConfig.tickSpacesAbove + 1;

        if (actualWidth != expectedWidth) {
            revert InvalidWidth(actualWidth, expectedWidth);
        }
    }
}
