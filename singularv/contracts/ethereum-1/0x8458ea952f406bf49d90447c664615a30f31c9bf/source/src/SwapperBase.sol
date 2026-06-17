// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ISwapRoute} from "./interfaces/ISwapRoute.sol";

abstract contract SwapperBase is ISwapRoute, AccessControl {
    using SafeERC20 for IERC20;

    error UnsupportedChain();
    error RouteNotFound();
    error UnsufficientBalance();

    address private immutable STEAKHOUSE_SIGNER_1 = 
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address private immutable STEAKHOUSE_SMOL_OPS = 
        0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SMOL_OPS);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTIONS
     ******************************************/
    function recover(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (amount > token.balanceOf(address(this))) {
            revert UnsufficientBalance();
        }
        token.safeTransfer(where, amount);
    }

    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeTransfer(where, token.balanceOf(address(this)));
    }

    function recoverETH(
        address payable where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (amount > address(this).balance) {
            revert UnsufficientBalance();
        }
        where.transfer(amount);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.forceApprove(where, amount);
    }
} 