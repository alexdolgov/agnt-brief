# Agentic Audit Brief: Aevo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 17 (7 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.1% over 90 days

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: unknown (Tier 0, 84.9% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 2/9 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,155,501.00
- On-chain TVL (included contracts): $17,889,099.49
- TVL by chain: Ethereum $17,881,015.52 | Optimism $6,840.88 | Arbitrum $1,243.09

## Project Description

This brief describes the observed EVM deployment and audit surface for Aevo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 5 unclassified, 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (5), core (3), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (2), ownable2step (2), accesscontrol (1), erc165 (1), erc20permit (1)
- Frameworks: solmate (4), openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AevoToken (`0xb528ed...13b997`, chain 1)
- L1SocketDepositHelper (`0x6ea58e...744e56`, chain 8453)
- Vault (`0x780962...3a28ef`, chain 10)
- Vault (`0x80d40e...4d137c`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/9 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $8,083.97
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $8,083.97 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ribbon | Tier 2 | 2 | 22.2% | 2024-01 |
| VAR | Tier 2 | 1 | 11.1% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AevoToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378654 | `0xb528ed...13b997` | ✅ Audited |
| L1SocketDepositHelper | periphery | project_anchor | own_supporting | 0 | base | unit-378661 | `0x6ea58e...744e56` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-378656 | `0x780962...3a28ef` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-378659 | `0x80d40e...4d137c` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378662 | `0x4082c9...59c574` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378655 | `0x5c7dd6...10ae7e` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378657 | `0xfff4a3...e80584` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378658 | `0x7711c9...3e9ddb` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378660 | `0x90bfb3...30e161` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ribbon-report.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [VAR-Ribbon230918.pdf](https://github.com/aevoxyz/audit/blob/main/VAR-Ribbon230918.pdf) | Ribbon | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon.pdf) | Ribbon | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_230604.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_230604.pdf) | Ribbon | Audit | 2023-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [VAR_Ribbon_240116_aevo_governance_2-V1.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_240116_aevo_governance_2-V1.pdf) | Ribbon | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1895] Ribbon-report.pdf — matched: Extracted contract names from findings context; no explicit scope section found. Audit date from report cover page.
- [1896] VAR-AEVO230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All contracts in src/ are in scope. Audit date from cover page: October 18, 2023.
- [1897] VAR_Ribbon.pdf — matched: Extracted contract names from scope section and vulnerability file references. Audit date from cover page.
- [1898] VAR_Ribbon_OTC.pdf — no match: Scope section explicitly lists 5 files: OTCWrapper.sol, MarginRequirements.sol, SupportsNonCompliantERC20.sol, AddressBook.sol, Controller.sol. Audit date is March 27, 2023 from cover page.
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line.
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: The audit report explicitly states the target is 'RVOL' smart contract, and findings reference specific contracts/libraries: Math, OptionsPremiumPricer, VolOracle, DSMath. The audit date is clearly stated as July 4, 2021 on the cover page and in the report details.
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contract names extracted from findings targets and mentions.
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract, Swap.sol, is in scope. The report mentions Ribbon Finance and Theta Vault but they are not audited contracts.
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [1905] Quantstamp Theta Vault.pdf — no match: No reason recorded
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is inferred from the cover page 'July 2021'.
- [1907] RibbonThetaYearn-18june.pdf — no match: Scope explicitly states 2 contracts: RibbonThetaVaultYearn (with parts of GammaAdapter) and YearnPricer. GammaAdapter is included as part of the review. Date is June 2021, interpreted as end of month.
- [14929] VAR-Ribbon230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All .sol files in src/ are in scope. Contracts explicitly mentioned in findings are included.
- [14930] VAR_Ribbon.pdf — matched: Extracted contract names from scope description and vulnerability file paths. Audit date from cover page.
- [14931] VAR_Ribbon_230604.pdf — matched: No reason recorded
- [14932] VAR_Ribbon_240116_aevo_governance_2-V1.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ribbon-report.pdf | Exchange | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Instruments | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Accounts | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | WithdrawProxy | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ribbon-report.pdf | Executor | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Orders | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Options | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Signing | unmatched — not counted | — | mentioned in findings context | no |
| VAR-AEVO230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-AEVO230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing mapping expiryPrice. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_OTC.pdf | OTCWrapper | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | MarginRequirements | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | AddressBook | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target of finding PVE-001: Incorrect Calculation in Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract that calls Math library | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target of finding PVE-002: Improved Corner Case Handling in getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target of finding PVE-003: Inconsistency Between Document and Implementation | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Listed as target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | — | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xfff4a3...e80584` — deployed 2023-08-18 17:10:13+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x7711c9...3e9ddb` — deployed 2023-12-18 16:29:35+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x5c7dd6...10ae7e` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x90bfb3...30e161` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x780962...3a28ef` — deployed 2023-12-18 16:25:11+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x80d40e...4d137c` — deployed 2023-08-18 17:10:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | unmatched — not counted | — | mentioned in line-by-line review (3.39-3.67) | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | unmatched — not counted | — | listed in scope | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | mentioned as part of RibbonThetaVaultYearn review | no |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | listed in scope | no |
| VAR-Ribbon230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-Ribbon230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing expiryPrice mapping. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | AevoToken | own contract | AevoToken (selected) `0xb528ed...13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | Migrator | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoStaking | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoToken | own contract | AevoToken (selected) `0xb528ed...13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x780962...3a28ef` | Vault | core_logic | $6,840.88 | Verified native implementation with $6,840.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x80d40e...4d137c` | Vault | core_logic | $1,243.09 | Verified native implementation with $1,243.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4082c9...59c574` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5c7dd6...10ae7e` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfff4a3...e80584` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7711c9...3e9ddb` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x90bfb3...30e161` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 105 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=7

Zero-match audit list:

- [1898] VAR_Ribbon_OTC.pdf
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [1905] Quantstamp Theta Vault.pdf
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [1907] RibbonThetaYearn-18june.pdf

Fork inheritance lineage and inherited audits are included when available.
