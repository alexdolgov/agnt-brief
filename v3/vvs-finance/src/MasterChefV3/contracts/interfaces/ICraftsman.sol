// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

interface ICraftsman {
    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of VVSs
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accVVSPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accVVSPerShare` (and `lastRewardBlock`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        address lpToken; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. VVSs to distribute per block.
        uint256 lastRewardBlock; // Last block number that VVSs distribution occurs.
        uint256 accVVSPerShare; // Accumulated VVSs per share, times 1e12. See below.
    }

    function deposit(uint256 _pid, uint256 _amount) external;

    function withdraw(uint256 _pid, uint256 _amount) external;

    function enterStaking(uint256 _amount) external;

    function leaveStaking(uint256 _amount) external;

    function pendingVVS(uint256 _pid, address _user) external view returns (uint256);

    function updatePool(uint256 _poolId) external;

    function poolInfo(uint256 _poolId) external view returns (PoolInfo memory);

    function userInfo(uint256 _pid, address _user) external view returns (UserInfo memory);

    function emergencyWithdraw(uint256 _pid) external;

    function vvsPerBlock() external view returns (uint256);

    function poolLength() external view returns (uint256);

    function add(uint256 _allocPoint, address _lpToken, bool _withUpdate) external;

    function owner() external view returns (address);

    function set(uint256 _pid, uint256 _allocPoint, bool _withUpdate) external;

    function massUpdatePools() external;

    function totalAllocPoint() external view returns (uint256);
}
