# Agentic Audit Brief: TG Casino

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 8 (1 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: TG Casino (`tg-casino`)
- Website: [https://token.tg.casino/staking](https://token.tg.casino/staking)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 17 unique implementations (21 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,071,299.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for TG Casino. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TGCToken (`0x25b4f5d4c314bcd5d7962734936c957b947cb7cf`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 17 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 21
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinsult | Tier 2 | 1 | 5.9% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TGCToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393944 | `0x25b4f5d4c314bcd5d7962734936c957b947cb7cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiStakingManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a876a89af8b0376b1fb0183a89728608bc8bae7` | ⚠️ Unaudited |
| MultiStakingManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0916568854fc53b720186052d8013d62a0409b47`; ethereum `0x176bd8035ab5dba3d5893271f2b7e51085b06732` | ⚠️ Unaudited |
| MultiStakingManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca74e32d5d5b78ccc0fa13e407872874dbc36e80` | ⚠️ Unaudited |
| PresaleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87e79652814a0239bf752d4d7be70f61b73009a` | ⚠️ Unaudited |
| PresaleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f35da94d3c25c1c130092122db690ff10d47c4` | ⚠️ Unaudited |
| PresaleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665fa1b41c5102ee62b6c23818c2b4f1316643fd` | ⚠️ Unaudited |
| PresaleV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39fd3e106fed3c80192d1849e13d900f45487f92`; ethereum `0x5188e2bfd1dd35ef733ffb09a4f19bd75977cc4a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34813f4bc5e2a14c8fffb10bd43c59fa05a7274e` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9307d50caae1fa22a08b3352b493797a7ab692bb` | ⚠️ Unaudited |
| StakingManagerV1 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8` | ⚠️ Unaudited |
| StakingManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e`; ethereum `0xfad6ef2b6e30a4854b7fc2e3de09ba4c88f77b42` | ⚠️ Unaudited |
| StakingManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2db0df8ba54715ff73691c8c934120168fdd262` | ⚠️ Unaudited |
| StakingManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x700169c3408f10e98c34ac1902e2b6ae89758cc8` | ⚠️ Unaudited |
| StakingManagerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x258c3104388f8cd72c8b4336fc536033e6db764e`; ethereum `0x4bb67fb2ef625abfec712bd5213aae4fbf694085` | ⚠️ Unaudited |
| TGCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14bc78f0e6b9854da2a92f43a0526b31ceb547b0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85aa97537837514a9229fcaeb66eeef7242122bf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 16
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, source verified unclassified=15

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | PresaleV1<br>`0xa87e79652814a0239bf752d4d7be70f61b73009a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | MultiStakingManagerV1<br>`0x8a876a89af8b0376b1fb0183a89728608bc8bae7` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | MultiStakingManagerV2<br>`0x176bd8035ab5dba3d5893271f2b7e51085b06732` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | MultiStakingManagerV3<br>`0xca74e32d5d5b78ccc0fa13e407872874dbc36e80` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | PresaleV2<br>`0xa1f35da94d3c25c1c130092122db690ff10d47c4` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | PresaleV3<br>`0x665fa1b41c5102ee62b6c23818c2b4f1316643fd` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | PresaleV4<br>`0x5188e2bfd1dd35ef733ffb09a4f19bd75977cc4a` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | ProxyAdmin<br>`0x34813f4bc5e2a14c8fffb10bd43c59fa05a7274e` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | StakingManager<br>`0x9307d50caae1fa22a08b3352b493797a7ab692bb` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | StakingManagerV2<br>`0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | StakingManagerV3<br>`0xc2db0df8ba54715ff73691c8c934120168fdd262` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | StakingManagerV4<br>`0x700169c3408f10e98c34ac1902e2b6ae89758cc8` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | StakingManagerV5<br>`0x4bb67fb2ef625abfec712bd5213aae4fbf694085` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0916568854fc53b720186052d8013d62a0409b47` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x258c3104388f8cd72c8b4336fc536033e6db764e` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x39fd3e106fed3c80192d1849e13d900f45487f92` | non_address_book | unknown | unknown | verified | n/a | `0xa9ec8c669ec7de986affa242925ae2ffadc6f817` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Coinsult_TG.Casino_0x25...b7cf_Audit.pdf](https://github.com/Coinsult/solidity/blob/main/Coinsult_TG.Casino_0x25...b7cf_Audit.pdf) | Coinsult | Audit | 2023-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [TGB_PRESALE_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PRESALE_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TGB_PreSaleV1_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PreSaleV1_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TGB_STAKING MANAGER_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_STAKING%20MANAGER_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [TGB_StakingManager_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_StakingManager_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [TGB_TOKEN_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TGB_TOKEN_12_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_28_23.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TGB_Token_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_Token_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3183] Coinsult_TG.Casino_0x25...b7cf_Audit.pdf — matched: No reason recorded
- [11255] TGB_PRESALE_12_11_23.pdf — no match: Only one contract in scope: PresaleV1. TG.Bet token is mentioned but not in scope.
- [11256] TGB_PreSaleV1_01_12_2024.pdf — no match: Only one contract, PresaleV1, is in scope. The TG.Bet token is mentioned but not audited.
- [11257] TGB_STAKING MANAGER_12_11_23.pdf — no match: No reason recorded
- [11258] TGB_StakingManager_01_12_2024.pdf — no match: No reason recorded
- [11259] TGB_TOKEN_12_11_23.pdf — no match: Only one contract TGBToken is in scope, as per the 'Main Contract Assessed' and 'TestNet Contract Assessed' sections.
- [11260] TGB_TOKEN_12_28_23.pdf — no match: Only one contract, TGBToken, is in scope. The report date is December 28, 2023.
- [11261] TGB_Token_01_12_2024.pdf — no match: Only one contract TGBToken is in scope, as per the 'Main Contract Assessed' and 'TestNet Contract Assessed' sections.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Coinsult_TG.Casino_0x25...b7cf_Audit.pdf | TGCToken | own contract | TGCToken (selected) `0x25b4f5d4c314bcd5d7962734936c957b947cb7cf` — deployed 2023-10-06 05:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TGB_PRESALE_12_11_23.pdf | PresaleV1 | unmatched — not counted | — | Listed in scope table and assessed throughout report | no |
| TGB_PreSaleV1_01_12_2024.pdf | PresaleV1 | unmatched — not counted | — | Listed in scope table and assessed throughout report. | no |
| TGB_STAKING MANAGER_12_11_23.pdf | StakingManagerV1 | unmatched — not counted | — | — | no |
| TGB_StakingManager_01_12_2024.pdf | StakingManagerV1 | unmatched — not counted | — | — | no |
| TGB_TOKEN_12_11_23.pdf | TGBToken | unmatched — not counted | — | listed in scope and assessed contract name | no |
| TGB_TOKEN_12_28_23.pdf | TGBToken | unmatched — not counted | — | Listed in scope tables and throughout report as the main contract assessed. | no |
| TGB_Token_01_12_2024.pdf | TGBToken | unmatched — not counted | — | listed in scope and assessed contract name | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [11255] TGB_PRESALE_12_11_23.pdf
- [11256] TGB_PreSaleV1_01_12_2024.pdf
- [11257] TGB_STAKING MANAGER_12_11_23.pdf
- [11258] TGB_StakingManager_01_12_2024.pdf
- [11259] TGB_TOKEN_12_11_23.pdf
- [11260] TGB_TOKEN_12_28_23.pdf
- [11261] TGB_Token_01_12_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
