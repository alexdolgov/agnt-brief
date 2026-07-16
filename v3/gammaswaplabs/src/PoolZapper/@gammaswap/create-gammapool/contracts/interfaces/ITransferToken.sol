// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.8.0;

/// @title Interface for ERC20 tokens
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @notice Used in PoolZapper's safeApprove and safeTransfer
interface ITransferToken {
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom( address from, address to, uint256 amount) external returns (bool);
}
