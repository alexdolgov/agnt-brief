// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { IERC1155 } from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

import { ERC20 } from "solady/src/tokens/ERC20.sol";
import { Receiver } from "solady/src/accounts/Receiver.sol";
import { SafeTransferLib } from "solady/src/utils/SafeTransferLib.sol";

import { IBundleStorage } from "../interfaces/IBundleStorage.sol";
import { Asset, AssetType, BundleProperties } from "../Structures.sol";
import { AssetHelper } from "../utils/AssetHelper.sol";

/// @notice Thrown when the sender doesn't have enough tokens to dissolve the bundle.
/// @param balanceOfSender The balance of the sender.
/// @param requiredAmount The required amount of tokens to dissolve.
error NotEnoughTokensToDissolve(uint256 balanceOfSender, uint256 requiredAmount);

/// @notice Thrown when an incorrect asset type is provided.
/// @param assetType The incorrect asset type provided.
error IncorrectAssetType(AssetType assetType);

/**
 * @title BaseBundleToken
 * @notice Represents an asset bundle token and manages its functionalities, including adding, withdrawing, and liquidating assets.
 * @dev This contract is an abstract base for bundle systems, allowing the management of various assets and handling operations related to asset bundles.
 * It integrates asset operations, storage management, and token minting/burning with fee deductions.
 * @author Swarm
 */
abstract contract BaseBundleToken is Receiver, ERC20 {
    using SafeTransferLib for address;
    using AssetHelper for Asset;

    /**
     * @dev Emitted when initial ERC721 assets are added to the bundle.
     * @param from The address that added the assets.
     * @param at The timestamp when the assets were added.
     */
    event InitialAssetsAdded(address indexed from, uint256 indexed at);

    /**
     * @dev Emitted when the bundle token is configured and finalized.
     * @param owner The address of the bundle owner.
     * @param at The timestamp when the bundle was finalized.
     * @param _tokenKya The KYA (Know Your Asset) document or reference.
     * @param _initialMintAmount The initial amount of tokens minted.
     */
    event BundleConfiguredAndFinalized(
        address indexed owner,
        uint256 indexed at,
        string _tokenKya,
        uint256 _initialMintAmount
    );

    /**
     * @dev Emitted when an asset is moved between addresses.
     * @param from The address from which the asset is moved.
     * @param to The address to which the asset is moved.
     * @param assetAddress The contract address of the asset.
     * @param tokenId The token ID of the asset.
     * @param amount The amount of the asset (1 for NFTs, more for fungible assets).
     * @param assetType The type of the asset (ERC721, ERC1155, etc.).
     */
    event AssetMoved(
        address indexed from,
        address indexed to,
        address indexed assetAddress,
        uint256 tokenId,
        uint256 amount,
        AssetType assetType
    );

    /**
     * @dev Emitted when the bundle is deactivated.
     * @param caller The address that deactivated the bundle.
     * @param at The timestamp when the bundle was deactivated.
     */
    event BundleDeactivated(address indexed caller, uint256 indexed at);

    /**
     * @dev Emitted when the bundle storage contract is updated.
     * @param by The address that changed the storage.
     * @param newBundleStorage The new address of the BundleStorage contract.
     */
    event BundleStorageChanged(address indexed by, address newBundleStorage);

    /**
     * @dev Emitted when the bundle's KYA is updated.
     * @param by The address that updated the KYA.
     * @param kya The new KYA document or reference.
     */
    event BundleKyaChanged(address indexed by, string kya);

    /// @notice The address of the BundleStorage contract managing asset data.
    address public bundleStorage;

    /// @notice The properties of the bundle token, including its name, symbol, and KYA.
    BundleProperties internal _bundle;

    /// @notice The list of assets contained within the bundle.
    Asset[] public assetsInBundle;

    // Modifiers

    /**
     * @notice Constructor to initialize the BaseBundleToken contract.
     * @param _bundleStorage The address of the BundleStorage contract.
     * @param _name The name of the ERC20 token.
     * @param _symbol The symbol of the ERC20 token.
     * @param _kya The Know Your Asset (KYA) document or reference.
     */
    constructor(address _bundleStorage, string memory _name, string memory _symbol, string memory _kya) {
        _bundle.name = _name;
        _bundle.symbol = _symbol;

        _updateKYA(_kya);
        _changeBundleStorage(_bundleStorage);
    }

    /// @notice Returns the name of the bundle token.
    /// @return The name of the token.
    function name() public view virtual override returns (string memory) {
        return _bundle.name;
    }

    /// @notice Returns the symbol of the bundle token.
    /// @return The symbol of the token.
    function symbol() public view virtual override returns (string memory) {
        return _bundle.symbol;
    }

    /// @notice Returns the KYA (Know Your Asset) document of the bundle token.
    /// @return The KYA document or reference.
    function tokenKya() public view virtual returns (string memory) {
        return _bundle.tokenKya;
    }

    /**
     * @notice Internal function to deposit new assets into the bundle.
     * @dev Verifies asset ownership and stores them in the bundle.
     * @param _assets An array of `Asset` structs representing the assets to be added.
     */
    function _depositAssets(Asset[] calldata _assets) internal virtual {
        for (uint256 i = 0; i < _assets.length; ++i) {
            Asset memory asset = _assets[i].checkAsset(msg.sender);

            assetsInBundle.push(asset);

            _moveAsset(asset, msg.sender, address(this));
        }
    }

    /**
     * @notice Internal function to withdraw assets from the bundle.
     * @dev Removes the specified assets from the bundle and transfers them back to the owner.
     * @param _assets An array of `Asset` structs representing the assets to be withdrawn.
     */
    function _withdrawAssets(Asset[] calldata _assets) internal virtual {
        for (uint256 i = 0; i < _assets.length; ++i) {
            Asset memory asset = _assets[i].checkAsset(address(this));

            uint256 indexToRemove = _assets[i].findAssetIndex(assetsInBundle);

            assetsInBundle[indexToRemove] = assetsInBundle[assetsInBundle.length - 1];
            assetsInBundle.pop();

            _moveAsset(asset, address(this), msg.sender);
        }
    }

    /**
     * @notice Dissolves the bundle and returns all assets to the owner.
     * @dev Requires the caller to have enough tokens to dissolve the bundle.
     * Emits `BundleDeactivated`.
     */
    function _dissolve() internal virtual {
        uint256 balanceOfSender = balanceOf(msg.sender);
        uint256 _totalSupply = totalSupply();

        uint256 dissolvePercentage = IBundleStorage(bundleStorage).dissolvePercentage();

        uint256 enoughToDissolve = dissolvePercentage == AssetHelper.SCALING_FACTOR
            ? _totalSupply
            : AssetHelper.calculatePercentage(_totalSupply, dissolvePercentage);

        require(balanceOfSender >= enoughToDissolve, NotEnoughTokensToDissolve(balanceOfSender, enoughToDissolve));

        Asset[] memory assets = assetsInBundle;

        delete assetsInBundle;
        _burn(msg.sender, enoughToDissolve);

        for (uint256 i = 0; i < assets.length; ++i) {
            _moveAsset(assets[i], address(this), msg.sender);
        }

        emit BundleDeactivated(msg.sender, block.timestamp);
    }

    /**
     * @notice Internal function to mint new tokens and deduct deposit fees.
     * @param to The address to receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint_(address to, uint256 amount) internal virtual {
        uint256 depositFees = AssetHelper.calculatePercentage(
            amount,
            IBundleStorage(bundleStorage).depositFeePercent()
        );
        address feeReceiver = IBundleStorage(bundleStorage).feeReceiver();

        if (feeReceiver != address(0)) {
            _mint(feeReceiver, depositFees);
        } else {
            depositFees = 0;
        }

        _mint(to, amount - depositFees);
    }

    /**
     * @notice Internal function to burn tokens and deduct withdrawal fees.
     * @param from The address from which to burn tokens.
     * @param amount The amount of tokens to burn.
     */
    function burn_(address from, uint256 amount) internal virtual {
        uint256 withdrawalFees = AssetHelper.calculatePercentage(
            amount,
            IBundleStorage(bundleStorage).withdrawalFeePercent()
        );
        address feeReceiver = IBundleStorage(bundleStorage).feeReceiver();

        if (feeReceiver != address(0)) {
            _transfer(from, feeReceiver, withdrawalFees);
        } else {
            withdrawalFees = 0;
        }

        _burn(from, amount - withdrawalFees);
    }

    /**
     * @notice Internal function to move assets between addresses.
     * @param asset The asset to be moved.
     * @param from The address from which the asset is transferred.
     * @param to The address to which the asset is transferred.
     */
    function _moveAsset(Asset memory asset, address from, address to) internal virtual {
        if (asset.assetType == AssetType.ERC721) {
            IERC721(asset.assetAddress).safeTransferFrom(from, to, asset.tokenId);
        } else if (asset.assetType == AssetType.ERC1155) {
            IERC1155(asset.assetAddress).safeTransferFrom(from, to, asset.tokenId, asset.amount, "");
        } else {
            revert IncorrectAssetType(asset.assetType);
        }

        emit AssetMoved(from, to, asset.assetAddress, asset.tokenId, asset.amount, asset.assetType);
    }

    /**
     * @notice Internal function to change the address of the BundleStorage contract.
     * @param newBundleStorage The new address of the BundleStorage contract.
     * Emits `BundleStorageChanged`.
     */
    function _changeBundleStorage(address newBundleStorage) internal virtual {
        bundleStorage = newBundleStorage;

        emit BundleStorageChanged(msg.sender, newBundleStorage);
    }

    /**
     * @notice Internal function to update the KYA (Know Your Asset) document for the bundle token.
     * @param kya The new KYA document or reference.
     * Emits `BundleKyaChanged`.
     */
    function _updateKYA(string memory kya) internal virtual {
        _bundle.tokenKya = kya;

        emit BundleKyaChanged(msg.sender, kya);
    }

    /// @dev For performance, override to return the constant value of `keccak256(bytes(name()))` if the name will not change.
    function _constantNameHash() internal view virtual override returns (bytes32 result) {
        return keccak256(bytes(_bundle.name));
    }
}
