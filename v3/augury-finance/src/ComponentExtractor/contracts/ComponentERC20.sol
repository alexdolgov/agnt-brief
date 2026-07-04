// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

import "./ISettingsStore.sol";

contract ComponentERC20 is ERC20, ERC20Permit {

  ISettingsStore settings;

  constructor(ISettingsStore _settings, string memory name, string memory symbol) ERC20(name, symbol) ERC20Permit("BasicERC20") {
    settings = _settings;
  }

  function burn(uint256 quantity) external {
    _burn(msg.sender, quantity);
  }

  function trustedMint(address to, uint256 quantity) external {

    require(settings.isPermittedTo(msg.sender, "COMPONENT", "Mint"), "403");

    _mint(to, quantity);
  }

  function trustedBurn(address from, uint256 quantity) external {
    
    require(settings.isPermittedTo(msg.sender, "COMPONENT", "Burn"), "403");

    _burn(from, quantity);
  }

  // TODO: can we have 0 decimals? That'd be ideal...
  // function decimals() public pure override returns (uint8) {
  //   return 0;
  // }
}
