// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

abstract contract Ownable {
    address public owner;

    event TransferOwnership(address indexed previousOwner, address indexed newOwner);

    modifier restricted {
        require(msg.sender == owner, "This function is restricted to owner");
        _;
    }

    function transferOwnership(address _newOwner) public restricted {
        require(_newOwner != address(0), "Invalid address: should not be 0x0");
        emit TransferOwnership(owner, _newOwner);
        owner = _newOwner;
    }

    constructor() {
        owner = msg.sender;
        emit TransferOwnership(address(0), msg.sender);
    }
}

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

contract BridgeAssist is Ownable {
    IERC20 public TKN;

    mapping(address => uint256) public locked;
    mapping(address => address) public targetOf;

    event Collect(address indexed sender, uint256 amount);
    event WriteEntry(address indexed sender, address target, uint256 amount);
    event Dispense(address indexed sender, uint256 amount);

    function writeEntry(address _target, uint256 _amount) public returns (bool success) {
        if (locked[msg.sender] > 0) TKN.transfer(msg.sender, locked[msg.sender]);
        if (_amount > 0) TKN.transferFrom(msg.sender, address(this),  _amount);
        locked[msg.sender] = _amount;
        targetOf[msg.sender] = _target;
        emit WriteEntry(msg.sender, _target, _amount);
        return true;
    }

    function collect(address _sender, uint256 _amount) public restricted returns (bool success) {
        require(locked[_sender] == _amount, "Amount check failed");
        delete locked[_sender];
        emit Collect(_sender, _amount);
        return true;
    }

    function dispense(address _sender, uint256 _amount) public restricted returns (bool success) {
        TKN.transfer(_sender, _amount);
        emit Dispense(_sender, _amount);
        return true;
    }
    
    function infoBundle(address _sender) public view returns (uint256 bal, uint256 all, uint256 lckd, address target, bool nt) {
        bal = TKN.balanceOf(_sender);
        all = TKN.allowance(_sender, address(this));
        lckd = locked[_sender];
        target = targetOf[_sender];
        nt = target == address(0);
    }

    constructor(IERC20 _TKN) {
        TKN = _TKN;
    }
}