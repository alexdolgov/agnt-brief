// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {VestingWallet} from "@openzeppelin/contracts/finance/VestingWallet.sol";

contract TokenVestingWallet is VestingWallet {
    address public immutable token;
    constructor(
        address _token,
        address beneficiary,
        uint64 startTimestamp,
        uint64 durationSeconds
    ) VestingWallet(beneficiary, startTimestamp, durationSeconds) {
        token = _token;
    }

    function releasedAUCTION() public view returns (uint256) {
        return released(token);
    }

    function releasableAUCTION() public view returns (uint256) {
        return releasable(token);
    }

    function releaseAUCTION() external {
        release(token);
    }
}
