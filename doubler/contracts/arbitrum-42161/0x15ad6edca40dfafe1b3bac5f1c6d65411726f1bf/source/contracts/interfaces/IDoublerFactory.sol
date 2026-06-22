// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

/**
 * @title IDoublerFactory
 * @dev Interface for the DoublerFactory contract, including custom errors, structures, and event definitions.
 */
interface IDoublerFactory {
    // Custom errors
    error E_Minter(); // Error for unauthorized minting actions
    error E_Initialized(); // Error indicating the contract has already been initialized
    error E_ZeroAddr(); // Error for zero address inputs
    error E_EndTime(); // Error for invalid end time settings
    error E_PoolId();

    // Structure for adding a new pool
    struct AddPool {
        uint16 inputFee; // Fee percentage for inputs
        uint16 withdrawFee; // Fee percentage for withdrawals
        uint256 lowerOfInputMaximum; // Lower bound of input maximum limit
        address asset; // Address of the asset
        uint256 poolId; // Pool identifier
        uint256 startTime; // Pool start time
        uint256 endTime; // Pool end time
        address creator; // Address of the pool creator
        string namePre; // Prefix for the pool's token name
        string symbolPre; // Prefix for the pool's token symbol
    }

    event NewPool(address indexed asset, uint256 poolId, address pool, address cToken, address bToken);
    event MintReward(address _asset, uint256 _poolId, address _to, uint256 _amount);
    event UpdateEcoAddr(address ecoAddr, address newEcoAddr);

    function newPool(AddPool calldata _addPool) external;
    function mintReward(address _asset, uint256 _poolId, address _to, uint256 _amount) external;
    function getFastPriceFeed() external view returns (address);
    function getFactoryOwner() external view returns (address);
    function getWethAddr() external view returns (address);
    function getEcoAddr() external view returns (address);
    function getLatestPoolId(address _asset) external view returns (uint256);
    function getPoolAddr(address _asset, uint256 _poolId) external view returns (address);
    function getRewardAddr() external view returns (address);
}
