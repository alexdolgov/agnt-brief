# Agentic Audit Brief: Swapscanner

## Project Overview

- Project: Swapscanner (`swapscanner`)
- Website: [https://swapscanner.io/](https://swapscanner.io/)
- Lifecycle: active (Tier 0, 82.4% below peak)
- Generated: 2026-05-23T20:21:33.867Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: klaytn
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $4,683,395.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Swapscanner is a DeFi protocol on Klaytn offering a decentralized exchange and liquid staking services, enabling users to trade tokens and stake assets while receiving liquid staking derivatives.

### Architecture

The protocol consists of a single product family with two core contracts that likely represent the staking pool and the derivative token, sharing infrastructure for liquid staking operations.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | `0x888888...28d5f3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x999999...ac80e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2552220674-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FB0n61krC2LiDSllARDiL%2Fuploads%2Fd1qZS2rjUPCnHg4A17dJ%2F%5BCertiK%20AUDIT%5DSwapscanner_2023.04.06..pdf) | CertiK | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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

- [2563] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
