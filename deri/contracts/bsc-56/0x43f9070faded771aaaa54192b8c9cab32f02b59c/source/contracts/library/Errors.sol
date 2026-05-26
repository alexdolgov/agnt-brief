// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library Errors {

    string internal constant ETH_BALANCE_0 = 'EB0';
    string internal constant INSUFFICIENT_EXECUTION_FEE = 'IEF';
    string internal constant INVALID_OP_GAS_TOKEN = 'IOGT';
    string internal constant ONLY_EXECUTOR = 'OE';
    string internal constant ONLY_EXECUTOR_OR_OWNER = 'OEO';
    string internal constant OWNER_ALREADY_SET = 'OAS';
    string internal constant TRANSFER_ETH_FAIL = 'TEF';
    string internal constant WRONG_TOKEN_IN_AMOUNT = 'WTIA';
    string internal constant WRONG_TOKEN_OUT_AMOUNT = 'WTOA';

}
