// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../common/IGeneralError.sol";
import {IFheKeySet} from "./IFheKeySet.sol";

interface IFheKeyRegistry is IGeneralError, IFheKeySet {
    event FheKeySetAdded(bytes32 keyId);
}
