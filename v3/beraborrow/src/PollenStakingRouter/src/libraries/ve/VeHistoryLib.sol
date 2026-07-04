// SPDX-License-Identifier: GPL-3.0-or-later
// Forked from OpenZeppelin (v4.5.0) (utils/Checkpoints.sol)
pragma solidity ^0.8.0;

import {WeekMath} from "src/libraries/ve/WeekMath.sol";
import "src/libraries/ve/VeBalanceLib.sol";

struct Checkpoint {
    uint128 timestamp;        // Week start timestamp
    uint128 lastUpdateTimestamp; // Last actual update timestamp within the week
    VeBalance value;
}

library CheckpointHelper {
    function assignWith(Checkpoint memory a, Checkpoint memory b) internal pure {
        a.timestamp = b.timestamp;
        a.lastUpdateTimestamp = b.lastUpdateTimestamp;
        a.value = b.value;
    }
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
        uint128 currentWeekStart = WeekMath.getCurrentWeekStart();
        uint128 currentTimestamp = uint128(block.timestamp);
        
        if (pos > 0 && self._checkpoints[pos - 1].timestamp == currentWeekStart) {
            // Update existing checkpoint for this week
            self._checkpoints[pos - 1].value = value;
            self._checkpoints[pos - 1].lastUpdateTimestamp = currentTimestamp;
        } else {
            // Create new checkpoint for this week
            self._checkpoints.push(Checkpoint({
                timestamp: currentWeekStart, 
                lastUpdateTimestamp: currentTimestamp,
                value: value
            }));
        }
    }
}