// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {FunctionsClient} from "@chainlink/contracts/src/v0.8/functions/v1_0_0/FunctionsClient.sol";
import {FunctionsRequest} from "@chainlink/contracts/src/v0.8/functions/v1_0_0/libraries/FunctionsRequest.sol";
import {AutomationCompatibleInterface} from "@chainlink/contracts/src/v0.8/automation/interfaces/AutomationCompatibleInterface.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {INAVConsumer, 
        UnauthorizedNAVUpdateRequest, 
        DeviationCannotBeZero,
        UpkeepConditionsNotMet,
        InvalidTargetHour,
        InvalidTargetMinute,
        InvalidTimeWindow,
        InvalidNAVValue,
        ForceUpdateTooFrequent,
        InvalidSubscriptionId,
        InvalidDonId,
        InvalidSourceCode,
        InvalidEncryptedSecretsReference,
        InvalidGasLimit,
        InvalidReceiverAddress,
        ZeroAddress
    } from "./interfaces/INAVConsumer.sol";
import {INAVReceiver} from "./interfaces/INAVReceiver.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title Re Protocol NAV Consumer Contract with Automation
 * @notice This contract receives, stores NAV data and automatically triggers daily updates
 * @dev Implements both Chainlink Functions consumer and Chainlink Automation for scheduled updates
 * 
 * Contract Security:
 * - Uses AccessControl for role-based permissions:
 *   - ADMIN_ROLE: Can configure all parameters and settings
 *   - UPDATER_ROLE: Can trigger NAV updates
 *   - EMERGENCY_UPDATER_ROLE: Can force update NAV values directly
 * - Uses ReentrancyGuard to prevent reentrancy attacks during NAV updates and external calls
 * - Includes deviation checks to prevent erroneous NAV updates
 * - Handles failure gracefully when updating NAV receivers
 * 
 * Automation Flow:
 * 1. checkUpkeep validates if an update should run based on time window and elapsed time
 * 2. performUpkeep makes the actual Chainlink Functions request when conditions are met
 * 3. fulfillRequest processes the response and updates NAV values
 * 
 * Security Considerations:
 * - NAV receiver could be malicious (try/catch pattern is used)
 * - Oracle responses are validated for format and reasonableness
 * - Force updates have time limitations and require special role
 * - All parameters have validation and sanitization
 * - Zero addresses are explicitly prevented
 */
contract NAVConsumer is INAVConsumer, FunctionsClient, AutomationCompatibleInterface, AccessControl, ReentrancyGuard {
    /// @notice Role that can configure all parameters and settings
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    
    /// @notice Role that can trigger NAV updates
    bytes32 public constant UPDATER_ROLE = keccak256("UPDATER_ROLE");
    
    /// @notice Role that can force update NAV values directly
    bytes32 public constant EMERGENCY_UPDATER_ROLE = keccak256("EMERGENCY_UPDATER_ROLE");
    
    /// @notice Minimum time required between force updates (4 hours)
    /// @dev Prevents abuse of force update mechanism and ensures time for proper review between emergency updates
    uint256 public constant MIN_FORCE_UPDATE_INTERVAL = 4 hours;

    
    using FunctionsRequest for FunctionsRequest.Request;

    /// @notice State variables for NAV data
    /// @dev Stores the latest Chainlink Functions request ID
    bytes32 public latestRequestId;
    /// @dev Current NAV value with 18 decimal places
    uint256 public latestNAV;
    /// @dev Timestamp when the current NAV was updated
    uint256 public latestTimestamp;
    /// @dev Previous NAV value before the current update
    uint256 public previousNAV;
    /// @dev Timestamp when the previous NAV was updated
    uint256 public previousTimestamp;
    
    /// @notice Chainlink Functions configuration
    /// @dev DON ID for the Chainlink Functions network
    bytes32 public donId;
    /// @dev Subscription ID for billing Chainlink Functions requests
    uint64 public subscriptionId;
    /// @dev Gas limit for the fulfillRequest callback function
    uint32 internal callbackGasLimit;
    /// @dev JavaScript source code executed by Chainlink Functions
    string internal source;
    /// @dev Reference to encrypted secrets used by the source code
    bytes internal encryptedSecretsReference;

    /// @notice Chainlink Automation configuration
    /// @dev Target hour (0-23) in UTC for daily updates - default 23:00
    uint256 public targetHour = 23;
    /// @dev Target minute (0-59) in UTC for daily updates - default 45 minutes
    uint256 public targetMinute = 45;
    
    /// @dev Time window in seconds during which updates are allowed - default 15 minutes (900 seconds)
    /// @notice This defines how long after the target time an update can be performed
    uint256 public timeWindow = 900;
    
    /// @dev Timestamp of the last successful automated update via Chainlink Automation
    /// @notice Used to enforce minimum time between automated updates (20 hours)
    uint256 public lastAutomatedUpdateTimestamp;
    
    /// @dev Timestamp of the last forced update via emergency mechanism
    /// @notice Used to enforce minimum time between force updates (4 hours)
    uint256 public lastForceUpdateTimestamp;

    /// @dev Flag to enable or disable the automation feature
    /// @notice When disabled, checkUpkeep will always return false
    bool public automationEnabled = true;
    
    /// @notice NAV deviation check configuration
    /// @dev Maximum allowed deviation in basis points - default 10% (1000 basis points)
    /// @notice Used to reject NAV updates with suspiciously large changes
    uint256 public maxDeviationBps = 1000;
    /// @dev Flag to enable or disable the deviation check feature
    /// @notice When disabled, any NAV value will be accepted regardless of deviation
    bool public deviationCheckEnabled = true;
    
    /// @notice The contract that receives NAV updates
    /// @dev Must implement INAVReceiver interface, can be set to zero address if not needed
    INAVReceiver public navReceiver;
    
    /**
     * @notice Constructor initializes the contract with the Chainlink Functions router address and role assignments
     * @param router The address of the Chainlink Functions router
     * @param admin The address to assign as admin
     * @param updater The address to assign as updater
     * @param emergencyUpdater The address to assign as emergency updater
     */
    constructor(
        address router,
        address admin,
        address updater,
        address emergencyUpdater
    ) FunctionsClient(router) {
        if (router == address(0)) revert ZeroAddress("router");
        if (admin == address(0)) revert ZeroAddress("admin");
        if (updater == address(0)) revert ZeroAddress("updater");
        if (emergencyUpdater == address(0)) revert ZeroAddress("emergencyUpdater");
        
        callbackGasLimit = 300000; // Initial value well above minimum
        
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
        _grantRole(UPDATER_ROLE, updater);
        _grantRole(EMERGENCY_UPDATER_ROLE, emergencyUpdater);
    }

    /**
     * @notice Enable or disable the automation feature
     * @param enabled True to enable, false to disable
     * @dev Only callable by admin role
     */
    function setAutomationEnabled(bool enabled) external virtual override onlyRole(ADMIN_ROLE) {
        automationEnabled = enabled;
    }

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
    ) external override onlyRole(ADMIN_ROLE) {
        if (_subscriptionId == 0) revert InvalidSubscriptionId();
        if (_donId == bytes32(0)) revert InvalidDonId();
        if (bytes(_source).length == 0) revert InvalidSourceCode();
        if (_encryptedSecretsReference.length == 0) revert InvalidEncryptedSecretsReference();
        
        subscriptionId = _subscriptionId;
        donId = _donId;
        source = _source;
        encryptedSecretsReference = _encryptedSecretsReference;
    }

    /// @notice Minimum gas needed for fulfillRequest based on testing
    uint32 public constant MIN_CALLBACK_GAS_LIMIT = 100000;
    
    /**
     * @notice Set the gas limit for the Chainlink Functions callback
     * @param _callbackGasLimit Gas limit for the fulfillRequest callback function
     * @dev Only callable by admin role
     */
    function setCallbackGasLimit(uint32 _callbackGasLimit) external override onlyRole(ADMIN_ROLE) {
        if (_callbackGasLimit < MIN_CALLBACK_GAS_LIMIT) revert InvalidGasLimit(MIN_CALLBACK_GAS_LIMIT);
        
        callbackGasLimit = _callbackGasLimit;
    }

    /**
     * @notice Request a NAV update from Chainlink Functions
     * @return requestId The unique ID for this request
     * @dev Only callable by admin or updater roles
     */
    function requestNAV() public virtual override returns (bytes32 requestId) {
        // Ensure only authorized callers can trigger NAV updates
        if (!(hasRole(ADMIN_ROLE, msg.sender) || hasRole(UPDATER_ROLE, msg.sender))) {
            revert UnauthorizedNAVUpdateRequest();
        }
        
        // Call the internal implementation that contains the actual request logic
        return _performRequestNAV();
    }
    
    /**
     * @notice Internal implementation of the NAV request logic
     * @dev Separated to allow performUpkeep to bypass the authorization check
     * @dev Validates all configuration parameters before making the request
     * @dev Emits NAVRequestSent event with request ID
     * @return requestId The ID of the Chainlink Functions request
     */
    function _performRequestNAV() internal virtual returns (bytes32 requestId) {
        // Validate configuration components individually for detailed errors
        if (bytes(source).length == 0) revert InvalidSourceCode();
        if (subscriptionId == 0) revert InvalidSubscriptionId();
        if (donId == bytes32(0)) revert InvalidDonId();
        if (callbackGasLimit < MIN_CALLBACK_GAS_LIMIT) revert InvalidGasLimit(MIN_CALLBACK_GAS_LIMIT);
        
        // Create and initialize the Chainlink Functions request
        FunctionsRequest.Request memory req;
        req.initializeRequestForInlineJavaScript(source);

        // Add encrypted secrets reference if provided
        if (encryptedSecretsReference.length > 0) {
            req.addSecretsReference(encryptedSecretsReference);
        }

        // Send the request to Chainlink Functions
        requestId = _sendRequest(
            req.encodeCBOR(),
            subscriptionId,
            callbackGasLimit,
            donId
        );

        // Store the request ID and emit event
        latestRequestId = requestId;
        emit NAVRequestSent(requestId);
        return requestId;
    }

    /**
     * @notice Set the address of the NAV receiver contract
     * @param _navReceiver The address of the contract implementing INAVReceiver
     * @dev Only callable by admin role, cannot be zero address
     */
    function setNAVReceiver(address _navReceiver) external onlyRole(ADMIN_ROLE) {
        if (_navReceiver == address(0)) revert InvalidReceiverAddress();
        navReceiver = INAVReceiver(_navReceiver);
        emit NAVReceiverUpdated(_navReceiver);
    }

    /**
     * @notice Internal function to update NAV receiver with latest NAV value
     * @param navValue The NAV value to set in the receiver contract
     * @dev Uses try/catch pattern to handle potential failures in the receiver contract
     * @dev Will not revert if the receiver fails - NAV updates succeed regardless of receiver state
     * @dev Emits NAVReceiverUpdateFailed event if the receiver call fails
     * @dev Does nothing if navReceiver is not set (zero address)
     */
    function _updateNAVReceiver(uint256 navValue) internal {
        // Call the NAV receiver to update the share price if it's set
        if (address(navReceiver) != address(0)) {
            try navReceiver.setSharePrice(navValue) {
                // Successfully updated the share price - nothing more to do
            } catch (bytes memory /* reason */) {
                // Receiver call failed, but we don't want to revert the entire NAV update
                emit NAVReceiverUpdateFailed(navValue, address(navReceiver));
            }
        }
    }

    /**
     * @notice Callback function for Chainlink Functions to deliver the response
     * @param requestId The ID of the request being fulfilled
     * @param response The response data from Chainlink Functions (NAV value)
     * @param err Error message if the request failed
     * @dev Contains extensive validation of response format and data
     * @dev Protected against reentrancy with ReentrancyGuard
     * @dev Performs deviation check to prevent erroneous NAV updates
     * @dev Updates NAV data storage and propagates to NAV receiver if successful
     * @dev Emits appropriate events based on result (success, failure, deviation)
     */
    function fulfillRequest(
        bytes32 requestId,
        bytes memory response,
        bytes memory err
    ) internal override nonReentrant {
        // First, check for errors from the Chainlink Functions service
        if (err.length > 0) {
            emit NAVRequestFailed(requestId, string(err));
            return;
        }
        
        // Check if response data exists
        if (response.length == 0) {
            emit NAVRequestFailed(requestId, "Empty response data");
            return;
        }
        
        // Check if response has minimum length for a uint256
        if (response.length < 32) {
            emit NAVRequestFailed(requestId, "Malformed response data - insufficient length");
            return;
        }
        
        // Validate response format for a uint256
        if (response.length != 32 && response.length != 64) {
            emit NAVRequestFailed(requestId, "Invalid response length for uint256");
            return;
        }
        
        // Decode the response - we've already validated format above
        uint256 navValue = abi.decode(response, (uint256));
        
        // Reject zero NAV values
        if (navValue == 0) {
            emit NAVRequestFailed(requestId, "Cannot update with zero NAV value");
            return;
        }
        
        // Check for excessive deviation if enabled and we have an initial value
        if (deviationCheckEnabled && latestNAV > 0) {
            // Calculate absolute difference safely
            uint256 changeAbs;
            if (navValue > latestNAV) {
                changeAbs = navValue - latestNAV;
            } else {
                changeAbs = latestNAV - navValue;
            }
            
            // Calculate deviation in basis points
            uint256 deviationBps = (changeAbs * 10000) / latestNAV;
            
            // If deviation exceeds limit, reject the update and emit event with detailed error
            if (deviationBps > maxDeviationBps) {
                emit ExcessiveNAVDeviation(requestId, navValue, latestNAV, deviationBps);
                return; // Reject update but don't revert
            }
        }
        
        // Update the NAV data
        previousNAV = latestNAV;
        previousTimestamp = latestTimestamp;
        latestNAV = navValue;
        latestTimestamp = block.timestamp;
        
        // Update the NAV receiver
        _updateNAVReceiver(navValue);
        
        emit NAVFulfilled(requestId, navValue);
        emit NAVUpdated(block.timestamp, navValue);
    }
    

    /**
     * @notice Determine if upkeep is needed based on time (for Chainlink Automation)
     * @return upkeepNeeded Boolean indicating if upkeep is needed
     * @return performData The data to be used in performUpkeep (empty in this case)
     * @dev Checks if automation is enabled
     * @dev Calculates current UTC time components (hour, minute, seconds)
     * @dev Determines if current time is within the configured target window
     * @dev Checks if enough time has passed since last update (20+ hours)
     * @dev Returns true only when all conditions are met
     */
    function checkUpkeep(bytes calldata /* checkData */) 
        external 
        view 
        override 
        returns (bool upkeepNeeded, bytes memory performData) 
    {
        // Skip check if automation is disabled
        if (!automationEnabled) {
            return (false, "");
        }
        
        // Get current UTC time components
        uint256 timestamp = block.timestamp;
        uint256 secondsInDay = timestamp % 86400; // Seconds since midnight UTC
        uint256 currentHour = secondsInDay / 3600;
        uint256 currentMinute = (secondsInDay % 3600) / 60;
        
        // Calculate target time in seconds since midnight UTC
        uint256 targetTimeSeconds = (targetHour * 3600) + (targetMinute * 60);
        
        // Calculate current time in seconds since midnight UTC
        uint256 currentTimeSeconds = (currentHour * 3600) + (currentMinute * 60) + (secondsInDay % 60);
        
        // Check if we're in the target time window (23:45-23:50 UTC)
        bool inTimeWindow = currentTimeSeconds >= targetTimeSeconds && 
                           currentTimeSeconds < (targetTimeSeconds + timeWindow);
        
        // Check if it's been more than 20 hours since the last update
        bool enoughTimePassed = (timestamp - lastAutomatedUpdateTimestamp) > 20 hours;
        
        // Upkeep is needed if we're in the target time window AND it's been enough time since the last update
        upkeepNeeded = inTimeWindow && enoughTimePassed;
        
        // We don't need to pass any data to performUpkeep
        performData = "";
        
        return (upkeepNeeded, performData);
    }
    
    /**
     * @notice Perform the upkeep by requesting a NAV update
     * @dev Verifies upkeep conditions via checkUpkeep before proceeding
     * @dev Reverts with UpkeepConditionsNotMet if conditions aren't satisfied
     * @dev Calls _performRequestNAV to initiate Chainlink Functions request
     * @dev Updates lastAutomatedUpdateTimestamp and emits AutomatedUpdateTriggered event
     */
    function performUpkeep(bytes calldata /* performData */) external override(INAVConsumer, AutomationCompatibleInterface) {
        // Check if upkeep conditions are satisfied
        (bool upkeepNeeded, ) = this.checkUpkeep("");
        if (!upkeepNeeded) {
            revert UpkeepConditionsNotMet();
        }

        // Perform NAV update
        _performRequestNAV();
        
        // Update the last automated update timestamp
        lastAutomatedUpdateTimestamp = block.timestamp;
        
        // Emit event
        emit AutomatedUpdateTriggered(block.timestamp);
    }

    /**
     * @notice Manually trigger a NAV update request for testing or emergency use
     * @dev Only callable by admin role
     */
    function manualTriggerUpdate() external override onlyRole(ADMIN_ROLE) {
        _performRequestNAV();
    }
    
    // Role management is handled by AccessControl
    
    /**
     * @notice Set the maximum allowed deviation for NAV updates in basis points
     * @param _maxDeviationBps The maximum allowed deviation (e.g., 1000 = 10%)
     * @dev Only callable by admin role, cannot be set to zero
     */
    function setMaxDeviation(uint256 _maxDeviationBps) external override onlyRole(ADMIN_ROLE) {
        if (_maxDeviationBps == 0) {
            revert DeviationCannotBeZero();
        }
        maxDeviationBps = _maxDeviationBps;
        emit MaxDeviationUpdated(_maxDeviationBps);
    }
    
    /**
     * @notice Enable or disable the deviation check feature
     * @param _enabled True to enable, false to disable deviation checks
     * @dev Only callable by admin role
     */
    function setDeviationCheckEnabled(bool _enabled) external override onlyRole(ADMIN_ROLE) {
        deviationCheckEnabled = _enabled;
        emit DeviationCheckToggled(_enabled);
    }
    
    /**
     * @notice Force update the NAV value, bypassing the Chainlink Functions request
     * @param _navValue The NAV value to set
     * @param _reason Description explaining why this force update is necessary
     * @dev Only callable by emergency updater role, subject to time restrictions
     */
    function forceNAVUpdate(
        uint256 _navValue, 
        string calldata _reason
    ) external override onlyRole(EMERGENCY_UPDATER_ROLE) nonReentrant {
        // Basic validation to prevent clearly erroneous values
        if (_navValue == 0) revert InvalidNAVValue(0);
        
        // Enforce minimum time between forced updates
        uint256 timeSinceLastForceUpdate = block.timestamp - lastForceUpdateTimestamp;
        if (lastForceUpdateTimestamp > 0 && timeSinceLastForceUpdate < MIN_FORCE_UPDATE_INTERVAL) {
            revert ForceUpdateTooFrequent(timeSinceLastForceUpdate, MIN_FORCE_UPDATE_INTERVAL);
        }
        
        // Calculate deviation for transparency, even though we're bypassing checks
        uint256 deviationBps = 0;
        if (latestNAV > 0) {
            uint256 changeAbs = _navValue > latestNAV 
                ? _navValue - latestNAV 
                : latestNAV - _navValue;
            deviationBps = (changeAbs * 10000) / latestNAV;
        }
        
        // Update the NAV data
        previousNAV = latestNAV;
        previousTimestamp = latestTimestamp;
        latestNAV = _navValue;
        latestTimestamp = block.timestamp;
        lastForceUpdateTimestamp = block.timestamp;
        
        // Update the NAV receiver
        _updateNAVReceiver(_navValue);
        
        // Emit events with enhanced information
        emit NAVForceUpdated(block.timestamp, _navValue, deviationBps, _reason, msg.sender);
        emit NAVUpdated(block.timestamp, _navValue);
    }

    /**
     * @notice Get the current NAV value and its timestamp
     * @return nav The latest NAV value with 18 decimal places
     * @return timestamp The timestamp when this NAV value was last updated
     */
    function getCurrentNAV() external view override returns (uint256 nav, uint256 timestamp) {
        return (latestNAV, latestTimestamp);
    }

    /**
     * @notice Get the previous NAV value and its timestamp
     * @return nav The previous NAV value with 18 decimal places
     * @return timestamp The timestamp when the previous NAV value was updated
     */
    function getPreviousNAV() external view override returns (uint256 nav, uint256 timestamp) {
        return (previousNAV, previousTimestamp);
    }

    /**
     * @notice Calculate the percentage change between latest and previous NAV
     * @return percentageChange The percentage change with 8 decimal places (e.g., 100000000 = 1%)
     * @dev Returns 0 if there is no previous NAV
     */
    function getPercentageChange() external view override returns (int256 percentageChange) {
        if (previousNAV == 0) return 0;
        
        int256 change = int256(latestNAV) - int256(previousNAV);
        percentageChange = (change * 100000000) / int256(previousNAV);
        return percentageChange;
    }
    
    /**
     * @notice Get the number of decimal places used in NAV values
     * @return The number of decimal places (18)
     * @dev NAV values are fixed-point numbers with 18 decimal places
     * @dev Follows ERC20 convention for better integration with other protocols
     */
    function decimals() external pure override returns (uint8) {
        return 18;
    }

    /**
     * @notice Update automation scheduling parameters
     * @param _targetHour New target hour (0-23) for the daily update
     * @param _targetMinute New target minute (0-59) for the daily update
     * @param _timeWindow New time window in seconds
     * @dev Only callable by admin role, includes validation of parameters
     */
    function setAutomationTimeParameters(uint256 _targetHour, uint256 _targetMinute, uint256 _timeWindow) external onlyRole(ADMIN_ROLE) {
        if (_targetHour >= 24) revert InvalidTargetHour();
        if (_targetMinute >= 60) revert InvalidTargetMinute();
        // Time window must be between 5 minutes and 4 hours
        if (_timeWindow < 300 || _timeWindow >= 14400) revert InvalidTimeWindow();
        targetHour = _targetHour;
        targetMinute = _targetMinute;
        timeWindow = _timeWindow;
        emit AutomationParametersUpdated(_targetHour, _targetMinute, _timeWindow);
    }
}