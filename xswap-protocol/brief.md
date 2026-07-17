# Agentic Audit Brief: XSwap Protocol

## Project Overview

- Project: XSwap Protocol (`xswap-protocol`)
- Website: [https://app.xspswap.finance/swap](https://app.xspswap.finance/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.653Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $602,145.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (0 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3b9edecc4286ba33ea6e27119c2a4db99829839d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1bcb1c502a545ee85a1881b95cdd46d394d2b2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecf4ea7907e779b8a7d0f90cb95fe06f43b610fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DEX Audit Techrate.pdf](https://github.com/XRC20-Swap/DEX-Audit/blob/main/DEX%20Audit%20Techrate.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/xswap-protocol](https://skynet.certik.com/projects/xswap-protocol) | CertiK | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [XSP Token.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/October/XSP%20Token.pdf) | TechRate | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14156] DEX Audit Techrate.pdf
- [14157] skynet.certik.com/projects/xswap-protocol
- [14158] XSP Token.pdf

Fork inheritance lineage and inherited audits are included when available.
