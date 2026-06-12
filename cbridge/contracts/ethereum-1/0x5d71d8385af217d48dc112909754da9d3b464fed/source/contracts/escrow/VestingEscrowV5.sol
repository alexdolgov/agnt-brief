// SPDX-License-Identifier: ISC
pragma solidity 0.7.5;

import "./VestingEscrowV2.sol";

/**
 * @title VestingEscrowV5
 */
contract VestingEscrowV5 is VestingEscrowV2 {
  constructor(address token_, address delegateRegistry_) VestingEscrowV2(token_, delegateRegistry_) {}

  /**
   * @dev Claim the vested tokens for the recipient. Anyone can call this method.
   */
  function claim() external override {
    uint256 amount = _tokenBalance(token);

    if (amount > 0) {
      _transferAsset(token, recipient, amount);
      emit Claimed(address(token), amount, msg.sender, recipient);
    }
  }

}
