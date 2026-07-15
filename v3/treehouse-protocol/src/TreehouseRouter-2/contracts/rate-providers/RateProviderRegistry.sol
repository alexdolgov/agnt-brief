// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '@openzeppelin/contracts/access/Ownable2Step.sol';
import { IRateProvider } from './IRateProvider.sol';

interface IRateProviderRegistry {
  error RateProviderNotFound();
  error InvalidAddress();

  event RateProviderUpdated(address indexed _asset, address indexed _rateProvider, address _oldProvider);

  function getRateInAvax(address _asset) external view returns (uint _rateInAvax);

  function checkHasRateProvider(address _asset) external view;

  function getAvaxInUsd() external view returns (uint);
}

/**
 * @notice RateProviderRegistry stores the asset and corresponding rate providers used by the protocol
 */
contract RateProviderRegistry is IRateProviderRegistry, Ownable2Step {
  address public immutable WAVAX;
  IRateProvider public immutable AVAX_USD_ORACLE;
  mapping(address => address) private rateProviders; //asset => rateProvider

  constructor(address _creator, address _wavax, IRateProvider _avaxUsd) Ownable(_creator) {
    WAVAX = _wavax;
    AVAX_USD_ORACLE = _avaxUsd;
  }

  /**
   * @notice Returns the rate of an asset in avax terms
   * @param _asset token address, must be the base currency (not quote)
   * @return _rateInAvax the exchange rate in 1e18
   */
  function getRateInAvax(address _asset) external view returns (uint _rateInAvax) {
    if (_asset == WAVAX) return 1e18;

    if (rateProviders[_asset] == address(0)) revert RateProviderNotFound();
    _rateInAvax = IRateProvider(rateProviders[_asset]).getRate();
  }

  /**
   * @notice Returns the rate avax in usd terms
   * @return the exchange rate in 1e18
   */
  function getAvaxInUsd() external view returns (uint) {
    return AVAX_USD_ORACLE.getRate();
  }

  /**
   * @notice reverts if a given asset has no rate provider
   * @param _asset provided asset
   */
  function checkHasRateProvider(address _asset) external view {
    if (_asset == WAVAX) return;
    if (rateProviders[_asset] == address(0)) revert RateProviderNotFound();
  }

  /**
   * @notice Updates the registry with the asset and corresponding rate provider
   * @param _asset provided asset
   * @param _rateProvider provided IRateProvider
   * @dev onlyOwner
   */
  function update(address _asset, address _rateProvider) external onlyOwner {
    if (_asset == address(0) || _rateProvider == address(0)) revert InvalidAddress();

    emit RateProviderUpdated(_asset, _rateProvider, rateProviders[_asset]);
    rateProviders[_asset] = _rateProvider;
  }
}
