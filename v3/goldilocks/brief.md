# Agentic Audit Brief: Goldilocks

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Goldilocks (`goldilocks`)
- Website: [https://www.goldilocksdao.io/](https://www.goldilocksdao.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $548,160.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Goldilocks. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across berachain. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Goldiswap (`0xb7e448e5677d212b8c8da7d6312e8afc49800466`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 14 unique; 13 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 11.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Goldiswap | unknown | project_anchor | own_supporting | 0 | berachain | unit-266845 | `0xb7e448e5677d212b8c8da7d6312e8afc49800466` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DamOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x71356761fd23e77e5d78c37c70fe78229ca75a72` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | n/a | `0x17c3b688badd6dd11244096a9fbc4ae0add551ab` | ⚠️ Unaudited |
| RusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x09d4214c03d01f49544c0448dbe3a27f768f2b34` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x563a27728d298f21738ab694e95f344a42731fe5` | ⚠️ Unaudited |
| SrusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5475611dffb8ef4d697ae39df9395513b6e947d7` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x50fa1411201e2ac0361fb893e903b80f141b8190` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa93322a98335b791df87f20bb939fbe4d84ffadd` | ⚠️ Unaudited |
| WsrusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x316cd39632cac4f4cdfc21757c4500fe12f64514` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6c00d68dc6bcc3d47d698f4b566ccbe893d34fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6fd990680deb2e5dccb2ffefc3307dd34138ac7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb9798e0e3ab8b2f2c80684c9d51056538e021dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbf2e152f460090ace91a456e3dee5acf703f27ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbf9a438d24b0772493e1c06ec615391f738d2719` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://goldilocks.gitbook.io/goldidocs/info/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Cyfrin](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-14-cyfrin-goldilocks-v1.1.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [[Hyacinth]()](https://www.hyacinthaudits.xyz/bounty/66c0cc6376ba4b02991fe30d) | Hyacinth | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Halborn](https://www.halborn.com/audits/goldilocks/goldilocks-core) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Halborn Update](https://www.halborn.com/audits/goldilocks/goldilocks-update) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20443] Audits — no match: The provided text is an index page listing audit reports from various firms, but does not contain the actual audit report content or scope details. No contract names or audit dates can be extracted.
- [20445] Cyfrin — matched: All contracts listed in the Audit Scope section (page 3) were extracted. The audit date is April 14, 2024 from the cover page.
- [20446] [Hyacinth]() — no match: The provided text is just a bounty loading message, not an audit report.
- [20447] Halborn — no match: The provided text is a website navigation/marketing page for Halborn, not an audit report. No contracts, scope, or audit date are present.
- [20448] Halborn Update — no match: The provided text is a website navigation/marketing page for Halborn, not an audit report. No contracts, scope sections, or audit dates are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cyfrin | Goldilend | unmatched — not counted | — | listed in scope | no |
| Cyfrin | Goldiswap | own contract | Goldiswap (selected) `0xb7e448e5677d212b8c8da7d6312e8afc49800466` — deployed 2025-02-07 04:28:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin | Goldivault | unmatched — not counted | — | listed in scope | no |
| Cyfrin | OwnershipToken | unmatched — not counted | — | listed in scope | no |
| Cyfrin | YieldToken | unmatched — not counted | — | listed in scope | no |
| Cyfrin | Goldigovernor | unmatched — not counted | — | listed in scope | no |
| Cyfrin | Timelock | unmatched — not counted | — | listed in scope | no |
| Cyfrin | GovLocks | unmatched — not counted | — | listed in scope | no |
| Cyfrin | Goldilocked | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=4
- Match method counts: unique_name=1

Zero-match audit list:

- [20443] Audits
- [20446] [Hyacinth]()
- [20447] Halborn
- [20448] Halborn Update

Fork inheritance lineage and inherited audits are included when available.
