# Agentic Audit Brief: Velocore

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Velocore (`velocore`)
- Website: [https://zksync.velocore.xyz/](https://zksync.velocore.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-59140, linea, zksync-era
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $104,432.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Velocore. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across chain-59140, linea, zksync-era. Structural roles: 7 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (7), supporting (3)
- Contract kinds: contract (10)
- Detected standards: erc165 (2), accesscontrol (1), erc20 (1)
- Frameworks: openzeppelin (10), prb-math (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 10; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 64 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260847 | `0xaa45ae...6ad2bd` | ⚠️ Unaudited |
| ConstantProductLibrary | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260846 | `0x73fa52...649ef8` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad1c0d...3fee7f` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xec2150...6c2b57` | ⚠️ Unaudited |
| InspectorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260845 | `0x71c29c...cb6568` | ⚠️ Unaudited |
| LinearBribeFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260844 | `0x6ecc3d...51ee54` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbb8a94...ef677a` | ⚠️ Unaudited |
| LVC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x803abe...958269` | ⚠️ Unaudited |
| NFTHolderFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260848 | `0xe192e2...3ac93f` | ⚠️ Unaudited |
| OverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa0d433...14715c` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x48d9cd...f90cca` | ⚠️ Unaudited |
| RebaseWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260843 | `0x3f006b...b84a7b` | ⚠️ Unaudited |
| Refund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x20a581...ab5b82` | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260840 | `0x097811...743996` | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260839 | `0x08657a...e54a20` | ⚠️ Unaudited |
| SwapFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c7e14...0d9f82` | ⚠️ Unaudited |
| SwapHelperFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb9a2b1...a96355` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5a925...7ce1a4` | ⚠️ Unaudited |
| VC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2c01f9...958129` | ⚠️ Unaudited |
| VeVC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x57265c...59651d` | ⚠️ Unaudited |
| WETHConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260842 | `0x25cbd1...ebf89c` | ⚠️ Unaudited |
| WombatPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d312e...8aaf13` | ⚠️ Unaudited |
| WombatRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260841 | `0x111a6d...559f9e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x0021c1...46cc96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x1576b8...b0abf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x35aa75...357a65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x3cd3e4...478c33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x3e656c...b7e85f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x443f98...449b92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x53e53e...26f284` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x544d7d...6a5232` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | n/a | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x5c5d9c...e315e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x654fa9...50de51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x6837d2...378733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x73f635...9f52b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x76ecc0...1f7ea5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x85d84c...a24908` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x86e6ab...d43b01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x8a7cc3...79f43a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x8f0b4b...ec1d7d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x99bbe5...5787f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xabade3...480089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb2cef7...8e6d03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb46e1e...2ac032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb7d98f...09fa98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xbc95a6...428e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xbde345...fe096f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xc137d0...2de7b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xc365ac...1c9713` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd06ad4...a4c75e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd511c5...111213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd5f1cc...aaee40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd7107a...1d156c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd82231...0656d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd999e1...73f50c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe09a60...d3f16a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe140ea...7bb0e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe6d4c9...1e9780` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf29eb5...c3f143` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf55150...7db165` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf5e672...b5e2a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x0fa44f...5ba091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x1fc59b...dc9b2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x21b948...78e4cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x38a538...df033b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x492e0d...02f16d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x4d66b0...7f9bd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0xad594b...8cfd34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0xeabf09...2b0004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x1d0188...bc7535` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x3303f1...5cfae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaa18cd...549e06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaec063...a93f87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xb30e7a...dcc88e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xbe6c6a...db9a47` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xcc22f6...31b1d1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Velocore_Zokyo_audit_report_Aug14_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zokyo-sec/audit-reports/main/Velocore/Velocore_Zokyo_audit_report_Aug14_2023.pdf) | Zokyo | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Velocore-Audit-Report.pdf](https://www.scalebit.xyz/reports/Velocore-Audit-Report.pdf) | ScaleBit | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [hacken.io/audits/velocore/sca-velocore-dex-oct2023](https://hacken.io/audits/velocore/sca-velocore-dex-oct2023) | Hacken | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hacken.io/audits/velocore](https://hacken.io/audits/velocore) | Hacken | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21479] Velocore_Zokyo_audit_report_Aug14_2023.pdf — no match: Scope section explicitly lists 17 contracts. Audit date found on cover page: August 14th 2023.
- [21481] Velocore-Audit-Report.pdf — no match: All contracts listed in the 'Files in Scope' table were extracted. The audit date is from the report header 'Wed Aug 16 2023'.
- [21482] hacken.io/audits/velocore/sca-velocore-dex-oct2023 — no match: The provided text is a webpage for a Velocore audit by Hacken, but it does not contain the actual audit report content. It only shows metadata like title, date, and navigation. No contract names or scope section are present.
- [21483] hacken.io/audits/velocore — no match: The page is a marketing overview listing audit history but does not include a detailed scope section with contract names. The only audit date found is Oct 26, 2023 from the history table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | AdminFacet | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Diamond | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SwapFacet | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SatelliteUpgradeable | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | PoolWithLPToken | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SingleTokenGauge | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Satellite | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductLibrary | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductPool | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductPoolFactory | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | LinearBribe | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | LinearBribeFactory | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VC | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VeVC | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | WombatPool | unmatched — not counted | — | listed in scope | no |
| Velocore-Audit-Report.pdf | Lens | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VelocoreLens | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | NFTHolderFacet | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SimpleAuthorizer | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VaultStorage | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | PoolBalanceLib | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | UncheckedMemory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | RPow | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | WETHConverter | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Satellite | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SingleTokenGauge | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SatelliteUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | WombatPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | LinearBribeFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | LinearBribe | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | PoolWithLPToken | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductPoolFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductLibrary | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | CurveCryptoPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | CurveCryptoPoolFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VC | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VeVC | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SwapFacet | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Diamond | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | AdminFacet | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21479] Velocore_Zokyo_audit_report_Aug14_2023.pdf
- [21481] Velocore-Audit-Report.pdf
- [21482] hacken.io/audits/velocore/sca-velocore-dex-oct2023
- [21483] hacken.io/audits/velocore

Fork inheritance lineage and inherited audits are included when available.
