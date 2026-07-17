# Agentic Audit Brief: Single Finance

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

- Project: Single Finance (`single-finance`)
- Website: [https://singlefinance.io](https://singlefinance.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, cronos, fantom
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $168,389.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Single Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x338726dd694db9e2230ec2bb8624a2d7f566c96d`, chain 25)
- UnnamedContract (`0xbda9df2cff1d36ffc05e8e76ec821b25db8f3348`, chain 250)
- UnnamedContract (`0x6e0c55f4f52e2be3eabbd368f1ae7eddeb4ebf8a`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 3 of 14 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| AnyswapV6ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55853edc67aa68ec2e3903ac00f2bc5bf2ca8db0` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3129662808bec728a27ab6a6b9afd3cbaca8a43c` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb01371072fdcb9b4433b855e16a682b461f94ab3` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd806a4a473e44578796898a4c546f575d7247b2b` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa87827efcac7ab82992665fc178cca16843fe353` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58c1bbb508e96cfec1787acf6afe1c7008a5b064` | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e` | ⚠️ Unaudited |
| Skimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f0b8b456c1a451378467398982d4834b6829c1` | ⚠️ Unaudited |
| ValueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fc5670b2041d34414b0b2178fc660b1e1faf801` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-392584 | `0x338726dd694db9e2230ec2bb8624a2d7f566c96d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-392585 | `0x8cc97b50fe87f31770bcdcd6bc8603bc1558380b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-392586 | `0xbda9df2cff1d36ffc05e8e76ec821b25db8f3348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392587 | `0x6e0c55f4f52e2be3eabbd368f1ae7eddeb4ebf8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/singlefinance](https://skynet.certik.com/projects/singlefinance) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21000] skynet.certik.com/projects/singlefinance — no match: Extracted from 'Audited Files' section listing two contracts. Date from 'Last Audit was delivered on 1/12/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/singlefinance | ConfigurableInterestVaultConfig | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/singlefinance | SingleToken | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21000] skynet.certik.com/projects/singlefinance

Fork inheritance lineage and inherited audits are included when available.
