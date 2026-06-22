# Agentic Audit Brief: OTSea

## Project Overview

- Project: OTSea (`otsea`)
- Lifecycle: active (Tier 0, 64.9% below peak)
- Generated: 2026-06-21T12:05:58.769Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $393,820.90
- On-chain TVL (included contracts): $4,104.00
- TVL by chain: Ethereum $4,104.00

## Project Description

OTSea is a decentralized exchange protocol enabling trustless token swaps across multiple chains. It provides liquidity pools and trading mechanisms for users to exchange assets without intermediaries.

### Architecture

The OTSea family consists of core exchange contracts deployed on multiple chains, sharing a common architecture. Supporting unnamed contracts likely provide infrastructure such as access control or registry functions, enabling consistent operation across deployments.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 66.7% | 2024-01 |
| Dedaub | Tier 2 | 1 | 33.3% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OTSeaERC20 | token | ethereum | n/a | [`0x5da151...09cb09`](./contracts/ethereum-1/0x5da151b95657e788076d04d56234bd93e409cb09/) | ✅ Audited |
| OTSea | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e8b67...5353b4`](./contracts/ethereum-1/0x6e8b67b315b44519f8c2befdbbe11097c45353b4/); base `0xa836af...8c5fd5` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OTSeaStable | unknown | ethereum | n/a | [`0x1c3c44...1885b8`](./contracts/ethereum-1/0x1c3c442c0ece529e6a8d7815b33c014e641885b8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x92cd50...b77a0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dedaub.com/audits/otsea/otsea-dec-18-2023](https://dedaub.com/audits/otsea/otsea-dec-18-2023) | Dedaub | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |
| [OTSea](https://dedaub.com/audits/otsea) | Dedaub | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-OTSea-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OTSea-v1.0.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1c3c44...1885b8`](./contracts/ethereum-1/0x1c3c442c0ece529e6a8d7815b33c014e641885b8/) | OTSeaStable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=14

Zero-match audit list:

- [13643] OTSea

Fork inheritance lineage and inherited audits are included when available.
