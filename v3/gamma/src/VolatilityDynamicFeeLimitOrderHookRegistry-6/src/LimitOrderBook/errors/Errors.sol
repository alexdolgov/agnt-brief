// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

library Errors {
    error ZeroAddress();
    error UnauthorizedCaller(address caller);
    error NotInitialized();
    error OracleOperationFailed(string operation, string reason);
}
