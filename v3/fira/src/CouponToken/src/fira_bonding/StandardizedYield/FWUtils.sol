// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title FWUtils
/// @notice Utility library for converting between FW token amounts and underlying asset amounts
/// @dev All conversions use 18-decimal fixed-point math with the exchange rate scaled by 1e18.
///      The exchange rate represents how much underlying asset 1 FW token is worth.
library FWUtils {
    /// @notice Scaling factor for fixed-point math (1e18)
    uint256 internal constant ONE = 1e18;

    /// @notice Converts FW token amount to underlying asset amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded down
    function fwToAsset(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate) / ONE;
    }

    /// @notice Converts FW token amount to underlying asset amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate + ONE - 1) / ONE;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded down
    function assetToFw(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE) / exchangeRate;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE + exchangeRate - 1) / exchangeRate;
    }
}
