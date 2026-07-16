// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "../interfaces/IMulticall.sol";

/**
 * @title Multicall
 * @notice Enables calling multiple methods in a single transaction
 * @dev Provides a function to batch together multiple calls in a single external call
 */
abstract contract Multicall is IMulticall {
    error DeadlineExpired();
    error MulticallFailed(uint256 index, bytes reason);
    
    /**
     * @notice Execute multiple calls in a single transaction
     * @param data Array of encoded function calls
     * @return results Array of return data from each call
     */
    function multicall(bytes[] calldata data) public payable virtual override returns (bytes[] memory results) {
        results = new bytes[](data.length);
        
        for (uint256 i = 0; i < data.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(data[i]);
            
            if (!success) {
                // Decode revert reason if possible
                if (result.length > 0) {
                    // Bubble up the revert reason
                    assembly {
                        revert(add(32, result), mload(result))
                    }
                } else {
                    revert MulticallFailed(i, result);
                }
            }
            
            results[i] = result;
        }
    }
    
    /**
     * @notice Execute multiple calls with a deadline
     * @param deadline Timestamp after which the transaction reverts
     * @param data Array of encoded function calls
     * @return results Array of return data from each call
     */
    function multicallWithDeadline(
        uint256 deadline,
        bytes[] calldata data
    ) external payable override returns (bytes[] memory results) {
        if (block.timestamp > deadline) revert DeadlineExpired();
        return multicall(data);
    }
    
    /**
     * @notice Helper to get current block timestamp
     * @return Current block timestamp
     */
    function getCurrentTimestamp() external view returns (uint256) {
        return block.timestamp;
    }
}