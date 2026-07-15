# Agentic Audit Brief: Makina

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 8 (1 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Makina (`makina`)
- Website: [https://app.makina.finance/](https://app.makina.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 18 unique implementations (39 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $37,284,328.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Makina. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across ethereum. Structural roles: 26 supporting, 7 core. 33 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: supporting (26), core (7)
- Contract kinds: contract (32), abstract (1)
- Detected standards: erc1967proxy (29), erc20 (4), ownable (4), ownable2step (4)
- Frameworks: openzeppelin-upgradeable (33), openzeppelin (15)
- Upgradeable-pattern rows: 33

## Fork Analysis

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0x443df5...e8f9b2`, chain 1)
- UnnamedContract (`0x9a8bc3...2d61d8`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xbeef01...2a64cb`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- BeaconProxy (`0x0447d0...11d735`, chain 1)
- BeaconProxy (`0x1303c2...def75c`, chain 1)
- BeaconProxy (`0x1d1e4d...ebf1b5`, chain 1)
- BeaconProxy (`0x28713b...db1be3`, chain 1)
- BeaconProxy (`0x314767...c39347`, chain 1)
- BeaconProxy (`0x45409d...911727`, chain 1)
- BeaconProxy (`0x459785...80e14d`, chain 1)
- BeaconProxy (`0x49af26...4a549e`, chain 1)
- BeaconProxy (`0x5df4cb...a49c44`, chain 1)
- BeaconProxy (`0x6b0068...3df721`, chain 1)
- BeaconProxy (`0x733abb...559108`, chain 1)
- BeaconProxy (`0x75dbee...7828e5`, chain 1)
- BeaconProxy (`0x94b182...4903d7`, chain 1)
- BeaconProxy (`0x9662d8...9132b0`, chain 1)
- BeaconProxy (`0x98072b...819c13`, chain 1)
- BeaconProxy (`0xa28a77...174e7c`, chain 1)
- BeaconProxy (`0xa7f012...a690a7`, chain 1)
- BeaconProxy (`0xb0475f...201e4d`, chain 1)
- BeaconProxy (`0xb84317...8c3fe1`, chain 1)
- BeaconProxy (`0xbeef12...884e89`, chain 1)
- BeaconProxy (`0xd1a1c2...c8c1bc`, chain 1)
- BeaconProxy (`0xd1a2d9...352915`, chain 1)
- BeaconProxy (`0xd1a3c2...36c326`, chain 1)
- BeaconProxy (`0xe44b62...56250f`, chain 1)
- BeaconProxy (`0xefc8e0...a41a53`, chain 1)
- BeaconProxy (`0xfcbe13...73d841`, chain 1)
- MachineShare (`0x1e33e9...1204ef`, chain 1)
- MachineShare (`0x871ab8...deb7ed`, chain 1)
- MachineShare (`0x972966...231bdf`, chain 1)
- MachineShare (`0xac499a...494b06`, chain 1)

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (30 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Deployed-live implementations: 17 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 18
- Raw deployments: 39
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 7 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 9.1% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 9.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MachineShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388858 | `0xac499a...494b06` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AsyncRedeemer | unknown | project_anchor | own_supporting | 4 | ethereum | unit-388867 (4 proxies) | 4 deployments: ethereum `0x1303c2...def75c`; ethereum `0x28713b...db1be3`; ethereum `0x75dbee...7828e5`; ethereum `0xe44b62...56250f` | ⚠️ Unaudited |
| Caliber | unknown | project_anchor | own_supporting | 4 | ethereum | unit-388861 (4 proxies) | 4 deployments: ethereum `0xbeef12...884e89`; ethereum `0xd1a1c2...c8c1bc`; ethereum `0xd1a2d9...352915`; ethereum `0xd1a3c2...36c326` | ⚠️ Unaudited |
| DirectDepositor | unknown | project_anchor | own_supporting | 4 | ethereum | unit-388864 (4 proxies) | 4 deployments: ethereum `0x45409d...911727`; ethereum `0x94b182...4903d7`; ethereum `0x9662d8...9132b0`; ethereum `0xb0475f...201e4d` | ⚠️ Unaudited |
| Machine | unknown | project_anchor | own_supporting | 4 | ethereum | unit-388865 (4 proxies) | 4 deployments: ethereum `0x0447d0...11d735`; ethereum `0x6b0068...3df721`; ethereum `0x733abb...559108`; ethereum `0xfcbe13...73d841` | ⚠️ Unaudited |
| MachineShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388851 | `0x1e33e9...1204ef` | ⚠️ Unaudited |
| MachineShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388854 | `0x871ab8...deb7ed` | ⚠️ Unaudited |
| MachineShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388855 | `0x972966...231bdf` | ⚠️ Unaudited |
| MachineShareOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 3 | ethereum | unit-388866 (3 proxies) | 3 deployments: ethereum `0x49fba7...cd6b5a`; ethereum `0x8b04bf...6bb2fc`; ethereum `0xffcbc7...4ca078` | ⚠️ Unaudited |
| PreDepositVault | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-388862 (3 proxies) | 3 deployments: ethereum `0x49af26...4a549e`; ethereum `0x5df4cb...a49c44`; ethereum `0xefc8e0...a41a53` | ⚠️ Unaudited |
| SecurityModule | unknown | project_anchor | own_supporting | 3 | ethereum | unit-388863 (3 proxies) | 3 deployments: ethereum `0x1d1e4d...ebf1b5`; ethereum `0x314767...c39347`; ethereum `0xb84317...8c3fe1` | ⚠️ Unaudited |
| WatermarkFeeManager | governance | project_anchor | own_supporting | 4 | ethereum | unit-388868 (4 proxies) | 4 deployments: ethereum `0x459785...80e14d`; ethereum `0x98072b...819c13`; ethereum `0xa28a77...174e7c`; ethereum `0xa7f012...a690a7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388852 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388853 | `0x443df5...e8f9b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388856 | `0x9a8bc3...2d61d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388857 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388859 | `0xbeef01...2a64cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388860 | `0xc02aaa...756cc2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf) | Enigma Ventures | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 35 | high |
| [ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [www.chainsecurity.com/security-audit/makina-core](https://www.chainsecurity.com/security-audit/makina-core) | ChainSecurity | Audit | 2026-05 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/makina-periphery](https://www.chainsecurity.com/security-audit/makina-periphery) | ChainSecurity | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772](https://ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772?p=2a284d4e41468027b796e222fbbb8939&pm=s) | Ottersec | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf](https://docs.makina.finance/audits/2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf) | Enigma Ventures | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [review.pdf](https://github.com/sigp/public-audits/blob/master/reports/makina/review.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3949] 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf — no match: No explicit scope section listing contracts; only three contract names extracted from findings context. Audit date inferred from 'July 2025' in title and engagement start date 16 July 2025, assuming end of month.
- [3953] ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf — matched: Extracted all contracts explicitly listed in the Scope section (versions 1, 4, 5, 8) and the final audit date from the cover page.
- [3955] ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf — no match: Extracted 21 contract names from scope tables and version additions. Audit date from cover page: 'May 6, 2026'.
- [15634] www.chainsecurity.com/security-audit/makina-core — no match: The provided text is a summary/overview of an audit report for 'Makina Core', but it does not contain a scope section listing specific contracts, files, or modules. No contract names are identifiable.
- [15635] www.chainsecurity.com/security-audit/makina-periphery — no match: No explicit scope section or file paths found; contract names inferred from summary description.
- [15636] ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772 — no match: The provided text is a Notion page requiring JavaScript; no audit report content was accessible.
- [15638] 2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf — no match: No reason recorded
- [15639] review.pdf — no match: Extracted 8 contract names from the 'Scope' section and detailed findings. Audit date inferred from 'August, 2025' on cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf | DecimalsUtils | unmatched — not counted | — | mentioned in finding I-01 context | no |
| 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf | BridgeController | unmatched — not counted | — | mentioned in finding I-01 context | no |
| 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf | BridgeAdapter | unmatched — not counted | — | mentioned in finding I-01 context | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | AcrossV3BridgeAdapter | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | BridgeAdapter | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | BridgeController | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | Caliber | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0xbeef12...884e89` — deployed 2026-01-28 16:00:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a1c2...c8c1bc` — deployed 2025-10-25 17:13:47+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a3c2...36c326` — deployed 2025-10-25 16:48:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a2d9...352915` — deployed 2025-10-25 17:07:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CaliberMailbox | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | BridgeAdapterFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CaliberFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | HubCoreFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | SpokeCoreFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CaliberAccountingCCQ | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | DecimalsUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | MachineUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | Machine | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x0447d0...11d735` — deployed 2025-10-25 17:07:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x733abb...559108` — deployed 2026-01-28 16:00:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xfcbe13...73d841` — deployed 2025-10-25 16:48:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x6b0068...3df721` — deployed 2025-10-25 17:13:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | MachineShare | own contract | MachineShare (alternative) `0x871ab8...deb7ed` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>MachineShare (alternative) `0x1e33e9...1204ef` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>MachineShare (selected) `0xac499a...494b06` — deployed 2026-01-28 16:00:59+03 — liveness: live (current_address_book_code)<br>MachineShare (alternative) `0x972966...231bdf` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-01-28 was 98d from audit; next candidate 225d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | PreDepositVault | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x5df4cb...a49c44` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x49af26...4a549e` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xefc8e0...a41a53` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | ChainRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CoreRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | HubCoreRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | OracleRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | SpokeCoreRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | SwapModule | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | MakinaContext | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | MakinaGovernable | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | WeirollVM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | FlashloanAggregator | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | Create3Factory | unmatched — not counted | — | added in version 4 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | LayerZeroV2BridgeAdapter | unmatched — not counted | — | added in version 5 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | AcrossV3BridgeConfig | unmatched — not counted | — | added in version 5 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | LayerZeroV2Config | unmatched — not counted | — | added in version 5 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | LzOptionsBuilder | unmatched — not counted | — | added in version 5 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CctpV2BridgeAdapter | unmatched — not counted | — | added in version 8 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CctpV2BridgeConfig | unmatched — not counted | — | added in version 8 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | CctpV2Message | unmatched — not counted | — | added in version 8 | no |
| ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf | Roles | unmatched — not counted | — | added in version 8 | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | DirectDepositor | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x94b182...4903d7` — deployed 2025-10-25 13:28:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xb0475f...201e4d` — deployed 2025-10-25 13:55:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x45409d...911727` — deployed 2026-01-28 10:18:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x9662d8...9132b0` — deployed 2025-10-25 13:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | HubPeripheryFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | WatermarkFeeManager | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x459785...80e14d` — deployed 2026-01-28 10:18:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x98072b...819c13` — deployed 2025-10-25 14:15:47+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xa28a77...174e7c` — deployed 2025-10-25 14:15:47+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xa7f012...a690a7` — deployed 2025-10-25 14:15:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | FlashloanAggregator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | AsyncRedeemer | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x28713b...db1be3` — deployed 2026-01-28 10:18:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xe44b62...56250f` — deployed 2025-10-25 13:53:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x1303c2...def75c` — deployed 2025-10-25 13:28:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x75dbee...7828e5` — deployed 2025-10-25 13:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | HubPeripheryRegistry | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | SecurityModule | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0xb84317...8c3fe1` — deployed 2025-10-25 13:28:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x1d1e4d...ebf1b5` — deployed 2025-10-25 13:55:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x314767...c39347` — deployed 2025-10-25 13:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | MachinePeriphery | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | MakinaPeripheryContext | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | Whitelist | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | MetaMorphoOracleFactory | unmatched — not counted | — | added in version 2 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | ERC4626Oracle | unmatched — not counted | — | added in version 2 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | SMCooldownReceipt | unmatched — not counted | — | added in version 2 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | BooleanHelper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | Bytes32Helper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | CastHelper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | ContextHelper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | KeyValueStore | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | MathHelper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | SignedMathHelper | unmatched — not counted | — | added in version 3 scope | no |
| ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf | AsyncRedeemerFee | unmatched — not counted | — | added in version 5 scope | no |
| www.chainsecurity.com/security-audit/makina-periphery | Depositor | unmatched — not counted | — | mentioned as periphery contract for Makina Protocol | no |
| www.chainsecurity.com/security-audit/makina-periphery | Redeemer | unmatched — not counted | — | mentioned as periphery contract for Makina Protocol | no |
| www.chainsecurity.com/security-audit/makina-periphery | Security Module | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0xb84317...8c3fe1` — deployed 2025-10-25 13:28:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x1d1e4d...ebf1b5` — deployed 2025-10-25 13:55:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x314767...c39347` — deployed 2025-10-25 13:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf | MachineShareOracle | unmatched — not counted | — | — | no |
| 2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf | MachineShareOracleFactory | unmatched — not counted | — | — | no |
| review.pdf | BridgeAdapter | unmatched — not counted | — | MAK-01, MAK-03, MAK-04 findings reference AssetBridgeAdapter.sol | no |
| review.pdf | SwapModule | unmatched — not counted | — | MAK-02 finding references AssetSwapModule.sol | no |
| review.pdf | Machine | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x0447d0...11d735` — deployed 2025-10-25 17:07:11+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x733abb...559108` — deployed 2026-01-28 16:00:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xfcbe13...73d841` — deployed 2025-10-25 16:48:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x6b0068...3df721` — deployed 2025-10-25 17:13:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | FlashloanAggregator | unmatched — not counted | — | MAK-06, MAK-09 findings reference AssetFlashloanAggregator.sol | no |
| review.pdf | Caliber | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0xbeef12...884e89` — deployed 2026-01-28 16:00:59+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a1c2...c8c1bc` — deployed 2025-10-25 17:13:47+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a3c2...36c326` — deployed 2025-10-25 16:48:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xd1a2d9...352915` — deployed 2025-10-25 17:07:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | PreDepositVault | ambiguous — not counted | BeaconProxy (proxy) (alternative) `0x5df4cb...a49c44` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0x49af26...4a549e` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code)<br>BeaconProxy (proxy) (alternative) `0xefc8e0...a41a53` — deployed 2025-09-23 23:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | DecimalsUtils | unmatched — not counted | — | MAK-12 finding references AssetDecimalsUtils.sol | no |
| review.pdf | BridgeController | unmatched — not counted | — | MAK-13 finding references AssetBridgeController.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1303c2...def75c` | AsyncRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbeef12...884e89` | Caliber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45409d...911727` | DirectDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0447d0...11d735` | Machine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e33e9...1204ef` | MachineShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x871ab8...deb7ed` | MachineShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x972966...231bdf` | MachineShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49af26...4a549e` | PreDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d1e4d...ebf1b5` | SecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x459785...80e14d` | WatermarkFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 11 ambiguous, 61 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: temporal_name=1

Zero-match audit list:

- [3949] 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf
- [3955] ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf
- [15634] www.chainsecurity.com/security-audit/makina-core
- [15635] www.chainsecurity.com/security-audit/makina-periphery
- [15636] ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772
- [15638] 2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf
- [15639] review.pdf

Fork inheritance lineage and inherited audits are included when available.
