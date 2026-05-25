// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { IERC20 } from "@forge/std/interfaces/IERC20.sol";

/*
 * @title IStakeToken
 * @dev The Stake token interface.
 */
interface IStakeToken {
    /*
     * @dev Initializes the contract.
     * @param underlyingAsset The underlying asset of the token.
     */
    function initialize(
        address _underlyingAsset
    ) external;

    /*
     * @dev Mint tokens to an address.
     * @param to The address to mint tokens to.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint amount) external; // onlyOwner

    /*
     * @dev Burn tokens from an address.
     * @param from The address to burn tokens from.
     * @param amount The amount of tokens to burn.
     */
    function burn(address from, uint amount) external; // onlyOwner

    /*
     * @dev Permits a spender to spend tokens on behalf of an owner.
     * @param owner The owner of the tokens.
     * @param spender The spender of the tokens.
     * @param value The amount of tokens to permit.
     * @param deadline The deadline for the permit.
     * @param signature The signature of the permit.
     */
    function permit(address owner, address spender, uint value, uint deadline, bytes memory signature) external;
}
