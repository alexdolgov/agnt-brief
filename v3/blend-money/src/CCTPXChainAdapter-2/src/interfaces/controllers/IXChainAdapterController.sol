// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Cross-Chain Adapter Controller Interface
 * @notice Defines the required surface for adapters that execute cross-chain actions.
 * @dev Implement this interface to integrate different cross-chain protocols. The adapter
 *      receives assets and parameters, validates them, and forwards to the underlying bridge/messaging.
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @custom:security-contact security@blend.money
 */
interface IXChainAdapterController {
    /**
     * @notice Emitted after a successful cross-chain bridge execution.
     */
    event BridgeExecuted(
        bytes32 indexed bridgeId,
        uint256 indexed chainId,
        address indexed sender,
        address recipient,
        address inputToken,
        uint256 amount,
        uint256 dustAmount
    );

    /**
     * @notice Execute a cross-chain action using pre-transferred assets.
     * @dev The `data` blob is adapter-specific and should decode to the underlying
     *      bridge/messaging parameters for the implementation. Caller is expected to
     *      transfer the required `inputToken` amount to the adapter prior to this call.
     * @param chainId The destination chain ID where the action will settle
     * @param sender The initiating address on the source chain (for validation/accounting)
     * @param recipient The destination address or payload recipient on the target chain
     * @param inputToken The ERC20 token being bridged/sent
     * @param data ABI-encoded adapter-specific parameters
     */
    function execute(uint256 chainId, address sender, address recipient, IERC20 inputToken, bytes calldata data)
        external;

    /**
     * @notice Check whether a destination chain is supported by the adapter.
     * @dev Used by controllers prior to attempting a cross-chain action.
     * @param chainId The destination chain ID to validate
     * @return bool isSupported True if supported, false otherwise
     */
    function isChainSupported(uint256 chainId) external view returns (bool);
}
