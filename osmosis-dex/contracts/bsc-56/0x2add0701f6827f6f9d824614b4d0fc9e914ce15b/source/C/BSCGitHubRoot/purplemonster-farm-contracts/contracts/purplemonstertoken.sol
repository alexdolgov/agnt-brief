// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

import "./libs/BEP20.sol";

// Purple Monster Token
contract PurpleMonsterToken is BEP20('Purple Monster Token', 'PMOT') {
   
    function mint(address _to, uint256 _amount) public  onlyOwner  { 
        _mint(_to, _amount);        
    }
}