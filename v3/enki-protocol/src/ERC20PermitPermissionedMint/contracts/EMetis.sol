//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./ERC20PermitPermissionedMint.sol";

/// @title EMetis
/// @notice eMetis is the ERC20 token that represents the staked ENKI Metis
contract EMetis is ERC20PermitPermissionedMint {
    /// @notice construct the contract
    /// @param timelock timelock contract address
    constructor(address timelock) ERC20PermitPermissionedMint(timelock, "Enki Metis", "eMetis") {}
}
