# Agentic Audit Brief: INIT Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: INIT Capital (`init-capital`)
- Website: [https://app.init.capital](https://app.init.capital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, mantle
- Contract surface: 44 unique implementations (62 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,971,814.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for INIT Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across blast, ethereum, mantle. Structural roles: 32 unclassified, 4 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (32), core (4), supporting (1)
- Contract kinds: contract (37)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x233493...82c0c3`, chain 5000)
- UnnamedContract (`0x32f533...618b62`, chain 5000)
- UnnamedContract (`0xc01c99...2ae25b`, chain 5000)
- UnnamedContract (`0xeed8a0...d9be34`, chain 5000)
- UnnamedContract (`0xf525f9...977a0c`, chain 5000)
- UnnamedContract (`0x027296...b28b40`, chain 81457)
- UnnamedContract (`0x17f187...a3b85c`, chain 81457)
- UnnamedContract (`0x265daa...560785`, chain 81457)
- UnnamedContract (`0x4b246c...f0993a`, chain 81457)
- UnnamedContract (`0x531342...13ff28`, chain 81457)
- UnnamedContract (`0x57200d...cea2f7`, chain 81457)
- UnnamedContract (`0x72ee68...3b552a`, chain 81457)
- UnnamedContract (`0x85baba...250f68`, chain 81457)
- UnnamedContract (`0x95b864...2852d0`, chain 81457)
- UnnamedContract (`0xa0e172...2633fe`, chain 81457)
- UnnamedContract (`0xa7d36f...113a10`, chain 81457)
- UnnamedContract (`0xc02819...424dd4`, chain 81457)
- UnnamedContract (`0xc5eac9...ab430f`, chain 81457)
- UnnamedContract (`0xcd5fc1...22012e`, chain 81457)
- UnnamedContract (`0xd20989...0c09f3`, chain 81457)
- UnnamedContract (`0xd501a5...d6bf39`, chain 81457)
- UnnamedContract (`0xd97bb3...4c68c1`, chain 81457)
- UnnamedContract (`0xe31686...75e2ef`, chain 81457)
- UnnamedContract (`0xed9d7e...11904b`, chain 81457)
- UnnamedContract (`0xf683ce...f33d21`, chain 81457)
- AccessControlManager (`0xce3292...30675a`, chain 5000)
- DoubleSlopeIRM (`0x0959a6...1ae7e4`, chain 5000)
- DoubleSlopeIRM (`0x594485...d1fdbf`, chain 5000)
- DoubleSlopeIRM (`0x71e0b2...8b2cf6`, chain 5000)
- DoubleSlopeIRM (`0xf25e43...18398e`, chain 5000)
- InitLens (`0x7d2b27...456042`, chain 5000)
- PosManager (`0x995b3d...369dbf`, chain 5000)
- RiskManager (`0xf34167...18002b`, chain 5000)

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 37 (37 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Deployed-live implementations: 44 of 44 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 44
- Raw deployments: 62
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-387451 | `0xce3292...30675a` | ⚠️ Unaudited |
| Config | unknown | project_anchor | own_supporting | 1 | mantle | unit-387478 | 2 deployments: mantle `0x007f91...a553ac`; mantle `0x1dbd1e...a334cb` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387442 | `0x00fa41...4748ec` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387443 | `0x0959a6...1ae7e4` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387446 | `0x594485...d1fdbf` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387447 | `0x71e0b2...8b2cf6` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387454 | `0xf25e43...18398e` | ⚠️ Unaudited |
| InitCore | unknown | project_anchor | own_supporting | 1 | mantle | unit-387485 | 2 deployments: mantle `0x972bcb...bcafc5`; mantle `0xf8b855...dba05d` | ⚠️ Unaudited |
| InitLens | unknown | project_anchor | own_supporting | 0 | mantle | unit-387448 | `0x7d2b27...456042` | ⚠️ Unaudited |
| InitLens | unknown | project_anchor | own_supporting | 0 | blast | unit-387460 | `0x56fba2...b2860e` | ⚠️ Unaudited |
| InitOracle | unknown | project_anchor | own_supporting | 1 | mantle | unit-387482 | 2 deployments: mantle `0x4e195a...2c0350`; mantle `0x792841...b14f81` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 8 | mantle | unit-387479 (8 proxies) | 9 deployments: mantle `0x00a556...227d06`; mantle `0x328243...581b1c`; mantle `0x423bb7...3329fd`; mantle `0x449496...4a2976`; mantle `0x5071c0...3a89df`; mantle `0x51ab74...11aec4`; mantle `0x9c9f28...afd552`; mantle `0xada66a...00ad09`; mantle `0xf08481...b3f63a` | ⚠️ Unaudited |
| LiqIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | mantle | unit-387452 | `0xddc99a...0dacf3` | ⚠️ Unaudited |
| MarginTradingHook | unknown | project_anchor | own_supporting | 3 | mantle | unit-387481 (3 proxies) | 4 deployments: mantle `0x497949...1c94bd`; mantle `0x956794...ae7d33`; mantle `0xe4fe22...1ad1ad`; mantle `0xefb43e...000763` | ⚠️ Unaudited |
| MarginTradingHook | unknown | project_anchor | own_supporting | 0 | mantle | unit-387449 | `0x917a9f...d3dc14` | ⚠️ Unaudited |
| MoneyMarketHook | unknown | project_anchor | own_supporting | 1 | mantle | unit-387476 | 2 deployments: mantle `0x06cab8...24da84`; mantle `0xf82cbc...337346` | ⚠️ Unaudited |
| PosManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-387483 | 2 deployments: mantle `0x0e7401...8bba92`; mantle `0x995b3d...369dbf` | ⚠️ Unaudited |
| RiskManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-387484 | 2 deployments: mantle `0x0c03cd...92f951`; mantle `0xf34167...18002b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-387477 | `0x66bdbf...0550ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | project_anchor | own_supporting | 1 | mantle | unit-387480 | `0x7fa704...408eaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | unknown | project_anchor | own_supporting | 2 | blast | unit-387486 (2 proxies) | 2 deployments: blast `0x531342...13ff28`; blast `0x85baba...250f68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387444 | `0x233493...82c0c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387445 | `0x32f533...618b62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387450 | `0xc01c99...2ae25b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387453 | `0xeed8a0...d9be34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387455 | `0xf525f9...977a0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387456 | `0x027296...b28b40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387457 | `0x17f187...a3b85c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387458 | `0x265daa...560785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387459 | `0x4b246c...f0993a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387461 | `0x57200d...cea2f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387462 | `0x72ee68...3b552a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387463 | `0x95b864...2852d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387464 | `0xa0e172...2633fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387465 | `0xa7d36f...113a10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387466 | `0xc02819...424dd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387467 | `0xc5eac9...ab430f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387468 | `0xcd5fc1...22012e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387469 | `0xd20989...0c09f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387470 | `0xd501a5...d6bf39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387471 | `0xd97bb3...4c68c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387472 | `0xe31686...75e2ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387473 | `0xed9d7e...11904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387475 | `0xf683ce...f33d21` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena_Audit_Report_1.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_1.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Code4rena_Audit_Report_2.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_2.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/PeckShield_Audit_Report_v1.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Sparkware_Security_Audit_Report_1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_1.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sparkware_Security_Audit_Report_2.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_2.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Sparkware_Security_Audit_Report_3.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_3.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Trust_Security_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Trust_Security_Audit_Report_v1.pdf) | Trust | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [15096] Code4rena_Audit_Report_1.md — no match: The provided text is only a header with a URL; no contract names or scope information is present.
- [15097] Code4rena_Audit_Report_2.md — no match: The provided text is only a header with a link to an external report. No contract names, scope section, or audit date are present in the given content.
- [15098] PeckShield_Audit_Report_v1.pdf — no match: No explicit scope table; contracts extracted from findings targets and code references.
- [15099] Sparkware_Security_Audit_Report_1.pdf — no match: Scope explicitly lists three contracts. No audit date found in the provided text.
- [15100] Sparkware_Security_Audit_Report_2.pdf — no match: No explicit scope table or date found; contracts inferred from fix review sections.
- [15101] Sparkware_Security_Audit_Report_3.pdf — no match: Scope section lists four contracts: MarginTradingHook.sol, ThrusterSwapHelper.sol, MoeLBSwapHelper.sol, UniversalSwapHelper.sol. No audit date found in the provided text.
- [15102] Trust_Security_Audit_Report_v1.pdf — no match: Scope section explicitly lists 10 files. Audit date from document title and versioning.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield_Audit_Report_v1.pdf | InitCore | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x972bcb...bcafc5` — deployed 2024-01-08 21:27:34+03 — liveness: live (proxy_unit_reachable)<br>InitCore (alternative) `0xf8b855...dba05d` — deployed 2024-01-08 21:27:29+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | Config | ambiguous — not counted | 0x57200d… (alternative) `0x57200d...cea2f7` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x007f91...a553ac` — deployed 2024-01-08 21:26:54+03 — liveness: live (code_present_context)<br>Config (alternative) `0x1dbd1e...a334cb` — deployed 2024-01-08 21:26:49+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | PythOracleReader | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield_Audit_Report_v1.pdf | WrapCenter | unmatched — not counted | — | Mentioned in finding PVE-005 | no |
| PeckShield_Audit_Report_v1.pdf | LendingPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x00a556...227d06` — deployed 2024-01-08 22:08:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x328243...581b1c` — deployed 2024-04-01 13:05:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x449496...4a2976` — deployed 2024-01-08 22:08:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5071c0...3a89df` — deployed 2024-01-18 06:39:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x51ab74...11aec4` — deployed 2024-01-08 22:08:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf08481...b3f63a` — deployed 2024-02-19 09:46:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c9f28...afd552` — deployed 2024-01-08 22:08:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xada66a...00ad09` — deployed 2024-01-08 22:08:48+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0x423bb7...3329fd` — deployed 2024-01-08 21:27:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | PositionManager | unmatched — not counted | — | Referenced in InitCore code | no |
| Sparkware_Security_Audit_Report_1.pdf | AgniSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_1.pdf | FusionXSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_1.pdf | UsdyOracleReader | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_2.pdf | WLPMoeMasterChef | unmatched — not counted | — | mentioned in R-01 fix review | no |
| Sparkware_Security_Audit_Report_2.pdf | MarginTradingHook | ambiguous — not counted | MarginTradingHook (alternative) `0x497949...1c94bd` — deployed 2024-02-21 16:03:06+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0x956794...ae7d33` — deployed 2024-02-21 16:08:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xefb43e...000763` — deployed 2024-02-21 16:08:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xe4fe22...1ad1ad` — deployed 2024-02-21 16:08:25+03 — liveness: live (current_address_book_code)<br>MarginTradingHook (alternative) `0x917a9f...d3dc14` — deployed 2024-04-04 08:02:10+03 — liveness: live (current_address_book_code)<br>0x531342… (proxy) (alternative) `0x531342...13ff28` — deployed 2024-05-10 10:50:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sparkware_Security_Audit_Report_2.pdf | LsdApi3OracleReader | unmatched — not counted | — | mentioned in fix review section | no |
| Sparkware_Security_Audit_Report_3.pdf | MarginTradingHook | ambiguous — not counted | MarginTradingHook (alternative) `0x497949...1c94bd` — deployed 2024-02-21 16:03:06+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0x956794...ae7d33` — deployed 2024-02-21 16:08:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xefb43e...000763` — deployed 2024-02-21 16:08:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xe4fe22...1ad1ad` — deployed 2024-02-21 16:08:25+03 — liveness: live (current_address_book_code)<br>MarginTradingHook (alternative) `0x917a9f...d3dc14` — deployed 2024-04-04 08:02:10+03 — liveness: live (current_address_book_code)<br>0x531342… (proxy) (alternative) `0x531342...13ff28` — deployed 2024-05-10 10:50:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sparkware_Security_Audit_Report_3.pdf | ThrusterSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_3.pdf | MoeLBSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_3.pdf | UniversalSwapHelper | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | InitCore | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x972bcb...bcafc5` — deployed 2024-01-08 21:27:34+03 — liveness: live (proxy_unit_reachable)<br>InitCore (alternative) `0xf8b855...dba05d` — deployed 2024-01-08 21:27:29+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | Config | ambiguous — not counted | 0x57200d… (alternative) `0x57200d...cea2f7` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x007f91...a553ac` — deployed 2024-01-08 21:26:54+03 — liveness: live (code_present_context)<br>Config (alternative) `0x1dbd1e...a334cb` — deployed 2024-01-08 21:26:49+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | IncentiveCalculator | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | InitOracle | ambiguous — not counted | InitOracle (alternative) `0x792841...b14f81` — deployed 2024-01-08 21:26:39+03 — liveness: live (proxy_unit_reachable)<br>0xe31686… (alternative) `0xe31686...75e2ef` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e195a...2c0350` — deployed 2024-01-08 21:26:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | PythOracleReader | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | Api3OracleReader | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | WrapCenter | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | LendingPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x00a556...227d06` — deployed 2024-01-08 22:08:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x328243...581b1c` — deployed 2024-04-01 13:05:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x449496...4a2976` — deployed 2024-01-08 22:08:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5071c0...3a89df` — deployed 2024-01-18 06:39:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x51ab74...11aec4` — deployed 2024-01-08 22:08:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf08481...b3f63a` — deployed 2024-02-19 09:46:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c9f28...afd552` — deployed 2024-01-08 22:08:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xada66a...00ad09` — deployed 2024-01-08 22:08:48+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0x423bb7...3329fd` — deployed 2024-01-08 21:27:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | UncheckedIncrement | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0xce3292...30675a` | AccessControlManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x007f91...a553ac` | Config | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x00fa41...4748ec` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0959a6...1ae7e4` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x594485...d1fdbf` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x71e0b2...8b2cf6` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf25e43...18398e` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x972bcb...bcafc5` | InitCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7d2b27...456042` | InitLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x56fba2...b2860e` | InitLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x4e195a...2c0350` | InitOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x00a556...227d06` | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xddc99a...0dacf3` | LiqIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x497949...1c94bd` | MarginTradingHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x917a9f...d3dc14` | MarginTradingHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x06cab8...24da84` | MoneyMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0e7401...8bba92` | PosManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0c03cd...92f951` | RiskManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7fa704...408eaa` | TransparentUpgradeableProxyReceiveETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3, medium=1
- Match method counts: n/a

Zero-match audit list:

- [15096] Code4rena_Audit_Report_1.md
- [15097] Code4rena_Audit_Report_2.md
- [15098] PeckShield_Audit_Report_v1.pdf
- [15099] Sparkware_Security_Audit_Report_1.pdf
- [15100] Sparkware_Security_Audit_Report_2.pdf
- [15101] Sparkware_Security_Audit_Report_3.pdf
- [15102] Trust_Security_Audit_Report_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
