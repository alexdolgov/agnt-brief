// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { Ownable } from "solady/auth/Ownable.sol";
import { IAuth } from "../interfaces/IAuth.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";

// @dev Treats the 'owner' role as the admin, with ability to grant + revoke all other roles
abstract contract Auth is Ownable, IAuth {
    struct AuthStorage {
        mapping(address => bool) isAllocator;
        mapping(address => bool) isPauser;
        mapping(address => bool) isTimelockCanceler;
    }

    AuthStorage private authStorage;

    modifier onlyAllocator() {
        _checkAllocator();
        _;
    }

    modifier onlyPauser() {
        _checkPauser();
        _;
    }

    modifier onlyTimelockCancelerOrOwner() {
        _checkTimelockCancelerOrOwner();
        _;
    }

    function _checkAllocator() internal view {
        require(authStorage.isAllocator[msg.sender], Errors.OnlyAllocator());
    }

    /// @inheritdoc IAuth
    function isAllocator(
        address account
    ) public view returns (bool) {
        return authStorage.isAllocator[account];
    }

    function _setAllocator(
        address account,
        bool newStatus
    ) internal {
        if (newStatus != authStorage.isAllocator[account]) {
            emit Events.AllocatorStatusModified(account, newStatus);
            authStorage.isAllocator[account] = newStatus;
        }
    }

    function _checkPauser() internal view {
        require(authStorage.isPauser[msg.sender], Errors.OnlyPauser());
    }

    /// @inheritdoc IAuth
    function isPauser(
        address account
    ) public view returns (bool) {
        return authStorage.isPauser[account];
    }

    function _setPauser(
        address account,
        bool newStatus
    ) internal {
        if (newStatus != authStorage.isPauser[account]) {
            emit Events.PauserStatusModified(account, newStatus);
            authStorage.isPauser[account] = newStatus;
        }
    }

    function _checkTimelockCancelerOrOwner() internal view {
        require(
            authStorage.isTimelockCanceler[msg.sender] || msg.sender == owner(), Errors.OnlyTimelockCancelerOrOwner()
        );
    }

    /// @inheritdoc IAuth
    function isTimelockCanceler(
        address account
    ) public view returns (bool) {
        return authStorage.isTimelockCanceler[account];
    }

    function _setTimelockCanceler(
        address account,
        bool newStatus
    ) internal {
        if (newStatus != authStorage.isTimelockCanceler[account]) {
            emit Events.TimelockCancelerStatusModified(account, newStatus);
            authStorage.isTimelockCanceler[account] = newStatus;
        }
    }
}
