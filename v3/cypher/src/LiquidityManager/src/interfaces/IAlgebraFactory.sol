// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IAlgebraFactory {
    /**
     * @notice Creates a new pool for the given pair of tokens using the default deployer
     * @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
     * @param tokenA The contract address of either token0 or token1
     * @param tokenB The contract address of the other token
     * @param data Additional data passed to the pool deployment
     * @return pool The address of the newly created pool
     */
    function createPool(address tokenA, address tokenB, bytes calldata data) external returns (address pool);

    /**
    * @notice Returns the pool address for a given pair of tokens and a fee, or address 0 if it does not exist
    * @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
    * @param tokenA The contract address of either token0 or token1
    * @param tokenB The contract address of the other token
    * @return pool The pool address
    */
    function poolByPair(address tokenA, address tokenB) external view returns (address pool);

    /**
     * @notice Returns the custom pool address for a given pair of tokens and a deployer, or address 0 if it does not exist
     * @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
     * @param deployer The address of the deployer
     * @param tokenA The contract address of either token0 or token1
     * @param tokenB The contract address of the other token
     * @return pool The pool address
     */
    function customPoolByPair(address deployer, address tokenA, address tokenB) external view returns (address);

    /// @notice Returns the owner of the factory
    /// @return The address of the factory owner
    function owner() external view returns (address);
}