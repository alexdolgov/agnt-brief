// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GiftToken is ERC20, Ownable {

  string constant _name = "Runner Land Gift Token";
  string constant _symbol = "RLGT";
  uint8 constant _decimals = 18;

  bool active = true;

  receive() external payable { }

  constructor()ERC20(_name, _symbol) { _mint( owner(), 1000 * (10 ** _decimals) ); }

  function _beforeTokenTransfer(address, address, uint256) internal view override { require(active, "Token disabled"); }

  function mint(uint256 amount) external onlyOwner { _mint(owner(), amount); }

  function setActive(bool state) external onlyOwner { active = state; }

  function burn(uint256 amount) external { _burn(_msgSender(), amount); }

  function decimals() public pure override returns (uint8) { return _decimals; }

  struct Receivers {
    address wallet;
    uint256 amount;
  }

  function multiSend(Receivers[] memory users) external {
    for ( uint i = 0; i < users.length; i++ ) transfer(users[i].wallet, users[i].amount);
  }

}
