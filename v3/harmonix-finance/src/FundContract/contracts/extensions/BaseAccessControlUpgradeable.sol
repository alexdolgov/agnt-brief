// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "../lib/AccessControlRole.sol";

contract BaseAccessControlUpgradeable is AccessControlUpgradeable {

    bool internal paused;

    function _auth(bytes32 _role) internal view {
        require(hasRole(_role, msg.sender), 'INVALID_ROLE');
    }

    function grantRole(
        bytes32 role,
        address account
    ) public virtual override onlyRole(Role.ADMIN) {
        _grantRole(role, account);
    }

    function revokeRole(
        bytes32 role,
        address account
    ) public virtual override onlyRole(Role.ADMIN) {
        _revokeRole(role, account);
    }

    function setPaused(bool _paused) external {
        require(
            hasRole(Role.ADMIN, msg.sender)
            || hasRole(Role.PAUSE, msg.sender)
            ,
            "UNAUTHORIZED_PAUSE_ROLE"
        );

        paused = _paused;
    }
}
