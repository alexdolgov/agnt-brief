# Agentic Brief: Superform v2 Periphery

## Project Overview

- **Project**: Superform v2 Periphery
- **Website**: superform.xyz
- **Category**: Cross-chain yield aggregation protocol
- **TVL**: ~$39M (DeFi Llama)
- **Chains**: Ethereum, Base

Superform is a cross-chain yield aggregation protocol. Users deposit assets and Superform routes them to yield vaults across chains via cross-chain messaging (LayerZero, Hyperlane). The "v2 periphery" module covers the vault infrastructure: SuperVaults (yield vaults users deposit into), strategies, escrows for cross-chain asset transitions, governance, oracles, and a banking layer.

## Audit History

| Date | Auditor | Revision |
|---|---|---|
| 2025-09-12 | Spearbit | - |

- **Total audits**: 1
- **Last audit**: 2025-09-12
- **Days since last audit**: 212

## Deployment Timeline

All contracts with known deployment dates were deployed on **December 1-2, 2025** — approximately 3 months after the Spearbit audit (September 12, 2025). This means the audit covered the source code pre-deployment. The key question is whether the code was modified between audit and deployment.

## Contract Inventory

| Chain | Address | Name | Role | Deployed | Audit Status | Verified | Source File |
|---|---|---|---|---|---|---|---|
| ethereum | `0x366d88f0...` | ECDSAPPSOracle | oracle | 2025-12-01 | likely_audited | verified | [source](contracts/ethereum/ECDSAPPSOracle_0x366d88.sol) |
| ethereum | `0x6fcc6a6a...` | SuperBank | core | 2025-12-01 | likely_audited | verified | [source](contracts/ethereum/SuperBank_0x6fcc6a.sol) |
| ethereum | `0xb5396ef2...` | SuperGovernor | governance | 2025-12-01 | audited_confirmed | verified | [source](contracts/ethereum/SuperGovernor_0xb5396e.sol) |
| ethereum | `0x8943128d...` | SuperOracle | oracle | 2025-12-01 | likely_in_scope | verified | [source](contracts/ethereum/SuperOracle_0x894312.sol) |
| ethereum | `0x8c365af7...` | SuperVault | vault_pool | 2025-12-02 | likely_audited | verified | [source](contracts/ethereum/SuperVault_0x8c365a.sol) |
| ethereum | `0xa036823b...` | SuperVault | vault_pool | 2025-12-02 | likely_audited | verified | [source](contracts/ethereum/SuperVault_0x8c365a.sol) |
| ethereum | `0xf6ebea08...` | SuperVault | vault_pool | 2025-12-02 | likely_audited | verified | [source](contracts/ethereum/SuperVault_0x8c365a.sol) |
| ethereum | `0x10ac0b33...` | SuperVaultAggregator | vault_pool | 2025-12-01 | audited_confirmed | verified | [source](contracts/ethereum/SuperVaultAggregator_0x10ac0b.sol) |
| ethereum | `0x11c016df...` | SuperVaultEscrow | vault_pool | - | likely_audited | verified | [source](contracts/ethereum/SuperVaultEscrow_0x11c016.sol) |
| ethereum | `0x41941100...` | SuperVaultEscrow | vault_pool | 2025-12-02 | likely_audited | verified | [source](contracts/ethereum/SuperVaultEscrow_0x11c016.sol) |
| ethereum | `0xde61f1c7...` | SuperVaultEscrow | vault_pool | 2025-12-02 | likely_audited | verified | [source](contracts/ethereum/SuperVaultEscrow_0x11c016.sol) |
| ethereum | `0x1199a6b2...` | SuperVaultStrategy | strategy | 2025-12-02 | audited_confirmed | verified | [source](contracts/ethereum/SuperVaultStrategy_0x1199a6.sol) |
| ethereum | `0x41a9eb39...` | SuperVaultStrategy | strategy | 2025-12-02 | audited_confirmed | verified | [source](contracts/ethereum/SuperVaultStrategy_0x1199a6.sol) |
| ethereum | `0xa96060b0...` | SuperVaultStrategy | strategy | 2025-12-02 | audited_confirmed | verified | [source](contracts/ethereum/SuperVaultStrategy_0x1199a6.sol) |
| ethereum | `0x1d926bbe...` | Up | core | 2025-06-16 | unmatched_pre_audit | verified | [source](contracts/ethereum/Up_0x1d926b.sol) |
| ethereum | `0x642ffc34...` | - | unknown | - | unmatched_pre_audit | unverified | - |
| base | `0x366d88f0...` | ECDSAPPSOracle | oracle | - | likely_audited | verified | [source](contracts/base/ECDSAPPSOracle_0x366d88.sol) |
| base | `0xb5396ef2...` | SuperGovernor | governance | - | audited_confirmed | verified | [source](contracts/base/SuperGovernor_0xb5396e.sol) |
| base | `0x2c71f70e...` | SuperVault | vault_pool | - | likely_audited | verified | [source](contracts/base/SuperVault_0x2c71f7.sol) |
| base | `0x10ac0b33...` | SuperVaultAggregator | vault_pool | - | audited_confirmed | verified | [source](contracts/base/SuperVaultAggregator_0x10ac0b.sol) |
| base | `0x5b2193fd...` | UpOFT | core | - | unmatched_pre_audit | verified | [source](contracts/base/UpOFT_0x5b2193.sol) |

## Audit Coverage Summary

- **Confirmed audited (TP)**: 7 contracts — name or address matched to Spearbit audit scope
- **Likely audited (UC)**: 11 contracts — name matched but not confirmed as true positive
- **Unmatched / no scope data**: 3 contracts — not found in audit scope
- **Total**: 21 contracts

### Unmatched Contracts Detail

- **Up** (`0x1d926bbe67425c9f507b9a0e8030eedc7880bf33`, ethereum): core role. unmatched_pre_audit.
- **unnamed** (`0x642ffc3496aca19106bab7a42f1f221a329654fe`, ethereum): unknown role. unmatched_pre_audit.
- **UpOFT** (`0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b`, base): core role. unmatched_pre_audit.

## Source Code

Verified source code has been extracted from Etherscan for all 20 verified contracts. Source files contain only project code (files under `src/`); standard library dependencies (OpenZeppelin, etc.) are excluded as they are well-known.

Multiple instances of the same contract (e.g., 3 SuperVault instances) share identical source code. The manifest.json `deduplicated_from` field indicates when a contract's source is identical to another instance.

### Unique Source Files

- [ECDSAPPSOracle](contracts/ethereum/ECDSAPPSOracle_0x366d88.sol) — oracle (ethereum)
- [SuperBank](contracts/ethereum/SuperBank_0x6fcc6a.sol) — core (ethereum)
- [SuperGovernor](contracts/ethereum/SuperGovernor_0xb5396e.sol) — governance (ethereum)
- [SuperOracle](contracts/ethereum/SuperOracle_0x894312.sol) — oracle (ethereum)
- [SuperVault](contracts/ethereum/SuperVault_0x8c365a.sol) — vault_pool (ethereum)
- [SuperVaultAggregator](contracts/ethereum/SuperVaultAggregator_0x10ac0b.sol) — vault_pool (ethereum)
- [SuperVaultEscrow](contracts/ethereum/SuperVaultEscrow_0x11c016.sol) — vault_pool (ethereum)
- [SuperVaultStrategy](contracts/ethereum/SuperVaultStrategy_0x1199a6.sol) — strategy (ethereum)
- [Up](contracts/ethereum/Up_0x1d926b.sol) — core (ethereum)
- [ECDSAPPSOracle](contracts/base/ECDSAPPSOracle_0x366d88.sol) — oracle (base)
- [SuperGovernor](contracts/base/SuperGovernor_0xb5396e.sol) — governance (base)
- [SuperVault](contracts/base/SuperVault_0x2c71f7.sol) — vault_pool (base)
- [SuperVaultAggregator](contracts/base/SuperVaultAggregator_0x10ac0b.sol) — vault_pool (base)
- [UpOFT](contracts/base/UpOFT_0x5b2193.sol) — core (base)

## Assessment Notes for Agent

1. **This is a partially-audited project.** Spearbit audited the codebase in Sep 2025. Most contracts name-match to audit scope but all were deployed post-audit (Dec 2025).
2. **The primary risk vector is post-audit code changes.** If the deployed bytecode differs from the audited commit, the gap is real. If they match, coverage is high.
3. **The unmatched contracts are tokens** (Up, UpOFT) and one unnamed unverified contract — not core protocol logic.
4. **The "likely_audited" (UC) contracts** almost certainly were in the Spearbit scope based on name matching. They were not promoted to TP due to conservatism in the scope matching pipeline.
5. **Single auditor risk**: Only one audit (Spearbit). No independent second opinion. The proposal angle is audit diversity, not coverage gaps.
6. **Cross-chain complexity**: The protocol operates across Ethereum and Base with identical contract deployments. Cross-chain message passing (not in this module) is a key risk area.

## Caveats

- "Unaudited" means no scope match found — does not confirm the contract was excluded from the audit.
- Inferred roles (core, oracle, vault_pool, etc.) are heuristic based on contract name patterns.
- TVL is protocol-level from DeFi Llama, not per-contract.
- Source code is extracted from Etherscan verified source. Only `src/` project files are included; library dependencies (OpenZeppelin etc.) are omitted.
- Deployment timestamps from on-chain data. Contracts without `creation_tx_hash` on Base may lack timestamps.
