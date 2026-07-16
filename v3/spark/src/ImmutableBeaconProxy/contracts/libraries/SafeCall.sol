// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {Command} from "contracts/interfaces/compiler/Command.sol";

/**
 * @notice Safe methods performing a low-level calls that revert
 * if the call was not successful
 */
library SafeCall {
    using Address for address;

    function safeCallAll(Command[] memory _cmds) internal {
        for (uint256 i; i < _cmds.length; i++) {
            safeCall(_cmds[i]);
        }
    }

    function safeCall(Command memory _cmd) internal returns (bytes memory result_) {
        result_ = safeCall(_cmd.target, _cmd.value, _cmd.payload);
    }

    function safeCall(address _target, bytes memory _data) internal returns (bytes memory result_) {
        result_ = safeCall(_target, 0, _data);
    }

    function safeCall(
        address _target,
        uint256 _value,
        bytes memory _data
    ) internal returns (bytes memory result_) {
        result_ = _target.functionCallWithValue(_data, _value);
    }

    function safeDelegateCall(
        address _target,
        bytes memory _data
    ) internal returns (bytes memory result_) {
        result_ = _target.functionDelegateCall(_data);
    }
}
