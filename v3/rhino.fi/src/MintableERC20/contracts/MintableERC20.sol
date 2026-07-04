//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

contract MintableERC20 is ERC20PresetMinterPauser { 
    uint8 private cDecimals;

    function decimals() public view virtual override returns (uint8) {
        return cDecimals;
    }

    constructor(string memory name, string memory symbol, uint8 _decimals) 
      ERC20PresetMinterPauser(name, symbol) {
      cDecimals = _decimals;
    }
 }