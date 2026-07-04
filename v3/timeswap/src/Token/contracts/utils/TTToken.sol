// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Token is ERC20 {
  constructor(string memory name, string memory symbol, uint256 amount) ERC20(name, symbol) {
    _mint(msg.sender, amount);
  }

  function mint(address to, uint256 amount) external {
    _mint(to, amount);
  }

  function mint() external {
    _mint(msg.sender, 1000 * 10 ** decimals());
  }
}
