// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GloryERC20 is ERC20, ERC20Permit, ERC20Votes {
  constructor() ERC20("Eternity - GLORY", "GLORY") ERC20Permit("Eternity - GLORY") {
    _mint(msg.sender, _maxSupply());
  }

  function _afterTokenTransfer(address from, address to, uint256 amount)
    internal
    override(ERC20, ERC20Votes)
  {
    super._afterTokenTransfer(from, to, amount);
  }

  function _mint(address to, uint256 amount)
    internal
    override(ERC20, ERC20Votes)
  {
    super._mint(to, amount);
  }

  function _burn(address account, uint256 amount)
    internal
    override(ERC20, ERC20Votes)
  {
    super._burn(account, amount);
  }

  function _maxSupply() internal override pure returns (uint224) {
    return 50e24;
  }

  function maxSupply() external pure returns (uint224) {
    return _maxSupply();
  }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
}
