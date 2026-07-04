// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IERC165 } from "@openzeppelin-contracts-5/utils/introspection/IERC165.sol";

/**
 * @title Mint Payment Callback
 * @notice This interface can be implemented by contracts that wish to transfer tokens during liquidity minting.
 * @dev The contract must implement the ERC-165 interface detection mechanism.
 */
interface IUniPoolMintCallback is IERC165 {
    /**
     * @notice Callback data for the mint function.
     * @param token0 The address of the first token of the pair.
     * @param token1 The address of the second token of the pair.
     * @param amount0 The amount of token0 to transfer.
     * @param amount1 The amount of token1 to transfer.
     * @param data The additional data required to perform the token transfer.
     */
    struct MintCallbackData {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        bytes data;
    }

    /**
     * @notice Function called to transfer tokens during the mint process.
     * @param data The callback data containing the token addresses, amounts and an additional field for specific
     * transfer handling.
     */
    function uniPoolMintCallback(MintCallbackData calldata data) external;
}
