// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

/**
 * @title IOVM_L1BlockNumber
 */
interface IOVM_L1BlockNumber {
    /********************
     * Public Functions *
     ********************/

    function getL1BlockNumber() external view returns (uint256);
}
