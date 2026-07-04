# Agentic Audit Brief: Allstake

## Project Overview

- Project: Allstake (`allstake`)
- Website: [https://allstake.org/](https://allstake.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:59.795Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $758,942.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 1 | 50.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StrategyManager | unknown | ethereum | n/a | [`0x1ebcd3...77e533`](./contracts/ethereum-1/0x1ebcd3c5ad19e0183078c50da280cb4baf77e533/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UiDataProvider | unknown | ethereum | n/a | [`0xb72f5f...76fb51`](./contracts/ethereum-1/0xb72f5fd9d1402e5e086ac3ee9c96391ee076fb51/) | ⚠️ Unaudited |

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
| [BlockSec Audit: NEAR Contract, July 2024](https://github.com/allstake/audits/blob/main/Allstake%20-%20NEAR%20-%20BlockSec%20-%20Jul%202024.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [BlockSec Audit: Solana Program, July 2024](https://github.com/allstake/audits/blob/main/Allstake%20-%20Solana%20-%20BlockSec%20-%20Jul%202024.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [BlockSec Audit: Solidity Client Contracts, July 2024](https://github.com/allstake/audits/blob/main/Allstake%20-%20Solidity%20-%20BlockSec%20-%20Jul%202024.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb72f5f...76fb51`](./contracts/ethereum-1/0xb72f5fd9d1402e5e086ac3ee9c96391ee076fb51/) | UiDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [19406] BlockSec Audit: NEAR Contract, July 2024

Fork inheritance lineage and inherited audits are included when available.
