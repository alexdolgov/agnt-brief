/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

struct Registry {
    address[] erc20s;
    address[] assets;
}

interface IAssetRegistry {
    /// Fully refresh all asset state
    /// @custom:interaction
    function refresh() external;

    /// @return {s} The timestamp of the last refresh
    function lastRefresh() external view returns (uint48);

    /// @return The corresponding asset for ERC20, or reverts if not registered
    function toAsset(address erc20) external view returns (address);

    /// @return The corresponding collateral, or reverts if unregistered or not collateral
    function toColl(address erc20) external view returns (address);

    /// @return If the ERC20 is registered
    function isRegistered(address erc20) external view returns (bool);

    /// @return A list of all registered ERC20s
    function erc20s() external view returns (address[] memory);

    /// @return reg The list of registered ERC20s and Assets, in the same order
    function getRegistry() external view returns (Registry memory reg);

    /// @return The number of registered ERC20s
    function size() external view returns (uint256);
}
