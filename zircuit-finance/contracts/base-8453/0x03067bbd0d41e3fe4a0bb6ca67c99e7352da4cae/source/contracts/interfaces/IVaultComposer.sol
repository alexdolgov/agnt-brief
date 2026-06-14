// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { VaultComposerParams } from "../common/Types.sol";

interface IVaultComposer {
    function initialize(VaultComposerParams calldata _params) external;
}
