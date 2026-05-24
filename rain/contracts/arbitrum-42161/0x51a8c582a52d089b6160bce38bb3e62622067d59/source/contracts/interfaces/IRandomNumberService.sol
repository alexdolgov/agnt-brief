// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title IRandomNumberService
 * @author Rain Team
 * @notice Interface for the Random Number Service.
 */
interface IRandomNumberService {
    /**
     * @notice Requests random words from the Chainlink VRF coordinator.
     * @dev This method interacts with the Chainlink VRF to obtain verifiable randomness.
     * @param user The address of the user initiating the request.
     * @param callbackSelector The selector of the function to use for callback.
     * @return requestId The ID associated with the VRF request.
     */
    function requestVRF(address user, bytes4 callbackSelector) external returns (uint256);

    /**
     * @notice Requests a random number from an oracle service (e.g., Chainlink).
     * @dev Initiates an HTTP GET request to the provided URL and extracts hashed number using the specified path.
     * @param url The API endpoint to request randomness from (e.g., a server endpoint).
     * @param path The JSON path to extract the random value's hash from the response.
     * @param jobId The Job ID associated with this request.
     * @param user The address of the user for whom the random number is requested.
     * @param callbackSelector The selector of the function to use for callback.
     * @return requestId The ID of the Chainlink request.
     */
    function requestEncryptedNumber(
        string memory url,
        string memory path,
        string memory jobId,
        address user,
        bytes4 callbackSelector
    ) external returns (bytes32);
}
