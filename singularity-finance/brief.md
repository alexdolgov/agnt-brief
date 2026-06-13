# Agentic Audit Brief: Singularity Finance

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 95.0% over 90 days

## Project Overview

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-06-13T04:57:48.994Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: base, ethereum
- Contract surface: 10 unique implementations (16 raw deployments)
- DeFi Llama TVL: $4,721,299.87
- On-chain TVL (included contracts): $2,686,289.03
- TVL by chain: Ethereum $2,686,081.32 | Base $207.70

## Project Description

Singularity Finance is a broader AI/DeFAI finance platform positioned around AI-Fi, real-world assets, and financial-layer infrastructure, with multichain ambitions across networks such as Ethereum, Base, and BNB Chain. It should not be characterized solely as an Ethereum yield farm or as functionality fully encapsulated in the SFI token contract.

### Architecture

The protocol consists of a single product family built around the SFI token. All functionality is encapsulated within this token contract, with no additional supporting contracts identified.

## Audit Coverage Summary

- Verified implementations audited: 7/10 (70.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $2,686,289.03
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $2,686,289.03 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 7 | 70.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DynaVaultManager | core_logic | base | 4 deployments: base [`0x478675...2bef7f`](./contracts/base-8453/0x478675aa4121c07825167bbb25a44aadd22bef7f/); base `0x67aaf2...9ea1dc`; base `0x95cf60...36688b`; base `0xac1800...2fae77` | ✅ Audited |
| DynaVault | core_logic | base | 2 deployments: base [`0x9a3fba...2574b7`](./contracts/base-8453/0x9a3fba281b004882497d29b863c244619f2574b7/); base `0xc6b334...8ecf52` | ✅ Audited |
| DynaVaultLib | unknown | base | [`0x3b94af...51ee08`](./contracts/base-8453/0x3b94afa809b113ef118c6d4ffc009fdf1a51ee08/) | ✅ Audited |
| VaultConfigLib | unknown | base | [`0x3ce426...347db5`](./contracts/base-8453/0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5/) | ✅ Audited |
| VaultFeesLib | unknown | base | [`0xb13037...d90db6`](./contracts/base-8453/0xb130375b543bd919d85351b73636439c28d90db6/) | ✅ Audited |
| VaultManagerLib | unknown | base | [`0x7b273c...71c184`](./contracts/base-8453/0x7b273c267b7de25811883d69d26bffaebf71c184/) | ✅ Audited |
| VaultManagerSimulatorLib | unknown | base | [`0x620978...33fb39`](./contracts/base-8453/0x620978615e37f2c494cb9fcc2f9981029533fb39/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SFItoken | token | ethereum | [`0x7636d8...b386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | ⚠️ Unaudited |
| PermissionedDynaVault | core_logic | base | 3 deployments: base [`0x1631ca...258274`](./contracts/base-8453/0x1631ca6543adcb61e2b9e30189c8477981258274/); base `0x67b93f...e14dcd`; base `0xea7975...816811` | ⚠️ Unaudited |
| VaultStrategiesLib | unknown | base | [`0xf22bd3...663e9e`](./contracts/base-8453/0xf22bd338ccb6446a25920d1858e50d709b663e9e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | contract_name | 11 | high |
| [DL audit link](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7636d8...b386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | SFItoken | token | $2,686,081.32 | Verified native implementation with $2,686,081.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1631ca...258274`](./contracts/base-8453/0x1631ca6543adcb61e2b9e30189c8477981258274/) | PermissionedDynaVault | core_logic | $207.70 | Verified native implementation with $207.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf22bd3...663e9e`](./contracts/base-8453/0xf22bd338ccb6446a25920d1858e50d709b663e9e/) | VaultStrategiesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Zero-match audit list:

- [2479] DL audit link

Fork inheritance lineage and inherited audits are included when available.
