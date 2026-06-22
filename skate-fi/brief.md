# Agentic Audit Brief: Skate Fi

⚠️ Lifecycle status: DEAD - TVL dropped 23.1% over 90 days

## Project Overview

- Project: Skate Fi (`skate-fi`)
- Website: [https://www.rangeprotocol.com](https://www.rangeprotocol.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T09:12:45.153Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, manta, mantle
- Contract surface: 5 unique implementations (7 raw deployments)
- DeFi Llama TVL: $112,272.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Skate Fi is a liquidity management protocol that deploys automated vaults to optimize liquidity provision across multiple chains. It uses factory contracts to create and manage vaults that concentrate liquidity within specific price ranges, aiming to maximize yields for depositors.

### Architecture

The RangeProtocolFactory and RangeLiquiChargedFactory registries deploy and manage instances of RangeProtocolVault and VaultLib, which serve as the core logic for liquidity vaults. The ERC1967Proxy acts as an upgradeable proxy for the vault implementation, enabling seamless upgrades across all vaults.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 7 (3 live, 4 unknown).
- Excluded by liveness: 94 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: aave-v2, uniswap-v3
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 7
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 60.0% | 2023-09 |
| CertiK | Tier 2 | 2 | 40.0% | 2023-04 |
| Halborn | Tier 2 | 2 | 40.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RangeProtocolFactory | registry | manta | n/a | [`0x52b29c...2fc9c7`](./contracts/manta-169/0x52b29c6154ad0f5c02416b8cb1ceb76e082fc9c7/) | ✅ Audited |
| RangeProtocolVault | core_logic | manta | n/a | [`0xe9c45a...f7cc70`](./contracts/manta-169/0xe9c45a2446699954847521890b27dd9b24f7cc70/) | ✅ Audited |
| VaultLib | core_logic | manta | n/a | 2 deployments: manta [`0x62fd62...5a8f33`](./contracts/manta-169/0x62fd6208a1a6f0b06e1e2788efb4ee74bf5a8f33/); manta `0x873fd4...e55b5b` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingRewards | unknown | mantle | n/a | 2 deployments: ethereum `0xd45d44...9a96ed`; mantle [`0x1a181b...c7311f`](./contracts/mantle-5000/0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x21e080...90e07f`](./contracts/ethereum-1/0x21e0803103d3cf8ab0755a02e9e4f55a5590e07f/) | ⚠️ Unaudited |

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
| [Certik-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Certik-Audit.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [Halborn-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Halborn-Audit.pdf) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |
| [Salusec-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/izumi-implementation/audits/Salusec-Audit.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 4 | high |
| [Veridise-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Veridise-Audit.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x1a181b...c7311f`](./contracts/mantle-5000/0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=288

Fork inheritance lineage and inherited audits are included when available.
