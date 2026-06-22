// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract Registry is AccessControl {

    constructor(address _admin) {
        _setupRole(DEFAULT_ADMIN_ROLE, _admin);
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}