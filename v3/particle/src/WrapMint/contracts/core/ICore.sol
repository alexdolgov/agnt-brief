// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IPermissions} from "./IPermissions.sol";

/// @title Core Interface
/// @author Fei Protocol
interface ICore is IPermissions {
    function init() external;
}
