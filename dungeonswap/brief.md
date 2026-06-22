# Agentic Audit Brief: DungeonSwap

⚠️ Lifecycle status: DEAD - TVL dropped 7.2% over 90 days

## Project Overview

- Project: DungeonSwap (`dungeonswap`)
- Website: [https://dungeonswap.app](https://dungeonswap.app)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T01:11:22.882Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $28,399.93
- On-chain TVL (included contracts): $12,090.01
- TVL by chain: Bsc $12,090.01

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,090.01
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $12,090.01 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DNDToken | token | bsc | n/a | [`0x14c358...7af034`](./contracts/bsc-56/0x14c358b573a4ce45364a3dbd84bbb4dae87af034/) | ⚠️ Unaudited |
| DungeonMaster | unknown | bsc | n/a | [`0x3720f1...2d321f`](./contracts/bsc-56/0x3720f1f9a02bfb4dd6afb9030eb826b4392d321f/) | ⚠️ Unaudited |

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
| [DungeonSwap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/2018-21%20A-M/DungeonSwap.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x14c358...7af034`](./contracts/bsc-56/0x14c358b573a4ce45364a3dbd84bbb4dae87af034/) | DNDToken | token | $12,090.01 | Verified native implementation with $12,090.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3720f1...2d321f`](./contracts/bsc-56/0x3720f1f9a02bfb4dd6afb9030eb826b4392d321f/) | DungeonMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13052] DungeonSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
