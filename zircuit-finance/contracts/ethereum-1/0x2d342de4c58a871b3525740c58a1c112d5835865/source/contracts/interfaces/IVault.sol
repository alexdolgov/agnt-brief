// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { VaultParams } from "../common/Types.sol";

interface IVault {
    function initialize(VaultParams calldata _params) external;
}
