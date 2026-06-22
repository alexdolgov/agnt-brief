// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './lib/SafeMath.sol';
import './lib/Ownable.sol';
import './lib/Address.sol';

interface IBackingCalculator {
    function treasuryBacking() external view returns(uint _treasuryBacking);
}

contract BackingCalculatorPremium is Ownable, IBackingCalculator {
    using SafeMath for uint;
    address public backingCalculator;
    uint public premium; // percent (20 = 20%)
    
    constructor (
        address _backingCalculator
    ){
        require(_backingCalculator != address(0));
        backingCalculator = _backingCalculator;
        premium = 27;
    }

    function setBackingCalculator(address _backingCalculator) external onlyOwner {
        require(address(0) != _backingCalculator);
        backingCalculator = _backingCalculator;
    }

    function setPremium(uint8 _premium) external onlyOwner {
        premium = _premium;
    }

    function treasuryBacking() external view override returns(uint _treasuryBacking){
        _treasuryBacking = IBackingCalculator(backingCalculator).treasuryBacking().mul(uint(100).add(premium)).div(100);
    }
}