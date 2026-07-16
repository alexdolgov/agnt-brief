// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

struct CallWithValue {
    address target;
    uint256 value;
    bytes callData;
}
