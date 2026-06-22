# Agentic Audit Brief: DFX Finance

⚠️ Lifecycle status: DEAD - TVL dropped 0.2% over 90 days

## Project Overview

- Project: DFX Finance (`dfx-finance`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-21T09:16:00.002Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 7 unique implementations (13 raw deployments)
- DeFi Llama TVL: $110,955.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DFX Finance is a decentralized exchange protocol optimized for non-USD stablecoins and foreign exchange markets. It uses Curve-style liquidity pools to enable low-slippage swaps between pegged assets, with multiple versions deployed across Ethereum, Polygon, Base, and Arbitrum.

### Architecture

The sedge family provides tokenized fiat assets that are used as trading pairs in the liquidity pools created by the DFX V2 and V3 factory contracts. The factories deploy and manage the Curve pools, while sedge tokens serve as the underlying assets for those pools.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 219 inactive, 3 singleton, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 28.6% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curve | unknown | base | n/a | 3 deployments: base [`0x3fb5e3...2f1637`](./contracts/base-8453/0x3fb5e30d3ce5f3f194c90a2689b1fd20c82f1637/); base `0x86fffd...fb9fba`; base `0xc015f6...26acb0` | ✅ Audited |
| Router | adapter | ethereum | n/a | 5 deployments: ethereum [`0x0bf905...08bb09`](./contracts/ethereum-1/0x0bf90521ebd840947845f4466018456aab08bb09/); ethereum `0x9bba68...25428e`; polygon `0x575f1e...246f51`; polygon `0x5cf6d4...baa168`; arbitrum `0xbc3011...624406` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | base | unit-42060 | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| OFTAdapterV1Decimal2 | adapter | base | n/a | [`0xf75f1e...d232d0`](./contracts/base-8453/0xf75f1e19912352e1ad8c8ce9577381c277d232d0/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0xd52d48...0b1c32`](./contracts/ethereum-1/0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32/) | ⚠️ Unaudited |
| TimeLock | governance | base | n/a | [`0x30d940...a5b92d`](./contracts/base-8453/0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d/) | ⚠️ Unaudited |
| Zap | adapter | polygon | n/a | [`0x659b4c...73a9a4`](./contracts/polygon-137/0x659b4ca6e603a19dd20434bccf79a5f36473a9a4/) | ⚠️ Unaudited |

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
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd52d48...0b1c32`](./contracts/ethereum-1/0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30d940...a5b92d`](./contracts/base-8453/0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x659b4c...73a9a4`](./contracts/polygon-137/0x659b4ca6e603a19dd20434bccf79a5f36473a9a4/) | Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=70

Fork inheritance lineage and inherited audits are included when available.
