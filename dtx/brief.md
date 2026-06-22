# Agentic Audit Brief: DTX

⚠️ Lifecycle status: DEAD - TVL dropped 17.5% over 90 days

## Project Overview

- Project: DTX (`dtx`)
- Website: [https://dtx.trade/](https://dtx.trade/)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T20:00:50.723Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: blast
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $5,437.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DTX is a decentralized derivatives and spot trading protocol on Blast, enabling users to trade perpetual futures and swap tokens through a unified liquidity and risk engine.

### Architecture

All contracts belong to a single product family, DTX Derivatives, with core contracts handling trading, liquidity, and risk, while supporting contracts likely provide auxiliary services such as configuration or access control, all deployed by two distinct deployer clusters.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 44 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x037a16...7726db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d4621...f239db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x56e0f6...9c420e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x65621a...dd200a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x802b1f...ca450f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xba95fc...605801` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe97d34...362d8f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - DTX Protocol_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20DTX%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13051] SlowMist Audit Report - DTX Protocol_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
