# Agentic Audit Brief: D2 Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: D2 Finance (`d2-finance`)
- Website: [https://d2.finance/strategies](https://d2.finance/strategies)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum
- Contract surface: 14 unique implementations (16 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,350,234.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for D2 Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, avalanche, ethereum. Structural roles: 3 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), unclassified (2), supporting (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3), erc20permit (2), erc20 (1)
- Frameworks: openzeppelin (3), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x439cb6...306aea`, chain 1)
- UnnamedContract (`0x015974...bf6b8f`, chain 42161)
- UnnamedContract (`0x1f1fc6...245c9a`, chain 42161)
- UnnamedContract (`0x2c8900...358d2a`, chain 42161)
- UnnamedContract (`0x575224...f30d52`, chain 42161)
- UnnamedContract (`0x760e31...bd55a0`, chain 42161)
- UnnamedContract (`0xa28351...815207`, chain 42161)
- UnnamedContract (`0x1f1fc6...245c9a`, chain 43114)
- UnnamedContract (`0x757587...6d529f`, chain 43114)
- UnnamedContract (`0xa0820f...d1394e`, chain 43114)
- DSQToken (`0xdb0c6f...89cd7b`, chain 42161)
- GnosisSafeProxy (`0x3d04fb...7a81d7`, chain 42161)
- GnosisSafeProxy (`0x571b8b...e7645d`, chain 42161)
- GnosisSafeProxy (`0xe7eb92...2f92d6`, chain 42161)
- VaultV0 (`0xbe68c8...5f407a`, chain 42161)
- VaultV0 (`0xd0db54...ef54af`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 14
- Raw deployments: 16
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 25.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSQToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-234874 | `0xdb0c6f...89cd7b` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 3 | arbitrum | unit-234878 (3 proxies) | 3 deployments: arbitrum `0x3d04fb...7a81d7`; arbitrum `0x571b8b...e7645d`; arbitrum `0xe7eb92...2f92d6` | ⚠️ Unaudited |
| VaultV0 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-234872 | `0xbe68c8...5f407a` | ⚠️ Unaudited |
| VaultV0 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-234873 | `0xd0db54...ef54af` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234865 | `0x439cb6...306aea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234866 | `0x015974...bf6b8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234867 | `0x1f1fc6...245c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234868 | `0x2c8900...358d2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234869 | `0x575224...f30d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234870 | `0x760e31...bd55a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234871 | `0xa28351...815207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234875 | `0x1f1fc6...245c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234876 | `0x757587...6d529f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234877 | `0xa0820f...d1394e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/d2](https://paladinsec.co/projects/d2) | Paladin | Audit | 2023-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 88 | n/a |
| [2025-02-24-cyfrin-d2-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1850] paladinsec.co/projects/d2 — matched: No reason recorded
- [1851] 2025-02-24-cyfrin-d2-v2.1.pdf — no match: Extracted 16 contract names from the audit scope section and file paths. Audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/d2 | 1InchLimitOrder_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchSwap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1Inch_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1Inch_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | AccessControl | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | AccessControlInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Common_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Storage_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Storage_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_V3LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_V3Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQToken | own contract | DSQToken (selected) `0xdb0c6f...89cd7b` — deployed 2023-02-12 23:49:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/d2 | DSQ_Common_Roles | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Rescue_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Rescue_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Trader_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondBase | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondBaseStorage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondFallback | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondReadable | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondWritable | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondWritableInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | ERC165Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | ERC165BaseInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Common_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Storage_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Storage_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | NFTStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | OwnableInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Router | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StakingRewards | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyARB | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyDiamond | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyETH | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyGLP | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyGM | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderV0 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | VaultV1 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | esDSQStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | esDSQToken | unmatched — not counted | — | — | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Aave | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Bera | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Camelot | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | D2 | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Dolomite | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | GMXV2 | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | IDolomite | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Inch | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Pendle | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Silo | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Trader | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | WETH | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | D2OFT | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | VaultV0 | ambiguous — not counted | VaultV0 (alternative) `0xd0db54...ef54af` — deployed 2022-12-30 03:20:32+03 — liveness: live (current_address_book_code)<br>VaultV0 (alternative) `0xbe68c8...5f407a` — deployed 2023-03-07 06:45:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | VaultV3 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xbe68c8...5f407a` | VaultV0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd0db54...ef54af` | VaultV0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 103 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [1851] 2025-02-24-cyfrin-d2-v2.1.pdf

Fork inheritance lineage and inherited audits are included when available.
