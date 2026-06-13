# Agentic Audit Brief: Thruster

⚠️ Lifecycle status: DEAD - TVL dropped 0.2% over 90 days

## Project Overview

- Project: Thruster (`thruster`)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-06-13T04:42:09.941Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: blast
- Contract surface: 26 unique implementations (31 raw deployments)
- DeFi Llama TVL: $4,857,801.00
- On-chain TVL (included contracts): $112,989.66
- TVL by chain: Blast $112,989.66

## Project Description

Thruster is a decentralized exchange (DEX) protocol on the Blast chain, enabling users to swap tokens and provide liquidity through automated market maker (AMM) pools. It supports concentrated liquidity positions and efficient trade routing.

### Architecture

The ThrusterFactory deploys pool contracts, while the SwapRouter and NonfungiblePositionManager interact with these pools to facilitate swaps and manage liquidity positions. All contracts share the same deployer cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 26
- Raw deployments: 31
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $112,989.66
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $112,989.66 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ThrusterPool | core_logic | blast | [`0xf00da1...906537`](./contracts/blast-81457/0xf00da13d2960cf113edcef6e3f30d92e52906537/) | ⚠️ Unaudited |
| BatchDistributor | operational_periphery | blast | [`0x0561fc...1056ab`](./contracts/blast-81457/0x0561fc4e3c728afc9a0407fa109a2bd2981056ab/) | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | blast | [`0xaafa3d...13c65c`](./contracts/blast-81457/0xaafa3db42ea9c114c36a2a033e04c8bc0813c65c/) | ⚠️ Unaudited |
| FeeOnTransferDetector | periphery | blast | 3 deployments: blast [`0xa9eaac...3475ab`](./contracts/blast-81457/0xa9eaaccae316982c04b8068fb08787de673475ab/); blast `0xc7867b...42ac99`; blast `0xeae1b3...d09a52` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | blast | [`0xd40fb8...db2756`](./contracts/blast-81457/0xd40fb88b94d20d5d60a94e00492214061bdb2756/) | ⚠️ Unaudited |
| NFTDescriptor | token | blast | [`0xe3cca3...083a8c`](./contracts/blast-81457/0xe3cca3a48b907d0e26135025eaeea6431c083a8c/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | [`0x434575...e227f9`](./contracts/blast-81457/0x434575eaea081b735c985fa9bf63cd7b87e227f9/) | ⚠️ Unaudited |
| Pump | unknown | blast | [`0x216a5a...b5630a`](./contracts/blast-81457/0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a/) | ⚠️ Unaudited |
| PumpDistributor | operational_periphery | blast | [`0x12dc5d...ebd991`](./contracts/blast-81457/0x12dc5db96df71a6623b23f904fe83baf60ebd991/) | ⚠️ Unaudited |
| QuoterV2 | periphery | blast | [`0x3b299f...a685be`](./contracts/blast-81457/0x3b299f65b47c0bfaeff715bc73077ba7a0a685be/) | ⚠️ Unaudited |
| SwapRouter | adapter | blast | [`0x337827...0c0555`](./contracts/blast-81457/0x337827814155ecbf24d20231fca4444f530c0555/) | ⚠️ Unaudited |
| ThrusterFactory | registry | blast | 2 deployments: blast [`0x378368...b93fc4`](./contracts/blast-81457/0x37836821a2c03c171fb1a595767f4a16e2b93fc4/); blast `0xb4a7d9...aafa13` | ⚠️ Unaudited |
| ThrusterMulticall | periphery | blast | [`0x2024c5...f834c5`](./contracts/blast-81457/0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5/) | ⚠️ Unaudited |
| ThrusterPair | unknown | blast | 2 deployments: blast [`0x12c69b...3fc7df`](./contracts/blast-81457/0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df/); blast `0xd2f1a2...dbf477` | ⚠️ Unaudited |
| ThrusterPoolDeployer | core_logic | blast | [`0xa08ae3...405aab`](./contracts/blast-81457/0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab/) | ⚠️ Unaudited |
| ThrusterPoolFactory | registry | blast | [`0x71b08f...016127`](./contracts/blast-81457/0x71b08f13b3c3af35aadeb3949afeb1ded1016127/) | ⚠️ Unaudited |
| ThrusterRouter | adapter | blast | 2 deployments: blast [`0x44889b...fb2b4e`](./contracts/blast-81457/0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e/); blast `0x98994a...1650f6` | ⚠️ Unaudited |
| TickLens | periphery | blast | [`0x796b39...e02ef6`](./contracts/blast-81457/0x796b39328b92472b2bd950aeb20d950611e02ef6/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | blast | [`0xc6de1f...2386a4`](./contracts/blast-81457/0xc6de1f30415352941f7ce784a67b2df1552386a4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | blast | `0x32cad2...a5b412` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x414991...091711` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x44a2f2...7e968a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x609fdd...ef3358` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x985924...735e4a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc4af38...72ba44` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe79513...11fd87` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xf00da1...906537`](./contracts/blast-81457/0xf00da13d2960cf113edcef6e3f30d92e52906537/) | ThrusterPool | core_logic | $112,989.66 | Verified native implementation with $112,989.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0561fc...1056ab`](./contracts/blast-81457/0x0561fc4e3c728afc9a0407fa109a2bd2981056ab/) | BatchDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa9eaac...3475ab`](./contracts/blast-81457/0xa9eaaccae316982c04b8068fb08787de673475ab/) | FeeOnTransferDetector | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xe3cca3...083a8c`](./contracts/blast-81457/0xe3cca3a48b907d0e26135025eaeea6431c083a8c/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x434575...e227f9`](./contracts/blast-81457/0x434575eaea081b735c985fa9bf63cd7b87e227f9/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x216a5a...b5630a`](./contracts/blast-81457/0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a/) | Pump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x12dc5d...ebd991`](./contracts/blast-81457/0x12dc5db96df71a6623b23f904fe83baf60ebd991/) | PumpDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3b299f...a685be`](./contracts/blast-81457/0x3b299f65b47c0bfaeff715bc73077ba7a0a685be/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x337827...0c0555`](./contracts/blast-81457/0x337827814155ecbf24d20231fca4444f530c0555/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x378368...b93fc4`](./contracts/blast-81457/0x37836821a2c03c171fb1a595767f4a16e2b93fc4/) | ThrusterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2024c5...f834c5`](./contracts/blast-81457/0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5/) | ThrusterMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x12c69b...3fc7df`](./contracts/blast-81457/0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df/) | ThrusterPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa08ae3...405aab`](./contracts/blast-81457/0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab/) | ThrusterPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x71b08f...016127`](./contracts/blast-81457/0x71b08f13b3c3af35aadeb3949afeb1ded1016127/) | ThrusterPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x44889b...fb2b4e`](./contracts/blast-81457/0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e/) | ThrusterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x796b39...e02ef6`](./contracts/blast-81457/0x796b39328b92472b2bd950aeb20d950611e02ef6/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
