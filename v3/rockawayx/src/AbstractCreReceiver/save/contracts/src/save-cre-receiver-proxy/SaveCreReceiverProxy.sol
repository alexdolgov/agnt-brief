// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.33;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts@5.0.2/access/Ownable2Step.sol";
import {AbstractCreReceiver} from "../abstracts/AbstractCreReceiver.sol";
import {ISaveRegistry} from "./ISaveRegistry.sol";

/**
 * @title SaveCreReceiverProxy
 * @notice Receiver proxy contract for Chainlink CRE workflows
 * @dev Receives consensus reports from DON and forwards setAttestation/setVerification calls to the SAVE registry.
 *      Supports function selector routing to enable multiple operation types from a single DON workflow.
 *
 * Features:
 * - Extends AbstractCreReceiver for workflow validation
 * - Supports both setAttestation and setVerification operations via function selector routing
 * - Optional workflow validation (can be disabled for testing/simulation)
 * - Validates workflow ID, name, and owner from metadata when validation is enabled
 * - Ownable2Step for secure ownership management
 * - Owner can update registry and workflow configurations at runtime
 */
contract SaveCreReceiverProxy is AbstractCreReceiver, Ownable2Step {
    // ============ State Variables ============

    /// @notice The SAVE registry contract
    ISaveRegistry public registry;

    // ============ Events ============

    event ReportReceived(bytes4 indexed functionSelector, bytes32 indexed proofId);
    event RegistryUpdated(address indexed oldRegistry, address indexed newRegistry);

    // ============ Errors ============

    error InvalidRegistryAddress();
    error InvalidFunctionSelector(bytes4 selector);

    // ============ Constructor ============

    /**
     * @notice Constructor
     * @dev Initializes the proxy with registry address and workflow validation parameters.
     *
     * @param _registry Address of the SAVE registry contract (must not be zero address)
     * @param _workflowId Expected workflow ID to validate
     * @param _expectedForwarder DON forwarder address authorized to submit reports
     * @param _expectedAuthor Expected workflow owner address
     * @param _expectedWorkflowName Expected workflow name
     * @param _isReportWriteSecured Whether to enforce workflow validation (immutable after deployment)
     * @param _initialOwner Initial owner of the contract (receives ownership rights)
     *
     * @custom:security-note _isReportWriteSecured is immutable. Choose carefully:
     *                       - true for production (validates all DON calls)
     *                       - false for testing/simulation (allows any caller)
     */
    constructor(
        address _registry,
        bytes32 _workflowId,
        address _expectedForwarder,
        address _expectedAuthor,
        bytes10 _expectedWorkflowName,
        bool _isReportWriteSecured,
        address _initialOwner
    )
        AbstractCreReceiver(
            _workflowId, _expectedForwarder, _expectedAuthor, _expectedWorkflowName, _isReportWriteSecured
        )
        Ownable(_initialOwner)
    {
        require(_registry != address(0), InvalidRegistryAddress());
        registry = ISaveRegistry(_registry);
    }

    // ============ Internal Functions ============

    /**
     * @notice Processes the validated report from the Chainlink DON
     * @dev Implements AbstractCreReceiver's abstract _processReport function.
     *      Supports both setAttestation and setVerification operations based on function selector routing.
     *
     * @param report The encoded report data containing function selector and parameters.
     *               Must be at least 4 bytes for the selector.
     *
     * Expected report formats:
     * - For setAttestation: abi.encodeWithSelector(ISaveRegistry.setAttestation.selector, proofId, attestationHash)
     * - For setVerification: abi.encodeWithSelector(ISaveRegistry.setVerification.selector, proofId, expectedAttestationHash, verificationHash)
     */
    function _processReport(bytes calldata report) internal override {
        // Extract function selector (first 4 bytes)
        require(report.length >= 4, "Report too short");
        bytes4 selector = bytes4(report[0:4]);

        bytes32 proofId;

        // Route based on function selector
        if (selector == ISaveRegistry.setAttestation.selector) {
            // Decode parameters for setAttestation
            bytes32 attestationHash;
            (proofId, attestationHash) = abi.decode(report[4:], (bytes32, bytes32));

            // Forward the call to the registry
            registry.setAttestation(proofId, attestationHash);
        } else if (selector == ISaveRegistry.setVerification.selector) {
            // Decode parameters for setVerification
            bytes32 expectedAttestationHash;
            bytes32 verificationHash;
            (proofId, expectedAttestationHash, verificationHash) = abi.decode(report[4:], (bytes32, bytes32, bytes32));

            // Forward the call to the registry
            registry.setVerification(proofId, expectedAttestationHash, verificationHash);
        } else {
            revert InvalidFunctionSelector(selector);
        }

        emit ReportReceived(selector, proofId);
    }

    // ============ Owner Functions ============

    /**
     * @notice Update the registry contract address
     * @dev Only callable by contract owner. Validates new address is not zero.
     * @param _newRegistry New registry contract address
     * @custom:reverts InvalidRegistryAddress if _newRegistry is address(0)
     */
    function setRegistry(address _newRegistry) external onlyOwner {
        require(_newRegistry != address(0), InvalidRegistryAddress());
        address oldRegistry = address(registry);
        registry = ISaveRegistry(_newRegistry);
        emit RegistryUpdated(oldRegistry, _newRegistry);
    }

    /**
     * @notice Update or add a workflow configuration
     * @dev Only callable by contract owner. Use this to configure new workflows or update existing ones.
     * @param _workflowId The workflow ID to configure
     * @param _expectedForwarder The forwarder address authorized to submit reports
     * @param _expectedAuthor The author address expected in report metadata
     * @param _expectedWorkflowName The workflow name expected in report metadata
     * @param _isActive Whether the workflow should be active
     */
    function setWorkflowConfig(
        bytes32 _workflowId,
        address _expectedForwarder,
        address _expectedAuthor,
        bytes10 _expectedWorkflowName,
        bool _isActive
    ) external onlyOwner {
        workflowConfigs[_workflowId] = WorkflowConfig({
            expectedForwarder: _expectedForwarder,
            expectedAuthor: _expectedAuthor,
            expectedWorkflowName: _expectedWorkflowName,
            isActive: _isActive
        });

        emit WorkflowConfigUpdated(_workflowId, _expectedForwarder, _expectedAuthor, _expectedWorkflowName, _isActive);
    }

    // ============ View Functions ============

    /**
     * @notice Get the registry contract address
     * @return The SAVE registry contract address
     */
    function getRegistry() external view returns (address) {
        return address(registry);
    }
}

