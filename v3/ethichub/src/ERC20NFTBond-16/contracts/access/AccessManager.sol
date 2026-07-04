// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol';

contract AccessManager is AccessControlUpgradeable,  MulticallUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address admin) external initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function setNewAdmin(bytes32 role, bytes32 admin) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRoleAdmin(role, admin);
    }

    uint256[49] private __gap;
}
