// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISpookyMasterChefV2 {

    struct UserInfo {
        uint256 amount;     // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    struct PoolInfo {
        uint128 accBooPerShare;
        uint64 lastRewardTime;
        uint64 allocPoint;
    }

    function poolInfo(uint256 pid) external view returns (ISpookyMasterChefV2.PoolInfo memory);
    function lpToken(uint256 pid) external view returns (IERC20);

    function pendingBOO(uint _pid, address _user) external view returns (uint pending);

    function deposit(uint pid, uint amount, address to) external;
    function withdraw(uint pid, uint amount, address to) external;
    function emergencyWithdraw(uint pid, address to) external;
}
