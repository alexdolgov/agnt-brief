// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from '@openzeppelin/contracts/interfaces/IERC20.sol';

/// @title IVault
/// @author babydoge
/// @dev Contract for storing bridge liquidity (with ability to change the BridgeAssist version)
interface IVault {
    /// @notice Transfer `amount` of tokens to address `to`
    /// @param token - token address to be transferred
    /// @param to address to send tokens to
    /// @param amount amount of tokens to send
    function transferTokens(
        IERC20 token,
        address to,
        uint256 amount
    ) external;

    /// @notice Accept `amount` of tokens from address `user`
    /// @param token - token address to be accepted
    /// @param from address to take tokens from
    /// @param amount amount of tokens to take
    function acceptTokens(
        IERC20 token,
        address from,
        uint256 amount
    ) external;
}
