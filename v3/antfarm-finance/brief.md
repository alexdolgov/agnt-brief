# Agentic Audit Brief: Antfarm finance

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

- Project: Antfarm finance (`antfarm-finance`)
- Website: [https://antfarm.finance](https://antfarm.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, polygon, polygon-zkevm
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $217,707.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Antfarm finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, ethereum, polygon. Structural roles: 7 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (7), supporting (2)
- Contract kinds: contract (9)
- Detected standards: erc20permit (3), ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (3), foundry (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x529c78...8723d8`, chain 1)
- UnnamedContract (`0x6d9f0e...7d5418`, chain 1)
- UnnamedContract (`0x9ff19b...c2ccee`, chain 1)
- UnnamedContract (`0xd63123...9cf5af`, chain 1)
- UnnamedContract (`0xe48aee...e32cbe`, chain 1)
- UnnamedContract (`0x8af945...0a71d7`, chain 43114)
- UnnamedContract (`0xd999fb...4f0fd5`, chain 43114)
- UnnamedContract (`0xdc0bd7...bb4eab`, chain 43114)
- UnnamedContract (`0xf766bf...ecbede`, chain 43114)
- AntfarmFactory (`0x61f4ec...8ed3a5`, chain 42161)
- AntfarmGovernanceToken (`0x0bf433...50bdbd`, chain 1)
- AntfarmPosition (`0x15b195...5537b5`, chain 42161)
- AntfarmRouter (`0x1272ba...4fca28`, chain 42161)
- AntfarmToken (`0x518b63...8c16a8`, chain 1)
- PositionManager (`0xee8c1c...3a33b1`, chain 1)
- StandardArbERC20 (`0xfb9fbc...41216b`, chain 42161)
- VoteEscrowedToken (`0xdcd2b5...6cd244`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 17 of 21 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AntfarmFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226725 | `0x61f4ec...8ed3a5` | ⚠️ Unaudited |
| AntfarmGovernanceToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226712 | `0x0bf433...50bdbd` | ⚠️ Unaudited |
| AntfarmGuild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ea9ed...f2c897` | ⚠️ Unaudited |
| AntfarmPosition | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226724 | `0x15b195...5537b5` | ⚠️ Unaudited |
| AntfarmReturner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1272ba...4fca28` | ⚠️ Unaudited |
| AntfarmRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226723 | `0x1272ba...4fca28` | ⚠️ Unaudited |
| AntfarmSale | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-226713 | `0x1b0470...b65213` | ⚠️ Unaudited |
| AntfarmToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226714 | `0x518b63...8c16a8` | ⚠️ Unaudited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226722 | `0xee8c1c...3a33b1` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-226730 | `0xfb9fbc...41216b` | ⚠️ Unaudited |
| VoteEscrowedToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226720 | `0xdcd2b5...6cd244` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226715 | `0x529c78...8723d8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-226716 | `0x6142b3...a0a900` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226717 | `0x6d9f0e...7d5418` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226718 | `0x9ff19b...c2ccee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226719 | `0xd63123...9cf5af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226721 | `0xe48aee...e32cbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226726 | `0x8af945...0a71d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226727 | `0xd999fb...4f0fd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226728 | `0xdc0bd7...bb4eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226729 | `0xf766bf...ecbede` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.docdroid.net/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Download](https://www.docdroid.net/file/download/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf.pdf?e=1783034687&s=a0536471cfb9d2295fbecfd888ef8cd0) | RAID Square | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19442] DL audit link — no match: The provided text is a filename and a description of a PDF document, not the actual content of the audit report. No contract names or audit date could be extracted.
- [19443] Download — no match: The provided text is a URL and markdown content that does not contain the actual audit report text. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x61f4ec...8ed3a5` | AntfarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0bf433...50bdbd` | AntfarmGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x15b195...5537b5` | AntfarmPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1272ba...4fca28` | AntfarmRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x518b63...8c16a8` | AntfarmToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xee8c1c...3a33b1` | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfb9fbc...41216b` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdcd2b5...6cd244` | VoteEscrowedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [19442] DL audit link
- [19443] Download

Fork inheritance lineage and inherited audits are included when available.
