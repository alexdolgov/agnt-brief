// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface ISwapper {
    /**
     * @notice swap tokens according to the given adapter data
     * @param tokens Tokens to swap
     * @param callDatas Aggregator data for the swap
     */
    function swap(address[] calldata tokens, bytes[] calldata callDatas) external;
}
