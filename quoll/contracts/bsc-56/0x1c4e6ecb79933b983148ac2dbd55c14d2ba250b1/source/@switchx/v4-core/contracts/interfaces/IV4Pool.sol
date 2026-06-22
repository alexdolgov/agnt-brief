// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

import './pool/IV4PoolImmutables.sol';
import './pool/IV4PoolState.sol';
import './pool/IV4PoolActions.sol';
import './pool/IV4PoolPermissionedActions.sol';
import './pool/IV4PoolEvents.sol';
import './pool/IV4PoolErrors.sol';

/// @title The interface for a V4 Pool
/// @dev The pool interface is broken up into many smaller pieces.
/// This interface includes custom error definitions and cannot be used in older versions of Solidity.
/// For older versions of Solidity use #IV4PoolLegacy
/// Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IV4Pool is IV4PoolImmutables, IV4PoolState, IV4PoolActions, IV4PoolPermissionedActions, IV4PoolEvents, IV4PoolErrors {
  // used only for combining interfaces
}
