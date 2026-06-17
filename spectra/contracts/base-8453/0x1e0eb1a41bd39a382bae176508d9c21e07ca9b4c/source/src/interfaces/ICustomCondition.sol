// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IRole} from "./IRole.sol";

interface ICustomCondition {
    function check(
        address to,
        uint256 value,
        bytes calldata data,
        IRole.Operation operation,
        uint256 location,
        uint256 size,
        bytes12 extra
    ) external view returns (bool success, bytes32 reason);
}
