# Agentic Audit Brief: Juice Finance

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

- Project: Juice Finance (`juice-finance`)
- Website: [https://juice.finance](https://juice.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $103,727.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Juice Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across blast. Structural roles: 7 core, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), unclassified (1)
- Contract kinds: contract (8)
- Detected standards: erc20 (6), erc20permit (6), pausable (6), ownable (1), ownable2step (1)
- Frameworks: foundry (7), openzeppelin (7), prb-math (7), solady (6), uniswap-v3 (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 8; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0xdb4cfe914f304a513a01b12f4c0379dba1ea0a72` | ⚠️ Unaudited |
| ConstantStrategySlippageModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x001dae45b94a81cd1118f19733dc980c99361fb4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0xc0f68276bf79cb033641f615e72b19deb44fb7a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0xe2ff1a8a302f406aee73271f83386aaa37ef34cd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0xfec64ae675cc4b1aacf8f9c0abead585c5496382` | ⚠️ Unaudited |
| FixedPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x28334aa690505f67f7c070b136ab80d289ffac61` | ⚠️ Unaudited |
| JuiceAccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243416 | `0x23eba06981b5c2a6f1a985bdce41bd64d18e6dfa` | ⚠️ Unaudited |
| JuiceERC20AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0246937acacabe4e1b6045de9b68113d72966be2` | ⚠️ Unaudited |
| JuiceGovernor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243415 | `0x21d1887a5dd441dc8c01713713035dd171cd30d2` | ⚠️ Unaudited |
| JuiceHyperlockERC20PointsDepositStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243419 | `0x8034b01555487c26d4e21f4e33b7a30fbc90d181` | ⚠️ Unaudited |
| JuiceLendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdc9ed546bcf0546a22c242d023eb59d37d25813d` | ⚠️ Unaudited |
| JuiceStrategyKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c484539c7ca2e1f9188e7e24e74fd6e46f0e3cf` | ⚠️ Unaudited |
| JuiceThrusterV2Strategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243418 | `0x72e4ce9b7cc5d9c017f64ad58e512c253a11d30a` | ⚠️ Unaudited |
| JuiceThrusterV3SpotStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x54e5382d11d99178aef1e5a9c62fb7ee8b3f5ab2` | ⚠️ Unaudited |
| JuiceThrusterV3WETHSpotStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243417 | `0x4a355d57fc1a5eeb33c0a19539744a2144220027` | ⚠️ Unaudited |
| JuiceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x818a92bc81aad0053d72ba753fb5bc3d0c5c0923` | ⚠️ Unaudited |
| JuiceV2LPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x576314f851732b208d807260fe19fec7dba3e40c` | ⚠️ Unaudited |
| JuiceV2SpotStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x15e44c3f3f9b34fc49cc15a18a597bf80f144bc9` | ⚠️ Unaudited |
| JuiceVaultActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc4438286b0793c35a94469dbacda54235a40ba45` | ⚠️ Unaudited |
| JuiceWasabiStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243414 | `0x0ca56aa647e83a8f0a5f7a81a2fdca393bc68d78` | ⚠️ Unaudited |
| JuiceWasabiWETHStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243420 | `0x98546cdd046219b25b2e617a55563a5e4a3b9adc` | ⚠️ Unaudited |
| MunchableLockdropStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x01f7df622dde3b7d234aadbe282dda24cead9d21` | ⚠️ Unaudited |
| ParticleDuoPointsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x01e4ebac4767f14ee0e959961f78486b5dfe9fc3` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x360310975fae34d51a404099342baa812c689441` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa25e37aef324edb69db1b31e9877968236965f7b` | ⚠️ Unaudited |
| PythPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x43b6e7acff40a11643c0d680df8bcad17c567002` | ⚠️ Unaudited |
| RingV2StrategyView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5487fd96e66b4e7c529e080c6dd49dafc64ff5ab` | ⚠️ Unaudited |
| StakeIdentifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4ca392f74a4c86f5e521f1d8e915b36ed425b331` | ⚠️ Unaudited |
| V3RangeDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x245aed66a9f257b6799fb8cfc53d009d53c48071` | ⚠️ Unaudited |
| ViewV3SwapPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa31af89858960f3a2642ceb2495a40c231a31a13` | ⚠️ Unaudited |

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
| [spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf (also discovered via alternate URL)](https://3056968727-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWknP2uI2K6bJ6A8rjMCU%2Fuploads%2FsPOYBN0lSFOcXueNilnx%2FJUICE-Trust_Security-consultaion_report.pdf?alt=media) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21390] spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf — no match: Scope section lists contracts/LendingPool and contracts/Juice (excluding subdirectories). Additional contracts identified from findings sources.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | Juice | unmatched — not counted | — | listed in scope | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | ERC20CollateralVault | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | Liquidator | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | AccountManager | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | BaseAccount | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | JuiceAccountManager | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | JuiceAccount | unmatched — not counted | — | source in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21390] spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf

Fork inheritance lineage and inherited audits are included when available.
