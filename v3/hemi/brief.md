# Agentic Audit Brief: Hemi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hemi (`hemi`)
- Website: [https://hemi.xyz/](https://hemi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $519,962.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hemi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum, optimism. Structural roles: 9 supporting, 8 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: supporting (9), core (8)
- Contract kinds: contract (17)
- Detected standards: erc1967proxy (12), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), solmate (3)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x420000...000014`, chain 10)
- UnnamedContract (`0x420000...000017`, chain 10)
- UnnamedContract (`0x420000...000019`, chain 10)
- UnnamedContract (`0x420000...00001a`, chain 10)
- GovernanceToken (`0x420000...000042`, chain 10)
- Proxy (`0x420000...000007`, chain 10)
- Proxy (`0x420000...00000f`, chain 10)
- Proxy (`0x420000...000010`, chain 10)
- Proxy (`0x420000...000011`, chain 10)
- Proxy (`0x420000...000012`, chain 10)
- Proxy (`0x420000...000015`, chain 10)
- Proxy (`0x420000...000016`, chain 10)
- Proxy (`0x420000...000018`, chain 10)
- Proxy (`0x420000...000020`, chain 10)
- Proxy (`0x420000...000021`, chain 10)

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (11 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 15 of 46 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EAS | unknown | project_anchor | own_supporting | 1 | optimism | unit-241871 | `0x420000...000021` | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-241864 | `0x420000...00000f` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241842 | `0xa6b71e...896ab2` | ⚠️ Unaudited |
| GovernanceToken | token | project_anchor | own_supporting | 0 | optimism | unit-241858 | `0x420000...000042` | ⚠️ Unaudited |
| L1Block | unknown | project_anchor | own_supporting | 1 | optimism | unit-241865 | `0x420000...000015` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241861 | `0x5eaa10...9f191e` | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | optimism | unit-241862 | `0x420000...000007` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241859 | `0x6daf3a...9c0d51` | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-241868 | `0x420000...000010` | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | optimism | unit-241863 | `0x420000...000016` | ⚠️ Unaudited |
| MIPS | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241832 | `0x42ff66...ba9c2a` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | optimism | unit-241869 | `0x420000...000012` | ⚠️ Unaudited |
| OptimismPortal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241860 | `0x39a000...3a4d7e` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241836 | `0x613f36...24ed20` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 1 | optimism | unit-241867 | `0x420000...000018` | ⚠️ Unaudited |
| SchemaRegistry | registry | project_anchor | own_supporting | 1 | optimism | unit-241866 | `0x420000...000020` | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | project_anchor | own_supporting | 1 | optimism | unit-241870 | `0x420000...000011` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241826 | `0x0262fe...09342c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241828 | `0x04dcfe...ebb634` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241829 | `0x13cb1b...f3ce48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241830 | `0x15144f...8d2ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241834 | `0x5442d0...2562c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241835 | `0x5ae686...5303c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7007dd...0b8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241837 | `0x8434dc...25ea69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241839 | `0xa44633...6bede0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241841 | `0xa5f377...9f5e43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241846 | `0xbe81a9...fefb30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241848 | `0xc56273...a575a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241850 | `0xd9db27...709552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9fa5...b7f215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241851 | `0xf005df...6fb050` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241852 | `0xf44007...f54677` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241854 | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241855 | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241856 | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241857 | `0x420000...00001a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audit-reports (GitHub directory)](https://github.com/hemilabs/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf — no match: Extracted contracts from scope section and findings. Audit date from document control: v2.2 published Oct 9, 2025.
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf — no match: Scope section explicitly lists all files under 'Files Included'. Audit date from changelog: '2025-01-21 - Final report'.
- [3139] Audit_Report_HEMI-TOK_FINAL_21.pdf — no match: No reason recorded
- [3140] HemiToken - Final Report.pdf — no match: No reason recorded
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf — no match: Scope section lists repository hemilabs/veHEMI with commit hash; contracts VeHemi and VeHemiVoteDelegation are explicitly mentioned in System Overview and findings.
- [14613] audit-reports (GitHub directory) — no match: The provided text is a GitHub repository README page listing audit report folders (Bitcoin_Tunnel, Hemi_Token, veHEMI) but does not contain the actual audit report content with contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVaultFactory | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO03 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVaultUTXOLogicHelper | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO04 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | BTCToken | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO05 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | GlobalConfig | unmatched — not counted | — | mentioned in findings RES-HEMI-PRO06 and RES-HEMI-PRO07 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | BitcoinTunnelManager | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO08 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | IVaultFactory | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO03 | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | AddressWhitelist | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | GlobalConfig | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVault | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultFactory | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultFactoryHelper | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultState | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultStateFactory | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultStructs | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultUTXOLogicHelper | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleGlobalVaultConfig | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | BitcoinTunnelManager | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | BTCToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report_HEMI-TOK_FINAL_21.pdf | Hemi | unmatched — not counted | — | — | no |
| HemiToken - Final Report.pdf | Hemi | unmatched — not counted | — | — | no |
| Audit_Report_HEMI-VOT_FINAL_21.pdf | VeHemi | unmatched — not counted | — | System Overview mentions VeHemi.sol contract; findings reference src/VeHemi.sol | no |
| Audit_Report_HEMI-VOT_FINAL_21.pdf | VeHemiVoteDelegation | unmatched — not counted | — | System Overview mentions VeHemiVoteDelegation contract; findings reference src/VeHemiVoteDelegation.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x420000...000021` | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...00000f` | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000042` | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000015` | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000007` | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000010` | L2StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000016` | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000012` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000020` | SchemaRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000011` | SequencerFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [3139] Audit_Report_HEMI-TOK_FINAL_21.pdf
- [3140] HemiToken - Final Report.pdf
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf
- [14613] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
