// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SliverConfig
/// @notice Stores per-position Growth mode preference for sliver rebalancing
/// @dev Inverted storage: growthModeDisabled defaults to false (Growth ON for all positions)
///      Growth mode compounds ALL trading fees via sliver rebalance instead of harvesting.
///      Positions that opt out fall back to standard Snuggle compounding behavior.
interface ISliverVault {
    function ownerOf(uint256 tokenId) external view returns (address);
}

contract SliverConfig {
    ISliverVault public immutable vault;
    address public immutable vaultAddress;

    /// @dev Inverted: false (default) = Growth ON, true = Growth OFF
    mapping(uint256 => bool) public growthModeDisabled;

    event GrowthModeUpdated(uint256 indexed tokenId, bool enabled);

    error NotPositionOwner();
    error NotVault();

    constructor(address _vault) {
        vault = ISliverVault(_vault);
        vaultAddress = _vault;
    }

    /// @notice Check if a position has Growth mode enabled
    /// @param tokenId The position NFT token ID
    /// @return true if Growth mode is active (default for all positions)
    function isGrowthMode(uint256 tokenId) external view returns (bool) {
        return !growthModeDisabled[tokenId];
    }

    /// @notice Toggle Growth mode for a position
    /// @dev Only the position owner can change this setting
    /// @param tokenId The position NFT token ID
    /// @param enabled true = Growth mode ON, false = Growth mode OFF
    function setGrowthMode(uint256 tokenId, bool enabled) external {
        if (msg.sender != vault.ownerOf(tokenId)) revert NotPositionOwner();
        growthModeDisabled[tokenId] = !enabled;
        emit GrowthModeUpdated(tokenId, enabled);
    }

    /// @notice Copy Growth mode setting from old position to new position during rebalance
    /// @dev Only callable by the vault (via delegatecall library). Preserves user preference
    ///      across rebalances where old NFT is burned and new NFT is minted.
    ///      Optimized: only writes if user explicitly opted out (saves ~7K gas for default case).
    ///      Cleans up old entry to prevent storage bloat from burned tokenIds.
    /// @param oldTokenId The position being rebalanced (will be burned)
    /// @param newTokenId The newly minted position
    function copyMode(uint256 oldTokenId, uint256 newTokenId) external {
        if (msg.sender != vaultAddress) revert NotVault();
        bool disabled = growthModeDisabled[oldTokenId];
        if (disabled) {
            // User explicitly opted out — preserve their preference on new position
            growthModeDisabled[newTokenId] = true;
        }
        // If !disabled (Growth ON, the default), new position already defaults to Growth ON
        // No SSTORE needed — saves gas for the 99% common case

        // Clean up burned position's entry (gas refund for clearing storage)
        if (disabled) {
            delete growthModeDisabled[oldTokenId];
        }
    }
}
