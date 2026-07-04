// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {ERC20} from '../../dependencies/openzeppelin/contracts/ERC20.sol';

/**
 * @title Dummy
 * @dev Dummy
 */
contract Dummy is ERC20 {
  constructor(string memory name, string memory symbol, uint8 decimals) public ERC20(name, symbol) {
    _setupDecimals(decimals);
    _mint(msg.sender, 1e18);
  }
}
