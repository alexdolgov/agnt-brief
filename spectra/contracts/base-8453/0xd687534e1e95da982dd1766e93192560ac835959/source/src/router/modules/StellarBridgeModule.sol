// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessManagedUpgradeable} from "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";
import {LibStellarBridgeModule} from "src/router/modules/libraries/LibStellarBridgeModule.sol";
import {IStellarBridgeModule} from "src/router/modules/interfaces/IStellarBridgeModule.sol";
import {IPTBridge} from "spectra-bridge-stellar/src/interfaces/IPTBridge.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";

/**
 * @title StellarBridgeModule
 * @notice Handles bridging of Spectra Principal Tokens to Stellar via the PTBridge contract
 * @dev This module is a facet of the diamond router. Users chain commands:
 *      TRANSFER_FROM (PT to router) -> BRIDGE_PT_TO_STELLAR (router bridges on behalf of user)
 */
contract StellarBridgeModule is AccessManagedUpgradeable, IStellarBridgeModule {
    using SafeERC20 for IERC20;

    /**
     * @notice Retrieves the current PT bridge address
     * @return The address of the current PT bridge contract
     */
    function getPTBridge() public view returns (address) {
        return LibStellarBridgeModule.stellarBridgeStorage().ptBridge;
    }

    /**
     * @notice Updates the PT bridge address
     * @dev Only callable by authorized addresses (restricted modifier)
     * @param _ptBridge The new PT bridge contract address
     */
    function setPTBridge(address _ptBridge) external restricted {
        LibStellarBridgeModule.setPTBridge(_ptBridge);
    }

    /**
     * @notice Bridges PT tokens to Stellar via the PTBridge contract
     * @dev The PT tokens must already be in the router (via a prior TRANSFER_FROM command).
     *      Approves the PTBridge, calls bridgeToStellar, then resets approval.
     *      Forwards `bridgeGasFee` (a caller-budgeted slice of msg.value) for cross-chain
     *      gas, then decrements the router's cached msg.value so any later command in the
     *      batch sees the remaining balance instead of the original cached total.
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
    ) external payable {
        address ptBridge = getPTBridge();
        if (ptBridge == address(0)) {
            revert PTBridgeNotSet();
        }

        amount = RouterCommandsUtilities._resolveTokenValue(pt, amount);
        refundAddress = RouterCommandsUtilities._resolveAddress(refundAddress);

        // Consume the caller's share of msg.value up front. Checked arithmetic reverts
        // if the batch over-budgets the available native balance.
        LibExecutionModule.executionStorage().msgValue -= bridgeGasFee;

        IERC20(pt).forceApprove(ptBridge, amount);
        IPTBridge(ptBridge).bridgeToStellar{value: bridgeGasFee}(
            pt, amount, stellarRecipient, refundAddress, minAmountOut
        );
        IERC20(pt).forceApprove(ptBridge, 0);
    }

    /* ---------------------------------------------------------------------------
    PREVIEW FUNCTIONS
    */

    /**
     * @notice Preview function for BRIDGE_PT_TO_STELLAR command
     * @dev Bridging is 1:1 so rate is RAY_UNIT. Decreases the PT balance in tracking.
     */
    function previewBridgePTToStellar(
        bytes memory _inputs,
        bool,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        (address pt, uint256 amount,,,,) = abi.decode(_inputs, (address, uint256, string, uint256, address, uint256));

        if (getPTBridge() == address(0)) {
            revert PTBridgeNotSet();
        }

        RouterCommandsUtilities._decreasePreviewTokenValue(amount, pt, balances);

        return (RayMath.RAY_UNIT, balances);
    }
}
