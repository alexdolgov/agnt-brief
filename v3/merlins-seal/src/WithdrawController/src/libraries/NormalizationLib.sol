// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title Normalization Library
/// @author luoyhang003
/// @notice Utility library for converting token amounts between different decimals
/// @dev Used for normalization (to 18 decimals) and denormalization (from 18 decimals)
library NormalizationLib {
    /// @notice Normalizes token amounts to base decimals (18).
    /// @param _amount Token amount in original decimals.
    /// @param _decimals Decimals of the token.
    /// @return normalized_ Amount scaled to 18 decimals.
    /// @dev Expands or compresses numbers depending on asset decimals.
    function normalize(
        uint256 _amount,
        uint256 _decimals
    ) internal pure returns (uint256 normalized_) {
        if (_decimals == 18) {
            return _amount;
        } else if (_decimals < 18) {
            return _amount * (10 ** (18 - _decimals));
        } else if (_decimals > 18) {
            return _amount / (10 ** (_decimals - 18));
        }
    }

    /// @notice Denormalizes token amounts from base decimals (18) to asset decimals.
    /// @param _amount Amount in 18 decimals.
    /// @param _decimals Decimals of the asset.
    /// @return denormalized_ Amount scaled back to asset decimals.
    /// @dev Reverses normalization logic.
    function denormalize(
        uint256 _amount,
        uint256 _decimals
    ) internal pure returns (uint256 denormalized_) {
        if (_decimals == 18) {
            return _amount;
        } else if (_decimals < 18) {
            return _amount / (10 ** (18 - _decimals));
        } else if (_decimals > 18) {
            return _amount * (10 ** (_decimals - 18));
        }
    }
}
