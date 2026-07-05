//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.26;

import "./AerodromeCLStrategy.sol";

contract AerodromeCLStrategyMainnet_cbETH_ETH1 is AerodromeCLStrategy {

  constructor() {}

  function initializeStrategy(
    address _storage,
    address _vault
  ) public initializer {
    address gauge = address(0xF5550F8F0331B8CAA165046667f4E6628E9E3Aac);
    address aero = address(0x940181a94A35A4569E4529A3CDfB74e38FD98631);
    AerodromeCLStrategy.initializeBaseStrategy(
      _storage,
      _vault,
      gauge,
      aero
    );
    rewardTokens = [aero];
  }

  function finalizeUpgrade() external override onlyGovernance {
    _finalizeUpgrade();
    address aero = address(0x940181a94A35A4569E4529A3CDfB74e38FD98631);
    // Clear stale allowlist entries for any reward tokens we're about to drop from the
    // iteration array, then reseed so the mapping and array stay in sync. Without this,
    // a previously-added reward token would remain salvage-blocked and treated as "allowed"
    // by future codepaths even after it disappears from rewardTokens.
    uint256 length = rewardTokens.length;
    for (uint256 i = 0; i < length; i++) {
      address stale = rewardTokens[i];
      if (stale != aero) {
        rewardTokenAllowed[stale] = false;
      }
    }
    rewardTokens = [aero];
    rewardTokenAllowed[aero] = true;
  }
}