# Agentic Audit Brief: DDEX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DDEX (`ddex`)
- Website: [https://ddex.io/](https://ddex.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $507,392.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DDEX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Hydro (`0x241e82c79452f51fbfc89fac6d912e021db1a3b7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 17 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| Auctions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb39889f4b38691249d5e67d5ecc844ce0297b8` | ⚠️ Unaudited |
| BootstrapInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ef74ca7e14c98ac6d6a4514ac3c525e336d3410` | ⚠️ Unaudited |
| CommonInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f99b2e2a676d7b56c4283d4291d97c01ead0bd4` | ⚠️ Unaudited |
| ConstPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb5b5f04865195a0bbb92d440fe8d6b9ad9c567` | ⚠️ Unaudited |
| DaiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d740cd595dd84c427fd4f8b1346580ace447b1` | ⚠️ Unaudited |
| EtherBootstrapInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3903704e832248929c06a10aaac0a12bc1234c74` | ⚠️ Unaudited |
| EthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8984f1cff1d614a7404b0cfe97c6fa9110b93bd2` | ⚠️ Unaudited |
| FeedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bde1ebe3cc81314ceeb19d41ef774f1185ca44c` | ⚠️ Unaudited |
| HybridExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb4b49c0d6e9db2164d94ce48853bf77c4d883e` | ⚠️ Unaudited |
| Hydro | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383630 | `0x241e82c79452f51fbfc89fac6d912e021db1a3b7` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a8f7066806e5a825a6acfe7b33691e6dec7d9d` | ⚠️ Unaudited |
| MultiSigWalletWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15367df8a39ea06f8f81ed35d49e056ee05f3b7` | ⚠️ Unaudited |
| MultiSigWalletWithTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a294e9b3af4c3579ea6584f3e26914b2daa72ca` | ⚠️ Unaudited |
| OperationsComponent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723091df82333033f1b646fe1ad7bbbf9cbe420c` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c0dfc51d25b7845ca573fe548b12dc366be90b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74622073a4821dbfd046e9aa2ccf691341a076e1` | ⚠️ Unaudited |
| StableCoinInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90691126ec8dba1a6400ea03beab8ddb1c270210` | ⚠️ Unaudited |

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
| [hydro_audit_report_2019_14_en_1_0.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/2.0/hydro_audit_report_2019_14_en_1_0.pdf) | unknown | Audit | 2019-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Hydro_MultiSigWallet_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_MultiSigWallet_Report_EN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Hydro_Protocol_Report_CN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_CN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Hydro_Protocol_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_EN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19674] hydro_audit_report_2019_14_en_1_0.pdf — no match: Extracted contract names from findings sections where file paths are explicitly mentioned. Audit date from cover page and completion date.
- [19676] Hydro_MultiSigWallet_Report_EN.pdf — no match: Scope table lists two contracts: MultiSigWallet and MultiSigWalletWithLock. Audit date from title.
- [19677] Hydro_Protocol_Report_CN.pdf — no match: Extracted contracts from scope section and file listings. Audit date from cover page.
- [19678] Hydro_Protocol_Report_EN.pdf — no match: Extracted from scope table and file list in section 2.2. Date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hydro_audit_report_2019_14_en_1_0.pdf | DaiPriceOracle | unmatched — not counted | — | mentioned in finding PVE-001 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | EthPriceOracle | unmatched — not counted | — | mentioned in finding PVE-001 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | Transfer | unmatched — not counted | — | mentioned in finding PVE-002 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | LendingPool | unmatched — not counted | — | mentioned in findings PVE-002, PVE-008 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | Auctions | unmatched — not counted | — | mentioned in findings PVE-003, PVE-004, PVE-005 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | ExternalFunctions | unmatched — not counted | — | mentioned in finding PVE-005 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | StandardToken | unmatched — not counted | — | mentioned in finding PVE-007 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | LendingPoolToken | unmatched — not counted | — | mentioned in finding PVE-009 | no |
| hydro_audit_report_2019_14_en_1_0.pdf | OperationsComponent | unmatched — not counted | — | mentioned in finding PVE-010 | no |
| Hydro_MultiSigWallet_Report_EN.pdf | MultiSigWallet | unmatched — not counted | — | listed in scope table | no |
| Hydro_MultiSigWallet_Report_EN.pdf | MultiSigWalletWithLock | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_CN.pdf | HybridExchange | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | HotDistribution | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibDiscount | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibExchangeErrors | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibOwnable | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibRelayer | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibSignature | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | LibWhitelist | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_CN.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Hydro_Protocol_Report_EN.pdf | HybridExchange | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | Proxy | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | LibDiscount | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | LibExchangeErrors | unmatched — not counted | — | listed in scope table | no |
| Hydro_Protocol_Report_EN.pdf | LibMath | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | LibOrder | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | LibOwnable | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | LibRelayer | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | LibSignature | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | LibWhitelist | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | SafeMath | unmatched — not counted | — | listed in file list | no |
| Hydro_Protocol_Report_EN.pdf | HotDistribution | unmatched — not counted | — | mentioned in findings and scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x241e82c79452f51fbfc89fac6d912e021db1a3b7` | Hydro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [19674] hydro_audit_report_2019_14_en_1_0.pdf
- [19676] Hydro_MultiSigWallet_Report_EN.pdf
- [19677] Hydro_Protocol_Report_CN.pdf
- [19678] Hydro_Protocol_Report_EN.pdf

Fork inheritance lineage and inherited audits are included when available.
