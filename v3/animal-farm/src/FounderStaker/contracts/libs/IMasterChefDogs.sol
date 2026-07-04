// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IMasterChefDogs {

    // Info of each user.
    struct UserInfo {
        uint256 amount;             // How many LP tokens the user has provided.
        uint256 pigsRewardDebt;     // Reward debt. See explanation below.
        uint256 rewardLockedUp;     // Reward locked up.
        uint256 nextHarvestUntil;   // When can the user harvest again.
    }

    function userInfo(address _user)
    external view
    returns(UserInfo memory);

    function deposit(uint256 _pid, uint256 _amount, address _referrer)
    external;

    // Transfer want tokens strategy -> MasterChefV2
    function withdraw(uint256 _pid, uint256 _amount)
    external;

    function emergencyWithdraw(uint256 _pid)
    external;
}