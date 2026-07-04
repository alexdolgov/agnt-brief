// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { CoreWriter } from "../lib/CoreWriter.sol";

abstract contract AbstractHlAlignedStable {

    /// @dev Address of the CoreWriter system contract on HyperEVM
    address constant CORE_WRITER_ADDRESS = 0x3333333333333333333333333333333333333333;

    /**
     * @dev Prefix for the CoreWriter EVM supply change action
     *      0x01: encoding version 1
     *      0x00000e: reflect EVM supply change
     */
    bytes4 constant CORE_WRITER_SUPPLY_CHANGE_PREFIX = 0x0100000e;

    /// @dev Token ID of USDH on HyperCore, intended to be 360
    uint64 immutable HIP1_TOKEN_IDX;

    /**
     * @dev Scaling factor to convert from ERC-20 decimals to HIP-1 decimals for the token, so that
     *      `amount` of the ERC-20 corresponds to `amount * HIP1_SCALING_FACTOR` of the HIP-1.
     *      USDH has ERC-20 decimals of 6 and HIP-1 decimals of 8, so `HIP1_SCALING_FACTOR` is
     * intended
     *      to be `10 ** 2`.
     */
    uint256 immutable HIP1_SCALING_FACTOR;

    /**
     * @dev Constructor with HIP-1 parameters to facilitate easier testnet usage.
     *      This contract is only meant to be deployed for USDH and testnet tokens with
     *      the same parameters.
     *
     * @param hip1TokenIdx The token ID of USDH on HyperCore, intended to be 360
     * @param hip1ScalingFactor The scaling factor to convert from ERC-20 decimals to HIP-1
     *        decimals, intended to be `10 ** 2`
     */
    constructor(uint64 hip1TokenIdx, uint256 hip1ScalingFactor) {
        HIP1_TOKEN_IDX = hip1TokenIdx;
        HIP1_SCALING_FACTOR = hip1ScalingFactor;
    }

    /**
     * @dev Reflects the supply change of aligned stablecoin on HyperCore.
     *
     * @param amount The amount of the supply change
     * @param isMint Whether the supply change is a mint
     */
    function _reflectSupplyChange(uint256 amount, bool isMint) internal {
        // Convert `amount` to HIP-1 decimals
        // The maximum ERC-20 supply of USDH is `100_000_000_000 * 10e6`, meaning that
        // `amount * HIP1_SCALING_FACTOR <= 100_000_000_000 * 10e8 < type(uint64).max`,
        // so this conversion is safe.
        uint64 hip1Amount = uint64(amount * HIP1_SCALING_FACTOR);

        // Encoding of call for CoreWriter.sendRawAction
        // arguments (token, wei, is_mint) of type (uint64, uint64, bool)
        bytes memory data = abi.encodePacked(
            CORE_WRITER_SUPPLY_CHANGE_PREFIX, abi.encode(HIP1_TOKEN_IDX, hip1Amount, isMint)
        );

        // Use CoreWriter to register supply change on HyperCore
        CoreWriter(CORE_WRITER_ADDRESS).sendRawAction(data);
    }

}
