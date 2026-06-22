// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import {Id} from "periphery/dependencies/morpho/interfaces/IMorpho.sol";

/// @title IMorphoPositionOracleTypes.
/// @notice Events, types and errors for MorphoPositionOracle.
interface IMorphoPositionOracleTypes {
    /// ERRORS ///

    /// @notice Error emitted when the Morpho address is zero.
    error AeraPeriphery__MorphoIsZeroAddress();
    /// @notice Error emitted when the caller is not the vault owner.
    error AeraPeriphery__NotVaultOwner();
    /// @notice Error emitted when the given Morpho contract address is not the expected one.
    error AeraPeriphery__UnexpectedMorphoResponse();
    /// @notice Error emitted when the market list is out of order or contains duplicates.
    error AeraPeriphery__MarketListOutOfOrder(Id marketId);

    /// EVENTS ///

    /// @notice Emitted when the list of markets is changed.
    event MarketsSet(MarketData[] markets);

    /// STRUCTS ///

    /// @notice Minimal market data to be provided by the user when setting markets.
    struct MarketData {
        /// @notice Morpho Market ID.
        Id id;
        /// @notice Address of the price feed used to convert the value of the market's loan token to the numeraire.
        address priceFeed;
        /// @notice Indicates whether the price feed value should be inverted (e.g. USD/WETH -> WETH/USD).
        bool invertPrice;
    }

    /// @notice Extended market data to be stored by the oracle.
    struct MarketDataDetails {
        /// @notice Morpho Market ID.
        Id id;
        /// @notice Address of the price feed used to convert the value of the market's loan token to the numeraire.
        address priceFeed;
        /// @notice Scale used to rescale applied price feed value to match the original token decimals.
        /// @dev uint80 should be enough to fit oracles with 24 decimals.
        uint80 priceFeedScale;
        /// @notice Cached loan token decimals. Used to rescale loan token value to 18 decimals.
        uint8 loanTokenDecimals;
        /// @notice Indicates whether the price feed value should be inverted (e.g. USD/WETH -> WETH/USD).
        bool invertPrice;
    }
}
