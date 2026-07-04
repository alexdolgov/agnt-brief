// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IPoolRegistry} from "../interfaces/IPoolRegistry.sol";
import {IQuoter} from "../interfaces/IQuoter.sol";

abstract contract QuoterStorageV1 is IQuoter {
    /**
     * @notice The pool registry contract
     */
    IPoolRegistry internal _poolRegistry;
}
