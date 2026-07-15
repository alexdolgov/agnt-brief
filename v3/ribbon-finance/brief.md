# Agentic Audit Brief: Ribbon Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 15 (2 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum
- Contract surface: 40 unique implementations (42 raw deployments)
- Coverage basis: 3/32 confirmed own live verified implementations (9.4%); conservative 9.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,954,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ribbon Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across avalanche, ethereum. Structural roles: 38 unclassified, 6 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (38), core (6)
- Contract kinds: contract (29), unclassified (15)
- Detected standards: erc1967proxy (6)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aea75...f8044c`, chain 1)
- UnnamedContract (`0x312853...88936c`, chain 1)
- UnnamedContract (`0x3b383d...50334a`, chain 1)
- UnnamedContract (`0x3cd0ec...5c616d`, chain 1)
- UnnamedContract (`0x600eee...706c8e`, chain 1)
- UnnamedContract (`0xc0cf10...d98a53`, chain 1)
- UnnamedContract (`0xc59e21...8db57a`, chain 1)
- UnnamedContract (`0xe44edf...f2e405`, chain 1)
- AdminUpgradeabilityProxy (`0x257518...89644b`, chain 1)
- AdminUpgradeabilityProxy (`0x53773e...b78e8c`, chain 1)
- AdminUpgradeabilityProxy (`0x65a833...b13b2f`, chain 1)
- AdminUpgradeabilityProxy (`0x84c2b1...dfd6f0`, chain 1)
- AdminUpgradeabilityProxy (`0x8fe744...96e54f`, chain 1)
- AdminUpgradeabilityProxy (`0xa1da05...ec5edf`, chain 1)
- AdminUpgradeabilityProxy (`0xcc3235...cc9624`, chain 1)
- AdminUpgradeabilityProxy (`0xce5513...48ae8c`, chain 1)
- AdminUpgradeabilityProxy (`0xe63151...abd365`, chain 1)
- AdminUpgradeabilityProxy (`0x6bf686...9a9fb3`, chain 43114)
- AdminUpgradeabilityProxy (`0x98d031...a87787`, chain 43114)
- AdminUpgradeabilityProxy (`0x9dd6be...a3e3a3`, chain 43114)
- FeeCustody (`0xf2e186...6cf55a`, chain 1)
- Vyper_contract (`0x0cb9cc...ef6415`, chain 1)
- Vyper_contract (`0x192960...b08608`, chain 1)
- Vyper_contract (`0x19854c...a9b5f7`, chain 1)
- Vyper_contract (`0x43277c...f171cc`, chain 1)
- Vyper_contract (`0x4ba4af...e16fd0`, chain 1)
- Vyper_contract (`0x4e079d...f9be72`, chain 1)
- Vyper_contract (`0x5b0655...625a3a`, chain 1)
- Vyper_contract (`0x8913ea...0b9325`, chain 1)
- Vyper_contract (`0x903840...d7c8bd`, chain 1)
- Vyper_contract (`0x967412...814587`, chain 1)
- Vyper_contract (`0x98c371...339382`, chain 1)
- Vyper_contract (`0xa8a969...be8732`, chain 1)
- Vyper_contract (`0xad4dbd...84741a`, chain 1)
- Vyper_contract (`0xb7fd36...8c9b4e`, chain 1)
- Vyper_contract (`0xb91309...b85fab`, chain 1)

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (34 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/32 (9.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/32
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 40
- Raw deployments: 42
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 3 | 9.4% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RibbonThetaSTETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391540 | `0x53773e...b78e8c` | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391548 | `0x8fe744...96e54f` | ✅ Audited |
| RibbonThetaYearnVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391545 | `0xcc3235...cc9624` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeCustody | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391538 | `0xf2e186...6cf55a` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391546 | `0x84c2b1...dfd6f0` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391550 | `0xce5513...48ae8c` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391539 | `0xa1da05...ec5edf` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391542 | `0x0fabaf...60467a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391544 | `0x16772a...fbb5ef` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391541 | `0x8b5876...8c3e8c` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391551 (2 proxies) | 2 deployments: ethereum `0x257518...89644b`; ethereum `0x65a833...b13b2f` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391543 | `0xe63151...abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391552 | `0x6bf686...9a9fb3` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391553 | `0x98d031...a87787` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391554 | `0x9dd6be...a3e3a3` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391547 | `0x270f4a...7be238` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391549 (2 proxies) | 2 deployments: ethereum `0x2a6b04...98a0fe`; ethereum `0x42cf87...c639dc` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391516 | `0x0cb9cc...ef6415` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391517 | `0x192960...b08608` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391518 | `0x19854c...a9b5f7` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391522 | `0x43277c...f171cc` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391523 | `0x4ba4af...e16fd0` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391524 | `0x4e079d...f9be72` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391525 | `0x5b0655...625a3a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391527 | `0x8913ea...0b9325` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391528 | `0x903840...d7c8bd` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391529 | `0x967412...814587` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391530 | `0x98c371...339382` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391531 | `0xa8a969...be8732` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391532 | `0xad4dbd...84741a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391533 | `0xb7fd36...8c9b4e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391534 | `0xb91309...b85fab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391515 | `0x0aea75...f8044c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391519 | `0x312853...88936c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391520 | `0x3b383d...50334a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391521 | `0x3cd0ec...5c616d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391526 | `0x600eee...706c8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391535 | `0xc0cf10...d98a53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391536 | `0xc59e21...8db57a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391537 | `0xe44edf...f2e405` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/ribbon-finance-audit](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 1 | 0 | 2 | n/a |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 6 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://raw.githubusercontent.com/ribbon-finance/audit/b837e7b04dfbbc6fb577039e9baa598f46ec04a7/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2529] www.openzeppelin.com/news/ribbon-finance-audit — no match: All contracts listed in the Scope section of the audit report.
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: Report title and date indicate July 2021; 7 contracts explicitly listed in scope.
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings targets and mentions.
- [2535] Quantstamp Theta Vault.pdf — no match: Extracted contract names from file signatures, findings, and code coverage sections. Audit date from cover page.
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line sections.
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: Audit report for RVOL (Ribbon Volatility) smart contract. Scope includes the RVOL library and its components: Math, OptionsPremiumPricer, VolOracle, DSMath. No file paths provided, but contract names are clearly identified as audit targets.
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract Swap.sol is in scope. Audit date from cover page and latest audit report date.
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [2541] RibbonThetaYearn-18june.pdf — matched: No reason recorded
- [2542] RibbonV2-July-2021.pdf — no match: The report states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.
- [2543] ribbon-07-2023.pdf — no match: Scope explicitly mentions RibbonAutocallVault.sol and the difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol. Audit date is July 2023, interpreted as end of month.
- [2544] ribbon-finance-04-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are referenced in findings but not explicitly in scope; however, they are part of the codebase reviewed. Date is April 2021, approximated to end of month.
- [2545] ribbon-finance-11-2021.pdf — matched: Extracted 8 contract names from the audit report. The report mentions '10 contracts/libraries in scope' but only 8 distinct names are explicitly referenced in the line-by-line review. The date is November 2021, approximated to last day of month.
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/ribbon-finance-audit | GammaInterface | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IGnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbon | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbonThetaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IWETH | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | GnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | ShareMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | Vault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | VaultLifecycle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | OptionsVaultStorage | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | StrikeSelection | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonDeltaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonVault | unmatched — not counted | — | listed in scope | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review section 3.1-3.3 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review section 3.4-3.15 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review section 3.16-3.19 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review section 3.20-3.32 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review section 3.33-3.34 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review section 3.35-3.38 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x6bf686...9a9fb3` — deployed 2022-02-23 23:16:09+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x98d031...a87787` — deployed 2021-12-08 09:11:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x257518...89644b` — deployed 2021-09-11 04:54:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xce5513...48ae8c` — deployed 2022-11-25 02:05:59+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8fe744...96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x9dd6be...a3e3a3` — deployed 2021-12-23 08:53:48+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xe63151...abd365` — deployed 2021-11-02 11:37:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x65a833...b13b2f` — deployed 2021-09-10 06:17:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xa1da05...ec5edf` — deployed 2022-06-17 12:21:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x84c2b1...dfd6f0` — deployed 2022-08-23 05:52:32+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xcc3235...cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x53773e...b78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | RibbonVolatility | unmatched — not counted | — | listed in code coverage | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target in finding PVE-001: Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract providing getPremium() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target in finding PVE-002: VolOracle::getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target in finding PVE-003: DSMath::wdiv()/rdiv() | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target Swap | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x8fe744...96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | — | no |
| RibbonV2-July-2021.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonV2-July-2021.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonV2-July-2021.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonV2-July-2021.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonV2-July-2021.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonV2-July-2021.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonV2-July-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonAutocallVault | unmatched — not counted | — | scope included RibbonAutocallVault.sol | no |
| ribbon-07-2023.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonTreasuryVaultLite | unmatched — not counted | — | scope included difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol | no |
| ribbon-finance-04-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| ribbon-finance-04-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| ribbon-finance-04-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| ribbon-finance-04-2021.pdf | IProtocolAdapter | unmatched — not counted | — | referenced in line 5.20 | no |
| ribbon-finance-04-2021.pdf | OptionVaultStorage | unmatched — not counted | — | referenced in line 5.21 | no |
| ribbon-finance-11-2021.pdf | GnosisAuction | unmatched — not counted | — | line-by-line review section 4.1 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycle | unmatched — not counted | — | line-by-line review section 4.2-4.7 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleSTETH | unmatched — not counted | — | line-by-line review section 4.8-4.10 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleYearn | unmatched — not counted | — | line-by-line review section 4.11-4.12 | no |
| ribbon-finance-11-2021.pdf | RibbonVault | unmatched — not counted | — | line-by-line review section 4.13-4.17 | no |
| ribbon-finance-11-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-finance-11-2021.pdf | RibbonThetaSTETHVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x53773e...b78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ribbon-finance-11-2021.pdf | RibbonThetaYearnVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xcc3235...cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2e186...6cf55a` | FeeCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c2b1...dfd6f0` | RibbonEarnVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce5513...48ae8c` | RibbonEarnVaultFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa1da05...ec5edf` | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fabaf...60467a` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16772a...fbb5ef` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b5876...8c3e8c` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x257518...89644b` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe63151...abd365` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6bf686...9a9fb3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x98d031...a87787` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9dd6be...a3e3a3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x270f4a...7be238` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a6b04...98a0fe` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb9cc...ef6415` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x192960...b08608` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19854c...a9b5f7` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43277c...f171cc` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ba4af...e16fd0` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e079d...f9be72` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5b0655...625a3a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8913ea...0b9325` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x903840...d7c8bd` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x967412...814587` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98c371...339382` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8a969...be8732` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad4dbd...84741a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7fd36...8c9b4e` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb91309...b85fab` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 94 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [2529] www.openzeppelin.com/news/ribbon-finance-audit
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [2535] Quantstamp Theta Vault.pdf
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [2542] RibbonV2-July-2021.pdf
- [2543] ribbon-07-2023.pdf
- [2544] ribbon-finance-04-2021.pdf
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf

Fork inheritance lineage and inherited audits are included when available.
