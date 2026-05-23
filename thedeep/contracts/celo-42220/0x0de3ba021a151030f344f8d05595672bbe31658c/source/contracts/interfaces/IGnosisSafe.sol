// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

import { Enum } from "../common/Enum.sol";

interface IGnosisSafe {
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation
    ) external returns (bool success);
}
