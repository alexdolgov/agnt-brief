// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
 * @title IDackieUSD
 * @dev Interface for the DackieUSD token contract.
 */
interface IDackieUSD {
    /**
     * @dev Updates the operator address. Can only be called by the owner.
     * @param _newOperator The address of the new operator.
     */
    function setOperator(address _newOperator) external;

    /**
     * @dev Mints new tokens. Can only be called by the operator.
     * @param _to The address to receive the minted tokens.
     * @param _amount The amount of tokens to mint.
     */
    function mint(address _to, uint256 _amount) external;

    /**
     * @dev Burns tokens from a specified address. Can only be called by the operator.
     * @param _from The address from which tokens will be burned.
     * @param _amount The amount of tokens to burn.
     */
    function burn(address _from, uint256 _amount) external;

    /**
     * @dev Transfers tokens from one address to another.
     * @param from The address to transfer tokens from.
     * @param to The address to transfer tokens to.
     * @param amount The amount of tokens to transfer.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}