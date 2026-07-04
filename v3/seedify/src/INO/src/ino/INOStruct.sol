// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Phase} from "../common/SaleStruct.sol";

/**
 * @notice Struct representing a free allocation and user based for a specific phase of a sale.
 *         Whitelisted addresses will mint NFTs for free.
 *
 * @param phaseId Phase identifier of the current sale.
 * @param toMint Amount of NFT to be minted.
 * @param account Wallet address of the buyer.
 */
struct FreeAllocation {
    string phaseId;
    uint256 toMint;
    address account;
}

/**
 * @notice Struct representing a phase of an INO sale.
 *
 * @param base Phase struct from {SaleStruct} shared with IGO sales.
 * @param phaseMaxMint Maximum amount of NFTs that can be minted in this phase.
 */
struct INOPhase {
    Phase base;
    uint256 phaseMaxMint;
}
