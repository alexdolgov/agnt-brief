pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "../inheritance/Governable.sol";

contract Amplifier is Governable {

  using SafeMath for uint256;
  using SafeBEP20 for IBEP20;

  address public farm;
  address public boostedFarm;

  constructor(
    address _farm,
    address _boostedFarm,
    address _storage
  ) Governable(_storage) public {
    farm = _farm;
    boostedFarm = _boostedFarm;
  }

  /**
  * A withdrawal function for boosted FARM to be able to apply boosts.
  */
  function withdraw(address to, uint256 amount) public {
    require(msg.sender == governance() || msg.sender == boostedFarm, "Not authorized");
    IBEP20(farm).safeTransfer(to, amount);
  }
}
