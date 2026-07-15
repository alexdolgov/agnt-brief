# Agentic Audit Brief: Jones DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Jones DAO (`jones-dao`)
- Website: [https://jonesdao.io](https://jonesdao.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,295,839.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Jones DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across blast. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1c99b4...bb5eb0`, chain 81457)
- UnnamedContract (`0xf0c06b...914b6c`, chain 81457)
- ThrusterPool (`0xd99593...aed256`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ThrusterPool | core_logic | project_anchor | own_supporting | 0 | blast | unit-243367 | `0xd99593...aed256` | ⚠️ Unaudited |

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
| CompounderStrategy | adapter | project_anchor | own_supporting | 1 | blast | unit-243368 | `0xf0c06b...914b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-243366 | `0x1c99b4...bb5eb0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/JonesDAO](https://sourcehat.com/audits/JonesDAO) | SourceHat | Audit | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [sourcehat.com/audits/JonesDAOGLPVaults](https://sourcehat.com/audits/JonesDAOGLPVaults) | SourceHat | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [sourcehat.com/audits/JonesDAOVaultsV2](https://sourcehat.com/audits/JonesDAOVaultsV2) | SourceHat | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [sourcehat.com/audits/JonesDAOVaults](https://sourcehat.com/audits/JonesDAOVaults) | SourceHat | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [sourcehat.com/audits/JonesAURA](https://sourcehat.com/audits/JonesAURA) | SourceHat | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Smart LP Report.pdf](https://2759202604-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fm6Ih8ks8ypfDyOM12liG%2Fuploads%2FL5AAS6gkGjNSMYqi3LU8%2FSmart%20LP%20Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11588] sourcehat.com/audits/JonesDAO — no match: No reason recorded
- [11589] sourcehat.com/audits/JonesDAOGLPVaults — no match: No reason recorded
- [11590] sourcehat.com/audits/JonesDAOVaultsV2 — no match: No reason recorded
- [11591] sourcehat.com/audits/JonesDAOVaults — no match: All eight contracts are explicitly described in the 'Contracts Overview' section and listed in the 'Contract Source Summary and Visualizations' table. The audit date is the updated date (January 18th, 2023) as the final report date.
- [11592] sourcehat.com/audits/JonesAURA — no match: No reason recorded
- [27157] Smart LP Report.pdf — no match: Extracted 15 contracts from the scope section. Audit date inferred from review period end date (June 7, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/JonesDAO | JonesDPXVaultV3 | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAO | JonesERC20VaultV3 | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAO | JonesSSOVCallV3Strategy | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAO | JonesSSOVPutV3Strategy | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAO | JonesWETHVaultV3Adapter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | GlpAdapter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | GlpJonesRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpCompoundRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpLeverageStrategy | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpRewardDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpRewardTracker | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpRewardsSplitter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpRewardsSwapper | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpStableVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | JonesGlpVaultRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOGLPVaults | WhitelistController | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | GlpAdapter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | GlpJonesRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpCompoundRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpLeverageStrategy | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpRewardDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpRewardTracker | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpRewardsSplitter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpRewardsSwapper | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpStableVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | JonesGlpVaultRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaultsV2 | WhiteListController | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpVault | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpStableVault | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpVaultRouter | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpLeverageStrategy | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | GlpJonesRewards | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpRewardTracker | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpRewardDistributor | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesDAOVaults | JonesGlpRewardsSplitter | unmatched — not counted | — | Listed in 'Contracts Overview' and 'Contract Source Summary and Visualizations' table. | no |
| sourcehat.com/audits/JonesAURA | AuraBALSwapper | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | AuraCompounderStrategy | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | AuraCompounderVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | AuraRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | AuraVirtualVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | OneInchV4Swapper | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | UniswapV2Swapper | unmatched — not counted | — | — | no |
| sourcehat.com/audits/JonesAURA | UniswapV3Swapper | unmatched — not counted | — | — | no |
| Smart LP Report.pdf | MulDivMathLib | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniLiquidityLib | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniV3Library | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | Creator | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniSwapLPManager | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniswapPriceHelper | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | Compounder | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | RewardReceiver | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | RewardTracker | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | SingleRewardTracker | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniswapV3Swapper | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | UniversalSwapper | unmatched — not counted | — | listed in scope | no |
| Smart LP Report.pdf | Viewer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xd99593...aed256` | ThrusterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11588] sourcehat.com/audits/JonesDAO
- [11589] sourcehat.com/audits/JonesDAOGLPVaults
- [11590] sourcehat.com/audits/JonesDAOVaultsV2
- [11591] sourcehat.com/audits/JonesDAOVaults
- [11592] sourcehat.com/audits/JonesAURA
- [27157] Smart LP Report.pdf

Fork inheritance lineage and inherited audits are included when available.
