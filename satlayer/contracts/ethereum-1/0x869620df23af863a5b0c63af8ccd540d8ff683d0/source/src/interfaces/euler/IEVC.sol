// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IEVC {
    /// @notice Enables a collateral for an account.
    /// @param account The account address for which the collateral is being enabled.
    /// @param vault The address being enabled as a collateral.
    function enableCollateral(address account, address vault) external payable;

    /// @notice Enables a controller for an account.
    /// @param account The address for which the controller is being enabled.
    /// @param vault The address of the controller being enabled.
    function enableController(address account, address vault) external payable;
}
