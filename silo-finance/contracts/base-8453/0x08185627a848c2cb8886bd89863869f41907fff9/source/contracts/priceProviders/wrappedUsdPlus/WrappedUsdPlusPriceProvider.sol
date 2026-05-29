// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../IndividualPriceProvider.sol";
import "./interfaces/IWrappedUsdPlusLike.sol";

/// @title WrappedUsdPlusPriceProvider
/// @notice WrappedUsdPlusPriceProvider is the price provider for wUSD+ token. Price calculations depends
/// on the price of USD+. Price providers repository must be ready to provide the USD+ price.
/// @custom:security-contact security@silo.finance
contract WrappedUsdPlusPriceProvider is IndividualPriceProvider {
    /// @dev Sample amount for wUSD+ / USD+ conversion rate calculations.
    uint256 public constant SAMPLE_AMOUNT = 10 ** 18;

    /// @dev USD+ is an underlying asset of wUSD+
    address public immutable UNDERLYING; // solhint-disable-line var-name-mixedcase

    error AssetNotSupported();

    constructor(
        IPriceProvidersRepository _priceProvidersRepository,
        address _wrappedUsdPlus
    ) IndividualPriceProvider(_priceProvidersRepository, _wrappedUsdPlus, "wUSD+") {
        UNDERLYING = IWrappedUsdPlusLike(_wrappedUsdPlus).asset();
    }

    /// @inheritdoc IPriceProvider
    function getPrice(address _asset) public view virtual override returns (uint256 price) {
        if (!assetSupported(_asset)) revert AssetNotSupported();

        // Get SAMPLE_AMOUNT of wUSD+ in USD+
        uint256 sampleConversionRate = IWrappedUsdPlusLike(_asset).convertToAssets(SAMPLE_AMOUNT);

        // Get USD+ price and multiply it by USD+ per wUSD+ ratio
        price = priceProvidersRepository.getPrice(UNDERLYING) * sampleConversionRate / SAMPLE_AMOUNT;
    }
}
