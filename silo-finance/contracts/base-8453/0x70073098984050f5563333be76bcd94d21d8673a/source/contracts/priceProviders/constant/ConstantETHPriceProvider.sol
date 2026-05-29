// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../PriceProvider.sol";

/// @title ConstantETHPriceProvider
/// @notice ConstantETHPriceProvider is used to peg the price of an asset to 1 ETH. Does not check address, simply
/// returns 10**18 for any asset. Configuration of the price provider is managed on a level of PriceProvidersRepository
/// @custom:security-contact security@silo.finance
contract ConstantETHPriceProvider is PriceProvider {
    constructor(IPriceProvidersRepository _priceProvidersRepository) PriceProvider(_priceProvidersRepository) {}

    /// @inheritdoc IPriceProvider
    function assetSupported(address) external view virtual override returns (bool) {
        return true;
    }
    
    /// @inheritdoc IPriceProvider
    function getPrice(address) public view virtual override returns (uint256) {
        return 10**18;
    }
}
