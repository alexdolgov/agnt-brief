// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { HyperLiquidComposer } from "@layerzerolabs/hyperliquid-composer/contracts/HyperLiquidComposer.sol";
import { RecoverableComposer } from "@layerzerolabs/hyperliquid-composer/contracts/extensions/RecoverableComposer.sol";

/**
 * @title HyperLiquidComposer_V1
 * @author LayerZero Labs (shankars99)
 * @dev This contract is a composer that allows transfers of ERC20 and HYPE tokens to a target address on hypercore.
 * @dev This contract does NOT refund dust to the receiver because we do not expect any due to truncation of sharedDecimals.
 * @dev Incase of dust, you would have to implement dust refunds to the receiver in:
 *      `_transferERC20ToHyperCore` and `_transferNativeToHyperCore`
 *
 * @dev Disclaimer: If the token's evm total supply exceeds the asset bridge's balance when scaled to EVM, it is possible
 *      that the composer will not be able to send the tokens to the receiver address on hypercore due to bridge consumption.
 *      Tokens would instead be returned to the sender address on HyperEVM. Front-end handling is recommended.
 */
contract HyperLiquidComposer_V1 is HyperLiquidComposer, RecoverableComposer {
    /**
     * @notice Constructor for the HyperLiquidComposer
     * @param _oft The address of the OFT
     * @param _hlIndexId The HyperLiquid core spot's index value
     * @param _assetDecimalDiff The difference in decimals between the HyperEVM's ERC20 and the HyperLiquid HIP-1 token
     *                 (i.e. 18 decimals on evm and 6 on HyperLiquid would be 18 - 6 = 12)
     * @param _recoveryAddress The address that will be authorized to perform recovery operations
     */
    constructor(
        address _oft,
        uint64 _hlIndexId,
        int8 _assetDecimalDiff,
        address _recoveryAddress
    ) HyperLiquidComposer(_oft, _hlIndexId, _assetDecimalDiff) RecoverableComposer(_recoveryAddress) {}
}
