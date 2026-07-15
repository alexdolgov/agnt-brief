# Agentic Audit Brief: Sable Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sable Finance (`sable-finance`)
- Website: [https://sable.finance](https://sable.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: 11/25 confirmed own live verified implementations (44.0%); conservative 44.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $571,941.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sable Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across bsc. Structural roles: 19 unclassified, 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: unclassified (19), core (6)
- Contract kinds: contract (25)
- Detected standards: erc20 (2), erc20permit (2), ownable (1)
- Frameworks: openzeppelin (6), foundry (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x57e561...f73dc9`, chain 56)
- UnnamedContract (`0xa0d4e2...ecccb0`, chain 56)
- SableRewarder (`0x23d253...a1bdeb`, chain 56)
- SableStakingV2 (`0xfbc81a...25b16c`, chain 56)
- SABLEToken (`0x1ee098...5a878d`, chain 56)
- USDSToken (`0x0c6ed1...240fa0`, chain 56)
- VestingWallet (`0x781285...7872b7`, chain 56)
- VestingWallet (`0xb46e91...73c480`, chain 56)
- VestingWallet (`0xd85341...70f6dd`, chain 56)
- VestingWallet (`0xfef652...bb1fcb`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/25 (44.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 27 of 33 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/29
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 44.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 11 | 37.9% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | bsc | unit-391913 | `0xa49bec...c0602f` | ✅ Audited |
| CommunityIssuance | unknown | project_anchor | own_supporting | 0 | bsc | unit-391905 | `0x7fd517...dc9c9e` | ✅ Audited |
| OracleRateCalculation | unknown | project_anchor | own_supporting | 0 | bsc | unit-391901 | `0x76dcd4...1e6632` | ✅ Audited |
| PriceFeed | unknown | project_anchor | own_supporting | 0 | bsc | unit-391915 | `0xa5220f...bcdcb3` | ✅ Audited |
| SableRewarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-391887 | `0x23d253...a1bdeb` | ✅ Audited |
| SableStakingV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391929 | `0xfbc81a...25b16c` | ✅ Audited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391893 | `0x598913...073f18` | ✅ Audited |
| SystemState | unknown | project_anchor | own_supporting | 0 | bsc | unit-391899 | `0x698ad7...5ec0ad` | ✅ Audited |
| TimeLock | unknown | project_anchor | own_supporting | 0 | bsc | unit-391895 | `0x638675...9a258a` | ✅ Audited |
| TroveHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-391922 | `0xd1bf4d...3d80f8` | ✅ Audited |
| TroveManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-391927 | `0xec0350...483b85` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391883 | `0x0ccb12...edd72c` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391920 | `0xbe4006...d93cd0` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391897 | `0x654ed8...121088` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391925 | `0xe9bc9a...088d01` | ⚠️ Unaudited |
| HintHelpers | unknown | project_anchor | own_supporting | 0 | bsc | unit-391879 | `0x08e260...5405e8` | ⚠️ Unaudited |
| LPPoolTVLChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ffef...dc77af` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | bsc | unit-391910 | `0x97c984...2804e9` | ⚠️ Unaudited |
| RewardsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf75180...0b58f4` | ⚠️ Unaudited |
| SableRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41fa54...6a0483` | ⚠️ Unaudited |
| SABLEToken | token | project_anchor | own_supporting | 0 | bsc | unit-391885 | `0x1ee098...5a878d` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | bsc | unit-391907 | `0x97c131...9dc87c` | ⚠️ Unaudited |
| StakedLPTVLChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb45fc0...f63331` | ⚠️ Unaudited |
| USDSToken | token | project_anchor | own_supporting | 0 | bsc | unit-391881 | `0x0c6ed1...240fa0` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391889 | `0x38c948...bd2ed0` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391903 | `0x781285...7872b7` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391917 | `0xb46e91...73c480` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391923 | `0xd85341...70f6dd` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391931 | `0xfef652...bb1fcb` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43a146...6d652a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x466333...10696f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391891 | `0x57e561...f73dc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391912 | `0xa0d4e2...ecccb0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mainnet_SlowMist Audit Report - Sable Finance.pdf](https://github.com/Sable-Finance/sable_audit/blob/main/reports/Mainnet_SlowMist%20Audit%20Report%20-%20Sable%20Finance.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | n/a | matched | 11 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13796] Mainnet_SlowMist Audit Report - Sable Finance.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0xa49bec...c0602f` — deployed 2023-07-04 09:53:58+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | CommunityIssuance | own contract | CommunityIssuance (selected) `0x7fd517...dc9c9e` — deployed 2023-07-04 09:54:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | OracleRateCalculation | own contract | OracleRateCalculation (selected) `0x76dcd4...1e6632` — deployed 2023-07-04 09:56:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa5220f...bcdcb3` — deployed 2023-07-04 09:55:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SableRewarder | own contract | SableRewarder (selected) `0x23d253...a1bdeb` — deployed 2023-07-04 09:55:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SableStakingV2 | own contract | SableStakingV2 (selected) `0xfbc81a...25b16c` — deployed 2023-07-04 09:55:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | StabilityPool | own contract | StabilityPool (selected) `0x598913...073f18` — deployed 2023-07-04 09:55:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SystemState | own contract | SystemState (selected) `0x698ad7...5ec0ad` — deployed 2023-07-04 09:56:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TimeLock | own contract | TimeLock (selected) `0x638675...9a258a` — deployed 2023-07-04 09:53:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TroveHelper | own contract | TroveHelper (selected) `0xd1bf4d...3d80f8` — deployed 2023-07-04 09:56:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TroveManager | own contract | TroveManager (selected) `0xec0350...483b85` — deployed 2023-07-04 09:54:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0ccb12...edd72c` | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbe4006...d93cd0` | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x654ed8...121088` | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe9bc9a...088d01` | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x08e260...5405e8` | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x97c984...2804e9` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1ee098...5a878d` | SABLEToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x97c131...9dc87c` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0c6ed1...240fa0` | USDSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x38c948...bd2ed0` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x781285...7872b7` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb46e91...73c480` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd85341...70f6dd` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfef652...bb1fcb` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=11

Fork inheritance lineage and inherited audits are included when available.
