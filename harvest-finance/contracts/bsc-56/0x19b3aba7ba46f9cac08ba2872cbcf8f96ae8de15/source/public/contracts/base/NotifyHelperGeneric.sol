pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "./inheritance/Controllable.sol";
import "./PotPool.sol";

contract NotifyHelperGeneric is Controllable {

  using SafeMath for uint256;
  using SafeBEP20 for IBEP20;

  event WhitelistSet(address who, bool value);

  mapping (address => bool) public alreadyNotified;
  mapping (address => bool) public whitelist;

  modifier onlyWhitelisted {
    require(whitelist[msg.sender] || msg.sender == governance(), "Only whitelisted");
    _;
  }

  constructor(address _storage)
  Controllable(_storage) public {
    setWhitelist(governance(), true);
  }

  function setWhitelist(address who, bool value) public onlyWhitelisted {
    whitelist[who] = value;
    emit WhitelistSet(who, value);
  }

  /**
  * Notifies all the pools, safe guarding the notification amount.
  */
  function notifyPools(uint256[] memory amounts,
    address[] memory pools,
    uint256 sum, address _token
  ) public onlyWhitelisted {
    require(amounts.length == pools.length, "Amounts and pools lengths mismatch");
    for (uint i = 0; i < pools.length; i++) {
      alreadyNotified[pools[i]] = false;
    }

    uint256 check = 0;
    for (uint i = 0; i < pools.length; i++) {
      require(amounts[i] > 0, "Notify zero");
      require(!alreadyNotified[pools[i]], "Duplicate pool");
      IBEP20 token = IBEP20(_token);
      token.safeTransferFrom(msg.sender, pools[i], amounts[i]);
      PotPool(pools[i]).notifyTargetRewardAmount(_token, amounts[i]);
      check = check.add(amounts[i]);
      alreadyNotified[pools[i]] = true;
    }
    require(sum == check, "Wrong check sum");
  }
}
