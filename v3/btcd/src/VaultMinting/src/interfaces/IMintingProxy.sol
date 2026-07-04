// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title IMintingProxy
/// @notice Interface for the MintingProxy that sits between BTCD and minting backends.
/// @dev The MintingProxy holds the minter role on BTCD and delegates to registered backends.
///      Signatures intentionally match IBTCD so BTCDMinting can treat the proxy as its
///      BTCD reference without any code changes.
interface IMintingProxy {
    /// @notice Mint BTCD to a recipient. Only callable by registered minting backends.
    /// @param to The recipient of the minted BTCD.
    /// @param amount The amount of BTCD to mint (18 decimals).
    function mint(address to, uint256 amount) external;

    /// @notice Burn BTCD from a holder. Only callable by registered minting backends.
    /// @dev The proxy must have ERC-20 approval from `account` on the BTCD token.
    /// @param account The address whose BTCD will be burned.
    /// @param amount The amount of BTCD to burn (18 decimals).
    function burnFrom(address account, uint256 amount) external;
}
