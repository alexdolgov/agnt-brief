// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ICurveGauge {
    function deposit(uint256 _amount) external;

    function withdraw(uint256 _amount) external;

    function claim_rewards(address account, address receiver) external;

    function set_rewards_receiver(address receiver) external;
}
