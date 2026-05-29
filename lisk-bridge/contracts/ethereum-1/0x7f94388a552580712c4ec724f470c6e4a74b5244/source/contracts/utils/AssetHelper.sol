//SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.27;

import { IERC721, IERC165 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { IERC1155 } from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

import { Asset, AssetType, ZeroAddressPasted } from "../Structures.sol";

/// @notice Thrown when the asset amount provided is incorrect.
/// @param assetAddress The address of the asset.
/// @param amount The incorrect amount of the asset.
error IncorrectAssetAmount(address assetAddress, uint256 amount);

/// @notice Thrown when not enough assets are sent during a transaction.
/// @param owner The owner of the assets.
/// @param assetAddress The address of the asset.
/// @param tokenId The ID of the token.
/// @param amount The amount sent, which is insufficient.
error NotEnoughAssetsSent(address owner, address assetAddress, uint256 tokenId, uint256 amount);

/// @notice Thrown when the provided address is not a contract.
/// @param notAContract The address that is not a contract.
error NotAContract(address notAContract);

/// @notice Thrown when the asset does not implement the correct interface.
/// @param assetAddress The address of the asset.
error NotAssetInterface(address assetAddress);

/// @notice Thrown when the asset is not found in a list.
/// @param assetAddress The address of the asset that was not found.
error AssetNotFound(address assetAddress);

/**
 * @title AssetHelper
 * @notice A utility library for handling and validating assets in bundles.
 * @dev This library includes functions for validating asset ownership, types, and performing percentage calculations.
 * It helps with asset validation and operations involving ERC721 and ERC1155 token standards.
 * @author Swarm
 */
library AssetHelper {
    /// @notice A constant used for percentage calculations (10000 represents 100.00%).
    uint256 public constant SCALING_FACTOR = 10000;

    /**
     * @notice Checks if an asset is valid for a given operation (e.g., proposal or withdrawal).
     * @dev Validates the ownership and type of the asset (ERC721 or ERC1155). Reverts if the asset is not valid.
     * @param asset The `Asset` structure to check.
     * @param assetOwner The address of the asset owner.
     * @return assetWithType The asset with its type assigned (ERC721 or ERC1155).
     */
    function checkAsset(Asset calldata asset, address assetOwner) external view returns (Asset memory assetWithType) {
        if (asset.assetAddress == address(0)) {
            revert ZeroAddressPasted();
        }

        // Check if the address is a contract.
        if (asset.assetAddress.code.length == 0) {
            revert NotAContract(asset.assetAddress);
        }

        assetWithType = asset;

        // Validate if the asset is an ERC721 token.
        if (IERC165(asset.assetAddress).supportsInterface(type(IERC721).interfaceId)) {
            require(asset.amount == 1, IncorrectAssetAmount(asset.assetAddress, asset.amount));
            require(
                IERC721(asset.assetAddress).ownerOf(asset.tokenId) == assetOwner,
                NotEnoughAssetsSent(assetOwner, asset.assetAddress, asset.tokenId, 1)
            );
            assetWithType.assetType = AssetType.ERC721;
        }
        // Validate if the asset is an ERC1155 token.
        else if (IERC165(asset.assetAddress).supportsInterface(type(IERC1155).interfaceId)) {
            require(
                IERC1155(asset.assetAddress).balanceOf(assetOwner, asset.tokenId) >= asset.amount,
                NotEnoughAssetsSent(assetOwner, asset.assetAddress, asset.tokenId, asset.amount)
            );
            assetWithType.assetType = AssetType.ERC1155;
        } else {
            revert NotAssetInterface(asset.assetAddress);
        }
    }

    /**
     * @notice Finds the index of an asset in an array of assets.
     * @dev Reverts with `AssetNotFound` if the asset is not found in the array.
     * @param asset The asset to find.
     * @param assets The array of assets to search in.
     * @return index The index of the asset in the array.
     */
    function findAssetIndex(Asset calldata asset, Asset[] calldata assets) public pure returns (uint256) {
        for (uint256 i = 0; i < assets.length; i++) {
            if (assets[i].assetAddress == asset.assetAddress && assets[i].tokenId == asset.tokenId) {
                return i;
            }
        }

        revert AssetNotFound(asset.assetAddress);
    }

    /**
     * @notice Calculates the percentage of a given value.
     * @dev Multiplies the value by the percentage and divides by the scaling factor (10000) for percentage calculations.
     * @param value The value to calculate the percentage of.
     * @param percentage The percentage to apply.
     * @return The calculated percentage of the value.
     */
    function calculatePercentage(uint256 value, uint256 percentage) public pure returns (uint256) {
        return (value * percentage) / SCALING_FACTOR;
    }
}
