// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IStakingBonus {
    function harvestBonus(address _user, address _clusterAddress) external view returns (uint256);

    function unstakeByClustersLock(address _user, address _clusterAddress) external;
}
