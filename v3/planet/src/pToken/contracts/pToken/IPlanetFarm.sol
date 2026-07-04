pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

interface IPlanetFarm{
    
    function handleActionAfter(uint256 pid, address _sender, address _recepient, uint256 amount) external;

}
        
        
