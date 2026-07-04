// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IList {
    /**
     * @dev Returns whether an address is in the list.
     */
    function contains(address _addr) external view returns (bool);
}