// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// @title IRegistrar
/// @author Stake DAO
/// @notice Interface for the Registrar contract that manages whitelisted deployment targets per protocol.
interface IRegistrar {
    /// @notice Emitted when a deployment target is whitelisted or unwhitelisted for a protocol.
    /// @param protocolId Protocol ID (bytes4)
    /// @param target     Address (gauge/asset) that is whitelisted or unwhitelisted
    /// @param whitelisted    Boolean if whitelisted
    event WhitelistedTarget(bytes4 indexed protocolId, address indexed target, bool whitelisted);

    /// @notice Set or unset an allowed target for a given protocol.
    /// @param protocolId ID of the protocol (bytes4)
    /// @param target     Address to allow/disallow
    /// @param allowed    Boolean if allowed
    function setAllowed(bytes4 protocolId, address target, bool allowed) external;

    /// @notice Check if a target is whitelisted for a given protocol.
    /// @param protocolId Protocol ID (bytes4)
    /// @param target     Address to check
    /// @return whitelisted   True if whitelisted, false if not whitelisted
    function isWhitelisted(bytes4 protocolId, address target) external view returns (bool whitelisted);
}
