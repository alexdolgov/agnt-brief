// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Adminable} from "./Adminable.sol";

abstract contract Pausable is Adminable {
    event Paused(address account);
    event Unpaused(address account);
    event PauserUpdated(address sender, address oldPauser, address pauser);

    error ErrPaused();
    error ErrNotPaused();
    error ErrOnlyPauser(address pauser, address sender);

    bool public isPaused = false;
    address public pauser;

    modifier whenNotPaused() {
        if (isPaused) {
            revert ErrPaused();
        }
        _;
    }

    modifier whenPaused() {
        if (!isPaused) {
            revert ErrNotPaused();
        }
        _;
    }

    modifier onlyPauser() {
        if (pauser != msg.sender) {
            revert ErrOnlyPauser(pauser, msg.sender);
        }
        _;
    }

    function pause() external whenNotPaused onlyPauser {
        isPaused = true;
        emit Paused(msg.sender);
    }

    function unpause() external whenPaused onlyPauser {
        isPaused = false;
        emit Unpaused(msg.sender);
    }

    function updatePauser(address pauser_) external onlyAdmin {
        if (pauser_ == address(0)) {
            revert ErrZeroAddress();
        }
        address oldPauser = pauser;
        pauser = pauser_;
        emit PauserUpdated(msg.sender, oldPauser, pauser_);
    }
}
