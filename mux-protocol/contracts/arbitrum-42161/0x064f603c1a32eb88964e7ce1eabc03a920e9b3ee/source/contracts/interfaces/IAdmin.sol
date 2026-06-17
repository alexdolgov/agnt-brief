// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.19;

/**
 * @title IAdmin
 * @dev Interface for the Admin contract.
 */
interface IAdmin {
    /**
     * @dev Emitted when the maintainer is set.
     * @param newMaintainer The new maintainer address.
     * @param enable Whether the maintainer is enabled or disabled.
     */
    event SetMaintainer(address indexed newMaintainer, bool enable);

    /**
     * @dev Emitted when the maintenance parameters are set.
     * @param operator The operator address.
     * @param keys The keys of the maintenance parameters.
     * @param enable Whether the maintenance parameters are enabled or disabled.
     */
    event SetMaintenanceParameters(address indexed operator, bytes32 keys, bool enable);

    /**
     * @dev Emitted when a new asset is added.
     * @param id The ID of the new asset.
     */
    event AddAsset(uint8 indexed id);

    /**
     * @dev Emitted when the pool parameters are set.
     * @param operator The operator address.
     * @param keys The keys of the pool parameters.
     * @param values The values of the pool parameters.
     */
    event SetPoolParameters(address indexed operator, bytes32[] keys, bytes32[] values);

    /**
     * @dev Emitted when the asset parameters are set.
     * @param operator The operator address.
     * @param assetId The ID of the asset.
     * @param keys The keys of the asset parameters.
     * @param values The values of the asset parameters.
     */
    event SetAssetParameters(address indexed operator, uint8 indexed assetId, bytes32[] keys, bytes32[] values);

    /**
     * @dev Emitted when the asset flags are set.
     * @param operator The operator address.
     * @param assetId The ID of the asset.
     * @param newFlags The new flags of the asset.
     */
    event SetAssetFlags(address indexed operator, uint8 indexed assetId, uint56 newFlags);

    /**
     * @dev Sets the maintainer address.
     * @param newMaintainer The new maintainer address.
     * @param enable Whether the maintainer is enabled or disabled.
     */
    function setMaintainer(address newMaintainer, bool enable) external;

    /**
     * @dev Sets the maintenance parameters.
     * @param key The key of the maintenance parameter.
     * @param enable Whether the maintenance parameter is enabled or disabled.
     */
    function setMaintenanceParameters(bytes32 key, bool enable) external;

    /**
     * @dev Adds a new asset.
     * @param assetId The ID of the new asset.
     * @param keys The keys of the asset parameters.
     * @param values The values of the asset parameters.
     */
    function addAsset(uint8 assetId, bytes32[] calldata keys, bytes32[] calldata values) external;

    /**
     * @dev Sets the pool parameters.
     * @param keys The keys of the pool parameters.
     * @param values The values of the pool parameters.
     * @param currentValues The current values of the pool parameters.
     */
    function setPoolParameters(
        bytes32[] calldata keys,
        bytes32[] calldata values,
        bytes32[] calldata currentValues
    ) external;

    /**
     * @dev Sets the asset parameters.
     * @param assetId The ID of the asset.
     * @param keys The keys of the asset parameters.
     * @param values The values of the asset parameters.
     * @param currentValues The current values of the asset parameters.
     */
    function setAssetParameters(
        uint8 assetId,
        bytes32[] calldata keys,
        bytes32[] calldata values,
        bytes32[] calldata currentValues
    ) external;

    /**
     * @dev Sets the asset flags.
     * @param assetId The ID of the asset.
     * @param isTradable Whether the asset is tradable.
     * @param isOpenable Whether the asset is openable.
     * @param isShortable Whether the asset is shortable.
     * @param isEnabled Whether the asset is enabled.
     * @param isStable Whether the asset is stable.
     * @param isStrictStable Whether the asset is strictly stable.
     * @param canAddRemoveLiquidity Whether liquidity can be added or removed for the asset.
     */
    function setAssetFlags(
        uint8 assetId,
        bool isTradable,
        bool isOpenable,
        bool isShortable,
        bool isEnabled,
        bool isStable,
        bool isStrictStable,
        bool canAddRemoveLiquidity
    ) external;
}
