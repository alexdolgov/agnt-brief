# Agentic Audit Brief: Flex

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Flex (`flex`)
- Website: [https://flexmeow.com/](https://flexmeow.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:01.874Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 15 unique implementations (16 raw deployments)
- DeFi Llama TVL: $2,546,756.44
- On-chain TVL (included contracts): $2,603,311.50
- TVL by chain: Ethereum $2,603,311.50

## Project Description

Flex is an Ethereum fixed-rate money market and lending protocol where borrowers choose their own interest rates.

### Architecture

The protocol consists of a single product family with one core registry contract that orchestrates all lending operations.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (8 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/15 (33.3%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $1,000,000.00
- Latest audit: 2026-05 (fresh)
- Staleness: 3 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,000,000.00 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 26.7% | 2026-03 |
| Dedaub | Tier 2 | 2 | 13.3% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenizedStrategy | core_logic | ethereum | unit-32792 (2 proxies) | 2 deployments: ethereum [`0x33c452...29b732`](./contracts/ethereum-1/0x33c45216e121e31f1a8cd24c7e9d0d0c9e29b732/); ethereum `0x467ce1...b27751` | ✅ Audited |
| Auction | unknown | ethereum | n/a | [`0x10b07c...ac0bcf`](./contracts/ethereum-1/0x10b07c594e6de6d40e13c2d0b6c49e5a3cac0bcf/) | ✅ Audited |
| Factory | registry | ethereum | n/a | [`0xe2c4a5...34753d`](./contracts/ethereum-1/0xe2c4a5c2ab1ed5745d206b33cc0abf0a5d34753d/) | ✅ Audited |
| Registry | registry | ethereum | n/a | [`0x911744...7c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | ✅ Audited |
| StrategyAprOracle | operational_periphery | ethereum | n/a | [`0xfd6117...45b9d1`](./contracts/ethereum-1/0xfd6117e7dc92dd284412a0ee9fc2c9bdb945b9d1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x863687...d0f7b8`](./contracts/ethereum-1/0x863687e4e9751b57f38b4b0eba04744c72d0f7b8/) | ⚠️ Unaudited |
| Debt In Front Helper | unknown | ethereum | n/a | [`0xa4119b...16ebd6`](./contracts/ethereum-1/0xa4119b541a2ebf411f3ed6201107fc1da016ebd6/) | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | n/a | [`0x3f1951...ed1efa`](./contracts/ethereum-1/0x3f195124394d63fcb4a792181cc8a65717ed1efa/) | ⚠️ Unaudited |
| Leverage Zapper | adapter | ethereum | n/a | [`0xbf3e99...6137e0`](./contracts/ethereum-1/0xbf3e996821d43ac3b6069ae74efa101ffc6137e0/) | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | n/a | [`0x6d8d09...a54206`](./contracts/ethereum-1/0x6d8d09f18afd74e6d6d0190ccdf89de8fea54206/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | n/a | [`0xc489b9...119acc`](./contracts/ethereum-1/0xc489b9e1003b337146fb8095687a8fb1f7119acc/) | ⚠️ Unaudited |
| StrategyFactory | registry | ethereum | n/a | [`0x7a3b96...805266`](./contracts/ethereum-1/0x7a3b96e84156d22cdb53cbfc0b035ddd61805266/) | ⚠️ Unaudited |
| Swap Executor | unknown | ethereum | n/a | [`0x91eb41...3d5421`](./contracts/ethereum-1/0x91eb419d77962bf89a0f1ca8b1fa525f443d5421/) | ⚠️ Unaudited |
| Trove Manager | unknown | ethereum | n/a | [`0xd82db9...8e2e49`](./contracts/ethereum-1/0xd82db9893751e9c90e2a6c3be31183048e8e2e49/) | ⚠️ Unaudited |
| Yearn Vault Auction Taker | core_logic | ethereum | n/a | [`0x1ee35c...c47f07`](./contracts/ethereum-1/0x1ee35c67f8031291aef79e2abc87b904b9c47f07/) | ⚠️ Unaudited |

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
| [FLEX-Audit-28-February-2026.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/FLEX-Audit-28-February-2026.md) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Flex-May-07-2026-Dedaub.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/Flex-May-07-2026-Dedaub.pdf) | Dedaub | Audit | 2026-05 | fresh | Direct | contract_name | 2 | high |
| [flex-audit-27-april.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/flex-audit-27-april.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [2026-03-Flex-report.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/2026-03-Flex-report.pdf) | Unknown | Audit | 2026-03 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa4119b...16ebd6`](./contracts/ethereum-1/0xa4119b541a2ebf411f3ed6201107fc1da016ebd6/) | Debt In Front Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f1951...ed1efa`](./contracts/ethereum-1/0x3f195124394d63fcb4a792181cc8a65717ed1efa/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf3e99...6137e0`](./contracts/ethereum-1/0xbf3e996821d43ac3b6069ae74efa101ffc6137e0/) | Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc489b9...119acc`](./contracts/ethereum-1/0xc489b9e1003b337146fb8095687a8fb1f7119acc/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3b96...805266`](./contracts/ethereum-1/0x7a3b96e84156d22cdb53cbfc0b035ddd61805266/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91eb41...3d5421`](./contracts/ethereum-1/0x91eb419d77962bf89a0f1ca8b1fa525f443d5421/) | Swap Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82db9...8e2e49`](./contracts/ethereum-1/0xd82db9893751e9c90e2a6c3be31183048e8e2e49/) | Trove Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [9630] FLEX-Audit-28-February-2026.md

Fork inheritance lineage and inherited audits are included when available.
