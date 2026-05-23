// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./libraries/BoringERC20.sol";
import "./rewarders/IComplexRewarder.sol";

interface IBasedDistributorV2 {
    struct PoolInfo {
        IBoringERC20 lpToken;
        uint256 allocPoint;
        uint256 lastRewardTimestamp;
        uint256 accAlbPerShare;
        uint16 depositFeeBP;
        uint256 harvestInterval;
        uint256 totalLp;
        IComplexRewarder[] rewarders;
    }

    function poolInfo(uint256 pid) external view returns (
        IBoringERC20 lpToken,
        uint256 allocPoint,
        uint256 lastRewardTimestamp,
        uint256 accAlbPerShare,
        uint16 depositFeeBP,
        uint256 harvestInterval,
        uint256 totalLp
    );

    function albPerSec() external view returns (uint256);

    function add(
        uint256 _allocPoint,
        IBoringERC20 _lpToken,
        uint16 _depositFeeBP,
        uint256 _harvestInterval,
        IComplexRewarder[] calldata _rewarders
    ) external;

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        uint16 _depositFeeBP,
        uint256 _harvestInterval,
        IComplexRewarder[] calldata _rewarders
    ) external;

    function updateAllocPoint(uint256 _pid, uint256 _allocPoint) external;
    function updateEmissionRate(uint256 _albPerSec) external;
    function setTeamPercent(uint256 _newTeamPercent) external;
    function setTreasuryPercent(uint256 _newTreasuryPercent) external;
    function setInvestorPercent(uint256 _newInvestorPercent) external;
    function transferOwnership(address newOwner) external;
    function totalAllocPoint() external view returns (uint256);

    function deposit(uint256 _pid, uint256 _amount) external;

    function poolLength() external view returns (uint256);

    function poolTotalLp(uint256 pid) external view returns (uint256);
}