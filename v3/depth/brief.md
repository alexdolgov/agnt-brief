# Agentic Audit Brief: Depth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Depth (`depth`)
- Website: [https://www.depthsoul.com/](https://www.depthsoul.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: abstract
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,142,204.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Depth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across abstract. Structural roles: 2 core, 2 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (2), ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5e2d57...322ce2`, chain 2741)
- UnnamedContract (`0x7c0bab...ae4cb2`, chain 2741)
- UnnamedContract (`0xd9f34c...ed0694`, chain 2741)
- UnnamedContract (`0xf3d2e7...663175`, chain 2741)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 4 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | abstract | unit-384155 | `0x5e2d57...322ce2` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | abstract | unit-384157 | `0x7c0bab...ae4cb2` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | abstract | unit-384159 | `0xd9f34c...ed0694` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | abstract | unit-384161 | `0xf3d2e7...663175` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | abstract | unit-384151 | `0x31aa82...e7757a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | abstract | unit-384153 | `0x4221a2...f88969` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/depth-token](https://skynet.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.certik.com/projects/depth-token](https://www.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Depth-Report-022721.6c156aca.pdf](https://depth.fi/static/media/Depth-Report-022721.6c156aca.pdf) | unnamed (Depth 'Audit Firm #01') | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Depth-Report2-EN.69622836.pdf](https://www.depth.fi/static/media/Depth-Report2-EN.69622836.pdf) | unnamed (Depth 'Audit Firm #02') | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21349] skynet.certik.com/projects/depth-token — no match: Extracted from 'Audited Files/SHA256' section listing IVault.sol and handleLHB-HUSD-USDT.sol. Audit date from 'Last Audit was delivered on 7/12/2021'.
- [21350] www.certik.com/projects/depth-token — no match: Extracted from 'Audited Files/SHA256' section listing two files.
- [21351] Depth-Report-022721.6c156aca.pdf — no match: The provided text is not an audit report; it is a domain sales page for depth.fi. No contracts or audit information are present.
- [21352] Depth-Report2-EN.69622836.pdf — no match: The provided text is a domain sales page, not an audit report. No contracts or audit information found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/depth-token | IVault | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/depth-token | handleLHB-HUSD-USDT | unmatched — not counted | — | listed in audited files | no |
| www.certik.com/projects/depth-token | IVault | unmatched — not counted | — | listed in audited files | no |
| www.certik.com/projects/depth-token | handleLHB-HUSD-USDT | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21349] skynet.certik.com/projects/depth-token
- [21350] www.certik.com/projects/depth-token
- [21351] Depth-Report-022721.6c156aca.pdf
- [21352] Depth-Report2-EN.69622836.pdf

Fork inheritance lineage and inherited audits are included when available.
