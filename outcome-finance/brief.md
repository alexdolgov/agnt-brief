# Agentic Audit Brief: Outcome Finance

⚠️ Lifecycle status: DECLINING - TVL changed 60.3% over 90 days

## Project Overview

- Project: Outcome Finance (`outcome-finance`)
- Lifecycle: declining (Tier 0, 99.4% below peak)
- Generated: 2026-06-17T16:25:15.502Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: boba, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,048,764.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Outcome Finance is listed by DefiLlama as a Synthetics project that helps DAOs generate positive outcomes and uses UMA-related outcome/synthetic infrastructure. The currently recorded contract surface consists primarily of UMA creator/factory contracts, rather than verified trading venues or the deployed collateral-holding outcome contracts.

### Architecture

The LongShortPairCreator and ExpiringMultiPartyCreator contracts are factory contracts that deploy individual synthetic token pairs, sharing the same deployer cluster and likely relying on UMA's oracle and collateral infrastructure. The unnamed contract may serve as a registry or helper for these factories.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 7; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ExpiringMultiParty | unknown | ethereum | n/a | [`0x4f1424...af153c`](./contracts/ethereum-1/0x4f1424cef6ace40c0ae4fc64d74b734f1eaf153c/) | ⚠️ Unaudited |
| OptimisticOracleV2 | unknown | ethereum | n/a | [`0xa0ae66...23ffae`](./contracts/ethereum-1/0xa0ae6609447e57a42c51b50eae921d701823ffae/) | ⚠️ Unaudited |
| SkinnyOptimisticOracle | unknown | ethereum | n/a | [`0xee3afe...887c24`](./contracts/ethereum-1/0xee3afe347d5c74317041e2618c49534daf887c24/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | boba | n/a | `0xc064b1...d41f68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
