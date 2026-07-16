// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./IRewarder.sol";

interface IRewardRegistry {
    // Events
    event PoolAdded(address indexed poolAddress, address indexed rewarder);

    // Functions
    function initialize() external;
    function isTrutedUpdater(address _account) external view returns (bool);
    function isOperator(address _account) external view returns (bool);
    function addPool(address poolAddress, IRewarder rewarder) external;
    function pausePool(uint256 poolId) external;
    function unpausePool(uint256 poolId) external;
    function setPoolRewarder(uint256 poolId, IRewarder rewarder) external;
    function setPoolPositionManager(address poolAddress, uint256 positionManagerId, address vaultAddress) external;
    function addPositionManager(string memory positionManager) external;
    function getPositionManager(uint256 positionManagerId) external view returns (string memory);
    function getPoolRewarder(uint256 poolId) external view returns (IRewarder);
    function getPoolAddress(uint256 poolId) external view returns (address);
    function getPoolId(address poolAddress) external view returns (uint256);
    function isPoolPaused(uint256 poolId) external view returns (bool);
    function getPoolCount() external view returns (uint256);
    function getPositionManagerCount() external view returns (uint256);
    function getPoolPMVaultByAddress(address poolAddress, uint256 positionManagerId) external view returns (address);
    function getPoolPMVaultById(uint256 poolId, uint256 positionManagerId) external view returns (address);
    function hasRole(bytes32 role, address account) external view returns (bool);
    function ADMIN_ROLE() external pure returns (bytes32);
    function OPERATOR_ROLE() external pure returns (bytes32);
    function TRUSTED_UPDATER_ROLE() external pure returns (bytes32);
    
}
