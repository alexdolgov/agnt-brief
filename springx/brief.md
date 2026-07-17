# Agentic Audit Brief: SpringX

## Project Overview

- Project: SpringX (`springx`)
- Website: [https://springx.finance/](https://springx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.559Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: plasma
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $24,860.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 0 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Infrastructure) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x466ad8f9a43494e62eaec9394df0ab5fe7d66a98` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5a8589b654f0f475716835b1351d5079f2213d6a` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x921856655c64565d904de3424941ea9ae1675dbb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xafcf702c1ba93f48c39df5cdf5bffe780b705d1c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb5d557a1dfe1e7d5a6b3c53471d8231b55d21ce3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc9dd53844c1eee998fb1a59e4edcdd908304df39` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf04acf7781a8b873e3e12694d4fd179c6ce32462` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SpringX-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/SpringX-Security-Review.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13887] SpringX-Security-Review.pdf

Fork inheritance lineage and inherited audits are included when available.
