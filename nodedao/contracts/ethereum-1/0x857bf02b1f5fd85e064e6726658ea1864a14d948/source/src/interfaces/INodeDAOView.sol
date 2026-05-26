// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface INodeDAOPool {
    function typeId() external pure returns (bytes32);
    function totalAssets() external view returns (uint256);
    function totalWithdrawalAmount() external view returns (uint256);
    function getPoolAmount() external view returns (uint256);
    function getCLVaultAmount() external view returns (uint256);
}

interface INodeDAOView {
    function getPools() external view returns (address[] memory);
    function getTotalTVL() external view returns (uint256);
    /**
     * @notice getPoolAvailableETH
     * @return _instantAvailableAmount instant withdrawal of available funds
     * @return _delayedAvailableAmount delayed withdrawal of available funds
     */
    function getPoolAvailableETH(address _pool)
        external
        view
        returns (uint256 _instantAvailableAmount, uint256 _delayedAvailableAmount);

    event PoolAdded(address _pool, uint256 _totaETH, uint256 _withdrawalAmount, uint256 _clVaultAmount);
    event PoolRemoved(address _pool);
}
