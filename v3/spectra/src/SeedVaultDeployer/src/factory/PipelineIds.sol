// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title PipelineIds
/// @notice Canonical pipeline ID constants shared across factory, deployers, and tests.
///         Pipeline IDs are keccak256 hashes of short string names. Any deployer that
///         references another step's output (e.g. SeedVaultDeployer reading the vault
///         address) MUST use these constants to ensure consistency.
///
///         If a pipeline ID is renamed, all deployers and factory registrations MUST be
///         updated in lockstep — a mismatch causes VaultStepNotFound or UnknownPipeline.
library PipelineIds {
    bytes32 public constant SAFE = keccak256("safe");
    bytes32 public constant VAULT = keccak256("vault");
    bytes32 public constant METADATA = keccak256("metadata");
    bytes32 public constant SEED_VAULT = keccak256("seed-vault");
    bytes32 public constant ROLES_DEFAULT = keccak256("roles-default");
    bytes32 public constant DELAY_DEFAULT = keccak256("delay-default");
    bytes32 public constant ZODIAC_POOL = keccak256("zodiac-pool");
    bytes32 public constant ZODIAC_SWAP = keccak256("zodiac-swap");
    bytes32 public constant ZODIAC_ACCOUNTANT = keccak256("zodiac-accountant");
    bytes32 public constant ZODIAC_MANAGEMENT = keccak256("zodiac-management");
}
