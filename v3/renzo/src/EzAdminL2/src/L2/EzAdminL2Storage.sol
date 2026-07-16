// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IEzAdminL2 } from "./IEzAdminL2.sol";

abstract contract EzAdminL2StorageV1 is IEzAdminL2 {
    /// @dev The address of the pauser
    address public pauser;
}
