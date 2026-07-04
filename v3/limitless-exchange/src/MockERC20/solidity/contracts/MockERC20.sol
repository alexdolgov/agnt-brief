pragma solidity ^0.5.1;

import {ERC20} from './ERC20.sol';

contract MockERC20 is ERC20 {
  string private _name;
  string private _symbol;
  uint8 private _decimals;

  event Mint(address indexed to, uint256 amount);
  event Burn(address indexed account, uint256 value);

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }

  function name() public view returns (string memory) {
    return _name;
  }

  function symbol() public view returns (string memory) {
    return _symbol;
  }

  function decimals() public view returns (uint8) {
    return _decimals;
  }

  function mint(address to, uint256 _amount) public {
    _mint(to, _amount);
    emit Mint(to, _amount);
  }

  function burn(address account, uint256 value) public {
    _burn(account, value);
    emit Burn(account, value);
  }
}
