// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IMuToken
 * @author Mu Digital
 * @notice Interface for Mu tokens with minting and burning capabilities
 */
interface IMuToken {
    /**
     * @notice Emitted when the access manager is updated
     * @param newAccessManager The address of the new access manager
     */
    event AccessManagerUpdated(address indexed newAccessManager);

    /**
     * @notice Mint function restricted to PrimaryMarket contract
     * @param receiver Address to receive the minted tokens
     * @param amount Amount of tokens to mint
     */
    function mint(address receiver, uint256 amount) external;

    /**
     * @notice Burn function restricted to PrimaryMarket contract
     * @param owner Address from which tokens will be burned
     * @param amount Amount of tokens to burn
     */
    function burn(address owner, uint256 amount) external;
}
