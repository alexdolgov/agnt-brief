// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

/// Minted ERC-20 tokens represents an Ethereum ERC-20 tokens on L2.
/// @custom:security-contact security@fantom.foundation
interface IMintedBurnableERC20 {

    /**
     * @dev Mint `amount` of tokens to given `account`.
     */
    function mint(address account, uint256 amount) external returns (bool);

    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     */
    function burn(uint256 value) external;

    /**
     * @dev Destroys a `value` amount of tokens from `account`, deducting from the caller's allowance.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least `value`.
     */
    function burnFrom(address account, uint256 value) external;

}
