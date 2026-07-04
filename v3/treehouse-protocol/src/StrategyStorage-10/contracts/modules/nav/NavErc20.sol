// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '@openzeppelin/contracts/interfaces/IERC20.sol';
import '@openzeppelin/contracts/utils/math/Math.sol';
import { IRateProviderRegistry } from '../../rate-providers/RateProviderRegistry.sol';
import { ISAVAX } from '../../interfaces/savax/ISAVAX.sol';

interface INavErc20 {
  function nav(address _target, address[] memory _tokens) external view returns (uint _nav);
}

/**
 * @notice Module to get NAV of list of ERC20s
 */
contract NavErc20 is INavErc20 {
  ISAVAX public immutable sAVAX;
  IRateProviderRegistry public immutable RATE_PROVIDER_REGISTRY;

  constructor(ISAVAX _sAVAX, IRateProviderRegistry _rpr) {
    sAVAX = _sAVAX;
    RATE_PROVIDER_REGISTRY = _rpr;
  }

  /**
   * @notice Calculate total NAV of native AVAX + ERC20 tokens for a target address
   * @param _target Address to calculate NAV for
   * @param _tokens Array of ERC20 token addresses
   * @return _nav Total NAV in sAVAX terms
   * @dev Returns raw sAVAX balance if no other assets, otherwise converts AVAX to sAVAX shares + raw sAVAX
   * @dev Silently ignores tokens with zero rates from the registry
   */
  function nav(address _target, address[] memory _tokens) external view returns (uint _nav) {
    _nav += _target.balance;

    uint wip;
    uint sAVAXBalance;
    for (uint i; i < _tokens.length; ++i) {
      wip = IERC20(_tokens[i]).balanceOf(_target);

      if (wip > 0) {
        if (_tokens[i] == address(sAVAX)) {
          sAVAXBalance = wip;
        } else {
          uint rate = RATE_PROVIDER_REGISTRY.getRateInAvax(_tokens[i]);
          if (rate > 0) {
            _nav += Math.mulDiv(rate, wip, 1e18);
          }
          // Note: Zero-rate tokens are silently ignored
        }
      }
    }
    if (_nav == 0) {
      _nav = sAVAXBalance;
    } else {
      // Handle potential revert from getSharesByPooledAvax when amount is too small
      try sAVAX.getSharesByPooledAvax(_nav) returns (uint avaxShares) {
        _nav = avaxShares + sAVAXBalance;
      } catch {
        // If conversion fails (likely due to amount being too small), just return sAVAX balance
        _nav = sAVAXBalance;
      }
    }
  }
}
