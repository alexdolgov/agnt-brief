// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/finance/VestingWallet.sol";

/**
 * @title AtlendisVestingWallet
 * @notice Used to distribute tokens to Atlendis private sale investors
 **/
contract AtlendisVestingWallet is VestingWallet {
    /////////////
    // STORAGE //
    /////////////

    // duration of the vesting cliff, before which no tokens can be released
    uint64 private immutable _cliff;

    /////////////////
    // CONSTRUCTOR //
    /////////////////

    constructor(
        address beneficiaryAddress,
        uint64 startTimestamp,
        uint64 totalDurationSeconds,
        uint64 cliffDurationSeconds
    ) VestingWallet(beneficiaryAddress, startTimestamp, totalDurationSeconds) {
        _cliff = cliffDurationSeconds;
    }

    ///////////
    // VIEWS //
    ///////////

    function cliff() public view returns (uint64) {
        return _cliff;
    }

    ///////////////
    // OVERRIDES //
    ///////////////

    /**
     * @notice Override vesting schedule function
     * @dev Implements a linear vesting with a cliff
     * Cliff duration is included into total vesting duration
     * Time parameters are set at deployment
     **/
    function _vestingSchedule(uint256 totalAllocation, uint64 timestamp)
        internal
        view
        override
        returns (uint256)
    {
        if (timestamp < start() + _cliff) {
            return 0;
        } else if (timestamp > start() + duration()) {
            return totalAllocation;
        } else {
            return (totalAllocation * (timestamp - start())) / duration();
        }
    }
}
