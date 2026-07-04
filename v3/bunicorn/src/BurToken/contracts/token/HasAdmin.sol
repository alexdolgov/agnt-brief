// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

abstract contract HasAdmin {
    event AdminChanged(address indexed _oldAmin, address indexed _newAdmin);
    event AdminRemoved(address indexed _oldAdmin);

    address public admin;

    modifier onlyAdmin {
        require(msg.sender == admin, "HasAdmin: not admin");
        _;
    }

    constructor() public {
        admin = msg.sender;
        emit AdminChanged(address(0), admin);
    }

    function changeAdmin(address _newAdmin) external onlyAdmin {
        require(_newAdmin != address(0), "HasAdmin: new admin is the zero address");
        emit AdminChanged(admin, _newAdmin);
        admin = _newAdmin;
    }

    function removeAdmin() external onlyAdmin {
        emit AdminRemoved(admin);
        admin = address(0);
    }
}