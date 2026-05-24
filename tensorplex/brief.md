# Agentic Audit Brief: Tensorplex

## Project Overview

- Project: Tensorplex (`tensorplex`)
- Website: [https://stake.tensorplex.ai/](https://stake.tensorplex.ai/)
- Lifecycle: active (Tier 0, 94.7% below peak)
- Generated: 2026-05-24T19:32:22.628Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 6 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,642,006.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tensorplex is a liquid staking protocol that allows users to stake TAO tokens and receive a liquid staking derivative (PlxTAO) in return, enabling them to earn staking rewards while maintaining liquidity.

### Architecture

The PlxTAOProxy serves as the upgradeable proxy for the PlxTAO implementation, ensuring that the core staking logic can be updated without disrupting user balances or staking positions.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeWrapper | operational_periphery | ethereum | [`0x143f47...f78336`](./contracts/ethereum-1/0x143f476fd97807b526dd50cc2828043b08f78336/) | ⚠️ Unaudited |
| PlxTAO | unknown | ethereum | 4 deployments: ethereum [`0x52a139...2fbaa0`](./contracts/ethereum-1/0x52a139dde6c5df3b79a40fb051b954b3a52fbaa0/); ethereum `0xb60acd...044fd6`; ethereum `0xe6633f...b782df`; ethereum `0xf70d99...49ad4f` | ⚠️ Unaudited |
| PlxTAOProxy | proxy | ethereum | [`0x886c06...fbb5b5`](./contracts/ethereum-1/0x886c0677d7bb7272c7ed8878dc03ef357afbb5b5/) | ⚠️ Unaudited |
| StTAOSY | unknown | ethereum | [`0x60ccef...b9285f`](./contracts/ethereum-1/0x60ccefd60ba522f9221f122bb80a1e8cbab9285f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x058fc8...7dde56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x806041...1be6c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x143f47...f78336`](./contracts/ethereum-1/0x143f476fd97807b526dd50cc2828043b08f78336/) | BridgeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52a139...2fbaa0`](./contracts/ethereum-1/0x52a139dde6c5df3b79a40fb051b954b3a52fbaa0/) | PlxTAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886c06...fbb5b5`](./contracts/ethereum-1/0x886c0677d7bb7272c7ed8878dc03ef357afbb5b5/) | PlxTAOProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
