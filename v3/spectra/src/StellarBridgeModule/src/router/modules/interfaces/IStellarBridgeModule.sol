// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title IStellarBridgeModule
 * @notice Interface for the StellarBridgeModule contract that handles bridging PT tokens to Stellar
 */
interface IStellarBridgeModule {
    // ============ Events ============

    /**
     * @dev Emitted when the PT bridge address is changed
     * @param previousPTBridge The previous bridge address
     * @param newPTBridge The new bridge address
     */
    event PTBridgeChange(address indexed previousPTBridge, address indexed newPTBridge);

    // ============ Errors ============

    /**
     * @dev Error thrown when the PT bridge is not set
     */
    error PTBridgeNotSet();

    /**
     * @dev Error thrown when the bridge call fails
     */
    error BridgeCallFailed();

    // ============ Configuration Functions ============

    /**
     * @notice Retrieves the current PT bridge address
     * @return The address of the current PT bridge contract
     */
    function getPTBridge() external view returns (address);

    /**
     * @notice Updates the PT bridge address
     * @dev Only callable by authorized addresses (restricted modifier)
     * @param _ptBridge The new PT bridge contract address
     */
    function setPTBridge(address _ptBridge) external;

    // ============ Bridge Functions ============

    /**
     * @notice Bridges PT tokens to Stellar via the PTBridge contract
     * @dev The PT tokens must already be in the router (via a prior TRANSFER_FROM command).
     *      Forwards `bridgeGasFee` (a caller-budgeted slice of msg.value) for cross-chain
     *      gas. The router's cached msg.value is decremented by `bridgeGasFee` so other
     *      commands in the same batch see the remaining balance.
     * @param pt The address of the Principal Token to bridge
     * @param amount The amount of PT to bridge (supports CONTRACT_BALANCE flag)
     * @param stellarRecipient The Stellar address that will receive the wrapped PT
     * @param bridgeGasFee The native value to forward to the bridge for cross-chain gas
     * @param refundAddress EVM address that receives PT if Stellar delivery fails (supports MSG_SENDER/ADDRESS_THIS)
     * @param minAmountOut Minimum PT credited on Stellar after bridge fee; reverts if not met
     */
    function bridgePTToStellar(
        address pt,
        uint256 amount,
        string calldata stellarRecipient,
        uint256 bridgeGasFee,
        address refundAddress,
        uint256 minAmountOut
    ) external payable;

    // ============ Preview Functions ============

    /**
     * @notice Preview function for BRIDGE_PT_TO_STELLAR command
     * @param _inputs The encoded input parameters
     * @param _spot Whether to use spot pricing (unused)
     * @param balances The current token balances
     * @return rate Always returns RAY_UNIT (1:1 bridge)
     * @return updatedBalances The updated token balances
     */
    function previewBridgePTToStellar(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);
}
