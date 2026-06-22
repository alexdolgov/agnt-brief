// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

/// @title IVault interface
/// @notice Defines the basic interface for interaction with Gamma Vault contract, see
/// (https://docs.gamma.xyz/gamma/features/introduction) for more details
interface IVault {
    /**
     * @notice Mint Vault tokens by providing liquidity to Gamma Vault
     * @param deposit0 The amount of first token
     * @param deposit1 The amount of second token
     * @param to The receiver of minted Vault tokens
     * @param from The sender of liquidity
     * @param inMin The minimum amount of tokens to be minted
     * @return shares The amount of minted Vault tokens
     */
    function deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to,
        address from,
        uint256[4] memory inMin
    )
        external
        returns (uint256 shares);

    /**
     * @notice Burn Vault tokens and getting back liquidity from Gamma Vault
     * @param shares The amount of vault tokens to burn and get back liquidity
     * @param to The receiver of liquidity
     * @param from The owner of Vault tokens
     * @param minAmounts The minimum amount0,1 returned for shares of liquidity
     * @return amount0 The amount of first token
     * @return amount1 The amount of second token
     */
    function withdraw(
        uint256 shares,
        address to,
        address from,
        uint256[4] memory minAmounts
    )
        external
        returns (uint256 amount0, uint256 amount1);
}
