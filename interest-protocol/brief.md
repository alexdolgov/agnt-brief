# Agentic Audit Brief: Interest Protocol

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: active (Tier 0, 89.9% below peak)
- Generated: 2026-06-21T16:20:02.299Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,264,963.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 125; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 71 inactive, 52 singleton, 0 uninitialized.
- Deployment units: 0/26 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 22; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 1 | 50.0% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SlowRoll | unknown | ethereum | n/a | [`0xfbd306...cf1d1d`](./contracts/ethereum-1/0xfbd3060fe1ed10c34e236cee837d82f019cf1d1d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchoredViewRelay | unknown | ethereum | n/a | [`0xfde4c9...699bb2`](./contracts/ethereum-1/0xfde4c96c8593536e31f229ea8f37b2ada2699bb2/) | ⚠️ Unaudited |

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
| [DL audit link (also discovered via alternate URL)](https://gfx.cafe/ip/contracts/-/blob/master/audit/GFX_IP_Protocol_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/gfx-labs/ip-contracts/blob/master/audit/Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2022-11 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=57

Zero-match audit list:

- [13289] DL audit link

Fork inheritance lineage and inherited audits are included when available.
