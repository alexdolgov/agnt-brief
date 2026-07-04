// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

interface IPriceFeed {
    // -------------------------------------------------------------------------
    // Events
    // -------------------------------------------------------------------------

    /// @notice Emitted when an asset price is set or updated.
    event PriceUpdated(address indexed asset, uint256 oldPrice, uint256 newPrice);

    // -------------------------------------------------------------------------
    // Errors
    // -------------------------------------------------------------------------

    /// @notice Thrown when a zero price is provided to setPrice.
    error ZeroPrice();

    /// @notice Thrown when getPrice is called for an asset with no price set.
    error AssetNotSupported(address asset);

    // -------------------------------------------------------------------------
    // View Functions
    // -------------------------------------------------------------------------

    /// @notice Get the denomination price for an asset.
    /// @param asset ERC20 token address.
    /// @return price Denomination units per 1 full token, 1e18 scale.
    /// @dev Reverts with AssetNotSupported if no price has been set for the asset.
    function getPrice(address asset) external view returns (uint256 price);

    /// @notice Returns true if a non-zero price has been set for the asset.
    function hasPrice(address asset) external view returns (bool);
}
