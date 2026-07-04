// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "./interfaces/IStaking.sol";

contract StakingPower {

    address staking;

    constructor(address _staking) {
        staking = _staking;
    }

    function balanceOf(address _user) external view returns (uint) {
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(_user);
        return stakingDetails.accountDetails.totalStakingPower;
    }

}