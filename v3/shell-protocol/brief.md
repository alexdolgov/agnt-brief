# Agentic Audit Brief: Shell Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 9 (3 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Shell Protocol (`shell-protocol`)
- Website: [https://www.shellprotocol.io/](https://www.shellprotocol.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, ethereum
- Contract surface: 40 unique implementations (40 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $109,816.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shell Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, arbitrum-sepolia, ethereum. Structural roles: 6 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: ownable (3), erc20 (2), erc1155 (1), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0cb736...7bdc83`, chain 42161)
- UnnamedContract (`0x2eab95...a57887`, chain 42161)
- UnnamedContract (`0x3402d8...9c8d19`, chain 42161)
- UnnamedContract (`0x3917c7...c3059c`, chain 42161)
- UnnamedContract (`0x4f9d36...2afc47`, chain 42161)
- UnnamedContract (`0x689617...a7427e`, chain 42161)
- UnnamedContract (`0x81f6f6...db8daa`, chain 42161)
- UnnamedContract (`0x96c7dc...e21888`, chain 42161)
- UnnamedContract (`0xa16f40...640f75`, chain 42161)
- UnnamedContract (`0xa2db39...dff7ea`, chain 42161)
- UnnamedContract (`0xc32a9f...77f7e0`, chain 42161)
- UnnamedContract (`0xe043eb...75f470`, chain 42161)
- FractionalizerFactory (`0x4093ee...89eed4`, chain 42161)
- LiquidityPoolProxy (`0x069964...88de1c`, chain 42161)
- Ocean (`0x96b4f4...d5fb7a`, chain 42161)
- Shell (`0x8dcaec...38145a`, chain 1)
- StandardArbERC20 (`0xe47ba5...d0317d`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (5 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations excluded (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 17 of 40 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 40
- Raw deployments: 40
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 40.0% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 40.0% | 2022-09 |
| Code4rena | Tier 1 | 1 | 20.0% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityPoolProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254715 | `0x069964...88de1c` | ✅ Audited |
| Ocean | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254725 | `0x96b4f4...d5fb7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BalancerAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254730 | `0xa8cb45...415b4a` | ⚠️ Unaudited |
| ComposableStablePool | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254727 | `0x9791d5...c790cb` | ⚠️ Unaudited |
| CrabDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf1766...558792` | ⚠️ Unaudited |
| Curve2PoolAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254714 | `0x02b4ab...0742e4` | ⚠️ Unaudited |
| CustomShellVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70395...f18c79` | ⚠️ Unaudited |
| FractionalizerFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254720 | `0x4093ee...89eed4` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xc5cfad...39b023` | ⚠️ Unaudited |
| Multicall2Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b5cfe...003858` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d073a...c6ce77` | ⚠️ Unaudited |
| SeedPoem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a440f...f23276` | ⚠️ Unaudited |
| Shell | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254713 | `0x8dcaec...38145a` | ⚠️ Unaudited |
| ShellDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4818c2...3c011d` | ⚠️ Unaudited |
| ShellVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b86e...62f887` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-254740 | `0xe47ba5...d0317d` | ⚠️ Unaudited |
| VestingFractionalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaff1f1...f11817` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0100fb...44f5c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254716 | `0x0cb736...7bdc83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254717 | `0x2eab95...a57887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254718 | `0x3402d8...9c8d19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254719 | `0x3917c7...c3059c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254721 | `0x4f9d36...2afc47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254722 | `0x689617...a7427e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254723 | `0x7f9012...39f353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8178f0...7e71c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254724 | `0x81f6f6...db8daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5ae7...f93949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254726 | `0x96c7dc...e21888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254728 | `0xa16f40...640f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254729 | `0xa2db39...dff7ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254731 | `0xc32a9f...77f7e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-254732 | `0xc32eb3...fe3584` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254733 | `0xe043eb...75f470` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254734 | `0x1c7882...e1ad29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254735 | `0xcf1766...558792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254736 | `0xe290a8...3842f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254737 | `0xe5eb94...b3229d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254738 | `0xe6401f...f743fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254739 | `0xeae5b5...91d703` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ShellProtocolv2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ShellProtocolv2.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 6 | high |
| [code4rena.com/reports/2023-08-shell](https://code4rena.com/reports/2023-08-shell) | Code4rena | Contest | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [code4rena.com/reports/2023-11-shellprotocol](https://code4rena.com/reports/2023-11-shellprotocol) | Code4rena | Contest | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [diligence.security/audits/2020/06/shell-protocol](https://diligence.security/audits/2020/06/shell-protocol) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [bot-report.md](https://github.com/code-423n4/2023-08-shell/blob/main/bot-report.md) | unknown | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [PDF](https://diligence.security/audits/2020/06/shell-protocol/shell-protocol-audit-2020-06.pdf) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/initial_mythx_report.pdf) | MythX | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/followup_mythx_report.pdf) | MythX | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Automated Findings report](https://gist.github.com/code423n4/640b27a9b9c209b575ed78aa106bd584) | Code4rena | Contest | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21442] ShellProtocolv2.pdf — matched: Extracted 8 contracts from Project Coverage section and findings. Audit date from cover page.
- [21443] code4rena.com/reports/2023-08-shell — no match: The report scope explicitly states 1 smart contract: EvolvingProteus. The audit date is from the report header.
- [21444] code4rena.com/reports/2023-11-shellprotocol — matched: Scope section explicitly lists 4 smart contracts: Ocean, OceanAdapter, Curve2PoolAdapter, CurveTricryptoAdapter. Audit date found on cover page.
- [21445] diligence.security/audits/2020/06/shell-protocol — no match: Extracted 27 contract names from the 'Files in Scope' appendix. Audit date inferred from review period: June 22 to July 7, 2020.
- [24451] bot-report.md — no match: The report does not contain a dedicated scope section or table. All findings reference only src/proteus/EvolvingProteus.sol, which appears to be the sole contract audited. No audit date was found in the provided text.
- [24453] PDF — no match: Extracted 27 contract names from the Appendix listing files in scope. Audit date derived from the end date of the review period (June 22 to July 7, 2020).
- [24454] can be found here — no match: Audit report lists three main source files analyzed: Loihi.sol, LoihiRoot.sol, ShellsExternal.sol. The report date is the creation date of the report: Thu Jul 02 2020.
- [24455] can be found here — no match: Extracted contract names from main source files listed in each analysis section. Also included LoihiRoot and DSMath as they are imported and analyzed.
- [24457] Automated Findings report — matched: Extracted contract names from file paths in findings. Audit date inferred from gist creation date (December 1, 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ShellProtocolv2.pdf | Ocean | own contract | Ocean (selected) `0x96b4f4...d5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ShellProtocolv2.pdf | OceanERC1155 | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | Interactions | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | BalanceDelta | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | Proteus | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| ShellProtocolv2.pdf | ProteusLogic | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| ShellProtocolv2.pdf | LiquidityPoolProxy | own contract | LiquidityPoolProxy (selected) `0x069964...88de1c` — deployed 2023-04-28 02:36:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ShellProtocolv2.pdf | LiquidityPool | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| code4rena.com/reports/2023-08-shell | EvolvingProteus | unmatched — not counted | — | listed in scope as the only smart contract | no |
| code4rena.com/reports/2023-11-shellprotocol | Ocean | own contract | Ocean (selected) `0x96b4f4...d5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-11-shellprotocol | OceanAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2023-11-shellprotocol | Curve2PoolAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2023-11-shellprotocol | CurveTricryptoAdapter | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/06/shell-protocol | Assimilators | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Controller | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Loihi | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | LoihiRoot | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Shells | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ShellsExternal | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | AssimilatorMath | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ILendingPool | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetASusdToASusdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetSUsdToASUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetAUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetChaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetChaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | MainnetASusdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | MainnetSUsdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localCUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localAUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| bot-report.md | EvolvingProteus | unmatched — not counted | — | All findings reference this file; it is the only contract in scope. | no |
| PDF | Assimilators | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Controller | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Loihi | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LoihiRoot | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Shells | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ShellsExternal | unmatched — not counted | — | listed in scope appendix | no |
| PDF | AssimilatorMath | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ILendingPool | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetASusdToASusdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetSUsdToASUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetAUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetChaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetChaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetASusdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetSUsdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalCUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalAUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| can be found here | Loihi | unmatched — not counted | — | Main source file for analysis 092dda5e | no |
| can be found here | LoihiRoot | unmatched — not counted | — | Main source file for analysis 3015c108 | no |
| can be found here | ShellsExternal | unmatched — not counted | — | Main source file for analysis 9869b2a2 | no |
| can be found here | Loihi | unmatched — not counted | — | main source file in analysis 6df956e5 | no |
| can be found here | LoihiDelegators | unmatched — not counted | — | main source file in analysis e3933c9e | no |
| can be found here | LoihiERC20 | unmatched — not counted | — | main source file in analysis 6147bc39 | no |
| can be found here | LoihiExchange | unmatched — not counted | — | main source file in analysis a26303f1 | no |
| can be found here | LoihiLiquidity | unmatched — not counted | — | main source file in analysis 94aef017 | no |
| can be found here | LoihiViews | unmatched — not counted | — | main source file in analysis 7f8a2fa5 | no |
| can be found here | LoihiRoot | unmatched — not counted | — | imported and referenced in multiple analyses | no |
| can be found here | DSMath | unmatched — not counted | — | referenced in findings for multiple analyses | no |
| Automated Findings report | Ocean | own contract | Ocean (selected) `0x96b4f4...d5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Automated Findings report | OceanAdapter | unmatched — not counted | — | listed in scope | no |
| Automated Findings report | Curve2PoolAdapter | unmatched — not counted | — | listed in scope | no |
| Automated Findings report | CurveTricryptoAdapter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x4093ee...89eed4` | FractionalizerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dcaec...38145a` | Shell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe47ba5...d0317d` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 79 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1
- Match method counts: unique_name=4

Zero-match audit list:

- [21443] code4rena.com/reports/2023-08-shell
- [21445] diligence.security/audits/2020/06/shell-protocol
- [24451] bot-report.md
- [24453] PDF
- [24454] can be found here
- [24455] can be found here

Fork inheritance lineage and inherited audits are included when available.
