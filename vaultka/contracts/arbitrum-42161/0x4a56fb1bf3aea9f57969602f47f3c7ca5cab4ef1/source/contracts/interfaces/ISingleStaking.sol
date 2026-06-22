// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IRewardPerSec } from "./IRewardPerSec.sol";

interface ISingleStaking {
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 boostMultiplier; //current multiplier after boosting
    }

    struct PoolInfo {
        IERC20 lpToken;
        uint256 allocPoint; // How many allocation points assigned to this pool. esVKAs to distribute per second.
        uint256 lastRewardTimestamp; // Last timestamp that esVKAs distribution occurs.
        uint256 accesVKAPerShare; // Accumulated esVKAs per share, times 1e18. See below.
        uint256 totalBoostedShare; // total boosted share amount in this pool
        IRewardPerSec rewarder;
    }

    // function poolInfo(uint256 pid) external view returns (PoolInfo memory);

    function totalAllocPoint() external view returns (uint256);

    function deposit(uint256 _pid, uint256 _amount) external;
}
