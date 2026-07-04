// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {INAVReceiver} from "./INAVReceiver.sol";

// Authentication and Access Control Errors
error UnauthorizedNAVUpdateRequest();

// Configuration Errors
error InvalidSubscriptionId();
error InvalidDonId();
error InvalidSourceCode();
error InvalidGasLimit(uint32 minimum);
error InvalidEncryptedSecretsReference();

// Validation Errors
error DeviationCannotBeZero();
error InvalidNAVValue(uint256 navValue);

// Automation Errors
error UpkeepConditionsNotMet();

// Time Parameter Errors
error InvalidTargetHour();
error InvalidTargetMinute();
error InvalidTimeWindow();

// Force Update Errors
error ForceUpdateTooFrequent(uint256 timeSinceLastUpdate, uint256 minimumRequired);

// Receiver Errors
error InvalidReceiverAddress();

// Constructor Errors
error ZeroAddress(string parameter);

/**
 * @title NAV Consumer Interface
 * @notice Interface for the NAV Consumer contract with Chainlink Functions and Automation
 * @dev This interface declares all external functions, events, and errors for the NAV Consumer contract
 *      - Provides automated Net Asset Value (NAV) updates via Chainlink Functions and Automation
 *      - Supports manual and emergency NAV update mechanisms
 *      - Includes deviation checks to prevent erroneous NAV updates
 *      - Integrates with NAV receivers to propagate NAV updates to dependent contracts
 *      - Uses role-based access control for secure operation
 */
interface INAVConsumer {
    // Events
    /**
     * @notice Emitted when the NAV value is updated (applies to all types of updates)
     * @param timestamp The block timestamp when the NAV was updated
     * @param navValue The new NAV value
     */
    event NAVUpdated(uint256 indexed timestamp, uint256 navValue);
    
    /**
     * @notice Emitted when a NAV request is sent to Chainlink Functions
     * @param requestId The unique ID for the Chainlink Functions request
     */
    event NAVRequestSent(bytes32 indexed requestId);
    
    /**
     * @notice Emitted when a NAV request is successfully fulfilled by Chainlink Functions
     * @param requestId The unique ID for the Chainlink Functions request
     * @param navValue The NAV value received from the oracle
     */
    event NAVFulfilled(bytes32 indexed requestId, uint256 navValue);
    
    /**
     * @notice Emitted when a NAV request fails
     * @param requestId The unique ID for the Chainlink Functions request
     * @param error The error message explaining the failure
     */
    event NAVRequestFailed(bytes32 indexed requestId, string error);
    
    /**
     * @notice Emitted when an automated update is triggered via Chainlink Automation
     * @param timestamp The block timestamp when the automated update was triggered
     */
    event AutomatedUpdateTriggered(uint256 timestamp);
    
    /**
     * @notice Emitted when a NAV update is rejected due to excessive deviation
     * @param requestId The unique ID for the Chainlink Functions request
     * @param newNav The new NAV value that was rejected
     * @param previousNav The previous NAV value used for comparison
     * @param deviationBps The calculated deviation in basis points
     */
    event ExcessiveNAVDeviation(bytes32 indexed requestId, uint256 newNav, uint256 previousNav, uint256 deviationBps);
    
    /**
     * @notice Emitted when the maximum allowed deviation is updated
     * @param newMaxDeviationBps The new maximum deviation threshold in basis points
     */
    event MaxDeviationUpdated(uint256 newMaxDeviationBps);
    
    /**
     * @notice Emitted when the deviation check is enabled or disabled
     * @param enabled The new state of the deviation check
     */
    event DeviationCheckToggled(bool enabled);
    
    /**
     * @notice Emitted when a NAV value is force updated by an emergency updater
     * @param timestamp The block timestamp when the force update occurred
     * @param navValue The new NAV value set via force update
     * @param deviationBps The calculated deviation in basis points
     * @param reason The reason provided for the force update
     * @param caller The address that performed the force update
     */
    event NAVForceUpdated(uint256 indexed timestamp, uint256 navValue, uint256 deviationBps, string reason, address caller);
    
    /**
     * @notice Emitted when a new NAV receiver is set
     * @param receiver The address of the new NAV receiver
     */
    event NAVReceiverUpdated(address indexed receiver);
    
    /**
     * @notice Emitted when an update to a NAV receiver fails
     * @param navValue The NAV value that failed to be set
     * @param receiver The address of the NAV receiver that failed
     */
    event NAVReceiverUpdateFailed(uint256 navValue, address receiver);
    
    /**
     * @notice Emitted when automation time parameters are updated
     * @param targetHour The new target hour for daily updates
     * @param targetMinute The new target minute for daily updates
     * @param timeWindow The new time window in seconds
     */
    event AutomationParametersUpdated(uint256 targetHour, uint256 targetMinute, uint256 timeWindow);

    
    // External functions
    
    /**
     * @notice Enable or disable the automation feature
     * @param enabled True to enable, false to disable
     * @dev Only callable by admin role
     */
    function setAutomationEnabled(bool enabled) external;
    
    /**
     * @notice Configure the Chainlink Functions parameters
     * @param _subscriptionId The Chainlink Functions subscription ID for billing
     * @param _donId The Decentralized Oracle Network ID
     * @param _source The JavaScript source code to be executed by Chainlink Functions
     * @param _encryptedSecretsReference Reference to encrypted secrets for the source code
     * @dev Only callable by admin role
     */
    function configure(
        uint64 _subscriptionId,
        bytes32 _donId,
        string calldata _source,
        bytes calldata _encryptedSecretsReference
    ) external;
    
    /**
     * @notice Set the gas limit for the Chainlink Functions callback
     * @param _callbackGasLimit Gas limit for the fulfillRequest callback function
     * @dev Only callable by admin role
     */
    function setCallbackGasLimit(uint32 _callbackGasLimit) external;
    
    /**
     * @notice Request a NAV update from Chainlink Functions
     * @return requestId The unique ID for this request
     * @dev Only callable by admin or updater roles
     */
    function requestNAV() external returns (bytes32 requestId);
    
    /**
     * @notice Entry point for Chainlink Automation to trigger NAV updates
     * @param performData Arbitrary data passed from checkUpkeep to performUpkeep
     * @dev Only callable by the Chainlink Automation registry
     */
    function performUpkeep(bytes calldata performData) external;
    
    /**
     * @notice Manually trigger a NAV update request for testing or emergency use
     * @dev Only callable by admin role
     */
    function manualTriggerUpdate() external;
    
    /**
     * @notice Set the maximum allowed deviation for NAV updates in basis points
     * @param _maxDeviationBps The maximum allowed deviation (e.g., 1000 = 10%)
     * @dev Only callable by admin role, cannot be set to zero
     */
    function setMaxDeviation(uint256 _maxDeviationBps) external;
    
    /**
     * @notice Enable or disable the deviation check feature
     * @param _enabled True to enable, false to disable deviation checks
     * @dev Only callable by admin role
     */
    function setDeviationCheckEnabled(bool _enabled) external;
    
    /**
     * @notice Force update the NAV value, bypassing the Chainlink Functions request
     * @param _navValue The NAV value to set
     * @param _reason Description explaining why this force update is necessary
     * @dev Only callable by emergency updater role, subject to time restrictions
     */
    function forceNAVUpdate(uint256 _navValue, string calldata _reason) external;
    
    /**
     * @notice Set the address of the NAV receiver contract
     * @param _navReceiver The address of the contract implementing INAVReceiver
     * @dev Only callable by admin role, cannot be zero address
     */
    function setNAVReceiver(address _navReceiver) external;
    
    /**
     * @notice Get the current NAV value and its timestamp
     * @return nav The latest NAV value with 18 decimal places
     * @return timestamp The timestamp when this NAV value was last updated
     */
    function getCurrentNAV() external view returns (uint256 nav, uint256 timestamp);
    
    /**
     * @notice Get the previous NAV value and its timestamp
     * @return nav The previous NAV value with 18 decimal places
     * @return timestamp The timestamp when the previous NAV value was updated
     */
    function getPreviousNAV() external view returns (uint256 nav, uint256 timestamp);
    
    /**
     * @notice Calculate the percentage change between latest and previous NAV
     * @return percentageChange The percentage change with 8 decimal places (e.g., 100000000 = 1%)
     * @dev Returns 0 if there is no previous NAV
     */
    function getPercentageChange() external view returns (int256 percentageChange);

    // Read-only state variables
    
    /**
     * @notice Get the latest Chainlink Functions request ID
     * @return The bytes32 request ID of the most recent request
     */
    function latestRequestId() external view returns (bytes32);
    
    /**
     * @notice Get the latest NAV value
     * @return The current NAV value with 18 decimal places
     */
    function latestNAV() external view returns (uint256);
    
    /**
     * @notice Get the timestamp of the latest NAV update
     * @return The block timestamp when the latest NAV was updated
     */
    function latestTimestamp() external view returns (uint256);
    
    /**
     * @notice Get the previous NAV value before the current one
     * @return The previous NAV value with 18 decimal places
     */
    function previousNAV() external view returns (uint256);
    
    /**
     * @notice Get the timestamp of the previous NAV update
     * @return The block timestamp when the previous NAV was updated
     */
    function previousTimestamp() external view returns (uint256);
    
    /**
     * @notice Get the Chainlink Functions DON ID used for requests
     * @return The bytes32 DON ID
     */
    function donId() external view returns (bytes32);
    
    /**
     * @notice Get the Chainlink Functions subscription ID used for billing
     * @return The subscription ID
     */
    function subscriptionId() external view returns (uint64);
    
    /**
     * @notice Get the timestamp of the last automated update via Chainlink Automation
     * @return The block timestamp of the last automated update
     */
    function lastAutomatedUpdateTimestamp() external view returns (uint256);
    
    /**
     * @notice Get the timestamp of the last force update
     * @return The block timestamp of the last force update
     */
    function lastForceUpdateTimestamp() external view returns (uint256);
    
    /**
     * @notice Check if automation is currently enabled
     * @return True if automation is enabled, false otherwise
     */
    function automationEnabled() external view returns (bool);
    
    /**
     * @notice Get the maximum allowed deviation in basis points
     * @return The maximum deviation threshold in basis points (e.g., 1000 = 10%)
     */
    function maxDeviationBps() external view returns (uint256);
    
    /**
     * @notice Check if deviation check is currently enabled
     * @return True if deviation check is enabled, false otherwise
     */
    function deviationCheckEnabled() external view returns (bool);
    
    /**
     * @notice Get the current NAV receiver contract
     * @return The address of the contract implementing INAVReceiver
     */
    function navReceiver() external view returns (INAVReceiver);
    
    /**
     * @notice Get the number of decimal places used in NAV values
     * @return The number of decimal places (18)
     * @dev NAV values are fixed-point numbers with 18 decimal places
     */
    function decimals() external pure returns (uint8);
}