// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

/// @title MultiTransfer - Transfer an ERC-20 token to multiple recipients

contract MultiTransfer {
  using SafeERC20Upgradeable for IERC20Upgradeable;
  struct Transfer {
    address target;
    uint256 amount;
  }

  function bulkTransfer(Transfer[] calldata actions, address token) external {
    for (uint i = 0; i < actions.length; i++) {
      Transfer calldata t = actions[i];
      IERC20Upgradeable(token).safeTransferFrom(msg.sender, t.target, t.amount);
    }
  }
}