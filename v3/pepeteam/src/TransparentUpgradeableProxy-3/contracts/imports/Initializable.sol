// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

abstract contract Initializable {
    error ErrInitalized();
    error ErrNotInitalized();

    bool internal isInited;

    modifier whenInitialized() {
        if (!isInited) {
            revert ErrNotInitalized();
        }
        _;
    }

    modifier whenNotInitialized() {
        if (isInited) {
            revert ErrInitalized();
        }
        _;
    }
}
