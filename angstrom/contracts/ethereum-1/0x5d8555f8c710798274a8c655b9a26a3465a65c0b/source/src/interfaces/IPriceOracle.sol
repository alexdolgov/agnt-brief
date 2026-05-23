// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

interface IPriceOracle {
    /// @notice Returns the price of `1e18` of the base unit of `quoteAsset` in terms of base units of `baseAsset`.
    /// @dev Returns *ZERO* in the case that the oracle for the `(quoteAsset, baseAsset)` tuple is unset, i.e. in the
    /// case that `oracles[quoteAsset][baseAsset] == address(0)`.
    /// @dev Reverts if the configured oracle returns a negative price.
    /// @dev Ignores staleness of the oracle's response; there is an assumption of liveness for every configured oracle.
    function price(
        address quoteAsset,
        address baseAsset
    ) external view returns (uint256);
}
