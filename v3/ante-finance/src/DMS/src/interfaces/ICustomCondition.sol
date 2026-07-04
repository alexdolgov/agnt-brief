// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.23;

import { Enum } from "@safe-global/safe-smart-account/common/Enum.sol";

interface ICustomCondition {
    function check(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation,
        uint256 location,
        uint256 size,
        bytes12 extra
    )
        external
        view
        returns (bool success, bytes32 reason);
}
