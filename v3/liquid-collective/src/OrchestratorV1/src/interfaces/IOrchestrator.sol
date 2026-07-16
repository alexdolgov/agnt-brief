// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

/// @title Orchestrator Interface
/// @author Alluvial Finance Inc.
/// @notice Interface for the Orchestrator contract
interface IOrchestrator {
    /// @notice Struct for mapping roles to an account
    /// @param account The account to map the roles to
    /// @param roles The roles to map to the account
    struct RoleMapping {
        address account;
        bytes32[] roles;
    }

    /// @notice Error thrown when a validator set is attempted to be transferred
    ///         to a non-transferrable address
    error NoTransferToRole();

    /// @notice Error thrown when functions which are not allowed in paused state are called
    error OrchestratorIsPaused();

    /// @notice Error thrown when functions which are not allowed in unpaused state are called
    error OrchestratorIsNotPaused();

    /// @notice Error thrown when a zero address is used
    error InvalidZeroAddress();

    /// @notice Raised when there is an attempt to revoke, renounce or grant DEFAULT_ADMIN_ROLE outside the
    ///         changeOwner function
    error InvalidOperation();

    /// @notice The system is now paused
    event Paused();

    /// @notice The system is now unpaused
    event Unpaused();

    /// @notice Event that is emitted when a user deposits ETH
    /// @param user The address of the user who deposited ETH
    /// @param amount The amount of ETH
    event ETHDeposited(address indexed user, uint256 amount);

    /// @notice Event that is emitted when a user with necessary role withdraws ETH
    /// @param sender The address of the user who withdrew ETH
    /// @param destination The address of the user withdrawn ETH was sent to
    /// @param amount The amount of ETH
    event ETHWithdrawn(address indexed sender, address indexed destination, uint256 amount);

    /// @notice Event that is emitted when the beneficiary address stored on the orchestrator is updated
    /// @param oldBeneficiary The address of the old beneficiary
    /// @param newBeneficiary The address of the new beneficiary
    event BeneficiaryUpdated(address indexed oldBeneficiary, address indexed newBeneficiary);

    /// @notice Event that is emitted when the config manager address stored on the orchestrator is updated
    /// @param oldConfigManager The address of the old config manager
    /// @param newConfigManager The address of the new config manager
    event ConfigManagerAddressUpdated(address indexed oldConfigManager, address indexed newConfigManager);

    /// @notice Event that is emitted when the TVS Beacon is updated
    /// @param newTVSBeacon The address of the new TVS Beacon
    event TVSBeaconUpdated(address indexed newTVSBeacon);

    /// @notice Event that is emitted when the orchestrator owner is changed
    /// @param oldOwner The address of the old owner
    /// @param newOwner The address of the new owner
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    /// @notice Event that is emitted when a user requests a withdrawal
    /// @param user The address of the user who requested the withdrawal
    /// @param amount The amount of ETH
    event ExitsRequested(address indexed user, uint256 amount);

    /// @notice Event that is emitted when the transfer to list enabled state is updated
    /// @param enabled The value to which the transfer to list enabled is set
    event TransferToListEnabledUpdated(bool enabled);

    /// @notice Pauses the contract
    function pause() external;

    /// @notice Unpauses the contract
    function unpause() external;

    /// @notice A function which allows a user to deposit funds into the contract
    function deposit() external payable;

    // ------------------------ Withdraw/Exit functions ------------------------ //
    /// @notice Emits an event to signal that withdraw is requested
    /// @dev This function is introduced for triggering off-chain exits
    /// @param amount The amount to withdraw
    function requestExits(uint256 amount) external;

    /// @notice Function that allows a user to withdraw ETH from the contract
    /// @dev    This is introduced in the case where the beneficiary of the ETH is set as
    ///         the contract itself.
    /// @param amount The amount of ETH to withdraw
    /// @param destination The address to withdraw the ETH to
    function withdrawETH(uint256 amount, address destination) external;

    /// @notice Function that allows a user to sweep and transfer validator sets
    /// @param validatorSets The validator sets to sweep and transfer
    /// @param newBeneficiary The new beneficiary of the validator sets
    /// @param newOwner The new owner of the validator sets
    /// @param requestValidatorExists Whether the validator are exited or not
    function sweepAndTransferTVSs(
        address[] calldata validatorSets,
        address newBeneficiary,
        address newOwner,
        bool requestValidatorExists
    )
        external;

    /// @notice Function that transfers DEFAULT_ADMIN_ROLE of the Orchestrator contract to a new address
    /// @dev    This would only be callable by the DEFAULT_ADMIN_ROLE of the Orchestrator contract
    /// @param to The address to transfer the role to
    function changeOwner(address to) external;

    /// @notice Function that enables or disables the transfer to list
    /// @param state Whether to enable or disable the transfer to list
    function setTransferToListEnabled(bool state) external;

    /// @notice Function that returns the transfer to list enabled state
    /// @return The transfer to list enabled state
    function isTransferToListEnabled() external view returns (bool);

    /// @notice Create validator sets
    /// @param count Number of validator sets to create
    function createValidatorSets(uint256 count) external returns (address[] memory);

    /// @notice Sets the beneficiary on the Orchestrator
    /// @param beneficiary The new beneficiary address
    function setBeneficiary(address beneficiary) external;

    /// @notice Sets the beneficiary on the Orchestrator and propagates the change to the TVSs
    /// @param beneficiary The new beneficiary address
    /// @param validatorSets The list of validator sets to set the beneficiary for
    /// @dev Acts as setBeneficiary and setBeneficiaryForTVSs in one function
    /// @dev Acts like setBeneficiary if validatorSets is empty
    function setBeneficiaryAndSyncToTVSs(address beneficiary, address[] calldata validatorSets) external;

    /// @notice Returns the beneficiary address
    /// @return The beneficiary address
    function getBeneficiary() external view returns (address);

    /// @notice Sets the config manager address on the Orchestrator
    /// @param configManagerAddress The new config manager address
    function setConfigManagerAddress(address configManagerAddress) external;

    /// @notice Returns the config manager address
    /// @return The config manager address
    function getConfigManagerAddress() external view returns (address);

    /// @notice Sets the TVS Beacon implementation
    /// @param tvsBeaconImplementation The new TVS Beacon implementation
    function setTVSBeaconImplementation(address tvsBeaconImplementation) external;

    /// @notice Returns the TVS Beacon
    /// @return The TVS Beacon
    function getTVSBeacon() external view returns (address);

    /// @notice Grants roles to an account
    /// @param account The account to grant the roles to
    /// @param roles The roles to grant to the account
    function grantRoles(address account, bytes32[] calldata roles) external;

    /// @notice Revokes roles from an account
    /// @param account The account to revoke the roles from
    /// @param roles The roles to revoke from the account
    function revokeRoles(address account, bytes32[] calldata roles) external;

    /// @notice Grants and revokes roles
    /// @param grantRoles Array of roles to be granted
    /// @param revokeRoles Array of roles to be revoked
    function grantAndRevokeRoles(RoleMapping[] calldata grantRoles, RoleMapping[] calldata revokeRoles) external;
}
