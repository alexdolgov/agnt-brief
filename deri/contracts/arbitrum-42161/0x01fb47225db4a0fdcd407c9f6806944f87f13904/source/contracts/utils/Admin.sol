// SPDX-License-Identifier: MIT

pragma solidity =0.7.6;

import "./IAdmin.sol";

abstract contract Admin is IAdmin {
    address public override admin;

    modifier _onlyAdmin_() {
        require(msg.sender == admin, "Admin: only admin");
        _;
    }

    constructor() {
        admin = msg.sender;
        emit NewAdmin(admin);
    }

    function setAdmin(address newAdmin) external override _onlyAdmin_ {
        admin = newAdmin;
        emit NewAdmin(newAdmin);
    }
}
