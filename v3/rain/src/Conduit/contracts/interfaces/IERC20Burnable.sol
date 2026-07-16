// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IERC20Burnable
 * @author Rain Team
 * @dev Interface derived from {IERC20Burnable}.
 */
interface IERC20Burnable is IERC20 {
    /**
     * @dev Destroys `value` tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 value) external;

    /**
     * @dev Destroys `value` tokens from `account`, deducting from the caller's allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least `value`.
     */
    function burnFrom(address account, uint256 value) external;
}
