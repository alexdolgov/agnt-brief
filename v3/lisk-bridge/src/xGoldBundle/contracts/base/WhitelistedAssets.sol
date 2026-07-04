// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

/// @notice Error thrown when a non-whitelisted asset is used.
/// @param notWhitelistedAsset The address of the asset that is not whitelisted.
error NotWhitelisted(address notWhitelistedAsset);

/// @notice Thrown when the asset is not found in a list.
/// @param assetAddress The address of the asset that was not found.
error AssetNotFound(address assetAddress);

/**
 * @title WhitelistedAssets
 * @notice This abstract contract manages the list of whitelisted assets. It ensures that only approved assets are used in transactions.
 * @dev Provides internal functions for adding and removing assets from the whitelist and verifying if assets are whitelisted.
 * This contract is intended to be inherited by other contracts that need asset whitelisting functionality.
 * @author Swarm
 */
abstract contract WhitelistedAssets {
    /// @dev Emitted when a new asset is added to the whitelist.
    /// @param asset The address of the asset that was whitelisted.
    event AssetWhitelisted(address asset);

    /// @dev Emitted when an asset is removed from the whitelist.
    /// @param asset The address of the asset that was removed from the whitelist.
    event AssetRemovedFromWhitelist(address asset);

    /// @notice The list of currently whitelisted asset addresses.
    address[] public whitelistedAssets;

    /**
     * @notice Constructor to initialize the list of whitelisted assets.
     * @dev Automatically whitelists a set of assets upon contract deployment.
     * @param assets An array of asset addresses to be whitelisted at the time of deployment.
     */
    constructor(address[] memory assets) {
        _whitelistAssets(assets);
    }

    /**
     * @notice Internal function to whitelist multiple assets.
     * @dev Adds each asset from the `assets` array to the list of whitelisted assets.
     * @param assets An array of asset addresses to be whitelisted.
     */
    function _whitelistAssets(address[] memory assets) internal virtual {
        for (uint256 i = 0; i < assets.length; ++i) {
            whitelistedAssets.push(assets[i]);

            emit AssetWhitelisted(assets[i]);
        }
    }

    /**
     * @notice Internal function to remove an asset from the whitelist.
     * @dev Removes the specified asset from the list of whitelisted assets by replacing it with the last asset in the array and reducing the array length.
     * @param asset The address of the asset to be removed from the whitelist.
     */
    function _removeWhitelistedAsset(address asset) internal virtual {
        address[] memory assets = whitelistedAssets;

        uint256 index = assets.length;
        for (uint256 i = 0; i < assets.length; ++i) {
            if (assets[i] == asset) {
                index = i;
                break;
            }
        }

        require(index < assets.length, AssetNotFound(asset));

        whitelistedAssets[index] = assets[assets.length - 1];
        whitelistedAssets.pop();

        emit AssetRemovedFromWhitelist(asset);
    }

    /**
     * @notice Internal view function to check if an asset is whitelisted.
     * @dev Reverts with `NotWhitelisted` if the asset is not in the list of whitelisted assets.
     * @param asset The address of the asset to check.
     */
    function _onlyWhitelistedAsset(address asset) internal view virtual {
        address[] memory _whitelistedAssets = whitelistedAssets;

        bool whitelisted;
        for (uint256 i = 0; i < _whitelistedAssets.length; ++i) {
            if (_whitelistedAssets[i] == asset) {
                whitelisted = true;
                break;
            }
        }

        require(whitelisted, NotWhitelisted(asset));
    }

    /**
     * @notice Internal view function to check if multiple assets are whitelisted.
     * @dev Iterates through the list of provided assets and checks if each asset is whitelisted using `_onlyWhitelistedAsset`.
     * @param assets An array of asset addresses to be checked.
     */
    function _onlyWhitelistedAssets(address[] calldata assets) internal view virtual {
        for (uint256 i = 0; i < assets.length; ++i) {
            _onlyWhitelistedAsset(assets[i]);
        }
    }
}
