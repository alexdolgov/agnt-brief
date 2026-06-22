// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Deposit {
    using SafeERC20 for IERC20;

    address constant public ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    // Custom errors
    error InvalidDepositAddress();
    error InvalidAmount();
    error InvalidETHAmount();
    error ETHTransferFailed();
    error ETHNotAcceptedForTokenDeposits();
    error InvalidAssetAddress();

    // Event emitted when a deposit is made
    event DepositMade(
        address asset,
        uint256 amount,
        address indexed depositAddress,
        bytes32 indexed txId,
        address indexed sender
    );

    /**
     * @notice Deposits tokens or ETH to a specified address
     * @param asset The token address to deposit (use ETH_ADDRESS for ETH)
     * @param amount The amount of tokens/ETH to deposit
     * @param depositAddress The address to receive the deposit
     * @param txId A unique identifier for the transaction
     */
    function deposit(
        address asset,
        uint256 amount,
        address depositAddress,
        bytes32 txId
    ) external payable {
        if (depositAddress == address(0)) revert InvalidDepositAddress();
        if (amount == 0) revert InvalidAmount();

        if (asset == ETH_ADDRESS) {

            if (msg.value != amount) revert InvalidETHAmount();
            (bool success, ) = depositAddress.call{value: amount}("");
            if (!success) revert ETHTransferFailed();
        } else {
            
            if (msg.value != 0) revert ETHNotAcceptedForTokenDeposits();
            if (asset == address(0)) revert InvalidAssetAddress();
            IERC20(asset).safeTransferFrom(msg.sender, depositAddress, amount);
        }

        // Emit the deposit event
        emit DepositMade(asset, amount, depositAddress, txId, msg.sender);
    }

    // Allow contract to receive ETH
    receive() external payable {}
} 