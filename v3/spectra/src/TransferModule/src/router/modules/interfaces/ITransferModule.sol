// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title ITransferModule
 * @notice Interface for TransferModule - contract for executing various token transfer operations
 * @dev Provides functionality for ERC20 token transfers and native token transfers
 */
interface ITransferModule {
    /**
     * @notice Custom errors
     */
    error PermitFailed();
    error NativeTransferFailed();
    error MinimumBalanceNotReached(address token, address owner, uint256 actualBalance, uint256 requiredMinimum);

    /**
     * @notice Transfers tokens from sender to this contract
     * @param token The address of the token to transfer
     * @param value The amount of tokens to transfer
     */
    function transferFrom(address token, uint256 value) external payable;

    /**
     * @notice Transfers tokens from sender to this contract using permit
     * @param token The address of the token to transfer
     * @param value The amount of tokens to transfer
     * @param deadline The permit deadline
     * @param v The recovery byte of the signature
     * @param r Half of the ECDSA signature pair
     * @param s Half of the ECDSA signature pair
     */
    function transferFromWithPermit(address token, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external
        payable;

    /**
     * @notice Transfers tokens to a recipient
     * @param token The address of the token to transfer
     * @param recipient The address of the recipient
     * @param value The amount of tokens to transfer
     */
    function transfer(address token, address recipient, uint256 value) external payable;

    /**
     * @notice Transfers native tokens to a recipient
     * @param recipient The address of the recipient
     * @param amount The amount of native tokens to transfer
     */
    function transferNative(address recipient, uint256 amount) external payable;

    // PREVIEW FUNCTIONS

    /**
     * @notice Previews transferFrom operations
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewTransferFrom(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external pure returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews transfer operations
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewTransfer(bytes memory _inputs, bool _spot, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        view
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);
}
