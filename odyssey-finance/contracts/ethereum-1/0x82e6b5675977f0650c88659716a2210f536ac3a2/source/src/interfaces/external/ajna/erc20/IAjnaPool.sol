// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IPool} from "./IPool.sol";
import {IERC20PoolBorrowerActions} from "./IERC20PoolBorrowerActions.sol";
import {IERC20PoolLenderActions} from "./IERC20PoolLenderActions.sol";
import {IERC20PoolImmutables} from "./IERC20PoolImmutables.sol";
import {IERC20PoolEvents} from "./IERC20PoolEvents.sol";

/**
 * @title ERC20 Pool
 */
interface IAjnaPool is
    IPool,
    IERC20PoolLenderActions,
    IERC20PoolBorrowerActions,
    IERC20PoolImmutables,
    IERC20PoolEvents
{

}
