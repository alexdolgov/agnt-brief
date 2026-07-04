pragma solidity 0.7.3;

import "./DualMaticStrategyPolygon.sol";

contract DualMaticStrategyAdapter is DualMaticStrategyPolygon {

  constructor() public {}

  function initialize(
    address _multisigWallet,
    address _rewardManager,
    address _vault,
    address _underlying,
    address _quickRewardPool
  ) public initializer {
    DualMaticStrategyPolygon.initializeAlphaStrategy(
      _multisigWallet,
      _rewardManager,
      _underlying,
      _vault,
      address(0xf28164A485B0B2C90639E47b0f377b4a438a16B1), // dQuick
      _quickRewardPool, // quickRewardPool
      address(0xd6Ce4f3D692C1c6684fb449993414C5c9E5D0073) // earn wMATIC for staked dQuick
    );
  }
}
