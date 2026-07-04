// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IProtocolController} from "src/interfaces/IProtocolController.sol";

/// @title Registrar
/// @author Stake DAO
/// @notice Registrar contract manages a list of whitelisted deployment targets (gauges/assets) per protocol.
contract Registrar {
    /// @notice Protocol Controller address.
    address public immutable PROTOCOL_CONTROLLER;

    /// @notice Mapping: protocolId => target => isWhitelisted
    mapping(bytes4 => mapping(address => bool)) public whitelistedTargets;

    /// @notice Error thrown when the caller is not allowed to set allowed targets.
    error OnlyAllowed();

    /// @notice Emitted when a deployment target is whitelisted or unwhitelisted for a protocol.
    /// @param protocolId Protocol ID (bytes4)
    /// @param target     Address (gauge/asset) that is whitelisted or unwhitelisted
    /// @param whitelisted    Boolean if whitelisted
    event WhitelistedTarget(bytes4 indexed protocolId, address indexed target, bool whitelisted);

    /// @notice Modifier to ensure only authorized addresses can modify the whitelist.
    modifier onlyAllowed() {
        require(IProtocolController(PROTOCOL_CONTROLLER).allowed(address(this), msg.sender, msg.sig), OnlyAllowed());
        _;
    }

    /// @param _protocolController Address of the ProtocolController contract
    constructor(address _protocolController) {
        require(_protocolController != address(0), "Zero ProtocolController");
        PROTOCOL_CONTROLLER = _protocolController;
    }

    /// @notice Set or unset an allowed target for a given protocol.
    /// @param protocolId ID of the protocol (bytes4)
    /// @param target     Address to allow/disallow
    /// @param allowed    Boolean if allowed
    function setAllowed(bytes4 protocolId, address target, bool allowed) external onlyAllowed {
        whitelistedTargets[protocolId][target] = allowed;
        emit WhitelistedTarget(protocolId, target, allowed);
    }

    /// @notice Check if a target is whitelisted for a given protocol.
    /// @param protocolId Protocol ID (bytes4)
    /// @param target     Address to check
    /// @return whitelisted   True if whitelisted, false if not whitelisted
    function isWhitelisted(bytes4 protocolId, address target) external view returns (bool whitelisted) {
        return whitelistedTargets[protocolId][target];
    }
}
