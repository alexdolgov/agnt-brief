// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

error FailedCall();

error AddressEmptyCode(
    address target
);

error SafeERC20FailedOperation(
    address token
);

error InsufficientBalance(
    uint256 balance,
    uint256 value
);