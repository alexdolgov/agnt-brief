# Agentic Audit Brief: Decibel

## Project Overview

- Project: Decibel (`decibel`)
- Website: [https://app.decibel.trade/trade](https://app.decibel.trade/trade)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.830Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-38b2
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $28,770,449.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x50ead22afd6ffd9769e3b3d6e0e64a2a350d68e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [decibel-audit.pdf](https://app.decibel.trade/assets/decibel-audit.pdf) | OtterSec | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [liquidations-and-vaults-audit.pdf](https://app.decibel.trade/assets/liquidations-and-vaults-audit.pdf) | OtterSec | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [orderbook-audit.pdf](https://app.decibel.trade/assets/orderbook-audit.pdf) | OtterSec | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [predeposit-audit.pdf](https://app.decibel.trade/assets/predeposit-audit.pdf) | OtterSec | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3908] decibel-audit.pdf
- [3909] liquidations-and-vaults-audit.pdf
- [3910] orderbook-audit.pdf
- [3911] predeposit-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
