// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./ConfigOptions.sol";
import {FlockConfig} from "./FlockConfig.sol";
import {IFlockPoolManager} from "../interfaces/IFlockPoolManager.sol";
import {IFlTaskManager} from "../interfaces/IFlTaskManager.sol";
import {IFlockMainManager} from "../interfaces/IFlockMainManager.sol";
import {IFlockConfig} from "../interfaces/IFlockConfig.sol";
import {IFlockStakeInfo} from "../interfaces/IFlockStakeInfo.sol";
import "../interfaces/IMintBurnableERC20.sol";

/**
 * @title ConfigHelper
 * @notice A convenience library for getting easy access to other contracts and constants within the
 *  protocol, through the use of the FlockConfig contract
 * @author Ryon
 */

library ConfigHelper {
    function mainManagerAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.MainManager));
    }

    function poolManagerAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.PoolManager));
    }

    function taskManagerAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.TaskManager));
    }

    function configAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.Config));
    }

    function flockTokenAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.FlockToken));
    }

    function stakeInfoAddress(FlockConfig config) internal view returns (address) {
        return config.getAddress(uint256(ConfigOptions.Addresses.StakeInfo));
    }

    function getMainManager(FlockConfig config) internal view returns (IFlockMainManager) {
        return IFlockMainManager(mainManagerAddress(config));
    }

    function getPoolManager(FlockConfig config) internal view returns (IFlockPoolManager) {
        return IFlockPoolManager(poolManagerAddress(config));
    }

    function getTaskManager(FlockConfig config) internal view returns (IFlTaskManager) {
        return IFlTaskManager(taskManagerAddress(config));
    }

    function getConfig(FlockConfig config) internal view returns (IFlockConfig) {
        return IFlockConfig(configAddress(config));
    }

    function getFlockToken(FlockConfig config) internal view returns (IMintBurnableERC20) {
        return IMintBurnableERC20(flockTokenAddress(config));
    }

    function getStakeInfo(FlockConfig config) internal view returns (IFlockStakeInfo) {
        return IFlockStakeInfo(stakeInfoAddress(config));
    }
}
