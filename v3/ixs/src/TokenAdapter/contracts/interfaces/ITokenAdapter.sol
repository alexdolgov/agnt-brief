// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface ITokenAdapter {
    /// @dev Emitted when adapter contract is paused.
    event TokenAdapterPaused();

    /// @dev Emitted when adapter contract is unpaused.
    event TokenAdapterUnpaused();

    /// @dev Emitted when new token bridge is set.
    /// @param tokenBridge The address of the new token bridge contract.
    event LogSetTokenBridge(address tokenBridge);

    /// @dev Emitted when a new Wormhole Core contract is set.
    /// @param wormhole The address of the new token core contract.
    event LogSetWormholeCore(address wormhole);

    /// @dev Emitted when a new IXS token is set.
    /// @param ixsToken The address of the new IXS token contract.
    event LogSetIxsToken(address ixsToken);

    /// @dev Emitted when a new treasury is set.
    /// @param treasury The address of the new treasury wallet.
    event LogSetTreasury(address treasury);

    /// @dev Emitted when a new source token is whitelisted.
    /// @param token The address of the new source token to be whitelisted.
    /// @param wrappedToken The address of the wormhole-wrapped version of the token.
    event LogWhitelistWrappedToken(address token, address wrappedToken);

    /// @dev Error thrown when a pause operation is performed on already paused contract.
    error TokenAdapterIsPaused();

    /// @dev Error thrown when an unpause operation is performed on already unpaused contract.
    error TokenAdapterIsNotPaused();

    /// @dev Error thrown when an invalid address is provided to the function.
    error TokenAdapterInvalidAddress(address target);

    /// @dev Error thrown when an unauthorized entity is accessing a function.
    error TokenAdapterOnlyAuthorized();

    /// @notice The Wormhole Token Bridge address.
    /// @dev This value represents the address of the Wormhole Token Bridge contract.
    /// @return The Wormhole Token Bridge address.
    function tokenBridge() external view returns (address);

    /// @notice The Wormhole Core address.
    /// @dev This value represents the address of the Wormhole Core contract.
    /// @return The Wormhole Core address.
    function wormhole() external view returns (address);

    /// @notice The IXS Token contract address.
    /// @dev This value represents the address of the IXS Token (native) contract.
    /// @return The IXS Token contract address.
    function ixsToken() external view returns (address);

    /// @notice The address of the treasury.
    /// @dev This value represents the address of the multisig wallet which holds the wormhole-wrapped tokens.
    /// @return The address of the treasury.
    function treasury() external view returns (address);

    /// @notice Checks if adapter is paused.
    /// @dev This flag indicates whether adapter is paused or not.
    /// @return True if contract is paused, false otherwise.
    function paused() external view returns (bool);

    /// @notice Checks if source token can be bridged through adapter.
    /// @dev This flag indicates whether token is whitelisted or not.
    /// @param sourceToken The address of the token from the source chain.
    /// @return True if source token is whitelisted, false otherwise.
    function isWhitelisted(address sourceToken) external view returns (bool);

    /// @notice Pauses the adapter.
    /// @dev This function transfers the adapter into 'paused' state. Once paused, the adapter
    /// cannot be used for initiating/completing bridging transfers. This operation can be performed
    /// only by the watchdog or super-admin.
    function pause() external;

    /// @notice Unpauses the adapter.
    /// @dev This function will resume activity on adapter that was previously paused.
    /// This operation can be performed only by the super-admin.
    function unpause() external;
}
