// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { Ownable } from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import { IERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";

contract Dog is Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 private constant ONE_MONTH_TIMESTAMP = 30 days;

  string public name;
  IERC20 public token;
  uint128 public endCliffTimestamp;
  uint128 public lockedMonth;
  uint128 public lockedAmount;
  uint128 public claimedAmount;

  event LogLeggo(address who, uint256 amount);

  constructor(string memory _name, IERC20 _token) {
    name = _name;
    token = _token;
  }

  function bite(
    uint128 _endCliffTimestamp,
    uint128 _lockedMonth,
    uint128 _lockedAmount
  ) external onlyOwner {
    // Check
    require(_endCliffTimestamp > block.timestamp, "bad timestamp");

    // Effect
    endCliffTimestamp = _endCliffTimestamp;
    lockedMonth = _lockedMonth;
    lockedAmount = _lockedAmount;

    // Interaction
    token.safeTransferFrom(msg.sender, address(this), _lockedAmount);
  }

  function claimable() public view returns (uint128) {
    return unlocked() - claimedAmount;
  }

  function unlocked() public view returns (uint128) {
    if (block.timestamp < endCliffTimestamp) return 0;

    // Calculate the elapsed months since the end of the lock period.
    uint256 elapsedMonths = (block.timestamp - endCliffTimestamp) / ONE_MONTH_TIMESTAMP;

    // Calculate the unlock amount
    return
      elapsedMonths >= lockedMonth
        ? lockedAmount
        : uint128((lockedAmount * elapsedMonths) / lockedMonth);
  }

  function leggo(uint128 _amount) external onlyOwner {
    // Check
    require(_amount <= claimable(), "bad _amount");

    // Effect
    // Update the claimed amount for the user
    claimedAmount += _amount;

    // Interaction
    // Transfer tokens from this contract
    token.safeTransfer(msg.sender, _amount);

    emit LogLeggo(msg.sender, _amount);
  }
}
