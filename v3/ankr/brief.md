# Agentic Audit Brief: Ankr

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, blast, bsc, ethereum, fantom, gnosis, goerli, linea, mode, optimism, polygon, scroll
- Contract surface: 48 unique implementations (51 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $18,101,801.55
- On-chain TVL (included contracts): $33,425,847.16
- TVL by chain: Ethereum $33,425,691.43 | Polygon $122.19 | Avalanche $32.98 | Bsc $0.56

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ankr. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 58 contract row(s) across arbitrum, avalanche, blast, bsc, ethereum, fantom, gnosis, goerli, linea, mode, opbnb, optimism, polygon, scroll, sepolia. Structural roles: 34 unclassified, 15 core, 7 supporting, 2 infra. 22 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 58
- Structural roles: unclassified (34), core (15), supporting (7), infra (2)
- Contract kinds: contract (57), abstract (1)
- Detected standards: erc1967proxy (15), ownable (7), erc20 (3), pausable (2)
- Frameworks: openzeppelin (20), openzeppelin-upgradeable (10), foundry (1)
- Upgradeable-pattern rows: 22

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 58; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 48 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (11 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 48
- Raw deployments: 51
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ANKRToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-226678 | `0x829033...f3edd4` | ⚠️ Unaudited |
| AvalanchePool_R6 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226702 | `0x7baa1e...0a836d` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226705 | `0x49b85a...d98642` | ⚠️ Unaudited |
| BNBStakingPool_R4 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226707 | `0x9e347a...afe86e` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226698 | `0x62a509...eddb2a` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226690 | `0x84db6e...936670` | ⚠️ Unaudited |
| aBNBb_R1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226706 | `0xfe3998...e00c0e` | ⚠️ Unaudited |
| aBNBc_R1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226704 | `0x52f24a...178827` | ⚠️ Unaudited |
| AETH_R21 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226689 | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| AnkrBEP20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xf30791...1b08e3` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226677 | `0x00f8e6...9d6abc` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226679 | `0xfe8189...d4287a` | ⚠️ Unaudited |
| BinancePool_R14 | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-226708 | `0xa0c92e...907bcd` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226685 | `0xc437df...0e7181` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226697 | `0x31be0f...0887f5` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226700 | `0x31be0f...0887f5` | ⚠️ Unaudited |
| FeeRecipient_R1 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226682 | `0x90b0c8...3eab08` | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226699 | `0x6c6f91...843929` | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226703 | `0xc33448...c727f6` | ⚠️ Unaudited |
| InsurancePool_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226692 | `0xb42bf1...8d0fa2` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226695 | `0xef3c16...54050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226687 | `0xcb0006...ed7eba` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226701 | `0xef3c16...54050f` | ⚠️ Unaudited |
| MaticToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7d1afa...cfebb0` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226686 | `0x59f767...0f208e` | ⚠️ Unaudited |
| PolygonPool_R8 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226684 | `0xcfd4b4...b3ce89` | ⚠️ Unaudited |
| ProviderRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226693 | `0x8a2f83...2ce27a` | ⚠️ Unaudited |
| SimpleTokenProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0xaeaeed...6ae861`; mode `0xdf474b...1136b2`; arbitrum `0xaeaeed...6ae861`; scroll `0xdf474b...1136b2` | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226694 | `0xfd0f61...6c34d6` | ⚠️ Unaudited |
| SwapPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226688 | `0xf047f2...4267af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | `0xdf474b...1136b2` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x101a02...a79c35` | ⚠️ Unaudited |
| ValidatorManager_R3 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226691 | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| WithdrawalPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226683 | `0x67428d...719348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MaticPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226696 | `0xad0dcc...adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x148bf8...2a80df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x19569a...76ac8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2bbc91...56990f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2d36a1...507750` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x7fed49...7661d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x8f4ac2...49501b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xac3220...1e64ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xf89429...93ac3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-226680 | `0xcfc785...ef5179` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xdf474b...1136b2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xa8ae63...c5ef8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x3580ac...301241` | ❓ Unverified |
| ValidatorStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226681 | `0xa2d1aa...c5cc8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [system_smart_contracts_security_audit.pdf](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [stkr_smart_contract_auditing_report.pdf](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ankr_bridge_security_audit.pdf](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [smart_contract_security_audit.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [ankr_delegated_staking_audit_veridise.pdf](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [smart_contract_security_audit_avax_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [smart_contract_security_audit_bnb.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [smart_contract_security_audit_bnb_peckshield.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [smart_contract_security_audit_aeth_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [smart_contract_security_audit_ankreth_salus.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [smart_contract_security_audit_flow_halborn.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [smart_contract_security_audit_ftm.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [smart_contract_security_audit_matic.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1860] system_smart_contracts_security_audit.pdf — no match: Contracts listed in scope with file hashes on page 2 of the report.
- [3459] stkr_smart_contract_auditing_report.pdf — no match: The report explicitly audits two contracts: AETH_R1 and GlobalPool_R17. No file paths provided. Audit completion date is 2020.11.25.
- [3461] ankr_bridge_security_audit.pdf — no match: Scope table lists 11 contracts with SHA256 hashes. Audit completion date is 2022.03.09.
- [3462] smart_contract_security_audit.pdf — no match: Extracted contract names from findings sections and file paths. Audit date from cover page.
- [3463] ankr_delegated_staking_audit_veridise.pdf — no match: All contracts listed in scope section 3.2. Audit date from cover page.
- [3464] smart_contract_security_audit_avax_beosin.pdf — no match: Scope table lists four contracts: FutureBondAVAX.sol, ERC20Bond.sol, AvalanchePool.sol, FutureCertAVAX.sol. Audit date is July 12, 2022 from cover page.
- [3465] smart_contract_security_audit_bnb.pdf — no match: Scope table lists ABNBb_R1.sol, ABNBb_R2.sol, BinancePool_R2.sol, BinancePool_R4.sol. BinancePool_R3.sol is referenced in findings but not in scope table; however it is audited as part of the project.
- [3466] smart_contract_security_audit_bnb_peckshield.pdf — no match: No explicit scope section; contracts inferred from findings targets.
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf — no match: All contracts listed in the scope section of the audit report.
- [3469] smart_contract_security_audit_aeth_beosin.pdf — no match: Scope table lists 5 contracts with file hashes. Additional files mentioned (ANRK.sol, depositContract.sol, Governance_R3.sol, AETHF.sol, unisawpinteractLib.sol, AnkrDeposit_R3.sol) are deprecated/not in scope. Audit date from cover page: Nov 15th, 2022.
- [3470] smart_contract_security_audit_ankreth_salus.pdf — no match: Extracted contracts from Appendix 1 and additional contracts mentioned in findings that are part of the audited codebase.
- [3471] smart_contract_security_audit_flow_halborn.pdf — no match: Extracted contract names from the Scope section. Audit date is the end date of the engagement period (July 30 - August 12, 2024).
- [3472] smart_contract_security_audit_ftm.pdf — no match: Four contracts in scope: aFTMb, aFTMc, FantomPool, FantomStub. Audit date from cover page.
- [3473] smart_contract_security_audit_matic.pdf — no match: Three contracts explicitly listed in scope table on page 3: aMATICb.sol, aMATICc.sol, PolygonPool.sol. Audit date from cover page: Jun 15th, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| system_smart_contracts_security_audit.pdf | Staking | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | StakingPool | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | Injector | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | RuntimeUpgrade | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | Governance | unmatched — not counted | — | listed in scope with file hash | no |
| stkr_smart_contract_auditing_report.pdf | AETH_R1 | unmatched — not counted | — | Section 3.1: AETH_R1 Contract Audit | no |
| stkr_smart_contract_auditing_report.pdf | GlobalPool_R17 | unmatched — not counted | — | Section 3.2: GlobalPool_R17 Contract Audit | no |
| ankr_bridge_security_audit.pdf | BridgeRouter | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | CrossChainBridge | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBond | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBondProxy | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBondRatioFeed | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | SimpleToken | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | SimpleTokenProxy | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | CallDataRLPReader | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | EthereumVerifier | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | ProofParser | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | Utils | unmatched — not counted | — | listed in scope table | no |
| smart_contract_security_audit.pdf | TokenStaking | unmatched — not counted | — | mentioned in findings [Ankr-staking-1] and [Ankr-staking-12] | no |
| smart_contract_security_audit.pdf | LiquidStakingPool | unmatched — not counted | — | mentioned in findings [Ankr-staking-2], [Ankr-staking-6], [Ankr-staking-8] | no |
| smart_contract_security_audit.pdf | Staking | unmatched — not counted | — | mentioned in findings [Ankr-staking-3], [Ankr-staking-4], [Ankr-staking-5], [Ankr-staking-7], [Ankr-staking-9], [Ankr-staking-10], [Ankr-staking-11] | no |
| smart_contract_security_audit.pdf | TokenLiquidStakingPool | unmatched — not counted | — | mentioned in finding [Ankr-staking-12] | no |
| smart_contract_security_audit.pdf | AnkrProtocol | unmatched — not counted | — | mentioned in findings [AnkrProtocol-1] through [AnkrProtocol-6] | no |
| smart_contract_security_audit.pdf | PayAsYouGo | unmatched — not counted | — | mentioned in findings [PayAsYouGo-1] through [PayAsYouGo-4] | no |
| ankr_delegated_staking_audit_veridise.pdf | AnkrTokenStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | BaseStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | StakingConfig | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorRegistry | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorStorage | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | TokenStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | SnapshotUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | DelegationUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_avax_beosin.pdf | FutureBondAVAX | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | ERC20Bond | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | AvalanchePool | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | FutureCertAVAX | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_bnb.pdf | ABNBb_R1 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | ABNBb_R2 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R2 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R3 | unmatched — not counted | — | mentioned in findings BNB-1, BNB-6, BNB-8 | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R4 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb_peckshield.pdf | aBNBb_R2 | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| smart_contract_security_audit_bnb_peckshield.pdf | BinancePool_R2 | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | BearingToken | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | CertificateToken | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | EarnConfig | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | LiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ERC20LiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ImmediateLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ManualClaimLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | MixedLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | QueueLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ReferralLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | BNBStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBb | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBc | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBb_R1 | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBc_R1 | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_aeth_beosin.pdf | AETH_R16 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | FETH_R16 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | GlobalPool_R39 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | Config | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | AnkrDeposit | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_ankreth_salus.pdf | DepositWrapper | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AnkrTimeLock | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Config | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Governable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | SystemParameters | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | WithdrawalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Lockable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | MathUtils | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Ownable_R1 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Pausable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IAETH | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IConfig | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IDepositContract | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IFETH | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IFeeRecipient | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IGlobalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IWithdrawalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | ERC20UpgradeSafe | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AETH_R18 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FETH_R18 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | GlobalPool_R42 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FeeRecipient | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AnkrDeposit_R3 | unmatched — not counted | — | mentioned in finding 3 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FeeRecipient_R1 | unmatched — not counted | — | mentioned in finding 6 | no |
| smart_contract_security_audit_flow_halborn.pdf | StakingManager | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_flow_halborn.pdf | FlowStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_flow_halborn.pdf | AnkrRatioFeed | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ftm.pdf | aFTMb | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | aFTMc | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | FantomPool | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | FantomStub | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_matic.pdf | aMATICb | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_matic.pdf | aMATICc | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_matic.pdf | PolygonPool | unmatched — not counted | — | listed in scope table with file hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 100 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: n/a

Zero-match audit list:

- [1860] system_smart_contracts_security_audit.pdf
- [3459] stkr_smart_contract_auditing_report.pdf
- [3461] ankr_bridge_security_audit.pdf
- [3462] smart_contract_security_audit.pdf
- [3463] ankr_delegated_staking_audit_veridise.pdf
- [3464] smart_contract_security_audit_avax_beosin.pdf
- [3465] smart_contract_security_audit_bnb.pdf
- [3466] smart_contract_security_audit_bnb_peckshield.pdf
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf
- [3469] smart_contract_security_audit_aeth_beosin.pdf
- [3470] smart_contract_security_audit_ankreth_salus.pdf
- [3471] smart_contract_security_audit_flow_halborn.pdf
- [3472] smart_contract_security_audit_ftm.pdf
- [3473] smart_contract_security_audit_matic.pdf

Fork inheritance lineage and inherited audits are included when available.
