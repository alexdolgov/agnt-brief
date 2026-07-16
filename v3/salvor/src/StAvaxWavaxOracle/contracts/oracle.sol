// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import { IOracle } from "morpho-blue-1.0.0/interfaces/IOracle.sol";

interface IERC4626 {
  /// @notice Returns the amount of pooled AVAX for a given amount of shares.
  /// @param sharesAmount Amount of stAVAX shares (scaled by 1e18).
  /// @return Amount of pooled AVAX (scaled by 1e18).
  /// @dev Standard function in Hypha/GoGoPool stAVAX.
  function convertToAssets(uint256 sharesAmount) external view returns (uint256);
}

/// @title StAvaxWavaxOracle
/// @notice Simple oracle for Morpho Blue market with collateral stAVAX (Hypha LST) and loan token WAVAX.
/// @dev Returns the price of 1 collateral token (stAVAX) in loan token units (WAVAX), scaled to 36 decimals.
///      Price = convertToAssets(10**18)  (since WAVAX and AVAX are 1:1, both 18 decimals).
contract StAvaxWavaxOracle is IOracle {
  address public immutable STAVAX;

  uint256 public constant ORACLE_PRICE_SCALE = 1e36;

  constructor(address _stAvax) {
    STAVAX = _stAvax;
  }

  /// @notice Returns the price of the collateral token in terms of the loan token (WAVAX), scaled to 36 decimals.
  /// @dev Morpho Blue expects price() to return collateralPrice such that:
  ///      collateralValueInLoanToken = collateralAmount * price() / ORACLE_PRICE_SCALE
  ///      Here, loan token is WAVAX (18 decimals), collateral is stAVAX (18 decimals).
  function price() external view override returns (uint256) {
    // Call the Hypha stAVAX contract to get how much pooled AVAX 1e18 shares (1 stAVAX) represent.
    // This increases over time due to staking rewards.
    uint256 pooledAvax = IERC4626(STAVAX).convertToAssets(1e18);

    // Since WAVAX is pegged 1:1 to AVAX, pooledAvax is directly the price in WAVAX units.
    // Scale from 1e18 (WAD) to 1e36 (ORACLE_PRICE_SCALE).
    return pooledAvax * 1e18;
  }
}

