# Agentic Audit Brief: B-Lucky

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

- Project: B-Lucky (`b-lucky`)
- Website: [https://b-lucky.gg/](https://b-lucky.gg/)
- Lifecycle: active (Tier 0, 55.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,019,242.40
- On-chain TVL (included contracts): $2,646,188.25
- TVL by chain: Bsc $2,646,188.25

## Project Description

This brief describes the observed EVM deployment and audit surface for B-Lucky. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7424b99a4de7cf97eca82d743ac6d91c73cb203a`, chain 56)
- UnnamedContract (`0x98207bb96e5fae18e930de1c2aaa27a5a72263cb`, chain 56)
- UnnamedContract (`0xbb3bfface9c9bf7fed9ecbb93c0dcf4449e878fe`, chain 56)
- UnnamedContract (`0xdb43586ab47cab874775d2ae1941bd270da54fad`, chain 56)
- UnnamedContract (`0xe04cda98df2d45cfb6321655afc64c1fa6a06b0c`, chain 56)
- Token (`0x67b47971426bb2180453b3993ff2ec319e704444`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 22 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,362,119.07
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-380073 | `0x67b47971426bb2180453b3993ff2ec319e704444` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x211cbe6be0250c7ec744fedb8d66fa2984fdde58` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14515a777baf856e21605949e02e0747abf62046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16e31565b639a43c06b1c70e1baac77fe8cc3433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18b5342db7233a0bbcd033ea150a2af4415406c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e3eaa28c911cb5e753b35f606b0883cae841286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380072 | `0x344c83fa5ae2e4de9f5ff8eb6d1e6ffe3325ddbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x523558ab12bdea66e967a8f4089451978473f1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58956cfcead5a2dac9bf7099321f1594fb7f6572` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380074 | `0x7424b99a4de7cf97eca82d743ac6d91c73cb203a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef0d0ab584e4708b7e062856682eac743157aba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380075 | `0x98207bb96e5fae18e930de1c2aaa27a5a72263cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99eead80fda9de2a0c28bbad38f8730601b96d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4c3988babf43ec961b66824df547bae9aa6d62a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380076 | `0xa7f03beaf428801476b1ebb226a5ad434dcfba50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa862984d2c752550a6e33c5671625a8b50836780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8a4ef2d65f7b397f5796f4b8a78de6a3aaf6d39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380077 | `0xbb3bfface9c9bf7fed9ecbb93c0dcf4449e878fe` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380078 | `0xdb43586ab47cab874775d2ae1941bd270da54fad` | ❓ Unverified |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | bsc | unit-380079 | `0xe04cda98df2d45cfb6321655afc64c1fa6a06b0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380080 | `0xe18ead45d0b0c04293ad90fa4e27c561e935ad5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8964e52b3d5b6155b8bf1058a42c89142304b9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [bailsec.pdf](https://b-lucky.gg/audit/bailsec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3235] bailsec.pdf — no match: All contracts are explicitly described in the report sections. The date is from the header 'September ‘2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bailsec.pdf | LottoToken | unmatched — not counted | — | Section 3: 'The LottoToken contract is a simple ERC20 contract...' | no |
| bailsec.pdf | PhilippeHelper | unmatched — not counted | — | Section: 'PhilippeHelper' | no |
| bailsec.pdf | PhilippeTypes | unmatched — not counted | — | Section: 'PhilippeTypes' | no |
| bailsec.pdf | Philippe | unmatched — not counted | — | Section: 'Philippe' | no |
| bailsec.pdf | RoundSettingsManager | unmatched — not counted | — | Section: 'RoundSettingsManager' | no |
| bailsec.pdf | DifficultyAdjuster | unmatched — not counted | — | Section: 'DifficultyAdjuster' | no |
| bailsec.pdf | PhilippeAdmin | unmatched — not counted | — | Section: 'PhilippeAdmin' | no |
| bailsec.pdf | PhilippePrizeDistribution | unmatched — not counted | — | Section: 'PhilippePrizeDistribution' | no |
| bailsec.pdf | PhilippeRewards | unmatched — not counted | — | Section: 'PhilippeRewards' | no |
| bailsec.pdf | PhilippeUtils | unmatched — not counted | — | Section: 'PhilippeUtils' | no |
| bailsec.pdf | PhilippeConstants | unmatched — not counted | — | Section: 'PhilippeConstants' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x67b47971426bb2180453b3993ff2ec319e704444` | Token | token | $2,362,119.07 | Verified native implementation with $2,362,119.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 20 |

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

- [3235] bailsec.pdf

Fork inheritance lineage and inherited audits are included when available.
