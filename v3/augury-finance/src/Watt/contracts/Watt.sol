// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@auguryfinance/core/contracts/Math.sol";
import "@auguryfinance/core/contracts/extensions/WithAccessControl.sol";

import "./IWatt.sol";

contract Watt is ERC20, WithAccessControl, IWatt {

  using SafeERC20 for IERC20;

  uint256 public constant MintWattsPermission = 1000;

  constructor(IAccessControl initialAccessControl)
    WithAccessControl(initialAccessControl)
    ERC20("Watts", "WATT")
  {}

  function mint(uint256 amount) external override permission(MintWattsPermission) returns (uint256) {
    
    _mint(msg.sender, amount);

    return amount;
  }
  
  function mintTo(uint256 amount, address to) external override permission(MintWattsPermission) returns (uint256) {

    _mint(to, amount);

    return amount;
  }

  function burn(uint256 amount) external override returns (uint256) {
    
    _burn(msg.sender, amount);

    return amount;
  }
}
