/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

import { ERC20 } from "../lib/solmate/src/tokens/ERC20.sol";

/**
 * @title Arcadia - $AAA
 * @author Pragma Labs
 * @notice The Arcadia Protocol token.
 */
contract Arcadia is ERC20 {
    /**
     * @param treasury The address of the treasury.
     */
    constructor(address treasury) ERC20("Arcadia", "AAA", 18) {
        _mint(treasury, 100_000_000 * 1e18);
    }

    /**
     * @notice Burns an amount of tokens from the caller.
     * @param amount The amount of tokens to burn.
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
