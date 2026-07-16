// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.27;

import { Ownable } from "solady/src/auth/Ownable.sol";

import { BaseBundleTokenAnnualFees } from "../base/BaseBundleTokenAnnualFees.sol";
import { BaseBundleToken } from "../base/BaseBundleToken.sol";
import { WhitelistedAssets } from "../base/WhitelistedAssets.sol";
import { Asset } from "../Structures.sol";
import { IxGoldBundleStorage } from "../interfaces/IxGoldBundleStorage.sol";

/// @notice Thrown when the provided array's size reached maximum.
/// @param length The size of array.
error MaxArraySizeReached(uint256 length);

/**
 * @title xGold
 * @notice This contract represents a bundle of xGold, where 1 token represents 1 ounce, consisting of xGoldOz and xGoldKg.
 * @dev This contract extends BaseBundleTokenAnnualFees and WhitelistedAssets, allowing for asset management and fee tracking.
 * @author Swarm
 */
contract xGold is BaseBundleTokenAnnualFees, WhitelistedAssets, Ownable {
    /**
     * @notice Constructor to initialize the xGold contract.
     * @dev Initializes the token with a storage contract, token name, symbol, KYA, and owner.
     * @param _bundleStorage The address of the BundleStorage contract.
     * @param assets An array of whitelisted asset addresses.
     * @param _tokenKya The Know Your Asset (KYA) document or reference for the token.
     * @param _owner The address of the contract owner.
     */
    constructor(
        address _bundleStorage,
        address[] memory assets,
        string memory _tokenKya,
        address _owner
    ) BaseBundleToken(_bundleStorage, "xGold", "xGold", _tokenKya) WhitelistedAssets(assets) {
        _initializeOwner(_owner);
    }

    /**
     * @notice Adds new assets to the bundle from the proposer.
     * @dev The assets must be whitelisted before they can be added. Mints new bundle tokens based on the gold price.
     * @param _assets An array of `Asset` structs representing the assets to be added.
     */
    function addNewAssets(Asset[] calldata _assets) external {
        require(
            _assets.length <= IxGoldBundleStorage(bundleStorage).maxArraySize(),
            MaxArraySizeReached(_assets.length)
        );

        uint256 toMint;
        for (uint256 i = 0; i < _assets.length; ) {
            _onlyWhitelistedAsset(_assets[i].assetAddress);

            toMint += IxGoldBundleStorage(bundleStorage).getGoldPrice(_assets[i].assetAddress);

            unchecked {
                ++i;
            }
        }

        _updateAnnualFeesRate();

        mint_(msg.sender, toMint);

        _depositAssets(_assets);
    }

    /**
     * @notice Withdraws assets from the bundle to the sender.
     * @dev The assets must be whitelisted. Burns the corresponding amount of bundle tokens.
     * @param _assets An array of `Asset` structs representing the assets to be withdrawn.
     */
    function withdrawAssets(Asset[] calldata _assets) external {
        require(
            _assets.length <= IxGoldBundleStorage(bundleStorage).maxArraySize(),
            MaxArraySizeReached(_assets.length)
        );

        uint256 toBurn;
        for (uint256 i = 0; i < _assets.length; ) {
            _onlyWhitelistedAsset(_assets[i].assetAddress);

            toBurn += IxGoldBundleStorage(bundleStorage).getGoldPrice(_assets[i].assetAddress);

            unchecked {
                ++i;
            }
        }

        _updateAnnualFeesRate();

        burn_(msg.sender, toBurn);

        _withdrawAssets(_assets);
    }

    /**
     * @notice Dissolves the bundle, effectively closing it.
     * @dev Calls the `_dissolve` function from the inherited BaseBundleTokenAnnualFees contract.
     */
    function dissolve() external {
        _dissolve();
    }

    /**
     * @notice Whitelists new assets to be used within the bundle.
     * @dev Only the contract owner can whitelist assets.
     * @param assets An array of asset addresses to be whitelisted.
     */
    function whitelistAssets(address[] calldata assets) external onlyOwner {
        require(assets.length <= IxGoldBundleStorage(bundleStorage).maxArraySize(), MaxArraySizeReached(assets.length));

        _whitelistAssets(assets);
    }

    /**
     * @notice Removes an asset from the whitelist.
     * @dev Only the contract owner can remove a whitelisted asset.
     * @param asset The address of the asset to remove from the whitelist.
     */
    function removeWhitelistedAsset(address asset) external onlyOwner {
        _removeWhitelistedAsset(asset);
    }

    /**
     * @notice Changes the BundleStorage contract associated with this bundle.
     * @dev Only the contract owner can change the bundle storage.
     * @param newBundleStorage The address of the new BundleStorage contract.
     */
    function changeBundleStorage(address newBundleStorage) external onlyOwner {
        _changeBundleStorage(newBundleStorage);
    }

    /**
     * @notice Updates the Know Your Asset (KYA) document for the bundle.
     * @dev Only the contract owner can update the KYA document.
     * @param kya The new KYA document or reference.
     */
    function updateKYA(string calldata kya) external onlyOwner {
        _updateKYA(kya);
    }
}
