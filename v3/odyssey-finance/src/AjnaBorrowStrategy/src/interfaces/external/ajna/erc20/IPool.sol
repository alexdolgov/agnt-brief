// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IPoolEvents} from "../commons/IPoolEvents.sol";
import {IPoolBorrowerActions} from "../commons/IPoolBorrowerActions.sol";
import {IPoolLPActions} from "../commons/IPoolLPActions.sol";
import {IPoolLenderActions} from "../commons/IPoolLenderActions.sol";
import {IPoolImmutables} from "../commons/IPoolImmutables.sol";
import {IPoolState} from "../commons/IPoolState.sol";
import {IPoolDerivedState} from "../commons/IPoolDerivedState.sol";

/**
 * @title Base Pool Interface
 */
interface IPool is
    IPoolBorrowerActions,
    IPoolLPActions,
    IPoolLenderActions,
    IPoolImmutables,
    IPoolState,
    IPoolDerivedState,
    IPoolEvents
{

}
