// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ILsdRateOracle {
    
    event LsdRateSeted(address indexed _lsdToken, uint256 _amount);

    function getLsdRate()  external view returns(uint256);

    function setLsdRate(uint256 _rate) external  ;

}
