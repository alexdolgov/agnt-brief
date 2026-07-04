//SPDX-License-Identifier:ISC
pragma solidity 0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";

contract PoolToken is ERC20, Ownable2Step {
  uint8 private _decimals;

  constructor(
    string memory name_,
    string memory symbol_,
    uint8 decimals_
  ) ERC20(name_, symbol_) Ownable(msg.sender) Ownable2Step() {
    _setupDecimals(decimals_);
  }

  function decimals() public view override returns (uint8) {
    return _decimals;
  }

  function _setupDecimals(uint8 decimals_) internal {
    _decimals = decimals_;
  }

  function mint(address to, uint amount) external onlyOwner {
    _mint(to, amount);
  }

  function burn(address user, uint amount) external onlyOwner {
    _burn(user, amount);
  }
}
