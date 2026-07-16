pragma solidity >=0.4.22 <0.6;

import {WETH9} from './WETH9.sol';

contract MockWETH9 is WETH9 {
  event Mint(address indexed src, uint256 wad);
  event Burn(address indexed src, uint256 wad);

  function mint(uint256 wad) public {
    balanceOf[msg.sender] += wad;
    emit Mint(msg.sender, wad);
  }

  function burn(uint256 wad) public {
    balanceOf[msg.sender] -= wad;
    emit Burn(msg.sender, wad);
  }
}
