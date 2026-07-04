// SPDX-License-Identifier: MIT
pragma solidity =0.8.18;

import './interfaces/IVault.sol';
import '@openzeppelin/contracts/access/AccessControlEnumerable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

/// @title Vault
/// @author babydoge
/// @dev Contract for storing bridge liquidity (with ability to change the BridgeAssist version)
contract Vault is IVault, AccessControlEnumerable {
    using SafeERC20 for IERC20;

    bytes32 public constant EXECUTOR_ROLE = keccak256('EXECUTOR_ROLE');

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @inheritdoc IVault
    function transferTokens(
        IERC20 token,
        address to,
        uint256 amount
    ) external onlyRole(EXECUTOR_ROLE) {
        token.safeTransfer(to, amount);
    }

    /// @inheritdoc IVault
    function acceptTokens(
        IERC20 token,
        address from,
        uint256 amount
    ) external onlyRole(EXECUTOR_ROLE) {
        token.safeTransferFrom(from, address(this), amount);
    }
}
