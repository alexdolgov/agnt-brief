// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IParamRegistry
/// @author luoyhang003
/// @notice Interface for the protocol parameter registry contract.
/// @dev
/// - Defines key protocol configuration parameters such as fee rates, deposit caps,
///   price tolerances, and critical role-restricted settings.
/// - Provides events for tracking parameter updates to ensure transparency and auditability.
/// - Exposes getter functions for external contracts to query configuration values,
///   and (in the implementing contract) setter functions protected by timelock roles.
/// - Used as the central source of truth for system-wide configuration and policy enforcement.
interface IParamRegistry {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when the maximum upper tolerance for exchange rate deviation is updated.
    /// @param oldVal Previous tolerance value in basis points.
    /// @param newVal New tolerance value in basis points.
    event SetExchangeRateMaxUpperToleranceBps(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the maximum lower tolerance for exchange rate deviation is updated.
    /// @param oldVal Previous tolerance value in basis points.
    /// @param newVal New tolerance value in basis points.
    event SetExchangeRateMaxLowerToleranceBps(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the stablecoin price tolerance is updated.
    /// @param oldVal Previous tolerance value in basis points.
    /// @param newVal New tolerance value in basis points.
    event SetStablecoinPriceToleranceBps(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the volatile asset price tolerance is updated.
    /// @param oldVal Previous tolerance value in basis points.
    /// @param newVal New tolerance value in basis points.
    event SetVolatileAssetPriceToleranceBps(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the minimum price update interval is updated.
    /// @param oldVal Previous interval value in seconds.
    /// @param newVal New interval value in seconds.
    event SetPriceUpdateInterval(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the maximum price validity duration is updated.
    /// @param oldVal Previous duration value in seconds.
    /// @param newVal New duration value in seconds.
    event SetPriceValidityDuration(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the mint fee rate for a specific asset is updated.
    /// @param asset The address of the asset.
    /// @param oldRate Previous mint fee rate in basis points.
    /// @param newRate New mint fee rate in basis points.
    event SetMintFeeRate(
        address indexed asset,
        uint256 oldRate,
        uint256 newRate
    );

    /// @notice Emitted when the redeem fee rate for a specific asset is updated.
    /// @param asset The address of the asset.
    /// @param oldRate Previous redeem fee rate in basis points.
    /// @param newRate New redeem fee rate in basis points.
    event SetRedeemFeeRate(
        address indexed asset,
        uint256 oldRate,
        uint256 newRate
    );

    /// @notice Emitted when deposit enablement is updated for a specific asset.
    /// @param asset The address of the asset.
    /// @param enabled True if deposits are enabled, false otherwise.
    event SetDepositEnabled(address indexed asset, bool enabled);

    /// @notice Emitted when redemption enablement is updated for a specific asset.
    /// @param asset The address of the asset.
    /// @param enabled True if redemptions are enabled, false otherwise.
    event SetRedeemEnabled(address indexed asset, bool enabled);

    /// @notice Emitted when the global deposit cap is updated.
    /// @param oldVal Previous global deposit cap.
    /// @param newVal New global deposit cap.
    event SetTotalDepositCap(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the deposit cap for a specific asset is updated.
    /// @param asset The address of the asset.
    /// @param oldVal Previous cap value.
    /// @param newVal New cap value.
    event SetTokenDepositCap(
        address indexed asset,
        uint256 oldVal,
        uint256 newVal
    );

    /// @notice Emitted when the global array length limit is updated.
    /// @param oldVal Previous limit value.
    /// @param newVal New limit value.
    event SetArrayLengthLimit(uint256 oldVal, uint256 newVal);

    /// @notice Emitted when the fee recipient address is updated.
    /// @param oldVal Previous fee recipient address.
    /// @param newVal New fee recipient address.
    event SetFeeRecipient(address oldVal, address newVal);

    /// @notice Emitted when the forfeited assets treasury address is updated.
    /// @param oldVal Previous treasury address.
    /// @param newVal New treasury address.
    event SetForfeitTreasury(address oldVal, address newVal);

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the current upper tolerance for exchange rate deviation.
    function getExchangeRateMaxUpperToleranceBps()
        external
        view
        returns (uint256);

    /// @notice Returns the current lower tolerance for exchange rate deviation.
    function getExchangeRateMaxLowerToleranceBps()
        external
        view
        returns (uint256);

    /// @notice Returns the current stablecoin price tolerance in bps.
    function getStablecoinPriceToleranceBps() external view returns (uint256);

    /// @notice Returns the current volatile asset price tolerance in bps.
    function getVolatileAssetPriceToleranceBps()
        external
        view
        returns (uint256);

    /// @notice Returns the minimum interval between price updates.
    function getPriceUpdateInterval() external view returns (uint256);

    /// @notice Returns the maximum validity duration of cached prices.
    function getPriceValidityDuration() external view returns (uint256);

    /// @notice Returns the configured mint fee rate for a given asset.
    /// @param _asset The address of the asset.
    /// @return The mint fee rate in basis points.
    function getMintFeeRate(address _asset) external view returns (uint256);

    /// @notice Returns the configured redeem fee rate for a given asset.
    /// @param _asset The address of the asset.
    /// @return The redeem fee rate in basis points.
    function getRedeemFeeRate(address _asset) external view returns (uint256);

    /// @notice Returns whether deposits are enabled for a given asset.
    /// @param _asset The address of the asset.
    /// @return True if deposits are enabled, false otherwise.
    function getDepositEnabled(address _asset) external view returns (bool);

    /// @notice Returns whether redemptions are enabled for a given asset.
    /// @param _asset The address of the asset.
    /// @return True if redemptions are enabled, false otherwise.
    function getRedeemEnabled(address _asset) external view returns (bool);

    /// @notice Returns the global deposit cap.
    function getTotalDepositCap() external view returns (uint256);

    /// @notice Returns the deposit cap for a specific asset.
    /// @param _asset The address of the asset.
    function getTokenDepositCap(address _asset) external view returns (uint256);

    /// @notice Returns the global array length limit.
    function getArrayLengthLimit() external view returns (uint256);

    /// @notice Returns the address of the fee recipient.
    function getFeeRecipient() external view returns (address);

    /// @notice Returns the address of the forfeited assets treasury.
    function getForfeitTreasury() external view returns (address);
}
