// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Permit2} from "@shared/src/permit2/Permit2.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleERC20Manager
/// @notice A module that allows for the management of ERC20 tokens
/// @dev    This module is expected to be used in composition with the other modules of the router.
contract RouterModuleERC20Manager is RouterModuleBase {
    using SafeERC20 for IERC20;
    using Permit2 for IERC20;

    string public constant name = type(RouterModuleERC20Manager).name;
    string public constant version = "2.1.0";

    function transferFromPermit2(
        IERC20 token,
        address to,
        uint256 amount,
        uint256 nonce,
        uint256 deadline,
        bytes calldata signature
    ) public onlyDelegateCall {
        token.permitTransferFrom(msg.sender, to, amount, nonce, deadline, signature);
    }

    function transferFromPermit2AndApprove(
        IERC20 token,
        address to,
        address spender,
        uint256 amount,
        uint256 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external onlyDelegateCall {
        token.permitTransferFrom(msg.sender, to, amount, nonce, deadline, signature);
        token.approve(spender, amount);
    }

    function transferFromPermit2AndForceApprove(
        IERC20 token,
        address to,
        address spender,
        uint256 amount,
        uint256 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external onlyDelegateCall {
        token.permitTransferFrom(msg.sender, to, amount, nonce, deadline, signature);
        token.forceApprove(spender, amount);
    }
}
