// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

interface IError {
    error ErrorZeroValue();
    error ErrorZeroAddress();
    error ErrorSameAddress();
    error ErrorSameStatus();
    error ErrorNegativeValue();
}
