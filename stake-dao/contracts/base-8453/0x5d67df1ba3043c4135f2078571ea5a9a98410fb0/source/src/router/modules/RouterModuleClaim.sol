// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IAccountant} from "@strategies/src/interfaces/IAccountant.sol";
import {IRewardVault} from "@strategies/src/interfaces/IRewardVault.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleClaim
/// @notice Router module for claiming and harvesting rewards of Staking v2
contract RouterModuleClaim is RouterModuleBase {
    string public constant name = type(RouterModuleClaim).name;
    string public constant version = "1.0.0";
    address public immutable ACCOUNTANT;

    error ZeroAddress();

    constructor(address accountant) RouterModuleBase() {
        require(accountant != address(0), ZeroAddress());
        ACCOUNTANT = accountant;
    }

    /// @notice Harvest rewards from the accountant contract to the caller
    /// @param _gauges The array of gauges to harvest from
    /// @param _harvestData The array of harvest data to harvest
    function harvest(address[] calldata _gauges, bytes[] calldata _harvestData) external onlyDelegateCall {
        IAccountant(ACCOUNTANT).harvest(_gauges, _harvestData, msg.sender);
    }

    /// @notice Harvest rewards from the accountant contract to the router for composition
    /// @param _gauges The array of gauges to harvest from
    /// @param _harvestData The array of harvest data to harvest
    function harvestFor(address[] calldata _gauges, bytes[] calldata _harvestData) external onlyDelegateCall {
        IAccountant(ACCOUNTANT).harvest(_gauges, _harvestData, address(this));
    }

    /// @notice Claim rewards from the reward vault to the caller
    /// @param rewardVault The address of the reward vault to call
    /// @param tokens The array of tokens to claim
    /// @return amounts The array of amounts claimed for each token
    function claim(address rewardVault, address[] calldata tokens)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        amounts = IRewardVault(rewardVault).claim(msg.sender, tokens, msg.sender);
    }

    /// @notice Claim rewards from the reward vault to the router for composition
    /// @param rewardVault The address of the reward vault to call
    /// @param tokens The array of tokens to claim
    /// @return amounts The array of amounts claimed for each token
    function claimFor(address rewardVault, address[] calldata tokens)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        amounts = IRewardVault(rewardVault).claim(msg.sender, tokens, address(this));
    }

    /// @notice Claim rewards from accountant contract to the caller
    /// @param _gauges The array of gauges to claim from
    /// @param harvestData The array of harvest data to claim
    function claim(address[] calldata _gauges, bytes[] calldata harvestData) external onlyDelegateCall {
        IAccountant(ACCOUNTANT).claim(_gauges, msg.sender, harvestData, msg.sender);
    }

    /// @notice Claim rewards from accountant contract to the router for composition
    /// @param _gauges The array of gauges to claim from
    /// @param harvestData The array of harvest data to claim
    function claimFor(address[] calldata _gauges, bytes[] calldata harvestData) external onlyDelegateCall {
        IAccountant(ACCOUNTANT).claim(_gauges, msg.sender, harvestData, address(this));
    }
}

