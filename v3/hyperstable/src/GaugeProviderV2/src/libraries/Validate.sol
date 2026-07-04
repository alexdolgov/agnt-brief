// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

library Validate {
    error ZeroAddress();

    function notZeroAddress(address _toValidate) internal pure {
        if (_toValidate == address(0)) {
            revert ZeroAddress();
        }
    }
}
