# Agentic Audit Brief: Rubic

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Rubic (`rubic`)
- Website: [https://app.rubic.exchange/](https://app.rubic.exchange/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T10:05:05.467Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: kava
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $148,213.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rubic is a DEX aggregator that enables users to swap tokens across multiple decentralized exchanges, finding the best rates and routing trades efficiently.

### Architecture

All contracts belong to a single product family with no explicit separation of roles; they likely work together to perform aggregation logic, but no shared infrastructure or dependencies are discernible from the provided data.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | kava | n/a | `0x3333b1...370333` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x8d9ae5...7fd9f5` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x8e3bcc...16e08a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa96cdb...69cf5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/rubic-finance) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13793] DL audit link

Fork inheritance lineage and inherited audits are included when available.
