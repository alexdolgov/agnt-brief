// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {ISafe} from "src/interfaces/ISafe.sol";

/// @title SafeSetupHelper
/// @notice Called via delegatecall from Safe.setup() to enable the factory as a module.
/// @dev In delegatecall context, address(this) = the Safe being created.
///      Calling enableModule on address(this) is a self-call where
///      msg.sender == address(this), passing the Safe's `authorized` check.
contract SafeSetupHelper {
    function enableModule(address module) external {
        ISafe(address(this)).enableModule(module);
    }
}
