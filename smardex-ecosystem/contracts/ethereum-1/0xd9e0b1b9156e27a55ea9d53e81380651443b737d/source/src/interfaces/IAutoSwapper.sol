// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWETH {
    /**
     * @notice deposit ether to get WETH
     */
    function deposit() external payable;

    /**
     * @notice transfer WETH to another address
     * @param to the address to transfer WETH to
     * @param value the amount of WETH to transfer
     * @return true if the transfer was successful
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @notice withdraw WETH to get ether
     * @param value the amount of WETH to withdraw
     */
    function withdraw(uint256 value) external;
}

interface ISmardexRouter {
    /**
     * @notice get WETH address
     * @return address of the WETH token (Wrapped Ether)
     */
    function WETH() external view returns (IWETH);
}

interface IAutoSwapper {
    /**
     * @notice emitted every time the AutoSwapper swaps and stacks SDEXs
     * @param _token0 the first swapped token
     * @param _amount0 the amount of token0 swapped
     * @param _token1 the second swapped token
     * @param _amount1 the amount of token1 swapped
     * @param _stakedAmount the staked amount
     */
    event workExecuted(IERC20 _token0, uint256 _amount0, IERC20 _token1, uint256 _amount1, uint256 _stakedAmount);

    /**
     * @notice public function for executing swaps on tokens and burn, will be called from a
     * Smardex Pair on mint and burn, and can be forced call by anyone
     * @param _token0 token to be converted to sdex
     * @param _token1 token to be converted to sdex
     */
    function executeWork(IERC20 _token0, IERC20 _token1) external;

    /**
     * @notice transfer SDEX from here to address dead
     * @return _amount the transferred SDEX amount
     */
    function transferTokens() external returns (uint256 _amount);

    /**
     * @notice return the smardexToken address
     * @return smardexToken address
     */
    function smardexToken() external view returns (IERC20);

    /**
     * @notice return the smardexRouter address
     * @return smardexRouter address
     */
    function router() external view returns (ISmardexRouter);
}
