// SPDX-License-Identifier: gpl-3.0

pragma solidity 0.7.5;

import './ManagedVestingReserve.sol';

/**
 * @title InvestorsVestingReserve
 * @author Ethichub
 */
contract InvestorsVestingReserve is ManagedVestingReserve {

    constructor(
        IERC20 _token,
        uint256 _startTime, //  2022-06-30 (1656547200)
        uint256 _endTime, // 2025-06-30 (1751241600)
        uint256 _editAddressUntil // 2025-06-29 (1751241599)
    ) ManagedVestingReserve(_token, _startTime, _endTime, _editAddressUntil) {}

    function initialize() external override {
        require(!initialized, 'InvestorsVestingReserve: Already initialized');
        require(
            token.transferFrom(msg.sender, address(this), 1044444*10**18),
            'ManagedVestingReserve: Cannot transfer tokens from sender.'
        );
        locked[0x98Cd64390592C697d8960f5389773A98765d679D] = 444444*10**18;
        locked[0x8BDC3d98A267020F80936E4FF18f279b611452c3] = 220000*10**18;
        locked[0x090DF5DD1028921a51234Eb1d8fb0ccF03210c95] = 165000*10**18;
        locked[0x84227b134348Cc0Ad3042b900cf0960C796EAbeC] = 50000*10**18;

        initialized = true;
    }
}
