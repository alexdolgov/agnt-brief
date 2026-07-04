pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "../public/contracts/base/inheritance/Controllable.sol";
import "../public/contracts/base/multiplier/AmpliFARM.sol";
import "./PotPool.sol";

contract NotifyHelperAmpliFARM is Controllable {

  using SafeMath for uint256;
  using SafeBEP20 for IBEP20;

  address public ampliFARM;
  mapping (address => bool) public alreadyNotified;

  constructor(address _storage, address _ampliFARM)
  Controllable(_storage) public {
    ampliFARM = _ampliFARM;
  }

  function notifyPools(uint256[] memory amounts,
    address[] memory pools,
    uint256 sum
  ) public onlyGovernance {
    // !!! IMPORTANT
    // This method need to be annotated as onlyGovernance so that it does not
    // expose access to the wrapping of AmpliFARM to everyone
    require(amounts.length == pools.length, "Amounts and pools lengths mismatch");
    for (uint i = 0; i < pools.length; i++) {
      alreadyNotified[pools[i]] = false;
    }

    // Transfer all tokens to this helper and approve for wrapping
    IBEP20 farm = IBEP20(AmpliFARM(ampliFARM).farm());
    farm.safeTransferFrom(msg.sender, address(this), sum);
    farm.safeApprove(ampliFARM, sum);
    uint256 check = 0;
    for (uint i = 0; i < pools.length; i++) {
      require(amounts[i] > 0, "Notify zero");
      require(!alreadyNotified[pools[i]], "Duplicate pool");
      // wrap and get the wrapped amount
      uint256 ampliAmount = AmpliFARM(ampliFARM).wrap(amounts[i]);
      PotPool pool = PotPool(pools[i]);
      // transfer and notify the wrapped amount for the wrapped token
      // the notifyTargetRewardAmount function checks that ampliFARM is
      // a reward token of the pot pool
      IBEP20(ampliFARM).safeTransfer(pools[i], ampliAmount);
      PotPool(pools[i]).notifyTargetRewardAmount(ampliFARM, ampliAmount);
      // perform check with the FARM amount
      check = check.add(amounts[i]);
      alreadyNotified[pools[i]] = true;
    }
    require(sum == check, "Wrong check sum");
  }
}
