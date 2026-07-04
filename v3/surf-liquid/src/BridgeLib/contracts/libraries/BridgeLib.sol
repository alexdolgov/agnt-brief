// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../Interfaces/IVaultRegistry.sol";

/**
 * @title BridgeLib
 * @dev Library for bridge router interactions to reduce contract size
 */
library BridgeLib {
    using SafeERC20 for IERC20;

    error BridgeRouterNotWhitelisted();
    error BridgeCallFailed();
    error BridgeBalanceNotReduced();
    error BridgeZeroAmount();
    error BridgeOverspend();
    error BridgeRecipientMismatch();
    error UnsupportedRouterType();
    error InvalidReceiverLength();

    /**
     * @dev Validate that the bridge calldata encodes this vault as the recipient (SL-C01 fix)
     * @param registry The vault registry for router type lookup
     * @param bridgeRouter The bridge router contract address
     * @param bridgeCalldata The calldata to forward to the bridge router
     */
    function _validateRecipient(
        IVaultRegistry registry,
        address bridgeRouter,
        bytes calldata bridgeCalldata
    ) internal view {
        uint8 routerType = registry.bridgeRouterType(bridgeRouter);

        address recipient;

        // Skip the 4-byte function selector to get to ABI-encoded parameters
        uint256 paramsStart;
        assembly { paramsStart := add(bridgeCalldata.offset, 4) }

        if (routerType == 1) {
            // LI.FI: BridgeData.receiver is at word 5 of first param tuple
            // Step 1: read tuple offset (first ABI param is offset pointer to BridgeData struct)
            uint256 tupleOffset;
            assembly { tupleOffset := calldataload(paramsStart) }
            // Step 2: read receiver at tupleStart + 0xA0 (word 5)
            // tupleOffset is relative to paramsStart
            assembly { recipient := calldataload(add(add(paramsStart, tupleOffset), 0xA0)) }

        } else if (routerType == 2) {
            // deBridge: OrderCreation.receiverDst is bytes at word 5 (offset pointer)
            uint256 tupleOffset;
            assembly { tupleOffset := calldataload(paramsStart) }
            uint256 tupleStart;
            assembly { tupleStart := add(paramsStart, tupleOffset) }
            // word 5 = offset to receiverDst bytes data (relative to tuple start)
            uint256 receiverBytesOffset;
            assembly { receiverBytesOffset := calldataload(add(tupleStart, 0xA0)) }
            uint256 receiverDataStart;
            assembly { receiverDataStart := add(tupleStart, receiverBytesOffset) }
            // Read length, verify 20 bytes (EVM address)
            uint256 receiverLen;
            assembly { receiverLen := calldataload(receiverDataStart) }
            if (receiverLen != 20) revert InvalidReceiverLength();
            // Read 20-byte address (left-aligned, shift right 96 bits)
            assembly { recipient := shr(96, calldataload(add(receiverDataStart, 0x20))) }

        } else {
            revert UnsupportedRouterType();
        }

        if (recipient != address(this)) revert BridgeRecipientMismatch();
    }

    /**
     * @dev Execute a bridge call through a whitelisted router
     * @param registry The vault registry for whitelist checks
     * @param bridgeRouter The bridge router contract address
     * @param asset The token being bridged
     * @param amount The amount to approve for bridging
     * @param bridgeCalldata The calldata to forward to the bridge router
     * @return spent The amount of tokens consumed by the bridge
     */
    function executeBridge(
        IVaultRegistry registry,
        address bridgeRouter,
        address asset,
        uint256 amount,
        bytes calldata bridgeCalldata
    ) external returns (uint256 spent) {
        if (amount == 0) revert BridgeZeroAmount();
        if (!registry.isBridgeRouterWhitelisted(bridgeRouter)) revert BridgeRouterNotWhitelisted();

        // Validate bridge recipient is this vault (SL-C01 fix)
        _validateRecipient(registry, bridgeRouter, bridgeCalldata);

        uint256 balanceBefore = IERC20(asset).balanceOf(address(this));

        // Approve exact amount to router
        IERC20(asset).forceApprove(bridgeRouter, amount);

        // Call bridge router with provided calldata
        (bool success,) = bridgeRouter.call{value: msg.value}(bridgeCalldata);
        if (!success) revert BridgeCallFailed();

        // Revoke approval
        IERC20(asset).forceApprove(bridgeRouter, 0);

        uint256 balanceAfter = IERC20(asset).balanceOf(address(this));

        // Verify tokens were consumed
        if (balanceAfter >= balanceBefore) revert BridgeBalanceNotReduced();

        spent = balanceBefore - balanceAfter;

        // SL-02: Enforce spend cap — router must not consume more than approved amount
        if (spent > amount) revert BridgeOverspend();
    }
}
