// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IAccountant} from "src/interfaces/IAccountant.sol";
import {IRewardVault} from "src/interfaces/IRewardVault.sol";
import {IRouterModule} from "src/interfaces/IRouterModule.sol";
import {CurveStrategy} from "@address-book/src/CurveEthereum.sol";

/// @title RouterModuleClaim
/// @notice An upgradeable module that allows for the claim of rewards from a given reward vault
contract RouterModuleClaim is IRouterModule {
    string public constant name = type(RouterModuleClaim).name;
    string public constant version = "1.0.0";

    /// @notice The address of the accountant contract.
    address public constant ACCOUNTANT = CurveStrategy.ACCOUNTANT;

    /// @notice Harvest rewards from the accountant contract
    /// @param _gauges The array of gauges to harvest from
    /// @param _harvestData The array of harvest data to harvest
    function harvest(address[] calldata _gauges, bytes[] calldata _harvestData) external {
        IAccountant(ACCOUNTANT).harvest(_gauges, _harvestData, msg.sender);
    }

    /// @notice Claim rewards from the reward vault
    /// @param rewardVault The address of the reward vault to call
    /// @param tokens The array of tokens to claim
    /// @param receiver The address to receive the rewards
    function claim(address rewardVault, address[] calldata tokens, address receiver)
        external
        returns (uint256[] memory amounts)
    {
        amounts = IRewardVault(rewardVault).claim(msg.sender, tokens, receiver);
    }

    /// @notice Claim rewards from accountant contract
    /// @param _gauges The array of gauges to claim from
    /// @param harvestData The array of harvest data to claim
    /// @param receiver The address to receive the rewards
    function claim(address[] calldata _gauges, bytes[] calldata harvestData, address receiver) external {
        IAccountant(ACCOUNTANT).claim(_gauges, msg.sender, harvestData, receiver);
    }
}
