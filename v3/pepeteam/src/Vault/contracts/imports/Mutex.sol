// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

abstract contract Mutex {
    error ErrLocked();

    bool private _lock;

    modifier mutex() {
        if (_lock) {
            revert ErrLocked();
        }
        _lock = true;
        _;
        _lock = false;
    }
}
