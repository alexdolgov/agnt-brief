// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Initializable} from "../../lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {Permissions} from "./Permissions.sol";
import {ICore} from "./ICore.sol";

/// @notice maintains roles, access control
contract Core is ICore, Permissions, Initializable {
    function init() external override initializer {
        _setupGovernor(msg.sender);
    }
}
