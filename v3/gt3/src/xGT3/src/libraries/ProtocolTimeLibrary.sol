// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

library ProtocolTimeLibrary {
    uint256 internal constant DURATION = 365.25 days / 12;

    /// @dev Returns start of epoch based on current timestamp
    function epochStart(uint256 timestamp) internal pure returns (uint256) {
        unchecked {
            return timestamp - (timestamp % DURATION);
        }
    }

    /// @dev Returns start of next epoch / end of current epoch
    function epochNext(uint256 timestamp) internal pure returns (uint256) {
        unchecked {
            return timestamp - (timestamp % DURATION) + DURATION;
        }
    }

    /// @dev Returns start of voting window
    function epochVoteStart(uint256 timestamp) internal pure returns (uint256) {
        unchecked {
            return timestamp - (timestamp % DURATION) + 1 hours;
        }
    }

    /// @dev Returns end of voting window / beginning of unrestricted voting window
    function epochVoteEnd(uint256 timestamp) internal pure returns (uint256) {
        unchecked {
            return timestamp - (timestamp % DURATION) + DURATION - 1 hours;
        }
    }
}
