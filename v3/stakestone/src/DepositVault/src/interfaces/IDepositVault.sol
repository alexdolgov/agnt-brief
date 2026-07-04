// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IDepositVault
/// @author luoyhang003
/// @notice Interface for a Deposit Vault contract that manages deposits of underlying assets
///         and issues vault shares in return. Provides functionality to deposit,
///         preview conversions, and retrieve vault-related price information.
/// @dev This interface defines the core vault operations and events to standardize
///         how assets and shares are handled within the vault system.
interface IDepositVault {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a deposit is made into the vault.
    /// @param asset The address of the underlying asset being deposited.
    /// @param amount The amount of the underlying asset deposited.
    /// @param shares The number of vault shares minted for the deposit.
    /// @param fee The fee charged during the deposit (if any).
    /// @param underlyingPrice The price of the underlying asset at the time of deposit.
    /// @param vaultTokenPrice The exchange rate of vault shares at the time of deposit.
    event Deposit(
        address indexed asset,
        uint256 amount,
        uint256 shares,
        uint256 fee,
        uint256 underlyingPrice,
        uint256 vaultTokenPrice
    );

    /// @notice Emitted when a new underlying asset is added to the vault.
    /// @param asset The address of the underlying asset added.
    event UnderlyingAssetAdded(address asset);

    /// @notice Emitted when an underlying asset is removed from the vault.
    /// @param asset The address of the underlying asset removed.
    event UnderlyingAssetRemoved(address asset);

    /// @notice Emitted when the assets router is updated.
    /// @param oldRouter The address of the old assets router.
    /// @param newRouter The address of the new assets router.
    event SetAssetsRouter(address oldRouter, address newRouter);

    /// @notice Emitted when the assets forcefully routed.
    /// @param asset The address of the underlying asset to be routed.
    /// @param amount The amount of the underlying asset to be routed.
    event ForceRouteAssets(address asset, uint256 amount);

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit an underlying asset and receive vault shares.
    /// @param _asset Address of the asset to deposit.
    /// @param _amount Amount of asset to deposit.
    /// @return shares_ Number of shares minted.
    /// @dev Equivalent to `depositFor` with msg.sender as receiver.
    function deposit(
        address _asset,
        uint256 _amount
    ) external returns (uint256 shares_);

    /// @notice Deposit an underlying asset on behalf of another account.
    /// @param _asset Address of the asset to deposit.
    /// @param _amount Amount of asset to deposit.
    /// @param _receiver Recipient of the minted shares.
    /// @return shares_ Number of shares minted.
    /// @dev Reverts if receiver is zero address.
    function depositFor(
        address _asset,
        uint256 _amount,
        address _receiver
    ) external returns (uint256 shares_);

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the cutoff vault token price (e.g. for settlement).
    /// @return price_ Current vault token cutoff price.
    /// @dev Fetches the cutoff price directly from the oracle register.
    function exchangePrice() external view returns (uint256 price_);

    /// @notice Converts underlying assets to equivalent vault shares.
    /// @param _asset Address of the underlying asset.
    /// @param _amount Amount of underlying asset.
    /// @return shares_ Equivalent vault shares.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Normalizes `_amount` to 18 decimals before conversion.
    ///      Uses floor rounding to avoid overestimating shares.
    function convertToShares(
        address _asset,
        uint256 _amount
    )
        external
        view
        returns (
            uint256 shares_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        );

    /// @notice Converts vault shares to equivalent underlying assets.
    /// @param _asset Address of the underlying asset.
    /// @param _shares Number of vault shares.
    /// @return assets_ Equivalent underlying asset amount.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Denormalizes values back from 18 decimals to asset decimals.
    ///      Uses floor rounding to avoid overestimating asset returns.
    function convertToAssets(
        address _asset,
        uint256 _shares
    )
        external
        view
        returns (
            uint256 assets_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        );

    /// @notice Previews deposit outcome including shares, fee, and prices.
    /// @param _asset Address of the underlying asset.
    /// @param _amount Deposit amount.
    /// @return shares_ Number of shares minted.
    /// @return fee_ Fee charged on deposit.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Simulates deposit logic without state changes.
    ///      Performs fee deduction, cap checks, and price fetches.
    function previewDeposit(
        address _asset,
        uint256 _amount
    )
        external
        view
        returns (
            uint256 shares_,
            uint256 fee_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        );

    /// @notice Returns list of all supported underlying assets.
    /// @return underlyings Array of supported assets.
    /// @dev Returns storage array directly; use cautiously in gas-sensitive contexts.
    function getUnderlyings()
        external
        view
        returns (address[] memory underlyings);
}
