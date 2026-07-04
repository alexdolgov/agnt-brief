// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Juicy is ERC20 {

  constructor(uint256 supply) ERC20("J Test 3", "JTEST3") {
    _mint(msg.sender, supply);
  }

}