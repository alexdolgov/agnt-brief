// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Sickle } from "contracts/Sickle.sol";
import {
    INftSettingsRegistry,
    NftKey,
    NftSettings,
    RebalanceConfig,
    RewardBehavior
} from "contracts/interfaces/INftSettingsRegistry.sol";

abstract contract NftSettingsRegistry is INftSettingsRegistry {
    error CompoundOrHarvestNotSet();
    error CompoundAndHarvestBothSet();
    error AutoRebalanceNotSet();
    error InvalidTokenOut();
    error InvalidMinMaxTickRange();
    error InvalidSlippageBP();
    error InvalidMinTickLow();
    error InvalidMaxTickHigh();
    error OnlySickle();

    event NftSettingsSet(NftKey key, NftSettings settings);
    event NftSettingsUnset(NftKey key);

    uint256 constant MAX_SLIPPAGE_BP = 500;
    int24 constant MAX_TICK = 887_272;
    int24 constant MIN_TICK = -MAX_TICK;

    mapping(bytes32 => NftSettings) settingsMap;

    function getNftSettings(NftKey memory key)
        public
        view
        returns (NftSettings memory)
    {
        return settingsMap[keccak256(abi.encode(key))];
    }

    function _set_nft_settings(
        NftKey memory key,
        NftSettings memory settings
    ) internal checkConfigValues(settings) {
        settingsMap[keccak256(abi.encode(key))] = settings;
        emit NftSettingsSet(key, settings);
    }

    function _unset_nft_settings(NftKey memory key) internal {
        delete settingsMap[keccak256(abi.encode(key))];
        emit NftSettingsUnset(key);
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

    function _check_rebalance_config(RebalanceConfig memory config)
        internal
        pure
    {
        if (
            config.stopLossTickLow < MIN_TICK
                || config.stopLossTickLow > MAX_TICK
        ) {
            revert InvalidMinTickLow();
        }
        if (
            config.stopLossTickHigh < MIN_TICK
                || config.stopLossTickHigh > MAX_TICK
        ) {
            revert InvalidMaxTickHigh();
        }
        if (config.stopLossTickLow >= config.stopLossTickHigh) {
            revert InvalidMinMaxTickRange();
        }
        if (config.slippageBP > MAX_SLIPPAGE_BP) {
            revert InvalidSlippageBP();
        }
    }

    modifier checkConfigValues(NftSettings memory settings) {
        if (settings.autoRebalance) {
            _check_rebalance_config(settings.rebalanceConfig);
        } else {
            if (
                settings.rebalanceConfig.stopLossTickLow != 0
                    || settings.rebalanceConfig.stopLossTickHigh != 0
            ) {
                revert AutoRebalanceNotSet();
            }
        }
        if (
            settings.rewardBehavior != RewardBehavior.Harvest
                && settings.harvestTokenOut != address(0)
        ) {
            revert InvalidTokenOut();
        }

        _;
    }
}
