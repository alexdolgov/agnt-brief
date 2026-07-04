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
        uint256 _startTime, //  2 de febrero 2022 (1643756400)
        uint256 _endTime, // 1 de febrero 2025 (1738364400)
        uint256 _editAddressUntil // 2 de febrero 2022 (1643756400)
    ) ManagedVestingReserve(_token, _startTime, _endTime, _editAddressUntil) {}

    function initialize() external override {
        require(!initialized, 'InvestorsVestingReserve: Already initialized');
        require(
            token.transferFrom(msg.sender, address(this), 722221*10**18),
            'ManagedVestingReserve: Cannot transfer tokens from sender.'
        );
        locked[0x9A27Eb2DbCc4b5CAB7D9c598E651a6d8EB52C5E4] = 222222*10**18;
        locked[0x60869958A341DA3F69A8C4933844271e22C5Be76] = 444444*10**18;
        locked[0x46C5CFC2079309F4e7d9476a01730a60e2F1a164] = 55555*10**18;

        initialized = true;
    }
}
