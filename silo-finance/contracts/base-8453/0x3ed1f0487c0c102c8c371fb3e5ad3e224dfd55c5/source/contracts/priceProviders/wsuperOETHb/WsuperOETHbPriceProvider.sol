// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../IndividualPriceProvider.sol";
import "./interfaces/IWsuperOETHbLike.sol";

/// @title WsuperOETHbPriceProvider
/// @notice WsuperOETHbPriceProvider is the price provider for wsuperOETHb token. Price provider reads the exchange
/// rate directly from the vault and sets the cap as a safety measure to prevent the price manipulations.
/// @custom:security-contact security@silo.finance
contract WsuperOETHbPriceProvider is IndividualPriceProvider {
    /// @dev One ETH price in PriceProvidersRepository, also the sample amount for conversion rate calculations.
    uint256 public constant ONE_ETH = 10 ** 18;

    /// @dev Cap is a max value for the price as a safety measure. The cap is determined by the average
    /// wsuperOETHb price and the market LT. It is safe to overestimate the price of collateral until the effective
    /// liquidation threshold in the market is less than 100%. For example, LT=94% allows the safe overestimation by
    /// max of 1/LT, which is <6.3%. The value of this variable is ~50% of a safe limit.
    uint256 public cap;

    event CapUpdate(uint256 indexed newCap);

    error AssetNotSupported();
    error InvalidCap();

    constructor(
        IPriceProvidersRepository _priceProvidersRepository,
        address _wsuperOETHb
    ) IndividualPriceProvider(_priceProvidersRepository, _wsuperOETHb, "wsuperOETHb") {
        // initial cap is less than 3% + current price of 1.019683 ETH. Max safe cap is +6%.
        _setCap(ONE_ETH * 105 / 100);
    }

    /// @inheritdoc IPriceProvider
    function getPrice(address _asset) public view virtual override returns (uint256 price) {
        if (!assetSupported(_asset)) revert AssetNotSupported();

        price = IWsuperOETHbLike(_asset).convertToAssets(ONE_ETH);

        if (price > cap) {
            price = cap;
        }
    }

    /// @notice Update the safety cap value.
    function setCap(uint256 _newCap) external virtual onlyManager() {
        _setCap(_newCap);
    }

    /// @dev Internal function to update the cap value. Does the basic safety checks to revert in case of human error.
    function _setCap(uint256 _newCap) internal virtual {
        if (_newCap < ONE_ETH || _newCap >= 2 * ONE_ETH) {
            revert InvalidCap();
        }

        cap = _newCap;
        emit CapUpdate(_newCap);
    }
}
