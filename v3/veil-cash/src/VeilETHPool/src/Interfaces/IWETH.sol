// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IWETH
 * @author Veil Cash
 * @notice Interface for WETH contract
 */
interface IWETH is IERC20 {
    // Events
    event Deposit(address indexed dst, uint256 wad);
    event Withdrawal(address indexed src, uint256 wad);

    // Wrap ETH to iETH
    function deposit() external payable;

    // Unwrap iETH to ETH
    function withdraw(uint256 wad) external;

    // Token metadata
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
} 