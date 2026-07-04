// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IIxsTokenBurnable {
    /// @dev Mints an amount of IXS tokens to the recipient.
    /// @param to The address of the recipient.
    /// @param amount The amount of tokens to be minted.
    function mint(address to, uint256 amount) external;

    /// @dev Burns an amount of IXS tokens on target wallet.
    /// @param to The address of the holder's wallet.
    /// @param amount The amount of tokens to be burned.
    function burn(address to, uint256 amount) external;
}
