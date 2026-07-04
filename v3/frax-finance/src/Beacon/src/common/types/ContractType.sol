// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @dev Contract type enumeration for implementation upgrade validation.
 * @dev This is used to validate that the implementation address supports the correct interface for the contract type.
 * @dev NONE is an explicit placeholder to prevent uninitialized variables from defaulting to a valid contract type.
 */
enum ContractType { 
    NONE,                       // 0 - Explicit placeholder for uninitialized variables
    ERC20Token,                 // 1
    ERC721Token,                // 2
    ERC721SoulboundToken,       // 3
    WhitelistComplianceOracle   // 4
} 