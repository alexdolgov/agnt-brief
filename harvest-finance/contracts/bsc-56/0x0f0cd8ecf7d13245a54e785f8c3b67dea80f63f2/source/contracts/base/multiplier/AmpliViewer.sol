pragma solidity 0.6.12;

import "./AmpliFARM.sol";

contract AmpliViewer {

  using SafeMath for uint256;
  using SafeBEP20 for IBEP20;

  function calculateBoostedAmount(
    AmpliFARM ampliFarm,
    uint256 amountAmpliFarm,
    address account
  ) external view returns (uint256, uint256, uint256, uint256) {
    if (ampliFarm.boostStaking() == address(0)) {
      // redeeming in 1:1 rate only, because staking is not configured
      return (amountAmpliFarm, 0, 0, 0);
    } else {
      // convert ampliFARM to FARM and check if user can withdraw that
      uint256 accruedBoost = BoostStaking(ampliFarm.boostStaking()).limitOf(account);
      uint256 possibleBoost = IBEP20(ampliFarm.farm()).balanceOf(ampliFarm.amplifier()).mul(amountAmpliFarm).div(ampliFarm.totalSupply());
      uint256 boost = SafeMath.min(accruedBoost, possibleBoost);
      return (amountAmpliFarm, boost, possibleBoost, accruedBoost);
    }
  }
}