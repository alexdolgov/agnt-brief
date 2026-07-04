// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "./TokenTimelock.sol";

contract BSCstarterLiquidityLock is TokenTimelock {
    constructor(
        IERC20 _token,
        uint256 _releaseTime,
        address primaryBeneficiary,
        address secondaryBeneficiary
    ) public TokenTimelock(_token, _releaseTime, primaryBeneficiary, secondaryBeneficiary) {}
}