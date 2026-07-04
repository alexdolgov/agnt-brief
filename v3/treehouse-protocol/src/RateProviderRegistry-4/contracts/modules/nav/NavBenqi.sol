// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;
import '@openzeppelin/contracts/interfaces/IERC20.sol';
import '@openzeppelin/contracts/utils/math/Math.sol';
import { IRateProviderRegistry } from '../../rate-providers/RateProviderRegistry.sol';
import { ISAVAX } from '../../interfaces/savax/ISAVAX.sol';
import { IBENQI } from '../../interfaces/benqi/IBenqi.sol';

interface INavBenqi {
  function nav(
    address _target,
    address[] memory _assetTokens,
    address[] memory _debtTokens
  ) external view returns (uint _nav);
}

/**
 * @notice Module to get NAV of list of ERC20 asset tokens, and debt tokens
 * @dev invariant: debt tokens' value MUST be <= asset tokens' value
 */
contract NavBenqi is INavBenqi {
  error InvariantViolation();
  error BenqiAccountSnapshotFailed();

  ISAVAX public immutable sAVAX;
  IRateProviderRegistry public immutable RATE_PROVIDER_REGISTRY;

  constructor(ISAVAX _sAVAX, IRateProviderRegistry _rpr) {
    sAVAX = _sAVAX;
    RATE_PROVIDER_REGISTRY = _rpr;
  }

  /**
   * @notice Calculate NAV of assets minus debts for a target address
   * @param _target Address to calculate NAV for
   * @param _assetTokens Array of asset token addresses (eg. QiSAVAX if sAVAX is collateral)
   * @param _debtTokens Array of debt token addresses (eg. QiAVAX if AVAX is borrowed)
   * @return _nav Net Asset Value in sAVAX terms
   * @dev Reverts if total debt > total assets (InvariantViolation)
   * @dev Silently ignores tokens with zero rates from the registry
   */
  function nav(
    address _target,
    address[] memory _assetTokens,
    address[] memory _debtTokens
  ) external view returns (uint _nav) {
    uint wip;

    // Process asset tokens
    for (uint i; i < _assetTokens.length; ++i) {
      (uint errorCode, uint qiTokenBalance, , uint exchangeRate) = IBENQI(_assetTokens[i]).getAccountSnapshot(_target);
      if (errorCode != 0) revert BenqiAccountSnapshotFailed();
      wip = (qiTokenBalance * exchangeRate) / 1e18;

      if (wip > 0) {
        uint rate = RATE_PROVIDER_REGISTRY.getRateInAvax(_assetTokens[i]);
        if (rate > 0) {
          _nav += Math.mulDiv(rate, wip, 1e18);
        }
      }
    }

    // Process debt tokens - accumulate total debt first
    uint totalDebt;
    for (uint i; i < _debtTokens.length; ++i) {
      (uint errorCode, , uint borrowBalance, ) = IBENQI(_debtTokens[i]).getAccountSnapshot(_target);
      if (errorCode != 0) revert BenqiAccountSnapshotFailed();
      wip = borrowBalance;

      if (wip > 0) {
        uint rate = RATE_PROVIDER_REGISTRY.getRateInAvax(_debtTokens[i]);
        if (rate > 0) {
          totalDebt += Math.mulDiv(rate, wip, 1e18);
        }
      }
    }

    // Check invariant: total debt <= total assets
    if (totalDebt > _nav) {
      revert InvariantViolation();
    }

    // Subtract total debt from assets
    _nav -= totalDebt;

    if (_nav == 0) {
      return 0;
    } else {
      // Handle potential revert from getSharesByPooledAvax when amount is too small
      try sAVAX.getSharesByPooledAvax(_nav) returns (uint avaxShares) {
        _nav = avaxShares;
      } catch {
        // If conversion fails (likely due to amount being too small), just return 0
        _nav = 0;
      }
    }
  }
}
