// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IOracleRouter {
    /// @notice Gets the address of the source for an asset address
    /// @param asset The address of the asset
    /// @return address The address of the source(will be our managed custom oracles)
    function getSourceOfAsset(address asset) external view returns (address);

    /// @notice Get the price of an asset
    /// @param asset The address of the asset
    /// @return price The price of the asset in USD, scaled to 18 decimals
    /// @return decimals The number of decimals the price is scaled to
    function getAssetPrice(address asset) external view returns (uint256, uint8);

    /// @notice set the source of an asset
    /// @param asset The address of the asset
    /// @param feedAddress The address of the feed. Only used for chainlink oracles
    function setAssetSource(address asset, address feedAddress) external;
}
