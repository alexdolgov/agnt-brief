// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IStatusRead {
    /// @notice Flag indicating if staking is paused.
    function isTransferPaused() external view returns (bool);
    /// @notice return capacity.
    function capacity() external view returns (uint256);
    /// @notice return enabled status.
    function enabled() external view returns (bool);
}

interface ConfigEvents {
    /// @notice Emitted when a protocol bridging configuration has been updated.
    /// @param setterSelector The selector of the function that updated the configuration.
    /// @param setterSignature The signature of the function that updated the configuration.
    /// @param value The abi-encoded data passed to the function that updated the configuration. Since this event will
    /// only be emitted by setters, this data corresponds to the updated values in the protocol configuration.
    event BridgingConfigChanged(bytes4 indexed setterSelector, string setterSignature, bytes value);
}

interface PauserEvents {
    /// @notice Emitted when a flag has been updated.
    /// @param selector The selector of the flag that was updated.
    /// @param isPaused The new value of the flag.
    /// @param flagName The name of the flag that was updated.
    event FlagUpdated(bytes4 indexed selector, bool indexed isPaused, string flagName);
}

interface ProtocolEvents {
    /// @notice Emitted when a protocol configuration has been updated.
    /// @param setterSelector The selector of the function that updated the configuration.
    /// @param setterSignature The signature of the function that updated the configuration.
    /// @param value The abi-encoded data passed to the function that updated the configuration. Since this event will
    /// only be emitted by setters, this data corresponds to the updated values in the protocol configuration.
    event ProtocolConfigChanged(bytes4 indexed setterSelector, string setterSignature, bytes value);
}
