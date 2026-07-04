// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IGeneralError {
    error GeneralError(bytes32 contractId, uint16 errorCode);
}
