// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract NewBurn1559 {
    error Unimplemented();

    fallback() external {
        revert Unimplemented();
    }

    receive() external payable {}
}
