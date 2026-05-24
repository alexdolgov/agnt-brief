// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IAbridge, IAbridgeMessageHandler } from "./IAbridge.sol";

/// @title AbridgeMessageHandler
/// @notice Abstract contract for handling messages received through the Abridge bridge
abstract contract AbridgeMessageHandler is IAbridgeMessageHandler {
    /// @notice The Abridge contract for bridging messages
    IAbridge private _abridge;

    /// @dev Emitted when the Abridge contract address is updated
    /// @param oldBridge The address of the previous Abridge contract
    /// @param newBridge The address of the new Abridge contract
    event AbridgeUpdated(address indexed oldBridge, address indexed newBridge);

    /// @dev Emitted when a route is updated for a sender
    /// @param sender The address of the sender
    /// @param allowed Whether the sender is allowed to use the route
    event RouteUpdated(address indexed sender, bool allowed);

    /// @dev Error thrown when a function is not called from the Abridge contract
    error NotCalledFromAbridge();

    /// @dev Modifier to ensure the function is called only from the Abridge contract
    modifier onlyAbridge() {
        if (msg.sender != address(_abridge)) {
            revert NotCalledFromAbridge();
        }
        _;
    }

    /// @dev Constructor to initialize the AbridgeMessageHandler
    /// @param abridge_ The address of the Abridge contract
    constructor(address abridge_) {
        _abridge = IAbridge(abridge_);
    }

    /// @notice Get the current Abridge contract
    /// @return The IAbridge interface of the current Abridge contract
    function abridge() public view returns (IAbridge) {
        return _abridge;
    }

    /// @dev Internal function to update the Abridge contract
    /// @param bridge The new Abridge contract
    function _setAbridge(address bridge) internal {
        address oldBridge = address(_abridge);
        _abridge = IAbridge(bridge);
        emit AbridgeUpdated(oldBridge, address(bridge));
    }

    /// @dev Internal function to update a route for a sender
    /// @param sender The address of the sender
    /// @param allowed Whether the sender is allowed to use the route
    function _updateRoute(address sender, bool allowed) internal {
        _abridge.updateRoute(sender, allowed);
        emit RouteUpdated(sender, allowed);
    }
}
