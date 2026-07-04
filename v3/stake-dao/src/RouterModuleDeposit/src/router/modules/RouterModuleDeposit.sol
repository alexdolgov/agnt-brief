// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IRewardVault} from "@strategies/src/interfaces/IRewardVault.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleDeposit
/// @notice An upgradeable module that allows for the deposit of assets into a given reward vault
contract RouterModuleDeposit is RouterModuleBase {
    string public constant name = type(RouterModuleDeposit).name;
    string public constant version = "2.0.0";

    /// @notice Deposit assets into the reward vault
    /// @param rewardVault The address of the reward vault to call
    /// @param assets The amount of assets to deposit
    /// @dev The router must own the tokens to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2AndApprove` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function deposit(address rewardVault, uint256 assets) external onlyDelegateCall returns (uint256) {
        return IRewardVault(rewardVault).deposit(assets, msg.sender, address(0));
    }

    /// @notice Deposit assets into the reward vault
    /// @param rewardVault The address of the reward vault to call
    /// @param assets The amount of assets to deposit
    /// @param referer The address of the referrer
    /// @dev The router must own the tokens to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2AndApprove` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function deposit(address rewardVault, uint256 assets, address referer) external onlyDelegateCall returns (uint256) {
        return IRewardVault(rewardVault).deposit(assets, msg.sender, referer);
    }
}
