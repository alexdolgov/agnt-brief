// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IELVault {
    function getDaoRewards() external view returns (uint256);
    function getPoolRewards() external view returns (uint256);
    function reinvestment() external;

    event PoolSet(address _pool);
    event PoolChanged(address _oldPool, address _pool);
    event DaoTreasuryChanged(address _oldDaoTreasury, address _daoTreasury);
    event PoolConfigChanged(address _oldOperatorRegistry, address _operatorRegistry);
    event Transfer(address _to, uint256 _amount);
    event Received(uint256 _amount);
    event Settle(uint256 _daoRewards, uint256 _poolRewards);
    event DaoRewardsClaimed(address _to, uint256 _daoRewards);
}
