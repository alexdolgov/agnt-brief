// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;


/**
 * The purpose of this contract is to hold USDL tokens for gas compensation:
 * https://github.com/Liquid-Loans-Official/monorepo#gas-compensation
 * When a borrower opens a vault, an additional 50 USDL debt is issued,
 * and 50 USDL is minted and sent to this contract.
 * When a borrower closes their active vault, this gas compensation is refunded:
 * 50 USDL is burned from the this contract's balance, and the corresponding
 * 50 USDL debt on the vault is cancelled.
 */
contract GasPool {
    // do nothing, as the core contracts have permission to send to and burn from this address
}
// 2025 Liquid Loans