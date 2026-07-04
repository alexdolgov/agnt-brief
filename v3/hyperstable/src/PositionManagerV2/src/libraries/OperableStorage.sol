// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

library OperableStorage {
    struct Storage {
        mapping(address => bool) isSystemOperator;
        mapping(address => mapping(address => bool)) isAllowedOperator;
    }

    bytes32 internal constant SLOT = keccak256(bytes("hyperstable.storage.operable"));

    function getStorage() internal pure returns (Storage storage $) {
        bytes32 slot = SLOT;

        assembly {
            $.slot := slot
        }
    }

    function allowOperator(Storage storage $, address _user, address _operator, bool _allow) internal {
        $.isAllowedOperator[_user][_operator] = _allow;
    }

    function enableSystemOperator(Storage storage $, address _operator, bool _enable) internal {
        $.isSystemOperator[_operator] = _enable;
    }
}
