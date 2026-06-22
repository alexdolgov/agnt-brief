pragma solidity 0.8.18;

// SPDX-License-Identifier: MIT

interface IesVKAStaking {
    function receiveProtocolFees(uint256 _amount) external;

    function totalStakedAmount() external returns (uint256);
}
