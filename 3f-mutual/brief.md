# Agentic Audit Brief: 3F Mutual

## Project Overview

- Project: 3F Mutual (`3f-mutual`)
- Lifecycle: active (Tier 0, 55.8% below peak)
- Generated: 2026-06-17T07:00:50.528Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 9 unique implementations (11 raw deployments)
- DeFi Llama TVL: $3,186,142.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

3F Mutual is an Ethereum insurance pool associated with MakerDAO crash insurance. Users can buy insurance units priced by a formula.

### Architecture

The protocol consists of a single product family with one core contract, so there are no cross-family relationships or shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 3/9.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| blackholeswap | unknown | ethereum | n/a | [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/) | ⚠️ Unaudited |
| Hakka | unknown | ethereum | n/a | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x735a80...40c95a`](./contracts/ethereum-1/0x735a80510536a9a18c8824f40dbc92824640c95a/); ethereum `0xf4d1f9...5b7977` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | ethereum | n/a | [`0x9933ad...530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | ⚠️ Unaudited |
| sHakka | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/); ethereum `0xd99588...f15040` | ⚠️ Unaudited |
| TFToken | token | ethereum | n/a | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | n/a | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| Vat | unknown | ethereum | n/a | [`0x35d1b3...a0492b`](./contracts/ethereum-1/0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b/) | ⚠️ Unaudited |
| VestingVault | operational_periphery | ethereum | n/a | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | ⚠️ Unaudited |

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
| ethereum | [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/) | blackholeswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | Hakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x735a80...40c95a`](./contracts/ethereum-1/0x735a80510536a9a18c8824f40dbc92824640c95a/) | HakkaRewardsVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9933ad...530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | InsuranceImprovementProposalProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
