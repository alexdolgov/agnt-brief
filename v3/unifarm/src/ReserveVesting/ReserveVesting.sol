// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Reserve Tokens Vesting
// Tokens locked for the first 12 months
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./TokenVestingBase.sol";

contract  ReserveVesting is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0x1F2c02f7DE2d24A89291C49EE8756de29F2E1Fa1;
    uint256[] internal RELEASETIMESTAMPS_ = [1654041600];
    uint256[] internal RELEASEAMOUNTS_ = [22000000e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}
