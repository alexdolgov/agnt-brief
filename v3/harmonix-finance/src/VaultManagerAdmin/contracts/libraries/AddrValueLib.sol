// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

library AddrValueLib {
    // ======================= STORAGE KEYS ====================

    bytes32 internal constant SHARE_TOKEN_KEY = keccak256(abi.encode("SHARE_TOKEN_ADDR"));
    bytes32 internal constant PRICE_FEED_KEY = keccak256(abi.encode("PRICE_FEED_ADDR"));
    bytes32 internal constant ACCESS_MANAGER_KEY = keccak256(abi.encode("ACCESS_MANAGER_ADDR"));
    bytes32 internal constant FUND_VAULT_KEY = keccak256(abi.encode("FUND_VAULT_ADDR"));
    bytes32 internal constant REQUEST_MANAGER_KEY = keccak256(abi.encode("REQUEST_MANAGER_ADDR"));
    bytes32 internal constant FUND_NAV_KEY = keccak256(abi.encode("FUND_NAV_ADDR"));
    bytes32 internal constant NAV_AGGREGATE_MODEL_KEY = keccak256(abi.encode("NAV_AGGREGATE_MODEL_ADDR"));
    bytes32 internal constant FEE_RECEIVER_KEY = keccak256(abi.encode("FEE_RECEIVER"));
    bytes32 internal constant ADMIN_FACET_KEY = keccak256(abi.encode("ADMIN_FACET_ADDR"));

    // ======================= VALUE SET ====================

    /// @notice Stores the AccessManager contract address in the shared address map.
    function setAccessManager(mapping(bytes32 => address) storage map, address accessManager) internal {
        map[ACCESS_MANAGER_KEY] = accessManager;
    }

    /// @notice Stores the vault address for a given asset in the shared address map.
    function setVaultForAsset(mapping(bytes32 => address) storage map, address asset, address vault) internal {
        map[keccak256(abi.encode("VAULT_FOR_ASSET", asset))] = vault;
    }

    /// @notice Stores the asset address for a given vault in the shared address map.
    function setAssetForVault(mapping(bytes32 => address) storage map, address vault, address asset) internal {
        map[keccak256(abi.encode("ASSET_FOR_VAULT", vault))] = asset;
    }

    /// @notice Stores a registered asset address at the given 0-based index.
    function setRegisteredAsset(mapping(bytes32 => address) storage map, uint256 index, address asset) internal {
        map[keccak256(abi.encode("REGISTERED_ASSET", index))] = asset;
    }

    // ======================= VALUE GET ====================

    /// @notice Retrieves the ShareToken contract address from the shared address map.
    function getShareToken(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[SHARE_TOKEN_KEY];
    }

    /// @notice Retrieves the PriceFeed contract address from the shared address map.
    function getPriceFeed(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[PRICE_FEED_KEY];
    }

    /// @notice Retrieves the AccessManager contract address from the shared address map.
    function getAccessManager(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[ACCESS_MANAGER_KEY];
    }

    /// @notice Retrieves the FundVault contract address from the shared address map.
    function getFundVault(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[FUND_VAULT_KEY];
    }

    /// @notice Retrieves the AsyncRequestManager contract address from the shared address map.
    function getRequestManager(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[REQUEST_MANAGER_KEY];
    }

    /// @notice Retrieves the vault address for a given asset from the shared address map.
    function getVaultForAsset(mapping(bytes32 => address) storage map, address asset) internal view returns (address) {
        return map[keccak256(abi.encode("VAULT_FOR_ASSET", asset))];
    }

    /// @notice Retrieves the asset address for a given vault from the shared address map.
    function getAssetForVault(mapping(bytes32 => address) storage map, address vault) internal view returns (address) {
        return map[keccak256(abi.encode("ASSET_FOR_VAULT", vault))];
    }

    /// @notice Retrieves the FundNavFeed contract address from the shared address map.
    function getFundNav(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[FUND_NAV_KEY];
    }

    /// @notice Retrieves the NavAggregateModel contract address from the shared address map.
    function getNavAggregateModel(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[NAV_AGGREGATE_MODEL_KEY];
    }

    /// @notice Returns the fee receiver address, or address(0) if not set.
    function getFeeReceiver(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[FEE_RECEIVER_KEY];
    }

    /// @notice Returns the registered asset address at the given 0-based index.
    function getRegisteredAsset(mapping(bytes32 => address) storage map, uint256 index)
        internal
        view
        returns (address)
    {
        return map[keccak256(abi.encode("REGISTERED_ASSET", index))];
    }

    /// @notice Returns the adminFacet address stored in the shared address map.
    function getAdminFacet(mapping(bytes32 => address) storage map) internal view returns (address) {
        return map[ADMIN_FACET_KEY];
    }
}
