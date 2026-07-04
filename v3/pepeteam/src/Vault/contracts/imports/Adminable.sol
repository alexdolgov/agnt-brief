// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

abstract contract Adminable {
    event AdminUpdated(address sender, address oldAdmin, address admin);

    error ErrOnlyAdmin(address admin, address sender);
    error ErrZeroAddress();

    address public admin;

    modifier onlyAdmin() {
        if (admin != msg.sender) {
            revert ErrOnlyAdmin(admin, msg.sender);
        }
        _;
    }

    function updateAdmin(address admin_) external onlyAdmin {
        if (admin_ == address(0)) {
            revert ErrZeroAddress();
        }
        address oldAdmin = admin;
        admin = admin_;
        emit AdminUpdated(msg.sender, oldAdmin, admin_);
    }
}
