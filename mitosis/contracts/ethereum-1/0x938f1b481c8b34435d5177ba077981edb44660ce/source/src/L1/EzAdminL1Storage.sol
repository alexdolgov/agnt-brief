// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IEzAdminL1 } from "./IEzAdminL1.sol";

abstract contract EzAdminL1StorageV1 is IEzAdminL1 {
    /// @dev The address of the pauser
    address public pauser;

    /// @dev tracks the gas limit required to execute destination handle
    uint256 public destinationGasLimit;
}
