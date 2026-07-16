// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/**
 * @title IMulticall
 * @notice Interface for batching multiple calls in a single transaction
 */
interface IMulticall {
    /**
     * @notice Execute multiple calls in a single transaction
     * @param data Array of encoded function calls
     * @return results Array of return data from each call
     */
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
    
    /**
     * @notice Execute multiple calls with a deadline
     * @param deadline Timestamp after which the transaction reverts
     * @param data Array of encoded function calls
     * @return results Array of return data from each call
     */
    function multicallWithDeadline(
        uint256 deadline,
        bytes[] calldata data
    ) external payable returns (bytes[] memory results);
}