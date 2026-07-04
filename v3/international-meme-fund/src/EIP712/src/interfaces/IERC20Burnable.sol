// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/**
 * @dev The burn method on an ERC20
 */
interface IERC20Burnable {
    /**
     * @dev Removes a `value` amount of tokens from the caller's account
     * and removes them from totalSupply
     *
     * Emits a {Transfer} event.
     */
    function burn(uint256 value) external;
}