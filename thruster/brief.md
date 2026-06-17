# Agentic Audit Brief: Thruster

⚠️ Lifecycle status: DEAD - TVL dropped 0.2% over 90 days

## Project Overview

- Project: Thruster (`thruster`)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-06-17T07:00:47.016Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: blast
- Contract surface: 11 unique implementations (14 raw deployments)
- DeFi Llama TVL: $4,857,801.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Thruster is a decentralized exchange (DEX) protocol on the Blast chain, enabling users to swap tokens and provide liquidity through automated market maker (AMM) pools. It supports concentrated liquidity positions and efficient trade routing.

### Architecture

The ThrusterFactory deploys pool contracts, while the SwapRouter and NonfungiblePositionManager interact with these pools to facilitate swaps and manage liquidity positions. All contracts share the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 14
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchDistributor | operational_periphery | blast | n/a | [`0x0561fc...1056ab`](./contracts/blast-81457/0x0561fc4e3c728afc9a0407fa109a2bd2981056ab/) | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | blast | n/a | [`0xaafa3d...13c65c`](./contracts/blast-81457/0xaafa3db42ea9c114c36a2a033e04c8bc0813c65c/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | blast | n/a | [`0xd40fb8...db2756`](./contracts/blast-81457/0xd40fb88b94d20d5d60a94e00492214061bdb2756/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | unit-28718 | [`0x434575...e227f9`](./contracts/blast-81457/0x434575eaea081b735c985fa9bf63cd7b87e227f9/) | ⚠️ Unaudited |
| Pump | unknown | blast | n/a | [`0x216a5a...b5630a`](./contracts/blast-81457/0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a/) | ⚠️ Unaudited |
| SwapRouter | adapter | blast | unit-28717 | [`0x337827...0c0555`](./contracts/blast-81457/0x337827814155ecbf24d20231fca4444f530c0555/) | ⚠️ Unaudited |
| ThrusterFactory | registry | blast | n/a | 2 deployments: blast [`0x378368...b93fc4`](./contracts/blast-81457/0x37836821a2c03c171fb1a595767f4a16e2b93fc4/); blast `0xb4a7d9...aafa13` | ⚠️ Unaudited |
| ThrusterPair | unknown | blast | n/a | 2 deployments: blast [`0x12c69b...3fc7df`](./contracts/blast-81457/0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df/); blast `0xd2f1a2...dbf477` | ⚠️ Unaudited |
| ThrusterPoolFactory | registry | blast | n/a | [`0x71b08f...016127`](./contracts/blast-81457/0x71b08f13b3c3af35aadeb3949afeb1ded1016127/) | ⚠️ Unaudited |
| ThrusterRouter | adapter | blast | n/a | 2 deployments: blast [`0x44889b...fb2b4e`](./contracts/blast-81457/0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e/); blast `0x98994a...1650f6` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | blast | n/a | [`0xc6de1f...2386a4`](./contracts/blast-81457/0xc6de1f30415352941f7ce784a67b2df1552386a4/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x0561fc...1056ab`](./contracts/blast-81457/0x0561fc4e3c728afc9a0407fa109a2bd2981056ab/) | BatchDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x434575...e227f9`](./contracts/blast-81457/0x434575eaea081b735c985fa9bf63cd7b87e227f9/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x216a5a...b5630a`](./contracts/blast-81457/0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a/) | Pump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x337827...0c0555`](./contracts/blast-81457/0x337827814155ecbf24d20231fca4444f530c0555/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x378368...b93fc4`](./contracts/blast-81457/0x37836821a2c03c171fb1a595767f4a16e2b93fc4/) | ThrusterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x12c69b...3fc7df`](./contracts/blast-81457/0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df/) | ThrusterPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x71b08f...016127`](./contracts/blast-81457/0x71b08f13b3c3af35aadeb3949afeb1ded1016127/) | ThrusterPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x44889b...fb2b4e`](./contracts/blast-81457/0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e/) | ThrusterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
