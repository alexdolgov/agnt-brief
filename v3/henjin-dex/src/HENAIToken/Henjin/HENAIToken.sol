// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/*
 * HENAI is HenjinAI's native ERC20 token.
 */
contract HENAIToken is ERC20 {
  uint256 public constant MAX_SUPPLY_LIMIT = 100_000_000 ether;

  constructor() ERC20("HenjinAI Token", "HENAI") {
    _mint(msg.sender, MAX_SUPPLY_LIMIT);
  }

  /**
   * @dev Burns "amount" of HENAI
   */
  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
}