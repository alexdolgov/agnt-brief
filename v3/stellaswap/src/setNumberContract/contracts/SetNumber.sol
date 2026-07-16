pragma solidity ^0.8.0;

contract setNumberContract{
    uint256 public number;
    
    function setNumber(uint256 _number) public {
        number = _number + 1;
    }
}