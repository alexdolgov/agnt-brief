# Agentic Audit Brief: Flex

## Project Overview

- Project: Flex (`flex`)
- Website: [https://flexmeow.com/](https://flexmeow.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.365Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 15 unique implementations (16 raw deployments)
- DeFi Llama TVL: $2,626,576.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 4 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/13 (38.5%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/15
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 26.7% | 2026-03 |
| Dedaub | Tier 2 | 2 | 13.3% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | ethereum | n/a | [`0x10b07c594e6de6d40e13c2d0b6c49e5a3cac0bcf`](./contracts/ethereum-1/0x10b07c594e6de6d40e13c2d0b6c49e5a3cac0bcf/) | ✅ Audited |
| Factory | registry | ethereum | n/a | [`0xe2c4a5c2ab1ed5745d206b33cc0abf0a5d34753d`](./contracts/ethereum-1/0xe2c4a5c2ab1ed5745d206b33cc0abf0a5d34753d/) | ✅ Audited |
| Registry | registry | ethereum | n/a | [`0x9117440a7d03238905d1c8908157bd7a547c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | ✅ Audited |
| StrategyAprOracle | operational_periphery | ethereum | n/a | [`0xfd6117e7dc92dd284412a0ee9fc2c9bdb945b9d1`](./contracts/ethereum-1/0xfd6117e7dc92dd284412a0ee9fc2c9bdb945b9d1/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x33c45216e121e31f1a8cd24c7e9d0d0c9e29b732`](./contracts/ethereum-1/0x33c45216e121e31f1a8cd24c7e9d0d0c9e29b732/); ethereum `0x467ce10870747372968ba98463a1d9af9fb27751` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Debt In Front Helper | periphery | ethereum | n/a | [`0xa4119b541a2ebf411f3ed6201107fc1da016ebd6`](./contracts/ethereum-1/0xa4119b541a2ebf411f3ed6201107fc1da016ebd6/) | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | n/a | [`0x3f195124394d63fcb4a792181cc8a65717ed1efa`](./contracts/ethereum-1/0x3f195124394d63fcb4a792181cc8a65717ed1efa/) | ⚠️ Unaudited |
| Leverage Zapper | adapter | ethereum | n/a | [`0xbf3e996821d43ac3b6069ae74efa101ffc6137e0`](./contracts/ethereum-1/0xbf3e996821d43ac3b6069ae74efa101ffc6137e0/) | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | n/a | [`0x6d8d09f18afd74e6d6d0190ccdf89de8fea54206`](./contracts/ethereum-1/0x6d8d09f18afd74e6d6d0190ccdf89de8fea54206/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | n/a | [`0xc489b9e1003b337146fb8095687a8fb1f7119acc`](./contracts/ethereum-1/0xc489b9e1003b337146fb8095687a8fb1f7119acc/) | ⚠️ Unaudited |
| StrategyFactory | registry | ethereum | n/a | [`0x7a3b96e84156d22cdb53cbfc0b035ddd61805266`](./contracts/ethereum-1/0x7a3b96e84156d22cdb53cbfc0b035ddd61805266/) | ⚠️ Unaudited |
| Swap Executor | unknown | ethereum | n/a | [`0x91eb419d77962bf89a0f1ca8b1fa525f443d5421`](./contracts/ethereum-1/0x91eb419d77962bf89a0f1ca8b1fa525f443d5421/) | ⚠️ Unaudited |
| Trove Manager | governance | ethereum | n/a | [`0xd82db9893751e9c90e2a6c3be31183048e8e2e49`](./contracts/ethereum-1/0xd82db9893751e9c90e2a6c3be31183048e8e2e49/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x863687e4e9751b57f38b4b0eba04744c72d0f7b8`](./contracts/ethereum-1/0x863687e4e9751b57f38b4b0eba04744c72d0f7b8/) | ⚠️ Unaudited |
| Yearn Vault Auction Taker | core_logic | ethereum | n/a | [`0x1ee35c67f8031291aef79e2abc87b904b9c47f07`](./contracts/ethereum-1/0x1ee35c67f8031291aef79e2abc87b904b9c47f07/) | ⚠️ Unaudited |

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
| [Flex-May-07-2026-Dedaub.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/Flex-May-07-2026-Dedaub.pdf) | Dedaub | Audit | 2026-05 | fresh | Direct | contract_name | 2 | n/a |
| [flex-audit-27-april.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/flex-audit-27-april.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |
| [2026-03-Flex-report.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/2026-03-Flex-report.pdf) | Unknown | Audit | 2026-03 | fresh | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa4119b541a2ebf411f3ed6201107fc1da016ebd6`](./contracts/ethereum-1/0xa4119b541a2ebf411f3ed6201107fc1da016ebd6/) | Debt In Front Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f195124394d63fcb4a792181cc8a65717ed1efa`](./contracts/ethereum-1/0x3f195124394d63fcb4a792181cc8a65717ed1efa/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf3e996821d43ac3b6069ae74efa101ffc6137e0`](./contracts/ethereum-1/0xbf3e996821d43ac3b6069ae74efa101ffc6137e0/) | Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d8d09f18afd74e6d6d0190ccdf89de8fea54206`](./contracts/ethereum-1/0x6d8d09f18afd74e6d6d0190ccdf89de8fea54206/) | Price Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc489b9e1003b337146fb8095687a8fb1f7119acc`](./contracts/ethereum-1/0xc489b9e1003b337146fb8095687a8fb1f7119acc/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3b96e84156d22cdb53cbfc0b035ddd61805266`](./contracts/ethereum-1/0x7a3b96e84156d22cdb53cbfc0b035ddd61805266/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91eb419d77962bf89a0f1ca8b1fa525f443d5421`](./contracts/ethereum-1/0x91eb419d77962bf89a0f1ca8b1fa525f443d5421/) | Swap Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82db9893751e9c90e2a6c3be31183048e8e2e49`](./contracts/ethereum-1/0xd82db9893751e9c90e2a6c3be31183048e8e2e49/) | Trove Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Zero-match audit list:

- [9630] FLEX-Audit-28-February-2026.md

Fork inheritance lineage and inherited audits are included when available.
