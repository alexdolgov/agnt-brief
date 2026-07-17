# Agentic Audit Brief: Y2K Finance

## Project Overview

- Project: Y2K Finance (`y2k-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.699Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $28,609.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 1 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Registries) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClonableBeaconProxy | registry | arbitrum | n/a | [`0x65c936f008bc34fe819bce9fa5afd9dc2d49977f`](./contracts/arbitrum-42161/0x65c936f008bc34fe819bce9fa5afd9dc2d49977f/) | ⚠️ Unaudited |
| WeightedPool | core_logic | arbitrum | n/a | [`0x569061e2d807881f4a33e1cbe1063bc614cb75a4`](./contracts/arbitrum-42161/0x569061e2d807881f4a33e1cbe1063bc614cb75a4/) | ⚠️ Unaudited |

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
| [spaces/aSJHG27D6yEvbos52Fsy/uploads/cvH67oRCDa5MfmmyxtuU/Peckshield_Y2K.pdf](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FcvH67oRCDa5MfmmyxtuU%2FPeckshield_Y2K.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [spaces/aSJHG27D6yEvbos52Fsy/uploads/Hl3FHTkdL3GkcmrpG4xV/Halborn_Y2K.pdf](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FHl3FHTkdL3GkcmrpG4xV%2FHalborn_Y2K.pdf) | Halborn | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [spaces/aSJHG27D6yEvbos52Fsy/uploads/s53umi8JxWDcLXM2RWkz/Halborn_Y2k_Audit2.pdf](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2Fs53umi8JxWDcLXM2RWkz%2FHalborn_Y2k_Audit2.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [www.verilog.solutions/audits/y2k](https://www.verilog.solutions/audits/y2k) | VERILOG | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/aSJHG27D6yEvbos52Fsy/uploads/3jrhjQlJz1n5GhyXN0iU/SHERLOCK_Y2K_Audit_Report.pdf](https://398575907-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2F3jrhjQlJz1n5GhyXN0iU%2FSHERLOCK_Y2K_Audit_Report.pdf) | Sherlock | Contest | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [spaces/aSJHG27D6yEvbos52Fsy/uploads/iSOJywuozkhowmbmGO1v/Y2K_Finance_-_Zellic_Audit_Report.pdf](https://398575907-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FiSOJywuozkhowmbmGO1v%2FY2K_Finance_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x65c936f008bc34fe819bce9fa5afd9dc2d49977f`](./contracts/arbitrum-42161/0x65c936f008bc34fe819bce9fa5afd9dc2d49977f/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x569061e2d807881f4a33e1cbe1063bc614cb75a4`](./contracts/arbitrum-42161/0x569061e2d807881f4a33e1cbe1063bc614cb75a4/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14147] spaces/aSJHG27D6yEvbos52Fsy/uploads/cvH67oRCDa5MfmmyxtuU/Peckshield_Y2K.pdf
- [14148] spaces/aSJHG27D6yEvbos52Fsy/uploads/Hl3FHTkdL3GkcmrpG4xV/Halborn_Y2K.pdf
- [14149] spaces/aSJHG27D6yEvbos52Fsy/uploads/s53umi8JxWDcLXM2RWkz/Halborn_Y2k_Audit2.pdf
- [14150] www.verilog.solutions/audits/y2k
- [14151] spaces/aSJHG27D6yEvbos52Fsy/uploads/3jrhjQlJz1n5GhyXN0iU/SHERLOCK_Y2K_Audit_Report.pdf
- [14152] spaces/aSJHG27D6yEvbos52Fsy/uploads/iSOJywuozkhowmbmGO1v/Y2K_Finance_-_Zellic_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
