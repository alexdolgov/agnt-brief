// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { OracleAuth } from "../modules/OracleAuth.sol";
import { IPriceOracle } from "../interfaces/IPriceOracle.sol";
import { AggregatorV3Interface } from "../interfaces/ChainlinkAggregatorV3Interface.sol";

/// @notice Basic price oracle which uses an owner-configurable set of Chainlink oracles to fetch prices for asset
/// pairs.
contract PriceOracle is IPriceOracle, OracleAuth {
    event OracleSet(address indexed quoteAsset, address indexed baseAsset, address oracle);

    error InvalidPrice();

    uint8 internal constant _DEFAULT_DECIMALS = 18;

    /// @notice Nested mapping: quoteAsset => baseAsset => oracle.
    mapping(address quoteAsset => mapping(address baseAsset => AggregatorV3Interface chainlinkOracle)) public oracles;

    /// @notice Mapping: quoteAsset => baseAsset => decimal offset used by this contract for reporting price.
    /// @dev This is used to ensure that the price reported to the vault represents 1e18 of the quote asset
    mapping(address quoteAsset => mapping(address baseAsset => int256 decimalOffset)) public decimalOffsetForPair;

    constructor(
        address _vault
    ) OracleAuth(_vault) { }

    /// @notice Called by the contract owner to set the oracle for a `(quoteAsset, baseAsset)` tuple.
    /// @dev The oracle is explicitly *allowed* to be at `address(0)`; in this configuration the `price()` function will
    /// return zero by design.
    function setOracle(
        address quoteAsset,
        address baseAsset,
        AggregatorV3Interface chainlinkOracle
    ) external onlyOwner timelocked {
        emit OracleSet(quoteAsset, baseAsset, address(chainlinkOracle));
        oracles[quoteAsset][baseAsset] = chainlinkOracle;
        decimalOffsetForPair[quoteAsset][baseAsset] = int256(uint256(_DEFAULT_DECIMALS))
            + int256(uint256(_assetDecimals(baseAsset))) - int256(uint256(chainlinkOracle.decimals()))
            - int256(uint256(_assetDecimals(quoteAsset)));
    }

    /// @inheritdoc IPriceOracle
    function price(
        address quoteAsset,
        address baseAsset
    ) external view returns (uint256) {
        AggregatorV3Interface oracle = oracles[quoteAsset][baseAsset];
        if (address(oracle) == address(0)) {
            return 0;
        } else {
            return _scalePrice(_getPriceChainlinkUnscaled(oracle), decimalOffsetForPair[quoteAsset][baseAsset]);
        }
    }

    /// @dev Simply returns the price from chainlink
    function _getPriceChainlinkUnscaled(
        AggregatorV3Interface priceFeed
    ) internal view returns (uint256) {
        // ignore staleness by design; only examine price
        // slither-disable-next-line unused-return
        (, int256 response,,,) = priceFeed.latestRoundData();

        require(response >= 0, InvalidPrice());
        // forge-lint: disable-next-line(unsafe-typecast)
        return uint256(response);
    }

    /// @dev Adjusts the price to reflect the price of 1e18 of the quoteAsset
    function _scalePrice(
        uint256 unscaledPrice,
        int256 decimalOffset
    ) internal pure returns (uint256) {
        if (decimalOffset >= 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            return unscaledPrice * (10 ** uint256(decimalOffset));
        } else {
            // forge-lint: disable-next-line(unsafe-typecast)
            return unscaledPrice / (10 ** uint256(-decimalOffset));
        }
    }

    /// @dev Returns the decimals of the `asset`, using `_DEFAULT_DECIMALS` if the call to `asset.decimals()` fails
    function _assetDecimals(
        address asset
    ) internal view returns (uint8) {
        (bool success, uint8 result) = _tryGetAssetDecimals(asset);
        if (success) {
            return result;
        } else {
            return _DEFAULT_DECIMALS;
        }
    }

    /// @dev Function copied from Solady's ERC4626 implementation.
    /// As a result, this function is MIT licensed.
    /// @dev Helper function to get the decimals of the underlying asset.
    /// Useful for setting the return value of `_underlyingDecimals` during initialization.
    /// If the retrieval succeeds, `success` will be true, and `result` will hold the result.
    /// Otherwise, `success` will be false, and `result` will be zero.
    ///
    /// Example usage:
    /// ```
    /// (bool success, uint8 result) = _tryGetAssetDecimals(underlying);
    /// _decimals = success ? result : _DEFAULT_UNDERLYING_DECIMALS;
    /// ```
    function _tryGetAssetDecimals(
        address underlying
    ) internal view returns (bool success, uint8 result) {
        /// @solidity memory-safe-assembly
        assembly {
            // Store the function selector of `decimals()`.
            mstore(0x00, 0x313ce567)
            // Arguments are evaluated last to first.
            success := and(
                // Returned value is less than 256, at left-padded to 32 bytes.
                and(lt(mload(0x00), 0x100), gt(returndatasize(), 0x1f)),
                // The staticcall succeeds.
                staticcall(gas(), underlying, 0x1c, 0x04, 0x00, 0x20)
            )
            result := mul(mload(0x00), success)
        }
    }
}
