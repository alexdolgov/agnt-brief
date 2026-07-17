# Agentic Audit Brief: IXS

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: IXS (`ixs`)
- Website: [https://www.ixs.finance/](https://www.ixs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $160,172.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for IXS in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x73d7c860998ca3c01ce8c808f5577d94d545d1b4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 11 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x9546a22c244497b6fb5338e4ff7c74c5accb3ddd` | ⚠️ Unaudited |
| IxsGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65dd1b5de5655b56ae8beae49bb2bcb95b1f20c` | ⚠️ Unaudited |
| IxsSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f4c185dee9f069bc0f6a5d51ad39f33fb6fefb6` | ⚠️ Unaudited |
| IxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41d8eb8b8d69c28a3879e93cbb3c4c6b8d1a9680` | ⚠️ Unaudited |
| IxsTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83f08144e7383a81b0efeb87e421cf0da2748a39` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98dc0b47ba9338d10b46ef419ef3589b9b7749e7` | ⚠️ Unaudited |
| SimpleBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11ba4ff86ba4a0d7cbf3f80f0200e043936baf87` | ⚠️ Unaudited |
| TitaniumTech | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52a29640447db7bae033b349006607829b02b76f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x32714df9ee6ae513e04902c803e34eef7b558bb9` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ba17c639bdaecd8dc4aac37df062d17ee43a1b8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243214 | `0x73d7c860998ca3c01ce8c808f5577d94d545d1b4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [{% embed url="<>" %}](https://drive.google.com/file/d/1Q8pgZoqs0hju6Cw-27foFLPkr0AHFxVy/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CTCqCypztxQMvSx4WMTxPNXbLfYc_xqc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1wd_CsHQBQnfZ-mwAlVBE8hWQC71X-Zwc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart Contract Audits](https://ixs.gitbook.io/ixs-gitbook/other-documentation/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20591] {% embed url="<>" %} — no match: The provided text is a Google Drive page with no actual audit report content; only a sign-in prompt and a loading message are visible.
- [20592] {% embed url="<>" %} — no match: The provided text is a Google Drive page with a PDF link but no actual audit report content. No contract names or audit date could be extracted.
- [20593] {% embed url="<>" %} — no match: The provided text is a Google Drive page with a PDF link and an image, not the actual audit report content. No contract names or audit date could be extracted.
- [20594] Smart Contract Audits — no match: The provided text is a documentation index page with links to audit reports, but no contract names or scope details are included.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=4
- Match method counts: n/a

Zero-match audit list:

- [20591] {% embed url="<>" %}
- [20592] {% embed url="<>" %}
- [20593] {% embed url="<>" %}
- [20594] Smart Contract Audits

Fork inheritance lineage and inherited audits are included when available.
