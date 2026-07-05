pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "../interface/IRewardPool.sol";
import "../inheritance/Governable.sol";

contract BoostRedirection is Governable {

  using SafeBEP20 for IBEP20;
  using SafeMath for uint256;

  address public reserve;
  address public amplifier;

  constructor(address _storage,
    address _reserve,
    address _amplifier) Governable(_storage) public {
    require(_reserve != address(0), "Not to nowhere");
    reserve = _reserve;
    amplifier = _amplifier;
  }

  /**
   * Performs 50% split over the pool, and 50% strategic reserve.
   */
  function redirect(address token, uint256 amount) virtual public {
    // return 50% back to amplifier, this will increase the boost
    uint256 half = amount.div(2);
    if (half > 0) {
      IBEP20(token).safeTransferFrom(msg.sender, amplifier, half);
    }
    uint256 rest = amount.sub(half);
    // sending the rest to the reserve
    if (rest > 0) {
      IBEP20(token).safeTransferFrom(msg.sender, reserve, rest);
    }
  }

  /**
  * Sets new reserve. Governance only.
  */
  function setReserve(address _reserve) public onlyGovernance {
    require(_reserve != address(0), "Not to nowhere");
    reserve = _reserve;
  }

  /**
  * Sets new amplifier. Governance only.
  */
  function setAmplifier(address _amplifier) public onlyGovernance {
    require(_amplifier != address(0), "Not to nowhere");
    amplifier = _amplifier;
  }
}
