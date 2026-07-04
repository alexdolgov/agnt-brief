// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IList} from "./IList.sol";

interface IAllowList is IList {
    /**
     * @dev Returns a boolean value indicating whether allow list is enabled.
     */
    function enabled() external view returns (bool);
}