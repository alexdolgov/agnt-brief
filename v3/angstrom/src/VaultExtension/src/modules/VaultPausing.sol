// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { Auth } from "./Auth.sol";
import { Pausable } from "./Pausable.sol";
import { PauseFlags } from "../libraries/PauseFlags.sol";

// @dev External pause/unpause functions are defined in VaultExtension to reduce Vault bytecode size.
// This contract only provides the internal pause infrastructure via Pausable.
abstract contract VaultPausing is Auth, Pausable, PauseFlags { }
