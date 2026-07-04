pragma solidity ^0.5.1;

import {ERC20} from '../openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract MockCoin is ERC20 {
  function name() public pure returns (string memory) {
    return 'USDC';
  }

  function symbol() public pure returns (string memory) {
    return 'USDC';
  }

  function decimals() public pure returns (uint8) {
    return uint8(6);
  }

  function mint(address to, uint256 _amount) public {
    _mint(to, _amount);
  }
}
