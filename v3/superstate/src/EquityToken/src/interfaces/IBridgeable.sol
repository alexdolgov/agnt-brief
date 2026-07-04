// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/**
 * @title IBridgeable
 * @notice Interface for cross-chain bridging functionality
 * @dev Defines the interface for burning tokens on one chain and minting on another
 */
interface IBridgeable {
    /**
     * @dev Returns whether a chain ID is supported for bridging
     * @param chainId The chain ID to check
     * @return True if the chain ID is supported, false otherwise
     */
    function isChainIdSupported(uint256 chainId) external view returns (bool);
    
    /**
     * @dev Sets support status for a specific chain ID
     * @param chainId The chain ID to update
     * @param supported Whether the chain ID should be supported
     */
    function setChainIdSupport(uint256 chainId, bool supported) external;
    
    /**
     * @notice Burns tokens from the caller to bridge to another chain
     * @dev If destination address on chainId isn't on allowlist, or chainID isn't supported, tokens burn to book entry.
     * @dev chainId as 0 indicates wanting to burn tokens to book entry, for use through the Superstate UI.
     * @param amount Amount of tokens to burn
     * @param ethDestinationAddress ETH address to send to on another chain
     * @param otherDestinationAddress Non-EVM addresses to send to on another chain
     * @param chainId Numerical identifier of destination chain to send tokens to
     */
    function bridge(
        uint256 amount,
        address ethDestinationAddress,
        string memory otherDestinationAddress,
        uint256 chainId
    ) external;
    
    /**
     * @dev Burns tokens from the caller to bridge to Superstate book entry
     * @param amount Amount of tokens to burn
     */
    function bridgeToBookEntry(uint256 amount) external;

    /// @notice Emitted when a chain ID's support status is updated
    event SetChainIdSupport(uint256 indexed chainId, bool oldSupported, bool newSupported);

    /// @dev Event emitted when the user wants to bridge their tokens to another chain or book entry
    event Bridge(
        address caller,
        address indexed src,
        uint256 amount,
        address indexed ethDestinationAddress,
        string otherDestinationAddress,
        uint256 chainId
    );
    
    /**
     * @dev Error thrown when destination chain is not supported
     */
    error BridgeChainIdDestinationNotSupported();
    
    /**
     * @dev Error thrown when both ETH and non-ETH destination addresses are provided
     */
    error TwoDestinationsInvalid();
    
    /**
     * @dev Error thrown when zero tokens are provided for bridging
     */
    error ZeroSuperstateTokensOutBridgeable();
    
    /**
     * @dev Error thrown when destination is set for bridge to book entry
     */
    error OnchainDestinationSetForBridgeToBookEntry();
    
    /**
     * @dev Error thrown for invalid function arguments
     */
    error BadArgsBridgeable();
}
