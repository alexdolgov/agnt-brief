// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

import {OwnableUpgradable} from '../misc/OwnableUpgradable.sol';
import {IERC20} from '../dependencies/openzeppelin/contracts/IERC20.sol';
import {SafeERC20} from '../dependencies/openzeppelin/contracts/SafeERC20.sol';

contract ProtocolRevenueDistribution is OwnableUpgradable {
  using SafeERC20 for IERC20;

  uint256 public constant VERSION = 0x2;

  event Withdraw(address token, uint256 amount);

  /* ========== INITIALIZER ========== */
  function initialize(address owner) external initializer {
    _transferOwnership(owner);
  }

  function withdraw(address token, uint256 amount) external onlyOwner {
    IERC20(token).safeTransfer(owner(), amount);

    emit Withdraw(token, amount);
  }
}