// Dependency file: contracts/modules/Ownable.sol

// pragma solidity >=0.5.16;

contract Ownable {
    address public owner;

    event OwnerChanged(address indexed _oldOwner, address indexed _newOwner);

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Ownable: FORBIDDEN');
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), 'Ownable: INVALID_ADDRESS');
        emit OwnerChanged(owner, _newOwner);
        owner = _newOwner;
    }

}

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.5.1;

// import './modules/Ownable.sol';

contract DemaxTrigger is Ownable {

    mapping(address => bool) whiteList;
    event Trigger(address indexed user, uint indexed signal);
    
    constructor() public {
        whiteList[msg.sender] = true;
    }

    function setWhite(address _user, bool _value) public onlyOwner {
        whiteList[_user] = _value;
    }

    function trigger(uint _signal) public {
        require(whiteList[msg.sender], "FORBIDDEN");
        emit Trigger(msg.sender, _signal);
    }
}