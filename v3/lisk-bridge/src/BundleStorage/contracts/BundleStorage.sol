// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { BaseBundleStorage } from "./base/BaseBundleStorage.sol";
import { ArraySizeError, ArraySizesDifferent } from "./Structures.sol";

/**
 * @title BundleStorage
 * @notice This contract manages the storage and handling bundle assets and their associated fees.
 * @dev Provides functions for adding, removing, and retrieving assets, along with managing fees.
 * @author Swarm
 */
contract BundleStorage is BaseBundleStorage {
    /// @notice Emitted when a new asset is added.
    /// @param newAsset The address of the newly added asset.
    /// @param bundle The address of the asset's bundle.
    event AssetAdded(address indexed newAsset, address bundle);

    /// @notice Emitted when an asset is removed.
    /// @param asset The address of the removed asset.
    event AssetRemoved(address indexed asset);

    /// @notice Mapping of asset addresses to their corresponding asset information.
    mapping(address asset => address bundle) public assetsBundle;

    /**
     * @notice Constructor that disables contract initializers.
     */
    // constructor() {
    //     _disableInitializers();
    // }

    /**
     * @notice Initializes the contract with an owner.
     * @dev Can only be called once, during contract deployment.
     * @param _owner The address of the contract owner.
     */
    function initialize(address _owner) external initializer {
        _initialize_BaseBundleStorage(_owner);
    }

    /**
     * @notice Updates the fees structure for the contract.
     * @dev Only the owner can change the fees.
     * @param _feeReceiver Address where collected fees will be sent.
     * @param _depositFeePercent New deposit fee percentage (in basis points).
     * @param _withdrawalFeePercent New withdrawal fee percentage (in basis points).
     * @param _annualFeePercent New annual fee percentage.
     */
    function feesSetUp(
        address _feeReceiver,
        uint256 _depositFeePercent,
        uint256 _withdrawalFeePercent,
        uint256 _annualFeePercent
    ) external onlyOwner {
        _feesSetUp(_feeReceiver, _depositFeePercent, _withdrawalFeePercent, _annualFeePercent);
    }

    /**
     * @notice Sets a new maximum size for the asset array.
     * @dev Only callable by the contract owner.
     * @param newMaxArraySize The new maximum number of assets allowed.
     */
    function changeMaxArraySize(uint256 newMaxArraySize) external onlyOwner {
        _changeMaxArraySize(newMaxArraySize);
    }

    /**
     * @notice Updates the percentage required to dissolve a bundle.
     * @dev Only the contract owner can modify this value.
     * @param newPercentage The new dissolution percentage.
     */
    function changeDissolvePercentage(uint256 newPercentage) external onlyOwner {
        _changeDissolvePercentage(newPercentage);
    }

    /**
     * @notice Adds new assets to the storage.
     * @dev Only the contract owner can call this function. The number of assets should not exceed `maxArraySize`.
     * @param assets An array of new asset addresses to be added.
     * @param bundles Corresponding asset information for each asset.
     */
    function addAssetsBundle(address[] calldata assets, address[] calldata bundles) external onlyOwner {
        require(assets.length <= maxArraySize, ArraySizeError(assets.length));
        require(assets.length == bundles.length, ArraySizesDifferent());

        for (uint256 i = 0; i < assets.length; ++i) {
            assetsBundle[assets[i]] = bundles[i];

            emit AssetAdded(assets[i], bundles[i]);
        }
    }

    /**
     * @notice Removes an asset from the storage.
     * @dev Only callable by the contract owner.
     * @param assetAddress The address of the asset to be removed.
     */
    function removeAssetBundle(address assetAddress) external onlyOwner {
        delete assetsBundle[assetAddress];

        emit AssetRemoved(assetAddress);
    }
}
