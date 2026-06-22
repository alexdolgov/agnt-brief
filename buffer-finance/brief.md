# Agentic Audit Brief: Buffer Finance

⚠️ Lifecycle status: DEAD - TVL dropped 99.7% over 90 days

## Project Overview

- Project: Buffer Finance (`buffer-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T13:11:39.990Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $178.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Buffer Finance is a decentralized options trading platform that allows users to trade binary options on various assets. It provides liquidity pools where users can deposit funds to earn fees from options trading.

### Architecture

The BufferBinaryPool contract serves as the core liquidity pool for options trading, while BFR is the protocol's native token likely used for governance or incentives. Both contracts are part of the single product family with no additional supporting contracts identified.

## Contract Surface Quality

- Indexed contracts: 193; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 188 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 66.7% (Sherlock)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 66.7% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BufferBinaryPool | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x6ec7b1...cd9c7e`](./contracts/arbitrum-42161/0x6ec7b10bf7331794adaaf235cb47a2a292cd9c7e/); arbitrum `0xae0628...123833`; arbitrum `0xfd9f88...debde1` | ✅ Audited |
| ReferralStorage | token | arbitrum | n/a | [`0xfea57b...6d9c29`](./contracts/arbitrum-42161/0xfea57b9548cd72d8705e4bb0fa83aa35966d9c29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BFR | unknown | arbitrum | n/a | [`0x1a5b0a...982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | ⚠️ Unaudited |

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
| [2022.12.08 - Final - Buffer Finance Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2022-12 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1a5b0a...982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | BFR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=155

Fork inheritance lineage and inherited audits are included when available.
