# Agentic Audit Brief: B2 Buzz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: B2 Buzz (`b2-buzz`)
- Website: [https://www.bsquared.network](https://www.bsquared.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: b2, bsc, ethereum, polygon
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $167,985,487.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for B2 Buzz in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x066466...bd2468`, chain 223)
- UnnamedContract (`0x420000...000006`, chain 223)
- UnnamedContract (`0x681202...c9dd62`, chain 223)
- UnnamedContract (`0x7537c1...4f1462`, chain 223)
- UnnamedContract (`0x7ebfce...f4bc00`, chain 223)
- UnnamedContract (`0xa0f447...6a477e`, chain 223)
- UnnamedContract (`0xc2fe4f...a525d5`, chain 223)
- UnnamedContract (`0xc3ee2d...4a0d5c`, chain 223)
- UnnamedContract (`0xd1b76c...3a848e`, chain 223)
- UnnamedContract (`0xd48d3a...cb2a5a`, chain 223)
- UnnamedContract (`0xe544e8...74b9e5`, chain 223)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 11 of 14 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| B2Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x783c3f...6ee2a2` | ⚠️ Unaudited |
| GnosisSafe | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeea3a0...13c42c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x01ce88...cd184a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380278 | `0x066466...bd2468` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380279 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380280 | `0x681202...c9dd62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380281 | `0x7537c1...4f1462` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380282 | `0x7ebfce...f4bc00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380283 | `0xa0f447...6a477e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380284 | `0xc2fe4f...a525d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380285 | `0xc3ee2d...4a0d5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380286 | `0xd1b76c...3a848e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380287 | `0xd48d3a...cb2a5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-380288 | `0xe544e8...74b9e5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [B²--Stake-Final-Audit-Report.pdf](https://scalebit.xyz/reports/B%C2%B2--Stake-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [B²-Network-zkEVM-Final-Audit-Report.pdf](https://scalebit.xyz/reports/B%C2%B2-Network-zkEVM-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21248] B²--Stake-Final-Audit-Report.pdf — no match: Only one contract file in scope: B2Stake.sol
- [21249] B²-Network-zkEVM-Final-Audit-Report.pdf — no match: The audit scope consists of directories and repositories, not individual smart contract files. No specific contract names were extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| B²--Stake-Final-Audit-Report.pdf | B2Stake | unmatched — not counted | — | listed in Files in Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [21248] B²--Stake-Final-Audit-Report.pdf
- [21249] B²-Network-zkEVM-Final-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
