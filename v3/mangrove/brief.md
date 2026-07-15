# Agentic Audit Brief: Mangrove

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mangrove (`mangrove`)
- Website: [https://www.mangrove.exchange](https://www.mangrove.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, sei
- Contract surface: 51 unique implementations (51 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,232,928.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Mangrove. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across arbitrum, base, blast, sei. Structural roles: 17 unclassified, 10 core, 10 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (17), core (10), supporting (10)
- Contract kinds: contract (35), abstract (1), unclassified (1)
- Detected standards: ownable (5)
- Frameworks: foundry (20), openzeppelin (7), solady (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 37; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 51
- Raw deployments: 51
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246087 | `0x38845d...5b5d77` | ⚠️ Unaudited |
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246141 | `0x095854...9b9b1d` | ⚠️ Unaudited |
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246127 | `0x55b12d...58fb5a` | ⚠️ Unaudited |
| BalancerV2Swapper | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246085 | `0x369022...685dd0` | ⚠️ Unaudited |
| BlastMangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-246139 | `0xb1a49c...fb448c` | ⚠️ Unaudited |
| ChainlinkPriceOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246111 | `0xe26eb2...f3b1ed` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246100 | `0x9c5ad9...58bb11` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246151 | `0x4778c5...0b41fe` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246075 | `0x075420...5124a3` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246158 | `0x808bc0...6a089a` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246133 | `0x89139b...35745d` | ⚠️ Unaudited |
| Mangrove | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sei | unit-246173 | `0xd9834d...b14bcd` | ⚠️ Unaudited |
| Mangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246145 | `0x226135...725faa` | ⚠️ Unaudited |
| Mangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246116 | `0x109d9c...f93f61` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246164 | `0x9d05c7...9e5712` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246121 | `0x31c47e...1f2587` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246155 | `0x656a6a...960123` | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246074 | `0x035d53...4518a1` | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246153 | `0x529756...d39560` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246102 | `0xadbb10...6956a0` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246162 | `0x92db74...c052b8` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246079 | `0x127a5a...81e8b6` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246143 | `0x15f02f...bd549f` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246123 | `0x46708d...dfafea` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246097 | `0x5ba076...75928b` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246165 | `0xa3c363...2adf36` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246125 | `0x50793d...d2ffcc` | ⚠️ Unaudited |
| MangroveVaultFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246106 | `0xd6cc0b...ba369e` | ⚠️ Unaudited |
| MangroveVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246147 | `0x26a0e4...1dafa5` | ⚠️ Unaudited |
| MangroveVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246129 | `0x6b82ce...dab41a` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246089 | `0x44536a...b287b1` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246099 | `0x78793b...a7328c` | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246077 | `0x10f9e2...bc6e2f` | ⚠️ Unaudited |
| MgvPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246160 | `0x8fb396...560ffd` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246114 | `0xfeafb3...87499e` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246171 | `0xe5b118...fb50d3` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246131 | `0x7e108d...0d1875` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-246137 | `0x26fd96...4ab3f8` | ⚠️ Unaudited |
| MintHelperV1 | periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246081 | `0x1ae538...5e0716` | ⚠️ Unaudited |
| MintHelperV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246149 | `0x2ae6f9...67cda1` | ⚠️ Unaudited |
| MintHelperV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246135 | `0xc39b5f...5cd440` | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246112 | `0xfd8e85...fbeb19` | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246169 | `0xb898c4...f3efed` | ⚠️ Unaudited |
| OracleLib | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246095 | `0x555557...00acfd` | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246109 | `0xdcc3d2...96af2c` | ⚠️ Unaudited |
| UniswapV3Swapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246167 | `0xaf31be...21ea3f` | ⚠️ Unaudited |
| UniswapV3Swapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246118 | `0x22ba67...1099fa` | ⚠️ Unaudited |
| VaultV2Deployer | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246091 | `0x4476bd...3d7c60` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246083 | `0x1efad8...46b690` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246093 | `0x4bb7f3...7d7726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246104 | `0xc9c403...a67f84` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf](https://github.com/mangrovedao/audits/blob/main/core/v1/ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [NM_0339_Mangrove_Vault_FINAL.pdf](https://github.com/mangrovedao/audits/blob/main/vaults/NM_0339_Mangrove_Vault_FINAL.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf](https://github.com/mangrovedao/audits/blob/main/core/v0/ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2632] ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf — no match: No reason recorded
- [2633] ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf — no match: No reason recorded
- [2634] ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf — no match: No reason recorded
- [2636] ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf — no match: No reason recorded
- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf — no match: All four contracts listed in the Audited Files table are in scope. The audit date is March 19, 2024 from the report header.
- [2638] NM_0339_Mangrove_Vault_FINAL.pdf — no match: No reason recorded
- [15143] ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf — no match: No reason recorded
- [15147] 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | Mangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvAppendix | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvGovernable | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvGovernance | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferMaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferTaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferTakingWithPermit | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvView | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AavePooledRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveV3Lender | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | CoreKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | Direct | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | DirectWithBidsAndAsksDistributions | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | GeometricKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | HasAaveBalanceMemoizer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | HasIndexedBidsAndAsks | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | Kandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | KandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | TradesBaseQuotePair | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AbstractRouterStorage | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AccessControlled | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | Forwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IForwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOfferStorage | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MgvLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | TransferLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AavePooledRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveV3Lender | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AbstractKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AccessControlled | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | CoreKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | DataTypes | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Direct | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | DirectWithBidsAndAsksDistribution | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Forwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | GeometricKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | HasAaveBalanceMemoizer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | HasIndexedBidsAndAsks | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IForwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | ILiquidityProvider | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IPool | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IPoolAddressesProvider | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IRewardsControllerIsh | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Kandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | KandelLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | KandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | TradesBaseQuotePair | unmatched — not counted | — | — | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | UniswapV3Manager | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | UniswapV3RoutingLogic | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | OrbitLogicStorage | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | OrbitLogic | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | DistributionLib | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | GeometricKandelExtra | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | IOracle | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveChainlinkOracle | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveChainlinkOracleFactory | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveLib | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVault | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultConstants | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultErrors | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultEvents | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | AbstractMangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | IMangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | Mangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvGovernable | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvHasOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferMaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferTaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferTakingWithPermit | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvRoot | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | AccessControlled | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | Forwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IForwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | ILiquidityProvider | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveAmplifier | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RenegingForwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RouterProxy | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RouterProxyFactory | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RoutingOrderLib | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SmartRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SmartRouterStorage | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | TakerOrderLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 109 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2632] ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf
- [2633] ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf
- [2634] ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf
- [2636] ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf
- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf
- [2638] NM_0339_Mangrove_Vault_FINAL.pdf
- [15143] ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf
- [15147] 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf

Fork inheritance lineage and inherited audits are included when available.
