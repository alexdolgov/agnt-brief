# Agentic Audit Brief: xDAI Stake Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 18 (1 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: xDAI Stake Bridge (`xdai-stake-bridge`)
- Website: [https://www.gnosis.io/](https://www.gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, gnosis, goerli, sepolia
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $238,595,826.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for xDAI Stake Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4aa42145aa6ebf72e164c9bbc74fbd3788045016`, chain 1)
- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6`, chain 1)
- UnnamedContract (`0x83f20f44975d03b1b09e64809b757c47f942beea`, chain 1)
- UnnamedContract (`0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0`, chain 1)
- UnnamedContract (`0xe1579debdd2df16ebdb9db8694391fa74eea201e`, chain 1)
- UnnamedContract (`0x5c183c8a49aba6e31049997a56d75600e27ff8c9`, chain 100)
- UnnamedContract (`0x670daeaf0f1a5e336090504c68179670b5059088`, chain 100)
- UnnamedContract (`0xaf204776c7245bf4147c2612bf6e5972ee483701`, chain 100)
- UnnamedContract (`0xd499b51fcfc66bd31248ef4b28d656d67e591a94`, chain 100)
- UnnamedContract (`0xe91d153e0b41518a2ce8dd3d7944fa863463a97d`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 25 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 11 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d020eb50fce62320a6730e6c18659a28b366555` | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae055097c6d159879521c384f1d2123d1f195e6` | ⚠️ Unaudited |
| MultipleDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218b706898d234b85d2494df21eb0677eaea918` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262194 | `0x4aa42145aa6ebf72e164c9bbc74fbd3788045016` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262197 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262198 | `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262199 | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262200 | `0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262204 | `0xe1579debdd2df16ebdb9db8694391fa74eea201e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262216 | `0x11fe4b6ae13d2a6055c8d9cf65c55bac32b5d844` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262217 | `0x3ea1a9f92a99bc8e820541e7bed5d1f2419ffe59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262218 | `0xd8134205b0328f5676aaefb3b2a0dc15f4029d8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x481c034c6d9441db23ea48de68bcae812c5d39ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262206 | `0x5c183c8a49aba6e31049997a56d75600e27ff8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262207 | `0x670daeaf0f1a5e336090504c68179670b5059088` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262208 | `0xaf204776c7245bf4147c2612bf6e5972ee483701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262209 | `0xd499b51fcfc66bd31248ef4b28d656d67e591a94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe30269bc61e677cd60ad163a221e464b7022fbf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262210 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262211 | `0x138190e157d7604b8f89637aa10508abd4c673b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262212 | `0x180ff98e734415ecd35fac3d32940e1b45fad0a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262213 | `0x3ea1a9f92a99bc8e820541e7bed5d1f2419ffe59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262215 | `0xcca0dc2a058884e62082312f09541cc7566406f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [docs.gnosischain.com/bridges/audits](https://docs.gnosischain.com/bridges/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202510-Gnosis-Bridge-USDS-Upgrade.pdf](https://github.com/OmegaAudits/audits/blob/main/202510-Gnosis-Bridge-USDS-Upgrade.pdf) | Omega | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [bridge-USDS-upgrade3.pdf](https://github.com/cducrest/audit-reports/blob/main/bridge-USDS-upgrade3.pdf) | Gnosis Ltd (internal) | Audit | 2025-11 | fresh | Direct | address | matched | 2 | 0 | 0 | 7 | high |
| [Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf](https://docs.gnosischain.com/assets/files/Omega-Gnosis-Hashi%20Final%20Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf](https://docs.gnosischain.com/assets/files/g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf) | g0 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |
| [Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf](https://docs.gnosischain.com/assets/files/Omega%20-%20Gnosis%20Bridge%20-%20final%20report-6a87d4840b00d3944437f59f17a58cc1.pdf) | Omega | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf](https://docs.gnosischain.com/assets/files/dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf) | ChainSafe | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf](https://docs.gnosischain.com/assets/files/ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20AMB%20Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/SmartDec%20Security%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/Peppersec%20Initial%20TokenBridge%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Peppersec | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/master/audit/quantstamp/POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 61 | high |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/quantstamp/POA-Network-Token-bridge-security-assessment-report.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/smartdec/POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf) | yAudit | Audit | 2019-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 58 | high |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/peppersec/POA-Network-Token-bridge-security-assessment-report.pdf) | Peppersec | Audit | 2018-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [HashiMay2023.pdf](https://github.com/gnosis/hashi/blob/main/audits/HashiMay2023.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [g0-HashiMar2024.pdf](https://github.com/gnosis/hashi/blob/main/audits/g0-HashiMar2024.pdf) | g0 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21067] docs.gnosischain.com/bridges/audits — no match: The document is a summary page listing multiple audits with links to repositories, but does not provide a clear scope section with specific contract names. The only explicit scope mention is for Hashi integration, which excludes GiriGiriBashi.sol, but no individual contract names are listed. Other audits reference repositories without specifying which contracts are in scope.
- [21068] 202510-Gnosis-Bridge-USDS-Upgrade.pdf — no match: Extracted contract names from scope section and findings headers. Audit date from cover page.
- [21069] bridge-USDS-upgrade3.pdf — matched: All contracts explicitly listed in the Scope section of the audit report.
- [21070] Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf — no match: Extracted all contracts from the scope section and findings. The audit date is from the report title 'GnosisHashi FinalAuditReport June27,2024'.
- [21071] g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf — no match: Extracted contract names from listed files in three GitHub repositories. Audit date inferred from 'March 2024' on cover page.
- [21073] Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf — no match: Scope section states audit concerns Solidity files in repository, and findings are organized by contract file names.
- [21074] dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf — no match: Contracts identified from fixed issues section; no explicit scope table; date inferred from 'August 2023'.
- [21075] ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf — no match: Extracted 25 contract names from the scope section listing files in Omnibridge and Tokenbridge repositories. Audit date found on cover page: September 07, 2021.
- [21077] TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21078] TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21079] SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21080] Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21081] POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf — no match: Extracted contract names from the audit report's scope, findings, and file hashes appendix. The report covers the POA Network token bridge contracts.
- [21082] POA-Network-Token-bridge-security-assessment-report.pdf — no match: No reason recorded
- [21083] POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf — no match: All contracts listed in compilation output are considered in scope. The report explicitly states 'The total LOC of audited Solidity sources is 2297' and lists all compiled contracts.
- [21084] POA-Network-Token-bridge-security-assessment-report.pdf — no match: The report lists two smart contracts explicitly: RewardByBlock.sol and HomeBridgeErcToNative. No audit date found in the document.
- [21085] HashiMay2023.pdf — no match: Scope mentions all Solidity files in a GitHub directory, but only two contracts are explicitly named in findings. Audit date inferred from 'May 2023' in title.
- [21086] g0-HashiMar2024.pdf — no match: Scope section lists 9 contracts with file paths. Audit date is March 2024, interpreted as last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IBridgeValidators | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IDaiUsds | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IForeignBridge | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | ISUSDS | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IWETHOmnibridgeRouter | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IXDaiBridgePeripheral | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | SavingsDaiConnector | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheral | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiForeignBridge | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheralForUsdsPreUsdsUpgrade | unmatched — not counted | — | mentioned in findings section | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheralForDaiPreUsdsUpgrade | unmatched — not counted | — | mentioned in findings section | no |
| bridge-USDS-upgrade3.pdf | BridgeRouter | unmatched — not counted | — | listed in scope as new bridge router implementation contract | no |
| bridge-USDS-upgrade3.pdf | TransparentUpgradeableProxy | own contract | 0x9a8736… (selected) `0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bridge-USDS-upgrade3.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope as proxy admin for the bridge proxy | no |
| bridge-USDS-upgrade3.pdf | XDaiForeignBridge | unmatched — not counted | — | listed in scope as new bridge implementation contract | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheral | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheralForDaiPreUsdsUpgrade | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheralForUsdsPreUsdsUpgrade | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | USDSDepositContract | own contract | 0x5c183c… (selected) `0x5c183c8a49aba6e31049997a56d75600e27ff8c9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bridge-USDS-upgrade3.pdf | HomeBridgeErcToNative | unmatched — not counted | — | listed in scope as new home bridge implementation on Gnosis chain | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Hashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Yaho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Yaru | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Adapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BlockHashAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | DendrETHAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IDendrETH | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ElectronAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ILightClient | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Merkle | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Receipt | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | TelepathyAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ITelepathy | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | SimpleSerialize | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Reporter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IBlockHashAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IHashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IHeaderStorage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IJushin | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IReporter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IShoyuBashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IShuSho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IYaho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IYaru | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ShoyuBashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ShuSo | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | HeaderStorage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | MessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | MessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicForeignBridge | unmatched — not counted | — | mentioned in scope as XDAI bridge upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicHomeBridge | unmatched — not counted | — | mentioned in scope as XDAI bridge upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicHomeAMB | unmatched — not counted | — | mentioned in scope as AMB upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicForeignAMB | unmatched — not counted | — | mentioned in scope as AMB upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | HashiManager | unmatched — not counted | — | mentioned in findings as used by bridges | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Hashi | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Yaho | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Yaru | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HeaderStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageHashCalculator | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageIdCalculator | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ShoyuBashi | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ShuSo | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageRelay | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | VersionableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Upgradeable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Validatable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Ownable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Claimable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | DecimalShiftBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ValidatorStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicForeignAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicHomeAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | AsyncInformationProcessor | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignAMBWithGasToken | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageDelivery | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageProcessor | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | VersionableAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | EternalSotrage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Message | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ArbitraryMessage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ValidatorsFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BlockRewardBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeTypes | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BlockRewardFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ERC20Bridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicForeignBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicTokenBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | InitializableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Initializable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | OtherSideBridgeStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicHomeBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeOverdrawManagement | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseOverdrawManagement | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | RewardableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | GSNForeignERC20Bridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeManagerErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeManagerErcToNativePOSDAO | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | RewardableHomeBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | XDaiForeignBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | SavingsDaiConnector | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | InterestConnector | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseRelayRecipient | unmatched — not counted | — | Listed in scope files | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | ERC20Bridge | unmatched — not counted | — | Findings section for ERC20Bridge.sol | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | InterestConnector | unmatched — not counted | — | Findings section for InterestConnector.sol | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | SavingsDAIConnector | unmatched — not counted | — | Findings section for SavingsDAIConnector.sol | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | ERC20Bridge | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | InterestConnector | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | SavingsDaiConnector | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | XDaiForeignBridge | unmatched — not counted | — | mentioned in fixed issues | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BasicOmnibridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestConnector | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | OmnibridgeInfo | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ForeignOmnibridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AAVEInterestERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | CompoundInterestERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | Upgradeable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BasePaymaster | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BaseRelayRecipient | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | TokenPaymaster | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | GsnEip712Library | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AMBBridgeHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | Erc20ToNativeBridgeHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ArbitraryMessage | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | PermittableToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AsyncInformationProcessor | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | HomeAMB | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | MessageDelivery | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | CompoundConnector | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | GSNForeignERC20Bridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverBase | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverStakeBuyback | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverSwapToETH | unmatched — not counted | — | listed in scope table | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeStakeTokenMediator | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BlockReward | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ArbitraryMessage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | PermittableToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseMediatorFeeManager | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | RewardableBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseFeeManager | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677BridgeTokenRewardable | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeFeeManagerAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Sacrifice | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | TokenReader | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | InterestReceiver | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677MultiBridgeToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge_ERC20_to_ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge_ERC20_to_ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge_ERC20_to_Native | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge_ERC20_to_Native | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignMultiAMBErc20ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeMultiAMBErc20ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | RewardableValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignStakeTokenMediator | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BridgeValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | TokenProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Address | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | DecimalShiftBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ChaiConnector | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseRewardAddressList | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | VersionableBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | VersionableAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicMultiTokenBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Message | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignFeeManagerAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeFeeManagerAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseBridgeValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | MintableToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | StakingAuRaTokens | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | EternalStorageProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Proxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityOwnerStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | EternalStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IPot | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677Receiver | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IRewardableValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IGasToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeTokenRewardable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677Receiver | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBlockReward | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBurnableMintableERC677Token | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IOwnedUpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IRewardableValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Migrations | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Message | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | SafeMath | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BlockReward | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Staking | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ClassicEternalStorageProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | EternalStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | EternalStorageProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Proxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityOwnerStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BaseBridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BaseFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicForeignBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicHomeBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BlockRewardFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677Bridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeForBurnableMintableToken | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeTypes | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OverdrawManagement | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Ownable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OwnedUpgradeability | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Sacrifice | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Validatable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ValidatorsFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicForeignBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToErcPOSDAO | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErc677ToErc677 | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | POSDAOHomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToNativePOSDAO | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ClassicHomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerNativeToErcBothDirections | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableForeignBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-Token-bridge-security-assessment-report.pdf | RewardByBlock | unmatched — not counted | — | Listed in source code section: 'POA consensus. The RewardByBlock smart contract only. RewardByBlock.sol' | no |
| POA-Network-Token-bridge-security-assessment-report.pdf | HomeBridgeErcToNative | unmatched — not counted | — | Mentioned as a contract in the incremental audit section: 'HomeBridgeErcToNative 1. setBlockRewardContract improvement' | no |
| HashiMay2023.pdf | MessageExecutor | unmatched — not counted | — | mentioned in finding 1 | no |
| HashiMay2023.pdf | Yaru | unmatched — not counted | — | mentioned in finding 2 | no |
| g0-HashiMar2024.pdf | Hashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | Yaho | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | Yaru | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | HeaderStorage | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | MessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | MessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | GiriGiriBashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | ShoyuBashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | ShuSo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 278 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=5, medium=3
- Match method counts: address=2

Zero-match audit list:

- [21067] docs.gnosischain.com/bridges/audits
- [21068] 202510-Gnosis-Bridge-USDS-Upgrade.pdf
- [21070] Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf
- [21071] g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf
- [21073] Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf
- [21074] dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf
- [21075] ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf
- [21077] TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21078] TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21079] SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21080] Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21081] POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf
- [21082] POA-Network-Token-bridge-security-assessment-report.pdf
- [21083] POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf
- [21084] POA-Network-Token-bridge-security-assessment-report.pdf
- [21085] HashiMay2023.pdf
- [21086] g0-HashiMar2024.pdf

Fork inheritance lineage and inherited audits are included when available.
