// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/**
 * @title IMintableBurnable
 * @notice Interface for tokens that support minting and burning operations
 * @dev Used by LayerZero OFT adapters and other bridge contracts
 */
interface IMintableBurnable {
    /**
     * @notice Mints tokens to a specified address
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) external;

    /**
     * @notice Burns tokens from a specified address
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn
     */
    function burn(address from, uint256 amount) external;
}
