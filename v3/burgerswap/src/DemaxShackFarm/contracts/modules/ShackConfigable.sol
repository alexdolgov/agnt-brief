// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6;

interface IConfig {
    function admin() external view returns (address);
}

contract ShackConfigable {
    address public config;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function setupConfig(address _config) external onlyOwner {
        config = _config;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'OWNER FORBIDDEN');
        _;
    }

    function admin() public view returns(address) {
        if(config != address(0)) {
            return IConfig(config).admin();
        }
        return owner;
    }


    function changeOwner(address _user) external onlyOwner {
        require(owner != _user, 'IFOConfig: NO CHANGE');
        owner = _user;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin() || msg.sender == owner, 'admin FORBIDDEN');
        _;
    }
}