// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { BondVesting, VestingSchedule } from "../BondVesting.sol";

/* solhint-disable */
contract TEST_BondVesting is BondVesting {
  function startVesting(uint256 id, VestingSchedule calldata schedule) public {
    _startVesting(id, schedule);
  }

  function updateVesting(
        uint256 id,
        VestingSchedule calldata schedule
  ) external {
    _updateVesting(id, schedule);
  }
}