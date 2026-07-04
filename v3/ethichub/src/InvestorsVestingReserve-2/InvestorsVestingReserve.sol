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
        uint256 _startTime, // 2023-06-30 (1688083200)
        uint256 _endTime, // 2026-06-30 (1782777600)
        uint256 _editAddressUntil // 2026-06-29 (1782777599)
    ) ManagedVestingReserve(_token, _startTime, _endTime, _editAddressUntil) {}

    function initialize() external override {
        require(!initialized, 'InvestorsVestingReserve: Already initialized');
        require(
            token.transferFrom(msg.sender, address(this), 165000*10**18),
            'ManagedVestingReserve: Cannot transfer tokens from sender.'
        );
        locked[0xBC3B7EF402762b7118016B63CFa4cdC7653fBBd3] = 165000*10**18;

        initialized = true;
    }
}
