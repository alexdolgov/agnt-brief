# Agentic Audit Brief: Sable Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sable Finance (`sable-finance`)
- Website: [https://sable.finance](https://sable.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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

- UnnamedContract (`0x57e56130b9ca6653f390239fd31f1cdff7f73dc9`, chain 56)
- UnnamedContract (`0xa0d4e270d9eb4e41f7ab02337c21692d7eecccb0`, chain 56)
- SableRewarder (`0x23d253f1ab38a1ec8c05103232b4efafb6a1bdeb`, chain 56)
- SableStakingV2 (`0xfbc81aeb7e5c11d4a60a0690db9f36f93e25b16c`, chain 56)
- SABLEToken (`0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d`, chain 56)
- USDSToken (`0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0`, chain 56)
- VestingWallet (`0x781285cf9c4d767f8ecdd6f48ce26958487872b7`, chain 56)
- VestingWallet (`0xb46e915cf6c6cfcaab3ac606c56d24ce4273c480`, chain 56)
- VestingWallet (`0xd853418ca8239bb8352a9b9095cfbe7e0970f6dd`, chain 56)
- VestingWallet (`0xfef652b9862f8cce28f2bcb4340d9d67e4bb1fcb`, chain 56)

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
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | bsc | unit-391913 | `0xa49bec2146fbeea7314cdbe0fd222419b0c0602f` | ✅ Audited |
| CommunityIssuance | unknown | project_anchor | own_supporting | 0 | bsc | unit-391905 | `0x7fd517b06b898f1a6081e0891265516f83dc9c9e` | ✅ Audited |
| OracleRateCalculation | unknown | project_anchor | own_supporting | 0 | bsc | unit-391901 | `0x76dcd40843c1de96839bf83790257a36011e6632` | ✅ Audited |
| PriceFeed | unknown | project_anchor | own_supporting | 0 | bsc | unit-391915 | `0xa5220fd82c098b7f1c711e2f1c1d599ccfbcdcb3` | ✅ Audited |
| SableRewarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-391887 | `0x23d253f1ab38a1ec8c05103232b4efafb6a1bdeb` | ✅ Audited |
| SableStakingV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391929 | `0xfbc81aeb7e5c11d4a60a0690db9f36f93e25b16c` | ✅ Audited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391893 | `0x598913568093ab9f3d549236eb98388271073f18` | ✅ Audited |
| SystemState | unknown | project_anchor | own_supporting | 0 | bsc | unit-391899 | `0x698ad77e62679c8e6acfafea03547c38fc5ec0ad` | ✅ Audited |
| TimeLock | unknown | project_anchor | own_supporting | 0 | bsc | unit-391895 | `0x638675b7c2e056917567571307c6f6a7d69a258a` | ✅ Audited |
| TroveHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-391922 | `0xd1bf4d208028cbfe65c6b4d68c12e68f5f3d80f8` | ✅ Audited |
| TroveManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-391927 | `0xec035081376ce975ba9eaf28dfec7c7a4c483b85` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391883 | `0x0ccb12c9fb1e1252e60d29ac5c4fdc0640edd72c` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391920 | `0xbe40060aef1a2acb4425823c82978f976fd93cd0` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391897 | `0x654ed83ab231550001fc1d2281b78fcd84121088` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-391925 | `0xe9bc9adbdf67343b5a66d73cf2e521bb3f088d01` | ⚠️ Unaudited |
| HintHelpers | unknown | project_anchor | own_supporting | 0 | bsc | unit-391879 | `0x08e260d3e5ea4fb09ffa264dd4129593fd5405e8` | ⚠️ Unaudited |
| LPPoolTVLChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ffef524f7154eb13b9f9993e9826cf92dc77af` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | bsc | unit-391910 | `0x97c984497b81fa38baaf684e7afd2685052804e9` | ⚠️ Unaudited |
| RewardsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7518065729c5a7e5a5b3ce11939f7fdd50b58f4` | ⚠️ Unaudited |
| SableRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41fa545df5caee0c9618f487e0cb6d6fb16a0483` | ⚠️ Unaudited |
| SABLEToken | token | project_anchor | own_supporting | 0 | bsc | unit-391885 | `0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | bsc | unit-391907 | `0x97c131c309a04bfa1aae82856d64b696b89dc87c` | ⚠️ Unaudited |
| StakedLPTVLChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb45fc002ccf1bed4add10e0e95d40d7d7af63331` | ⚠️ Unaudited |
| USDSToken | token | project_anchor | own_supporting | 0 | bsc | unit-391881 | `0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391889 | `0x38c948f27c3f50a1c3b3857b28a6dd1e6cbd2ed0` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391903 | `0x781285cf9c4d767f8ecdd6f48ce26958487872b7` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391917 | `0xb46e915cf6c6cfcaab3ac606c56d24ce4273c480` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391923 | `0xd853418ca8239bb8352a9b9095cfbe7e0970f6dd` | ⚠️ Unaudited |
| VestingWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-391931 | `0xfef652b9862f8cce28f2bcb4340d9d67e4bb1fcb` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43a1460610643e28e1e1a0a246647277596d652a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4663338379942e3a868bc4776e0d694ede10696f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391891 | `0x57e56130b9ca6653f390239fd31f1cdff7f73dc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391912 | `0xa0d4e270d9eb4e41f7ab02337c21692d7eecccb0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 28
- Live contracts: 22
- Unknown liveness contracts: 6
- Source-verified contracts: 26
- Currently scope-matched contracts retained as-is: 10
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=10, candidate review=6, contamination review=6, exact address book overlap=4, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | currently scope matched | BorrowerOperations<br>`0xa49bec2146fbeea7314cdbe0fd222419b0c0602f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | CommunityIssuance<br>`0x7fd517b06b898f1a6081e0891265516f83dc9c9e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | OracleRateCalculation<br>`0x76dcd40843c1de96839bf83790257a36011e6632` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | PriceFeed<br>`0xa5220fd82c098b7f1c711e2f1c1d599ccfbcdcb3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | SableRewarder<br>`0x23d253f1ab38a1ec8c05103232b4efafb6a1bdeb` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | StabilityPool<br>`0x598913568093ab9f3d549236eb98388271073f18` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | SystemState<br>`0x698ad77e62679c8e6acfafea03547c38fc5ec0ad` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | TimeLock<br>`0x638675b7c2e056917567571307c6f6a7d69a258a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | TroveHelper<br>`0xd1bf4d208028cbfe65c6b4d68c12e68f5f3d80f8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | currently scope matched | TroveManager<br>`0xec035081376ce975ba9eaf28dfec7c7a4c483b85` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | ActivePool<br>`0x0ccb12c9fb1e1252e60d29ac5c4fdc0640edd72c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | CollSurplusPool<br>`0xbe40060aef1a2acb4425823c82978f976fd93cd0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | DefaultPool<br>`0x654ed83ab231550001fc1d2281b78fcd84121088` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | GasPool<br>`0xe9bc9adbdf67343b5a66d73cf2e521bb3f088d01` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | MultiTroveGetter<br>`0x97c984497b81fa38baaf684e7afd2685052804e9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | candidate review | SortedTroves<br>`0x97c131c309a04bfa1aae82856d64b696b89dc87c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | HintHelpers<br>`0x08e260d3e5ea4fb09ffa264dd4129593fd5405e8` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | LPPoolTVLChecker<br>`0xc8ffef524f7154eb13b9f9993e9826cf92dc77af` | non_address_book | unknown | unknown | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | RewardsChecker<br>`0xf7518065729c5a7e5a5b3ce11939f7fdd50b58f4` | non_address_book | unknown | unknown | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | SableRedemption<br>`0x41fa545df5caee0c9618f487e0cb6d6fb16a0483` | non_address_book | unknown | unknown | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | StakedLPTVLChecker<br>`0xb45fc002ccf1bed4add10e0e95d40d7d7af63331` | non_address_book | unknown | unknown | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | contamination review | VestingWallet<br>`0x38c948f27c3f50a1c3b3857b28a6dd1e6cbd2ed0` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | exact address book overlap | VestingWallet<br>`0x781285cf9c4d767f8ecdd6f48ce26958487872b7` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | exact address book overlap | VestingWallet<br>`0xb46e915cf6c6cfcaab3ac606c56d24ce4273c480` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | exact address book overlap | VestingWallet<br>`0xd853418ca8239bb8352a9b9095cfbe7e0970f6dd` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | exact address book overlap | VestingWallet<br>`0xfef652b9862f8cce28f2bcb4340d9d67e4bb1fcb` | project_anchor | unknown | live | verified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | unverified unclassified | UnnamedContract<br>`0x43a1460610643e28e1e1a0a246647277596d652a` | non_address_book | unknown | unknown | unverified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4663338379942e3a868bc4776e0d694ede10696f` | non_address_book | unknown | unknown | unverified | n/a | `0x812ed55fefc21ef2834c02e42f5b371480c6c636` |

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
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0xa49bec2146fbeea7314cdbe0fd222419b0c0602f` — deployed 2023-07-04 09:53:58+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | CommunityIssuance | own contract | CommunityIssuance (selected) `0x7fd517b06b898f1a6081e0891265516f83dc9c9e` — deployed 2023-07-04 09:54:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | OracleRateCalculation | own contract | OracleRateCalculation (selected) `0x76dcd40843c1de96839bf83790257a36011e6632` — deployed 2023-07-04 09:56:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa5220fd82c098b7f1c711e2f1c1d599ccfbcdcb3` — deployed 2023-07-04 09:55:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SableRewarder | own contract | SableRewarder (selected) `0x23d253f1ab38a1ec8c05103232b4efafb6a1bdeb` — deployed 2023-07-04 09:55:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SableStakingV2 | own contract | SableStakingV2 (selected) `0xfbc81aeb7e5c11d4a60a0690db9f36f93e25b16c` — deployed 2023-07-04 09:55:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | StabilityPool | own contract | StabilityPool (selected) `0x598913568093ab9f3d549236eb98388271073f18` — deployed 2023-07-04 09:55:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | SystemState | own contract | SystemState (selected) `0x698ad77e62679c8e6acfafea03547c38fc5ec0ad` — deployed 2023-07-04 09:56:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TimeLock | own contract | TimeLock (selected) `0x638675b7c2e056917567571307c6f6a7d69a258a` — deployed 2023-07-04 09:53:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TroveHelper | own contract | TroveHelper (selected) `0xd1bf4d208028cbfe65c6b4d68c12e68f5f3d80f8` — deployed 2023-07-04 09:56:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainnet_SlowMist Audit Report - Sable Finance.pdf | TroveManager | own contract | TroveManager (selected) `0xec035081376ce975ba9eaf28dfec7c7a4c483b85` — deployed 2023-07-04 09:54:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0ccb12c9fb1e1252e60d29ac5c4fdc0640edd72c` | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbe40060aef1a2acb4425823c82978f976fd93cd0` | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x654ed83ab231550001fc1d2281b78fcd84121088` | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe9bc9adbdf67343b5a66d73cf2e521bb3f088d01` | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x08e260d3e5ea4fb09ffa264dd4129593fd5405e8` | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x97c984497b81fa38baaf684e7afd2685052804e9` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d` | SABLEToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x97c131c309a04bfa1aae82856d64b696b89dc87c` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0` | USDSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x38c948f27c3f50a1c3b3857b28a6dd1e6cbd2ed0` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x781285cf9c4d767f8ecdd6f48ce26958487872b7` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb46e915cf6c6cfcaab3ac606c56d24ce4273c480` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd853418ca8239bb8352a9b9095cfbe7e0970f6dd` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfef652b9862f8cce28f2bcb4340d9d67e4bb1fcb` | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
