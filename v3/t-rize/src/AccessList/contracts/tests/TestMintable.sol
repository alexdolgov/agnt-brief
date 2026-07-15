// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/* solhint-disable */
contract TEST_Mintable is ERC20 {

  uint8 private immutable _decimals;
  constructor(string memory ticker, uint8 tokenDecimals) ERC20(ticker, ticker){
    _decimals = tokenDecimals;
  }

  function decimals() public override view returns(uint8) {
    return _decimals;
  }

  function mint(address account, uint256 amount) public {
    _mint(account, amount);
  }

  function burn(address account, uint256 amount) public {
    _burn(account, amount);
  }

}