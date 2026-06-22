# Agentic Audit Brief: SwapX

⚠️ Lifecycle status: DEAD - TVL dropped 26.6% over 90 days

## Project Overview

- Project: SwapX (`swapx`)
- Website: [https://swapx.fi/](https://swapx.fi/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T14:11:55.834Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: sonic
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $492,430.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SwapX is a decentralized exchange (DEX) and liquidity protocol on Sonic that enables users to trade tokens, provide liquidity, and earn rewards through a ve(3,3) tokenomics model. It combines concentrated liquidity AMM pools with a governance and incentive layer involving vote-escrowed tokens, gauges, and bribes.

### Architecture

The SwapX Algebra family integrates concentrated liquidity pools (managed by PairFactoryUpgradeable) with a ve(3,3) incentive layer. VotingEscrowV1_1 locks tokens to produce voting power, which VoterV3 uses to direct gauge emissions (GaugeFactoryV2_CL) and bribe rewards (BribeFactoryV3), while MinterUpgradeable controls token minting and PairAPI serves as a read helper. Supporting contracts like Vesting handle team allocations and NFTSalesSplitter manage fee distribution, all sharing the same deployer cluster.

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 62 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 0/16 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | sonic | n/a | [`0x66f28a...5eacb1`](./contracts/sonic-146/0x66f28a0d830e9be7c2bb2c626d9cdf528a5eacb1/) | ✅ Audited |
| Royalties | unknown | sonic | n/a | [`0x7ab97f...a8b43b`](./contracts/sonic-146/0x7ab97fca4ec80c41106881f56a3a3fe3e9a8b43b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardsDistributor | operational_periphery | sonic | n/a | [`0x1c236d...4c94d3`](./contracts/sonic-146/0x1c236d74f61c6199e6d23201d53a59753f4c94d3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x972e71...f258ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa04bc7...fb0e70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa30f0...576ca3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1ae27...c407f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc83f36...e72f78` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdb3e03...00b1a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe4b7bb...b55f60` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5f723...b29c27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://swapx.fi/Bailsec_SwapX_Exchange_Final_Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://swapx.fi/Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [DL audit link](https://swapx.fi/Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 2 | high |
| [Audited by BailSec](https://bailsec.io/) | BailSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x1c236d...4c94d3`](./contracts/sonic-146/0x1c236d74f61c6199e6d23201d53a59753f4c94d3/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=42

Zero-match audit list:

- [13953] DL audit link
- [13954] DL audit link
- [13956] Audited by BailSec

Fork inheritance lineage and inherited audits are included when available.
