pragma solidity ^0.8.30;
/* SPDX-License-Identifier: MIT
  _____ _          _          _         
 |  ___(_)_ __ ___| |    __ _| |__  ___ 
 | |_  | | '__/ _ \ |   / _` | '_ \/ __|
 |  _| | | | |  __/ |__| (_| | |_) \__ \
 |_|   |_|_|  \___|_____\__,_|_.__/|___/

Oracle
*/

contract Oracle {
    mapping(address => uint256) public lastPrice;
    mapping(address => uint256) public lastUpdate;

    function submitPrice(uint256 newPrice) external {
        lastPrice[msg.sender] = newPrice;
        lastUpdate[msg.sender] = block.timestamp;
    }
}