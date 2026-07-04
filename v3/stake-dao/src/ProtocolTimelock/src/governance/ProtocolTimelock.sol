// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";
import {IProtocolController} from "src/interfaces/IProtocolController.sol";

/// @title ProtocolTimelock.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice ProtocolTimelock is a governance timelock contract that owns the ProtocolController and enforces time-delayed execution of protocol changes.
///         It is based on OpenZeppelin's battle-tested TimelockController, providing a secure mechanism for decentralized governance.
///
///         The contract implements two distinct roles with different powers:
///         - PROPOSER_ROLE: Can schedule operations that must wait for the minimum delay (typically governance/multisig)
///         - EXECUTOR_ROLE: Can execute operations after the delay has passed (can be set to address(0) for permissionless execution)
///         - GUARDIAN_ROLE: Can immediately execute emergency security functions (pause, unpause, shutdown, unshutdown) without delay
///
///         Standard governance operations (e.g., changing strategy, updating parameters) require:
///         1. Schedule the operation with a minimum delay (e.g., 2 days)
///         2. Wait for the delay period (allows community review and reaction time)
///         3. Execute the operation
///
///         Emergency guardian operations (pause, unpause, shutdown, unshutdown) can be executed immediately by guardians,
///         enabling rapid response to security threats without bypassing governance for parameter changes.
///
///         Batch operations are supported, allowing atomic execution of multiple protocol changes simultaneously.
contract ProtocolTimelock is TimelockController {
    //////////////////////////////////////////////////////
    // --- CONSTANTS & IMMUTABLES
    //////////////////////////////////////////////////////

    /// @notice Role identifier for guardians who can execute emergency security functions.
    /// @dev    Guardians have limited powers: they can pause/unpause protocols and shutdown/unshutdown gauges,
    ///         but cannot execute arbitrary governance operations or bypass the timelock for parameter changes.
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");

    /// @notice Reference to the ProtocolController that this timelock owns.
    /// @dev    Immutable to prevent changing the controlled contract after deployment.
    ///         The timelock must be the owner of this ProtocolController to execute operations on it.
    IProtocolController public immutable protocolController;

    //////////////////////////////////////////////////////
    // --- EVENTS
    //////////////////////////////////////////////////////

    /// @notice Emitted when a guardian is added.
    /// @param  guardian The address granted guardian role.
    event GuardianAdded(address indexed guardian);

    /// @notice Emitted when a guardian is removed.
    /// @param  guardian The address revoked from guardian role.
    event GuardianRemoved(address indexed guardian);

    //////////////////////////////////////////////////////
    // --- ERRORS
    //////////////////////////////////////////////////////

    /// @notice Thrown when a zero address is provided where a valid address is required.
    error ZeroAddress();

    /// @notice Thrown when a wrong protocol ID is provided.
    error WrongProtocolId();

    /// @notice Thrown when the protocol controller is not owned by the timelock.
    error OwnershipAlreadyTransferred();

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes the timelock with roles and associates it with a ProtocolController.
    /// @param  minDelay The minimum delay in seconds for operations (e.g., 2 days = 172800 seconds).
    /// @param  proposers Array of addresses that can schedule operations (typically governance address).
    /// @param  executors Array of addresses that can execute ready operations (address(0) allows anyone).
    /// @param  admin The address that can manage roles (should typically renounce after setup).
    /// @param  _protocolController The ProtocolController address that this timelock will own.
    /// @custom:reverts ZeroAddress if protocolController is address(0).
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors,
        address admin,
        address _protocolController
    ) TimelockController(minDelay, proposers, executors, admin) {
        require(admin != address(0), ZeroAddress());
        require(_protocolController != address(0), ZeroAddress());

        protocolController = IProtocolController(_protocolController);
    }


    /// @notice Initializes the timelock by accepting ownership of the protocol controller.
    /// @dev    Only callable by addresses with DEFAULT_ADMIN_ROLE.
    ///         Requires the protocol controller to be owned by the timelock.
    /// @custom:reverts OwnershipNotTransferred if the protocol controller is not owned by the timelock.
    function initialize() external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(Ownable2Step(address(protocolController)).owner() != address(this), OwnershipAlreadyTransferred());

        Ownable2Step(address(protocolController)).acceptOwnership();
    }

    //////////////////////////////////////////////////////
    // --- GUARDIAN MANAGEMENT
    //////////////////////////////////////////////////////

    /// @notice Adds a new guardian address.
    /// @param  guardian The address to grant guardian role.
    /// @dev    Only callable by addresses with DEFAULT_ADMIN_ROLE.
    ///         Guardians can execute emergency security functions immediately without timelock delay.
    /// @custom:reverts ZeroAddress if guardian is address(0).
    function addGuardian(address guardian) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(guardian != address(0), ZeroAddress());
        _grantRole(GUARDIAN_ROLE, guardian);
        emit GuardianAdded(guardian);
    }

    /// @notice Removes a guardian address.
    /// @param  guardian The address to revoke guardian role from.
    /// @dev    Only callable by addresses with DEFAULT_ADMIN_ROLE.
    function removeGuardian(address guardian) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(GUARDIAN_ROLE, guardian);
        emit GuardianRemoved(guardian);
    }

    //////////////////////////////////////////////////////
    // --- EMERGENCY SECURITY FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Immediately pauses deposits for a specific protocol.
    /// @param  protocolId The protocol identifier to pause (e.g., bytes4(keccak256("CURVE"))).
    /// @dev    Only callable by addresses with GUARDIAN_ROLE.
    ///         This function bypasses the timelock delay for emergency response.
    ///         Withdrawals remain functional during pause to protect user funds.
    ///         Directly calls ProtocolController.pause(protocolId).
    function pause(bytes4 protocolId) external onlyRole(GUARDIAN_ROLE) {
        require(protocolController.locker(protocolId) != address(0), WrongProtocolId());

        protocolController.pause(protocolId);
    }

    /// @notice Immediately unpauses deposits for a specific protocol.
    /// @param  protocolId The protocol identifier to unpause.
    /// @dev    Only callable by addresses with GUARDIAN_ROLE.
    ///         This function bypasses the timelock delay for emergency response.
    ///         Directly calls ProtocolController.unpause(protocolId).
    function unpause(bytes4 protocolId) external onlyRole(GUARDIAN_ROLE) {
        require(protocolController.locker(protocolId) != address(0), WrongProtocolId());

        protocolController.unpause(protocolId);
    }

    /// @notice Immediately shuts down a specific gauge, preventing new deposits and withdrawing all funds.
    /// @param  gauge The gauge address to shutdown.
    /// @dev    Only callable by addresses with GUARDIAN_ROLE.
    ///         This function bypasses the timelock delay for emergency response.
    ///         Shutdown prevents new deposits while allowing users to withdraw their funds.
    ///         Directly calls ProtocolController.shutdown(gauge).
    /// @custom:reverts ZeroAddress if gauge is address(0).
    function shutdown(address gauge) external onlyRole(GUARDIAN_ROLE) {
        require(gauge != address(0), ZeroAddress());
        protocolController.shutdown(gauge);
    }

    /// @notice Immediately resumes a previously shutdown gauge.
    /// @param  gauge The gauge address to unshutdown.
    /// @dev    Only callable by addresses with GUARDIAN_ROLE.
    ///         This function bypasses the timelock delay for emergency response.
    ///         Allows a previously shutdown gauge to resume normal operations.
    ///         Directly calls ProtocolController.unshutdown(gauge).
    /// @custom:reverts ZeroAddress if gauge is address(0).
    function unshutdown(address gauge) external onlyRole(GUARDIAN_ROLE) {
        require(gauge != address(0), ZeroAddress());
        protocolController.unshutdown(gauge);
    }

    //////////////////////////////////////////////////////
    // --- VIEW FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Checks if an address has the guardian role.
    /// @param  account The address to check.
    /// @return _ True if the address is a guardian, false otherwise.
    function isGuardian(address account) external view returns (bool) {
        return hasRole(GUARDIAN_ROLE, account);
    }
}