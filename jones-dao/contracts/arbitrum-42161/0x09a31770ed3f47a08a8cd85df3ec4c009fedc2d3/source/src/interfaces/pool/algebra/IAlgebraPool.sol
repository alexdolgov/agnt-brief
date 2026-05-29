// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

import {IAlgebraPoolImmutables} from "src/interfaces/pool/algebra/IAlgebraPoolImmutables.sol";
import {IAlgebraPoolState} from "src/interfaces/pool/algebra/IAlgebraPoolState.sol";
import {IAlgebraPoolDerivedState} from "src/interfaces/pool/algebra/IAlgebraPoolDerivedState.sol";
import {IAlgebraPoolActions} from "src/interfaces/pool/algebra/IAlgebraPoolActions.sol";
import {IAlgebraPoolPermissionedActions} from "src/interfaces/pool/algebra/IAlgebraPoolPermissionedActions.sol";
import {IAlgebraPoolEvents} from "src/interfaces/pool/algebra/IAlgebraPoolEvents.sol";

/**
 * @title The interface for a Algebra Pool
 * @dev The pool interface is broken up into many smaller pieces.
 * Credit to Uniswap Labs under GPL-2.0-or-later license:
 * https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
 */
interface IAlgebraPool is
    IAlgebraPoolImmutables,
    IAlgebraPoolState,
    IAlgebraPoolDerivedState,
    IAlgebraPoolActions,
    IAlgebraPoolPermissionedActions,
    IAlgebraPoolEvents
{
// used only for combining interfaces
}
