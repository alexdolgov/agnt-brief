pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "../public/contracts/base/inheritance/Controllable.sol";
import "./PotPool.sol";

contract NotifyHelper is Controllable {

  using SafeMath for uint256;
  using SafeBEP20 for IBEP20;

  mapping (address => bool) public alreadyNotified;

  constructor(address _storage)
  Controllable(_storage) public {
  }

  /**
  * Notifies all the pools, safe guarding the notification amount.
  */
  function notifyPools(uint256[] memory amounts,
    address[] memory pools,
    uint256 sum
  ) public onlyGovernance {
    require(amounts.length == pools.length, "Amounts and pools lengths mismatch");
    for (uint i = 0; i < pools.length; i++) {
      alreadyNotified[pools[i]] = false;
    }

    uint256 check = 0;
    for (uint i = 0; i < pools.length; i++) {
      require(amounts[i] > 0, "Notify zero");
      require(!alreadyNotified[pools[i]], "Duplicate pool");
      PotPool pool = PotPool(pools[i]);
      IBEP20 token = IBEP20(pool.rewardToken());
      token.safeTransferFrom(msg.sender, pools[i], amounts[i]);
      PotPool(pools[i]).notifyRewardAmount(amounts[i]);
      check = check.add(amounts[i]);
      alreadyNotified[pools[i]] = true;
    }
    require(sum == check, "Wrong check sum");
  }
}
