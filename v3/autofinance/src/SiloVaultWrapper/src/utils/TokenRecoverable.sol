// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract TokenRecoverable is SecurityBase {
    error ArrayLengthMismatch();
    error NotRecoverable(address token);
    error RecoveringMoreThanAvailable(address token, uint256 amount, uint256 availableAmount);

    event Recovered(address[] tokens, uint256[] amounts, address[] destinations);

    constructor(
        ISystemRegistry _systemRegistry
    ) SecurityBase(address(_systemRegistry.accessController())) { }

    /// @notice Transfer out allowable tokens
    function recover(address[] calldata tokens, uint256[] calldata amounts, address[] calldata destinations) external {
        if (!accessController.hasRole(Roles.TOKEN_RECOVERY_MANAGER, msg.sender)) {
            revert Errors.AccessDenied();
        }

        uint256 length = tokens.length;
        if (length == 0 || length != amounts.length || length != destinations.length) {
            revert ArrayLengthMismatch();
        }
        emit Recovered(tokens, amounts, destinations);

        for (uint256 i = 0; i < tokens.length; ++i) {
            IERC20 token = IERC20(tokens[i]);

            if (!_isTokenRecoverable(address(token))) {
                revert NotRecoverable(address(token));
            }

            uint256 tokenBalance = token.balanceOf(address(this));
            if (tokenBalance < amounts[i]) revert RecoveringMoreThanAvailable(tokens[i], amounts[i], tokenBalance);

            SafeERC20.safeTransfer(token, destinations[i], amounts[i]);
        }
    }

    /// @dev Hook to prevent token recovery when necessary
    function _isTokenRecoverable(
        address
    ) internal virtual returns (bool) {
        return true;
    }
}
