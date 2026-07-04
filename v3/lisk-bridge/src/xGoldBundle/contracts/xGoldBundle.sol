// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import { LibString } from "solady/src/utils/LibString.sol";

import { BaseBundleToken } from "./base/BaseBundleToken.sol";
import { BaseBundleTokenCCIP } from "./base/BaseBundleTokenCCIP.sol";
import { AnnualFees } from "./base/AnnualFees.sol";
import { WhitelistedAssets } from "./base/WhitelistedAssets.sol";
import { Asset, ArraySizesDifferent, ArraySizeError } from "./Structures.sol";
import { IBundleStorage } from "./interfaces/IBundleStorage.sol";

/**
 * @title xGoldBundle
 * @notice This contract represents a bundle of xGold tokens, where 1 token represents 1 ounce of gold.
 * @dev This contract extends BaseBundleTokenCCIP, AnnualFees, and WhitelistedAssets to manage gold assets and fees.
 * @author Swarm
 */
contract xGoldBundle is BaseBundleTokenCCIP, AnnualFees, WhitelistedAssets {
    using LibString for string;

    /// @notice Error thrown when an unsupported gold asset type is encountered.
    error GoldAssetsErrorType();

    /// @notice Error thrown when attempting to remove a non-existent gold asset.
    error GoldAssetNotAdded(address asset);

    /// @notice Event emitted when a gold asset is added.
    event GoldAssetAdded(address indexed asset, string weight);

    /// @notice Event emitted when a gold asset is removed.
    event GoldAssetRemoved(address indexed asset, uint256 indexed weight);

    /// @notice Represents 1 gold ounce in wei (18 decimals precision).
    uint256 public constant ONE_GOLD_OUNCE = 1e18;

    /// @notice Represents 1 gold kilogram in ounces (18 decimals precision).
    uint256 public constant ONE_GOLD_KILO_IN_OUNCES = 32150746600000000000;

    /// @notice Mapping of asset addresses to their weight in gold.
    mapping(address asset => uint256 weight) public assetToWeight;

    modifier checkArraySize(uint256 arraySize) {
        require(arraySize <= IBundleStorage(bundleStorage).maxArraySize(), ArraySizeError(arraySize));
        _;
    }

    /**
     * @notice Initializes the xGold contract.
     * @dev Sets up the bundle storage, whitelists assets, assigns weights, and initializes ownership.
     * @param _bundleStorage The address of the BundleStorage contract.
     * @param assets An array of asset addresses to whitelist.
     * @param assetsWeight An array of corresponding asset weights in string format.
     * @param _tokenKya The Know Your Asset (KYA) document reference.
     * @param _owner The owner of the contract.
     */
    constructor(
        address _bundleStorage,
        address[] memory assets,
        string[] memory assetsWeight,
        string memory _tokenKya,
        address _owner
    ) BaseBundleToken(_bundleStorage, "xGold", "xGold", _tokenKya) WhitelistedAssets(assets) {
        require(assets.length <= IBundleStorage(bundleStorage).maxArraySize(), ArraySizeError(assets.length));
        require(assets.length == assetsWeight.length, ArraySizesDifferent());

        _addAssetsWeight(assets, assetsWeight);
        _initializeOwner(_owner);
    }

    /**
     * @notice Adds new assets to the bundle.
     * @dev Assets must be whitelisted before being added. Mints tokens based on asset weights.
     * @param assets An array of `Asset` structs representing the assets to be added.
     */
    function addNewAssets(Asset[] calldata assets) external checkArraySize(assets.length) {
        uint256 toMint;
        for (uint256 i = 0; i < assets.length; ++i) {
            _onlyWhitelistedAsset(assets[i].assetAddress);
            toMint += assetToWeight[assets[i].assetAddress];
        }

        _update();
        mint_(msg.sender, toMint);
        _depositAssets(assets);
    }

    /**
     * @notice Withdraws assets from the bundle and burns corresponding tokens.
     * @dev Assets must be whitelisted before withdrawal.
     * @param assets An array of `Asset` structs representing the assets to withdraw.
     */
    function withdrawAssets(Asset[] calldata assets) external checkArraySize(assets.length) {
        uint256 toBurn;
        for (uint256 i = 0; i < assets.length; ++i) {
            _onlyWhitelistedAsset(assets[i].assetAddress);
            toBurn += assetToWeight[assets[i].assetAddress];
        }

        _update();
        burn_(msg.sender, toBurn);
        _withdrawAssets(assets);
    }

    /**
     * @notice Dissolves the bundle, effectively closing it.
     */
    function dissolve() external {
        _dissolve();
    }

    /**
     * @notice Whitelists new assets and assigns their weights.
     * @dev Only the contract owner can execute this function.
     * @param assets Array of asset addresses to whitelist.
     * @param assetsWeight Corresponding weights of the assets in string format.
     */
    function addAssetsToList(
        address[] calldata assets,
        string[] memory assetsWeight
    ) external onlyOwner checkArraySize(assets.length) {
        require(assets.length == assetsWeight.length, ArraySizesDifferent());

        _addAssetsWeight(assets, assetsWeight);
        _whitelistAssets(assets);
    }

    /**
     * @notice Removes an asset from the whitelist.
     * @dev Only the contract owner can remove an asset.
     * @param asset The address of the asset to remove.
     */
    function removeListedAsset(address asset) external onlyOwner {
        uint256 weight = assetToWeight[asset];
        require(weight > 0, GoldAssetNotAdded(asset));
        delete assetToWeight[asset];
        emit GoldAssetRemoved(asset, weight);
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
     * @param kya The new KYA document reference.
     */
    function updateKYA(string calldata kya) external onlyOwner {
        _updateKYA(kya);
    }

    /**
     * @notice Internal function to add asset weights.
     * @param assets Array of asset addresses.
     * @param weight Corresponding weight in string format.
     */
    function _addAssetsWeight(address[] memory assets, string[] memory weight) internal virtual {
        for (uint256 i = 0; i < assets.length; ++i) {
            uint256 assetWeight = weight[i].lower().eq("1oz")
                ? ONE_GOLD_OUNCE
                : weight[i].lower().eq("1kg")
                    ? ONE_GOLD_KILO_IN_OUNCES
                    : 0;
            require(assetWeight > 0, GoldAssetsErrorType());

            assetToWeight[assets[i]] = assetWeight;
            emit GoldAssetAdded(assets[i], weight[i]);
        }
    }

    /**
     * @notice Updates annual fees and the last operation timestamp.
     */
    function _update() internal virtual {
        _updateAnnualFeesRate(IBundleStorage(bundleStorage).annualFeePercent(), totalSupply(), decimals());
        _updateLastOperationTimestamp();
    }

    /**
     * @notice Mints fees to the designated receiver.
     * @param toMint The amount of tokens to mint.
     */
    function _doMint(uint256 toMint) internal override {
        _mint(IBundleStorage(bundleStorage).feeReceiver(), toMint);
    }
}
