# Agentic Audit Brief: Siren

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

- Project: Siren (`siren`)
- Website: [https://siren.xyz/](https://siren.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $240,981.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Siren. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmmDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x249094...37d8b8` | ⚠️ Unaudited |
| AmmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x024b82...f7118b` | ⚠️ Unaudited |
| ERC1155Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d025...2a84f2` | ⚠️ Unaudited |
| HedgedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07835d...1885dc` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7b63ec...aaa469` | ⚠️ Unaudited |
| MarketsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58dd75...def4e1` | ⚠️ Unaudited |
| MinterAmm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1695d5...1e332a` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x112dfe...a598a0` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad92b...322cae` | ⚠️ Unaudited |
| Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-254868 | `0x716c54...1fed48` | ⚠️ Unaudited |
| SeriesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x602de8...c15077` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122bf9...3ab84a` | ⚠️ Unaudited |
| SirenAccessKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8f834...c2d100` | ⚠️ Unaudited |
| SirenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23ac2...5093de` | ⚠️ Unaudited |
| SirenUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb80e32...b837ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x39e3a2...6e45a7` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Reports](https://cdn.prod.website-files.com/610fc6a1e961affb229320ba/633e9d068baa7b5a0d741afc_abch-siren-amm-report-feb-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18102] Reports — no match: Extracted contracts from scope section 4.1 and dependencies mentioned in findings. Audit date from cover page and document revisions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Reports | AddressesProvider | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | ChainlinkEthUsdProxy | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | Welford | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | VolatilityOracle | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | BlackScholes | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SeriesDeployer | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | WTokenVault | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | AmmDataProvider | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | AmmFactory | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | MinterAmm | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SirenExchange | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SeriesController | unmatched — not counted | — | mentioned as dependency in scope section 3 | no |
| Reports | Proxiable | unmatched — not counted | — | mentioned as dependency in scope section 3 | no |
| Reports | EnumerableSet | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | DSMath | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | Math | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | PRBMathSD59x18 | unmatched — not counted | — | listed as dependency in finding 6.8 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [18102] Reports

Fork inheritance lineage and inherited audits are included when available.
