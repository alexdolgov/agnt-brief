// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IUSNHyperlane
 * @notice Interface for USN token with Hyperlane cross-chain functionality
 */
interface IUSNHyperlane {
    /**
     * @notice Send tokens to another chain via Hyperlane
     * @dev Burns tokens on this chain and mints on destination via Hyperlane mailbox
     * @param _destinationDomain The Hyperlane domain ID of the destination chain
     * @param _recipient The recipient address on the destination chain (as bytes32)
     * @param _amount The amount of tokens to send
     */
    function sendTokensViaHyperlane(
        uint32 _destinationDomain,
        bytes32 _recipient,
        uint256 _amount
    ) external payable;
    
    /**
     * @notice Get the Hyperlane mailbox address
     * @return The mailbox contract address
     */
    function mailbox() external view returns (address);
    
    /**
     * @notice Check if Hyperlane is enabled
     * @return True if Hyperlane transfers are enabled
     */
    function hyperlaneEnabled() external view returns (bool);
    
    /**
     * @notice Get the remote token address for a domain
     * @param domain The Hyperlane domain ID
     * @return The remote token address (as bytes32)
     */
    function remoteTokens(uint32 domain) external view returns (bytes32);
}


