// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import { BaseBundleStorage } from "../base/BaseBundleStorage.sol";
import { XGoldType, ArraySizeError } from "../Structures.sol";

/// @notice Error thrown when two arrays have different sizes.
error ArraySizesDifferent();

/// @notice Error thrown when an unsupported gold asset type is encountered.
error GoldAssetsErrorType();

/// @notice Error thrown when the wrong gold asset is provided for a specific XGoldType.
/// @param xGoldAsset The address of the provided gold asset.
/// @param xGoldType The expected gold type.
error WrongGoldAssetProvided(address xGoldAsset, XGoldType xGoldType);

/**
 * @title xGoldBundleStorage contract
 * @notice This contract manages the storage and management of xGold assets and their associated fees.
 * @dev Handles the addition, removal, and retrieval of xGold assets, as well as fee management.
 * @author Swarm
 */
contract xGoldBundleStorage is BaseBundleStorage {
    /// @notice Emitted when a new xGold asset is added.
    /// @param newXGoldAsset The address of the new xGold asset.
    /// @param xGoldType The type of xGold asset added (Ounce/Kilo).
    event xGoldAssetAdded(address newXGoldAsset, XGoldType xGoldType);

    /// @notice Emitted when an xGold asset is removed.
    /// @param xGoldAsset The address of the removed xGold asset.
    /// @param xGoldType The type of xGold asset removed (Ounce/Kilo).
    event XGoldAssetRemoved(address xGoldAsset, XGoldType xGoldType);

    uint256 public constant ONE_GOLD_OUNCE = 1e18; // Represents 1 gold ounce in wei (18 decimals)

    uint256 public constant ONE_GOLD_KILO_IN_OUNCES = 32150746600000000000; // Represents 1 gold kilo in wei (18 decimals)

    /// @notice Mapping of xGold types to their corresponding asset addresses.
    mapping(XGoldType xGoldType => address[] xGoldAddresses) public xGoldAssets;

    /**
     * @notice Constructor to initialize the BundleStorage contract.
     * @dev Sets the initial owner of the contract.
     * @param _owner The address of the contract owner.
     */
    constructor(address _owner) BaseBundleStorage(_owner) {}

    /**
     * @notice Updates the fees structure.
     * @dev Only the owner can update the fees structure.
     * @param _feeReceiver The address of the new fee receiver.
     * @param _depositFeePercent The new deposit fee percentage (in basis points).
     * @param _withdrawalFeePercent The new withdrawal fee percentage (in basis points).
     * @param _annualFeePercent The new annual fee percentage.
     */
    function changeFees(
        address _feeReceiver,
        uint256 _depositFeePercent,
        uint256 _withdrawalFeePercent,
        uint256 _annualFeePercent
    ) external onlyOwner {
        _changeFees(_feeReceiver, _depositFeePercent, _withdrawalFeePercent, _annualFeePercent);
    }

    /**
     * @notice Updates the maximum array size for adding xGold assets.
     * @dev Only the owner can change the maximum array size.
     * @param newMaxArraySize The new maximum array size.
     */
    function changeMaxArraySize(uint256 newMaxArraySize) external onlyOwner {
        _changeMaxArraySize(newMaxArraySize);
    }

    /**
     * @notice Updates the percentage to dissolve the bundle.
     * @dev Only the owner can change the dissolve percentage.
     * @param newPercentage The new percentage for dissolution.
     */
    function changeDissolvePercentage(uint256 newPercentage) external onlyOwner {
        _changeDissolvePercentage(newPercentage);
    }

    /**
     * @notice Adds new xGold assets to the system.
     * @dev Only the owner can add new xGold assets. The number of assets should not exceed `maxArraySize`.
     * @param newXGoldAssets The addresses of the new xGold assets to be added.
     * @param xGoldTypes The corresponding xGold types for each asset.
     */
    function addXGoldAsset(address[] calldata newXGoldAssets, XGoldType[] calldata xGoldTypes) external onlyOwner {
        require(newXGoldAssets.length <= maxArraySize, ArraySizeError(newXGoldAssets.length));
        require(newXGoldAssets.length == xGoldTypes.length, ArraySizesDifferent());

        for (uint256 i = 0; i < newXGoldAssets.length; ) {
            if (!isXGold(newXGoldAssets[i], xGoldTypes[i])) {
                xGoldAssets[xGoldTypes[i]].push(newXGoldAssets[i]);
                emit xGoldAssetAdded(newXGoldAssets[i], xGoldTypes[i]);
            }

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Removes an xGold asset from the system.
     * @dev Only the owner can add new xGold assets.
     * @param _xGoldAsset The address of the xGold asset to remove.
     * @param xGoldType The type of xGold asset to remove.
     */
    function removeXGoldAsset(address _xGoldAsset, XGoldType xGoldType) external onlyOwner {
        address[] memory addresses = xGoldAssets[xGoldType];

        uint256 index = addresses.length;
        for (uint256 i = 0; i < addresses.length; ) {
            if (addresses[i] == _xGoldAsset) {
                index = i;
            }

            unchecked {
                ++i;
            }
        }

        require(index != addresses.length, WrongGoldAssetProvided(_xGoldAsset, xGoldType));

        xGoldAssets[xGoldType][index] = addresses[addresses.length - 1];
        xGoldAssets[xGoldType].pop();

        emit XGoldAssetRemoved(_xGoldAsset, xGoldType);
    }

    /**
     * @notice Retrieves the price of gold based on the provided asset address.
     * @param asset The address of the gold asset.
     * @return The price of the gold asset.
     */
    function getGoldPrice(address asset) external view returns (uint256) {
        if (isXGold(asset, XGoldType.Ounce)) {
            return ONE_GOLD_OUNCE;
        } else if (isXGold(asset, XGoldType.Kilo)) {
            return ONE_GOLD_KILO_IN_OUNCES;
        } else {
            revert GoldAssetsErrorType();
        }
    }

    /**
     * @notice Checks if the given asset address is an xGold asset of a specific type.
     * @param asset The asset address to check.
     * @param xGoldType The xGold type to verify against.
     * @return True if the asset is of the specified xGold type, false otherwise.
     */
    function isXGold(address asset, XGoldType xGoldType) public view returns (bool) {
        address[] memory _xGoldOunceAddresses = xGoldAssets[xGoldType];

        for (uint256 i = 0; i < _xGoldOunceAddresses.length; ) {
            if (_xGoldOunceAddresses[i] == asset) {
                return true;
            }

            unchecked {
                ++i;
            }
        }

        return false;
    }

    /**
     * @notice Retrieves all addresses of the xGold assets of type Ounce.
     * @return An array of addresses for xGold Ounce assets.
     */
    function xGoldOunceAddresses() public view returns (address[] memory) {
        return xGoldAssets[XGoldType.Ounce];
    }

    /**
     * @notice Retrieves all addresses of the xGold assets of type Kilo.
     * @return An array of addresses for xGold Kilo assets.
     */
    function xGoldKiloAddresses() public view returns (address[] memory) {
        return xGoldAssets[XGoldType.Kilo];
    }

    /// @notice Retrieves the current percentage to dissolve a bundle.
    /// @return The percentage to dissolve a bundle.
    function dissolvePercentage() external view override returns (uint256) {
        return ONE_HUNDRED_PERCENT;
    }
}
