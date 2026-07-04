// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleWithdraw
/// @notice An upgradeable module that allows for the withdrawal of assets from a given reward vault
contract RouterModuleWithdraw is RouterModuleBase {
    string public constant name = type(RouterModuleWithdraw).name;
    string public constant version = "2.0.0";

    /// @notice Withdraws `assets` from the vault to the caller.
    /// @param rewardVault The address of the reward vault to call
    /// @param assets The amount of assets to withdraw.
    /// @return _ The amount of assets withdrawn.
    /// @dev The router must own the shares to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function withdraw(address rewardVault, uint256 assets) external onlyDelegateCall returns (uint256) {
        return IERC4626(rewardVault).withdraw(assets, msg.sender, address(this));
    }

    /// @notice Withdraws `assets` from the vault to the router for composition.
    /// @param rewardVault The address of the reward vault to call
    /// @param assets The amount of assets to withdraw.
    /// @return _ The amount of assets withdrawn.
    /// @dev The router must own the shares to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function withdrawFor(address rewardVault, uint256 assets) external onlyDelegateCall returns (uint256) {
        return IERC4626(rewardVault).withdraw(assets, address(this), address(this));
    }
}
