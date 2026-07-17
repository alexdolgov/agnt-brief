# Agentic Audit Brief: Counterstake

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Counterstake (`counterstake`)
- Website: [https://counterstake.org](https://counterstake.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, kava, polygon
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $429,150.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Counterstake in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5d78eed34a29371b560fe6d27dfad4cb0b3740eb`, chain 1)
- UnnamedContract (`0xb0464ec98322e88dc49ea557e924ed3668583e42`, chain 1)
- UnnamedContract (`0x9b14f01d7fcfcb64e7e0ac9abe388079bc1a4778`, chain 56)
- UnnamedContract (`0xba72f5536d6724f47af00775bd533b475318f4d9`, chain 56)
- UnnamedContract (`0x1ad6fec9abaf56cffed41fc0a771c286864be0ee`, chain 137)
- UnnamedContract (`0xf9b67a7e99974dc910b5c56484c1171376ba5e3b`, chain 137)
- UnnamedContract (`0x9fd40ee5a76ca1993d93c3d607113cff5b5e8dba`, chain 2222)
- UnnamedContract (`0xe72ab8607f0470c3956dff951384953cd7a4c0d2`, chain 2222)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 8 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382092 | `0x5d78eed34a29371b560fe6d27dfad4cb0b3740eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382094 | `0xb0464ec98322e88dc49ea557e924ed3668583e42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-382105 | `0x9b14f01d7fcfcb64e7e0ac9abe388079bc1a4778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-382107 | `0xba72f5536d6724f47af00775bd533b475318f4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382096 | `0x1ad6fec9abaf56cffed41fc0a771c286864be0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382098 | `0xf9b67a7e99974dc910b5c56484c1171376ba5e3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-382101 | `0x9fd40ee5a76ca1993d93c3d607113cff5b5e8dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-382103 | `0xe72ab8607f0470c3956dff951384953cd7a4c0d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audited](https://github.com/byteball/counterstake-bridge/blob/master/audits/Counterstake-audit-by-Dedaub.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19657] audited — no match: Extracted from the abstract and scope description. The audit date is the updated date (Mar. 4, 2022).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audited | Counterstake | unmatched — not counted | — | core functionality exported using Import.sol and Export.sol, both inherit from Counterstake.sol | no |
| audited | Export | unmatched — not counted | — | listed in scope description | no |
| audited | Import | unmatched — not counted | — | listed in scope description | no |
| audited | CounterStakeLibrary | unmatched — not counted | — | listed in scope description | no |
| audited | Governance | unmatched — not counted | — | listed in scope description | no |
| audited | VotedValue | unmatched — not counted | — | listed in scope description | no |
| audited | ExportAssistant | unmatched — not counted | — | listed in scope description | no |
| audited | ImportAssistant | unmatched — not counted | — | listed in scope description | no |
| audited | AssistantFactory | unmatched — not counted | — | mentioned in A2, A3 | no |
| audited | ImportAssistantFactory | unmatched — not counted | — | mentioned in A3 | no |
| audited | ExportAssistantFactory | unmatched — not counted | — | mentioned in A3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19657] audited

Fork inheritance lineage and inherited audits are included when available.
