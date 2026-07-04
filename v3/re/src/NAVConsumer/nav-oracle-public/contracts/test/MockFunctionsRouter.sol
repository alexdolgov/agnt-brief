// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {IFunctionsClient} from "@chainlink/contracts/src/v0.8/functions/v1_0_0/interfaces/IFunctionsClient.sol";

/**
 * @title Mock Functions Router
 * @notice Mock implementation of Chainlink Functions Router for testing
 */
contract MockFunctionsRouter {
    event RequestProcessed(bytes32 indexed requestId, address consumer);
    event ResponseDelivered(bytes32 indexed requestId, address consumer, bytes response, bytes error);

    /**
     * @notice Process a request directly (for testing)
     * @param consumer The consumer contract address
     * @param requestId The request ID to process
     * @param response The response data to send
     * @param err Any error message
     */
    function sendResponse(
        address consumer,
        bytes32 requestId,
        bytes memory response,
        bytes memory err
    ) external {
        // Call the consumer's handleOracleFulfillment function (matches IFunctionsClient interface)
        IFunctionsClient(consumer).handleOracleFulfillment(requestId, response, err);
        
        emit ResponseDelivered(requestId, consumer, response, err);
    }
    
    /**
     * @notice Alternative name for sendResponse (for compatibility with different test styles)
     */
    function fulfillRequest(
        address consumer,
        bytes32 requestId,
        bytes memory response,
        bytes memory err
    ) external {
        // Call the consumer's handleOracleFulfillment function (matches IFunctionsClient interface)
        IFunctionsClient(consumer).handleOracleFulfillment(requestId, response, err);
        
        emit ResponseDelivered(requestId, consumer, response, err);
    }

    /**
     * @notice Mock implementation of sendRequest from IFunctionsRouter
     * @dev This function returns a deterministic requestId for testing
     */
    function sendRequest(
        uint64 subscriptionId,
        bytes calldata data,
        uint16 dataVersion,
        uint32 callbackGasLimit,
        bytes32 donId
    ) external returns (bytes32) {
        // Create a deterministic requestId based on inputs for testing predictability
        bytes32 requestId = keccak256(
            abi.encode(
                msg.sender,
                subscriptionId,
                data,
                dataVersion,
                callbackGasLimit,
                donId,
                block.timestamp
            )
        );
        
        // Store the request info
        latestRequestId = requestId;
        requestCount++;
        
        emit RequestProcessed(requestId, msg.sender);
        return requestId;
    }
    
    // For testing - track request info
    bytes32 public latestRequestId;
    uint256 public requestCount;
    
    /**
     * @notice Get the latest request ID
     */
    function getLatestRequestId() external view returns (bytes32) {
        return latestRequestId;
    }
    
    /**
     * @notice Get the count of requests
     */
    function getRequestCount() external view returns (uint256) {
        return requestCount;
    }
    
    /**
     * @notice Simplified version of sendResponse - renamed to avoid overloading issues
     * @param requestId The request ID to process
     * @param response The response data to send
     * @param err Any error message
     */
    function sendSimpleResponse(
        bytes32 requestId,
        bytes memory response,
        bytes memory err
    ) external {
        // Call the consumer's handleOracleFulfillment function (matches IFunctionsClient interface)
        IFunctionsClient(msg.sender).handleOracleFulfillment(requestId, response, err);
        
        emit ResponseDelivered(requestId, msg.sender, response, err);
    }
}