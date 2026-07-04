// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

library ERC3156Lib {
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");
}
