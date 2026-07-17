# Agentic Audit Brief: Orcus Finance

## Project Overview

- Project: Orcus Finance (`orcus-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.156Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: moonbeam
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $362,322.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x243e038685209b9b68e0521bd5838c6c937d666a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc404e12d3466accb625c67dbab2e1a8a457def3c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcdb32eed99aa19d39e5d6ec45ba74dc4afec549f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd89dea2dac8fb73f4107c2cbea5eb36dab511f64` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfa1cfa75bfae8303a9fe8af711aacd59015ee6d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ContractWolf_Audit_OrcusFinance.pdf](https://github.com/ContractWolf/smart-contract-audits/blob/main/ContractWolf_Audit_OrcusFinance.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13639] ContractWolf_Audit_OrcusFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
