// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { ERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract SurgePoint is ERC20, Ownable {
  constructor(uint256 _initialSupply) Ownable() ERC20("Surge Point", "SPOINT") {
    _mint(_msgSender(), _initialSupply);
  }

  function mint(address account, uint256 amount) external onlyOwner {
    _mint(account, amount);
  }

  function burn(address account, uint256 amount) external onlyOwner {
    _burn(account, amount);
  }
}
