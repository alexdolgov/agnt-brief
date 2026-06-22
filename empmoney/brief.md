# Agentic Audit Brief: EmpMoney

⚠️ Lifecycle status: WIND_DOWN - TVL dropped 0.0% over 90 days

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: wind_down (Tier 1, wind_down)
- Generated: 2026-06-21T10:11:02.466Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $181,957.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Emp Money is a DeFi protocol on BSC offering algorithmic stablecoins and yield farming. It enables users to mint and manage algo-stable assets while earning rewards through staking and liquidity provision.

### Architecture

The protocol consists of a single product family centered around the Emp contract, which likely integrates minting, staking, and reward distribution. No additional supporting contracts or cross-family dependencies are identified.

## Contract Surface Quality

- Indexed contracts: 169; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 153 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/13.

## Audit Coverage Summary

- Verified implementations audited: 8/9 (88.9%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [wind_down]. ASD of n/a represents exposure in a protocol with wind_down activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 88.9% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | bsc | n/a | 2 deployments: bsc [`0x662a8a...657d48`](./contracts/bsc-56/0x662a8aeec032d872dbdbf105654e9001a6657d48/); bsc `0xe9bace...50942f` | ✅ Audited |
| EBond | unknown | bsc | n/a | [`0x7099a1...a5d520`](./contracts/bsc-56/0x7099a19da2f17bc85193b1f0e9091df014a5d520/) | ✅ Audited |
| Emp | unknown | bsc | n/a | 2 deployments: bsc [`0x269765...399a10`](./contracts/bsc-56/0x269765b520f22a57a8421e6c3a4fead11c399a10/); bsc `0x3b248c...dc1d58` | ✅ Audited |
| EmpRewardPool | core_logic | bsc | n/a | [`0x13ea3c...a9421c`](./contracts/bsc-56/0x13ea3cacf0ed02aeab86f80c2e9de77c70a9421c/) | ✅ Audited |
| EShare | unknown | bsc | n/a | 3 deployments: bsc [`0x43afd3...4733ff`](./contracts/bsc-56/0x43afd3d4ee88c5d1e1a856f5ae1aaccc1d4733ff/); bsc `0x7a3a5e...5aa3aa`; bsc `0xdb20f6...956550` | ✅ Audited |
| EShareRewardPool | core_logic | bsc | n/a | [`0x97a68a...6235b1`](./contracts/bsc-56/0x97a68a7949ee30849d273b0c4450314ae26235b1/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | [`0xd3dd99...505bb0`](./contracts/bsc-56/0xd3dd99430a7c6818f8c848ecffed527d38505bb0/) | ✅ Audited |
| Zapper | adapter | bsc | n/a | [`0x5bad35...8a5aa2`](./contracts/bsc-56/0x5bad3568c99f15833b92dea08a34d7ce868a5aa2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Timelock | governance | bsc | n/a | [`0xefebe2...7fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x4a956f...3d332a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90d059...13448e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf2af6...e0dc16` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [EMP-Money_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/emp-money/EMP-Money_final-audit-report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xefebe2...7fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=65

Fork inheritance lineage and inherited audits are included when available.
