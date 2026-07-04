// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
/**
 * @title FF
 * @dev Standard ERC20 implementation of the Falcon Finance ($FF) token
 *
 * Features:
 * - Standard ERC20 functionality
 * - Fixed supply of 10 billion tokens
 * - All tokens minted to specified recipient on deployment
 * - No additional permissions or restrictions
 * - Permit signing for approval
 */

contract FF is ERC20Permit {
    /// @dev Total supply: 10 billion tokens (10^10 * 10^18)
    uint256 private constant TOTAL_SUPPLY = 10_000_000_000 * 10 ** 18;

    /**
     * @dev Constructor that mints all tokens to the specified recipient
     * @param recipient The address that will receive all tokens
     */
    constructor(address recipient) ERC20("Falcon Finance", "FF") ERC20Permit("Falcon Finance") {
        require(recipient != address(0), "FF: recipient cannot be zero address");
        _mint(recipient, TOTAL_SUPPLY);
    }
}
