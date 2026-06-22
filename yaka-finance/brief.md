# Agentic Audit Brief: Yaka Finance

⚠️ Lifecycle status: DEAD - TVL dropped 96.1% over 90 days

## Project Overview

- Project: Yaka Finance (`yaka-finance`)
- Website: [https://yaka.finance/](https://yaka.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T22:05:28.578Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: sei
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $10,286.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yaka Finance is a decentralized exchange (DEX) and liquidity management protocol on the Sei network. It enables users to trade tokens, provide liquidity, and participate in governance through a ve(3,3) tokenomics model.

### Architecture

The protocol consists of a single product family, Yaka V2, which encapsulates all core DEX operations. No shared infrastructure or cross-family dependencies are present in the current contract surface.

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 13 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 0/8 live.
- Detected codebases: none
- Unverified dependencies: 3/9.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InitialDistributor | operational_periphery | sei | n/a | [`0x18ed6e...04b122`](./contracts/sei-1329/0x18ed6e09719093fa42a521dd5b50fb206204b122/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributeFees | unknown | sei | n/a | [`0x578cbe...9004f0`](./contracts/sei-1329/0x578cbecc706344c4737c59165eb2e59ec39004f0/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sei | n/a | [`0xac76b0...839ebe`](./contracts/sei-1329/0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe/) | ⚠️ Unaudited |
| RouterV2 | adapter | sei | n/a | [`0x9f3b1c...ff0ebc`](./contracts/sei-1329/0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sei | n/a | [`0x86a247...c81580`](./contracts/sei-1329/0x86a247ef0fc244565bcab93936e867407ac81580/) | ⚠️ Unaudited |
| Yaka | unknown | sei | n/a | [`0x51121b...1a444b`](./contracts/sei-1329/0x51121bcae92e302f19d06c193c95e1f7b81a444b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sei | n/a | `0xd45daf...35e929` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.beosin.com/audits/YAKA_202405231200.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x578cbe...9004f0`](./contracts/sei-1329/0x578cbecc706344c4737c59165eb2e59ec39004f0/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xac76b0...839ebe`](./contracts/sei-1329/0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x9f3b1c...ff0ebc`](./contracts/sei-1329/0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x86a247...c81580`](./contracts/sei-1329/0x86a247ef0fc244565bcab93936e867407ac81580/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x51121b...1a444b`](./contracts/sei-1329/0x51121bcae92e302f19d06c193c95e1f7b81a444b/) | Yaka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
