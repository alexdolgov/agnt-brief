// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "../../interfaces/IGmFlock.sol";
import "../../interfaces/IMintBurnableERC20.sol";
import "./ConfigOptionsV2.sol";
import {FlockConfigV2} from "./FlockConfigV2.sol";
import {IFlTaskManager} from "../../interfaces/IFlTaskManager.sol";
import {IFlockConfig} from "../../interfaces/IFlockConfig.sol";
import {IFlockMainManager} from "../../interfaces/IFlockMainManager.sol";
import {IFlockPoolManager} from "../../interfaces/IFlockPoolManager.sol";
import {IFlockStakeInfo} from "../../interfaces/IFlockStakeInfo.sol";

/**
 * @title ConfigHelperV2.sol
 * @notice A convenience library for getting easy access to other contracts and constants within the
 *  protocol, through the use of the FlockConfigV2.sol contract
 * @author Ryon
 */

library ConfigHelperV2 {
    function mainManagerAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.MainManager));
    }

    function poolManagerAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.PoolManager));
    }

    function taskManagerAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.TaskManager));
    }

    function configAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.Config));
    }

    function flockTokenAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.FlockToken));
    }

    function gmFlockTokenAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.GmFlockToken));
    }

    function stakeInfoAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.StakeInfo));
    }

    function exchangeAddress(FlockConfigV2 config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptionsV2.Addresses.Exchange));
    }

    function getMainManager(FlockConfigV2 config) internal view returns (IFlockMainManager) {
        return IFlockMainManager(mainManagerAddress(config));
    }

    function getPoolManager(FlockConfigV2 config) internal view returns (IFlockPoolManager) {
        return IFlockPoolManager(poolManagerAddress(config));
    }

    function getTaskManager(FlockConfigV2 config) internal view returns (IFlTaskManager) {
        return IFlTaskManager(taskManagerAddress(config));
    }

    function getConfig(FlockConfigV2 config) internal view returns (IFlockConfig) {
        return IFlockConfig(configAddress(config));
    }

    function getFlockToken(FlockConfigV2 config) internal view returns (IMintBurnableERC20) {
        return IMintBurnableERC20(flockTokenAddress(config));
    }

    function getGmFlockToken(FlockConfigV2 config) internal view returns (IGmFlock) {
        return IGmFlock(gmFlockTokenAddress(config));
    }

    function getStakeInfo(FlockConfigV2 config) internal view returns (IFlockStakeInfo) {
        return IFlockStakeInfo(stakeInfoAddress(config));
    }
}
