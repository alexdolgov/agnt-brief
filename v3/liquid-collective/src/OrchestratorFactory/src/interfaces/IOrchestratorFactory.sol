// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

/// @title Orchestrator Factory Interface
/// @author Alluvial Finance Inc.
/// @notice Interface for the Orchestrator Factory contract
interface IOrchestratorFactory {
    /// @notice The deployment details
    struct Deployment {
        uint256 instanceId;
        address orchestrator;
        address orchestratorImplementation;
        address tvsBeacon;
        address tvsImplementation;
        address configManagerImplementation;
    }

    /// @notice Error thrown when a zero address is used
    error InvalidZeroAddress();

    /// @notice Emitted when the orchestrator factory implementation is updated
    /// @param newOrchestratorImplementation The new implementation address
    /// @param instanceId The current instance id at which the implementation change was performed
    event OrchestratorImplementationUpdated(address indexed newOrchestratorImplementation, uint256 indexed instanceId);

    /// @notice Emitted when the config manager implementation is updated
    /// @param newConfigManagerImplementation The new implementation address
    /// @param instanceId The current instance id at which the implementation change was performed
    event ConfigManagerImplementationUpdated(
        address indexed newConfigManagerImplementation, uint256 indexed instanceId
    );

    /// @notice Emitted when the TVS implementation is updated
    /// @param newTVSImplementation The new implementation address
    /// @param instanceId The current instance id at which the implementation change was performed
    event TVSImplementationUpdated(address indexed newTVSImplementation, uint256 indexed instanceId);

    /// @notice Emitted when a new orchestrator instance is deployed
    /// @param instanceId The instance ID
    /// @param orchestrator The deployed orchestrator contract address
    /// @param orchestratorImplementationAddress The address of the orchestrator implementation
    event OrchestratorDeployed(
        uint256 indexed instanceId, address indexed orchestrator, address orchestratorImplementationAddress
    );

    /// @notice Get the current instance ID
    /// @return The current instance ID
    function getCurrentInstanceID() external view returns (uint256);

    /// @notice Get the orchestrator implementation address
    /// @return The orchestrator implementation address
    function getOrchestratorImplementation() external view returns (address);

    /// @notice Get the config manager implementation address
    /// @return The config manager implementation address
    function getConfigManagerImplementation() external view returns (address);

    /// @notice Get the TVS implementation address
    /// @return The TVS implementation address
    function getTVSImplementation() external view returns (address);

    /// @notice Sets the orchestrator implementation address
    /// @param newOrchestratorImplementation The new implementation address
    function setOrchestratorImplementation(address newOrchestratorImplementation) external;

    /// @notice Sets the config manager implementation address
    /// @param newConfigManagerImplementation The new implementation address
    function setConfigManagerImplementation(address newConfigManagerImplementation) external;

    /// @notice Sets the TVS implementation address
    /// @param newTVSImplementation The new implementation address
    function setTVSImplementation(address newTVSImplementation) external;

    /// @notice Deploy a new orchestrator instance with a TVS beacon
    /// @param owner The owner of the orchestrator contract
    /// @param staker The staker address for the orchestrator
    /// @param keeper The keeper of the orchestrator contract
    /// @param beneficiaryAddress The beneficiary address for rewards
    /// @param transferToListEnabled Whether the transfer to list is enabled
    /// @return deployment The deployment details
    /// @dev Assumes that TVS and orchestrator implementation are already deployed
    function deployOrchestrator(
        address owner,
        address staker,
        address keeper,
        address beneficiaryAddress,
        bool transferToListEnabled
    )
        external
        returns (Deployment memory deployment);
}
