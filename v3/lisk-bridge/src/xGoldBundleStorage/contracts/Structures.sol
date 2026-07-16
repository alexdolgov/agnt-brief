// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.27;

/// @notice Error thrown when a zero address is provided where it's not allowed.
error ZeroAddressPasted();

/// @notice Error thrown when a zero amount is provided where it's not allowed.
error ZeroAmountPasted();

/// @notice Error thrown when the size of an array is invalid.
/// @param arrayLength The length of the array that caused the error.
error ArraySizeError(uint256 arrayLength);

/**
 * @title X Gold Types Enum
 * @notice Enumeration representing different types of gold that can be used.
 * @dev Enum representing different gold standards.
 */
enum XGoldType {
    NoType, // Represents an unknown or no gold type.
    Ounce, // Represents gold measured in ounces.
    Kilo // Represents gold measured in kilograms.
}

/**
 * @title Asset Types Enum
 * @notice Defines the different types of assets that can be used in the system.
 * @dev Enum representing various asset types supported in DOTC (Decentralized Over-The-Counter) trades.
 * @author Swarm
 * - NoType: Represents a state with no specific asset type.
 * - ERC20: Represents an ERC20 token asset.
 * - ERC721: Represents an ERC721 token (NFT) asset.
 * - ERC1155: Represents an ERC1155 token (multi-token standard) asset.
 */
enum AssetType {
    NoType, // No specific asset type selected.
    ERC721, // ERC721 standard asset (NFT).
    ERC1155 // ERC1155 standard asset (multi-token).
}

/**
 * @title Fees
 * @notice Struct representing various fee types related to a bundle token.
 * @dev This struct holds the information about different fees applicable during operations with the bundle token.
 */
struct Fees {
    address feeReceiver; // The address where collected fees will be sent.
    uint256 depositFeePercent; // Percentage of tokens minted and sent to the fee receiver upon bundle creation.
    uint256 withdrawalFeePercent; // Percentage of tokens sent to the fee receiver upon asset withdrawal from the bundle.
    uint256 annualFeePercent; // Annual percentage fees applied to the bundle.
}

/**
 * @title Asset
 * @notice Struct representing an asset within a bundle, which can be a fungible or non-fungible asset.
 * @dev This struct stores the details of the asset, including its type and metadata.
 */
struct Asset {
    address assetAddress; // The address of the asset's smart contract (e.g., NFT contract or ERC1155 contract).
    uint256 tokenId; // The unique identifier of the asset in the contract.
    uint256 amount; // The quantity of the asset (1 for NFTs, higher values for fungible assets).
    AssetType assetType; // The type of asset (either ERC721 or ERC1155).
}

/**
 * @title BundleProperties
 * @notice Struct representing the properties of a bundle token.
 * @dev This struct holds essential metadata for the bundle token.
 */
struct BundleProperties {
    string name; // Name of the bundle token.
    string symbol; // Symbol representing the bundle token.
    string tokenKya; // The Know Your Asset (KYA) document or reference for the bundle token.
}
