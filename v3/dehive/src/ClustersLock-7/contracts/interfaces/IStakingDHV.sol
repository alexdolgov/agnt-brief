// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStakingDHV {
    function dhvToken() external view returns (address);

    function lastRewardBlock() external view returns (uint256);

    function accDhvPerShare() external view returns (uint256);

    function dhvPerBlock() external view returns (uint256);

    function userInfo(address) external view returns (uint256, uint256);

    function onPause() external view returns (bool);

    function clusterRate(address) external view returns (uint256);

    function totalLockedDhvByUser(address) external view returns (uint256);

    function lockedDhvForClusterByUser(address, address) external view returns (uint256);

    function setDHVToken(IERC20 _dhvTokenAddress) external;

    function setOnPause(bool _paused) external;

    function setDhvPerBlock(uint256 _dhvPerBlock) external;

    // View function to see pending DHVs on frontend.
    function pendingDhv(address _user) external view returns (uint256);

    function updateRewards() external;

    function deposit(uint256 _amount) external;

    function withdraw(uint256 _amount) external;

    function adminWithdrawDhv(uint256 _amount) external;

    function setClusterRate(address _cluster, uint256 _rate) external;

    function coverCluster(
        address _cluster,
        address _user,
        uint256 _amount,
        uint256 _pid
    ) external;

    function releaseCluster(
        address _cluster,
        address _user,
        uint256 _amount,
        uint256 _pid
    ) external;

    function releaseClusterTotal(
        address _cluster,
        address _user,
        uint256 _pid
    ) external;

    function claimRewards() external;
}
