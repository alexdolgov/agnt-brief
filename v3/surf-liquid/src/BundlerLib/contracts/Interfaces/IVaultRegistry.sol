// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IVaultRegistry {
    function admin() external view returns (address);

    function isAdmin(address account) external view returns (bool);

    function operator() external view returns (address);

    function isAllowedAsset(address asset) external view returns (bool);

    function isAllowedVault(address vault) external view returns (bool);

    function wasEverVault(address vault) external view returns (bool);

    function isVaultAvailableForAsset(address asset, address vault) external view returns (bool);

    function getAllowedAssets() external view returns (address[] memory);

    function getAllowedVaults() external view returns (address[] memory);

    function getAssetAvailableVaults(address asset) external view returns (address[] memory);

    function vaultToExpectedAsset(address vault) external view returns (address);

    function revenueAddress() external view returns (address);

    function feePercentage() external view returns (uint256);

    function rebalanceFeePercentage() external view returns (uint256);

    function merklClaimFeePercentage() external view returns (uint256);

    function sharePriceSlippageTolerance() external view returns (uint256);

    function isBridgeRouterWhitelisted(address router) external view returns (bool);

    function bridgeRouterType(address router) external view returns (uint8);

    function getBridgeRouters() external view returns (address[] memory);

    function isAllowedDestChain(uint256 chainId) external view returns (bool);

    function bundlerAddress() external view returns (address);

    function adapterAddress() external view returns (address);

    function pendingFactoryUpgrade() external view returns (address);

    function getVaultType(address vault) external view returns (uint8);
}
