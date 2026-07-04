/**
 *Submitted for verification at BscScan.com on 2021-05-12
*/

pragma solidity ^0.8.2;
//SPDX-License-Identifier: MIT

/*
* Timelock for CUB dev stake
*/

contract Dripper {
    address public owner;
    
    uint256 public start;

    uint256 public unlock_per_block;
    uint256 public already_claimed;

    
    event Claim(address _token, uint256 _amount);
    
    constructor(address _owner, uint256 _unlock) {
        owner = _owner;
        start = block.number;
        unlock_per_block = _unlock;
    }
    
    modifier ownerOnly {
        require(msg.sender == owner, 'Restricted to owner');
        _;
    }
    
    function claim(address _token, uint256 _amount, bool _claim_all) public ownerOnly {
        ERC20 token = ERC20(_token);
        uint256 time_since_start = block.number - start;
        uint256 total_allowed_to_claim = time_since_start * unlock_per_block;
        
        if (_claim_all){
            _amount = total_allowed_to_claim - already_claimed;
            uint256 balance = token.balanceOf(address(this));
            if (_amount > balance){
                _amount = balance;
            }
        }
        
        require(_amount <= (total_allowed_to_claim - already_claimed), "Claim less!");
        
        already_claimed += _amount;

        token.transfer(owner, _amount);
                
        emit Claim(_token, _amount);
    }
    
    function getAllowedAmount() public view returns (uint256) {
        uint256 time_since_start = block.number - start;
        uint256 total_allowed_to_claim = time_since_start * unlock_per_block;
        return total_allowed_to_claim - already_claimed;
    }
    
    function getUnlockPerWeek() public view returns (uint256){
        return unlock_per_block * 28800 * 7;
    }
}

interface ERC20 {
    function totalSupply() external;
    function balanceOf(address _owner) external returns (uint256);
    function transfer(address _to, uint _value) external;
    function transferFrom(address _from, address _to, uint _value) external;
    function approve(address _spender, uint _value) external;
    function allowance(address _owner, address _spender) external;
    function decimals() external;
    event Approval(address indexed _owner, address indexed _spender, uint _value);
}