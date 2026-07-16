// SPDX-License-Identifier: GPL-3.0-or-later
// This contract is a modified version of the Pendle VeHistoryLib Library
// https://github.com/pendle-finance/pendle-core-v2-public/

pragma solidity ^0.8.0;

import "./VoteEscrowLib.sol";
import "./WeekMath.sol";

struct Checkpoint {
  uint128 timestamp;
  VeBalance value;
}

library Checkpoints {
  struct History {
    Checkpoint[] _checkpoints;
  }

  function length(History storage self) internal view returns (uint256) {
    return self._checkpoints.length;
  }

  function get(History storage self, uint256 index) internal view returns (Checkpoint memory) {
    return self._checkpoints[index];
  }

  function push(History storage self, VeBalance memory value) internal {
    uint256 pos = self._checkpoints.length;
    if (pos > 0 && self._checkpoints[pos - 1].timestamp == WeekMath.getCurrentWeekStart()) {
      self._checkpoints[pos - 1].value = value;
    } else {
      self._checkpoints.push(Checkpoint({timestamp: WeekMath.getCurrentWeekStart(), value: value}));
    }
  }
}
