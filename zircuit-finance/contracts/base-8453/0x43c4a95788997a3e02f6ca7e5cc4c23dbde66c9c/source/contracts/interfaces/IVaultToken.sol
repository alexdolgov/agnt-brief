// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { VaultTokenParams } from "../common/Types.sol";

interface IVaultToken {
    function initialize(VaultTokenParams calldata _params) external;
}
