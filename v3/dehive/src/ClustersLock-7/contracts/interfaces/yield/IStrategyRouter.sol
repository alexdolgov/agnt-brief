// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IStrategyRouter {
    function stakingBonuses() external view returns (address);

    function deposit(
        address _asset,
        address _user,
        uint256 _userShares,
        uint256[] calldata _amounts
    ) external;

    function withdraw(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) external;

    function harvest(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) external;

    function yieldBalance(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) external view returns (uint256);
}
