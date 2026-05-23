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
        uint256 _startTime, // 30 marzo 2022 (1648591200)
        uint256 _endTime, // 30 marzo 2025 (1743289200)
        uint256 _editAddressUntil // 30 marzo 2022 (1648591200)
    ) ManagedVestingReserve(_token, _startTime, _endTime, _editAddressUntil) {}

    function initialize() external override {
        require(!initialized, 'InvestorsVestingReserve: Already initialized');
        require(
            token.transferFrom(msg.sender, address(this), 277776*10**18),
            'ManagedVestingReserve: Cannot transfer tokens from sender.'
        );
        locked[0x389E30302a6dff422a3bcd713a1C98F5d0F6ef5F] = 111111*10**18;
        locked[0x3b09B9b4E1C72d96809fE79ADfE804ab3a914C55] = 55555*10**18;
        locked[0x16353A806844d693cA15aC99e15A2B49a89aAc8c] = 55555*10**18;
        locked[0xba1a3e8f784505162e1200Ad3D3c40c068b49c15] = 55555*10**18;

        initialized = true;
    }
}
