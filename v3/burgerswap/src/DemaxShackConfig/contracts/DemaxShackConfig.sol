// SPDX-License-Identifier: MIT
pragma solidity >=0.6.6;

contract DemaxShackConfig {
    address public owner;
    address public dev;
    address public admin;

    constructor() public {
        owner = msg.sender;
        dev = msg.sender;
        admin = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'IConfig: Only Owner');
        _;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin || msg.sender == owner, "IConfig: FORBIDDEN");
        _;
    }
    
    modifier onlyDev() {
        require(msg.sender == dev || msg.sender == owner, "IConfig: FORBIDDEN");
        _;
    }

    function changeOwner(address _user) external onlyOwner {
        require(owner != _user, 'IConfig: NO CHANGE');
        owner = _user;
    }

    function changeDev(address _user) external onlyDev {
        require(dev != _user, 'IConfig: NO CHANGE');
        dev = _user;
    }

    function changeAdmin(address _user) external onlyAdmin {
        require(admin != _user, 'IConfig: NO CHANGE');
        admin = _user;
    }
}