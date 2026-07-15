# Agentic Audit Brief: Rho

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rho (`rho`)
- Website: [https://www.rho.trading/](https://www.rho.trading/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,288,113.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rho in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x461ffa...f7ba36`, chain 1)
- UnnamedContract (`0xfbb3c9...bdcd4a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6f93c4845e5f80b288c894e7936fd769e348d77c) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391450 | `0x461ffa...f7ba36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391449 | `0xfbb3c9...bdcd4a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf](https://audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Rho%20Labs/Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf) | Zokyo | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb](https://www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Rho Protocol Audit Report.pdf](https://oxor-io.github.io/public_audits/Rho/Rho%20Protocol%20Audit%20Report.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2811] audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf — no match: The provided text is just a header 'Oxorio Web Audit Reports' with no actual report content, contract names, or dates.
- [2812] Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf — no match: Extracted 34 contract names from the scope listing on page 5 of the audit report. The audit date is from the cover page: 'September 23rd 2025'.
- [2813] www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement (July 29, 2025).
- [14353] Rho Protocol Audit Report.pdf — no match: Extracted contracts from scope section (page 10) and findings. Audit date from cover page: APRIL 10, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ContractProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IContractProviderErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | MainContracts | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Configurator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IContractProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IConfigurator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IterableIdAddressSet | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ContractIds | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IIterableIdAddressSetErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ITimeProviderErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAddressValidatorErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IInterfaceValidationErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | AddressValidator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | TimeProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositary | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryLogic | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryStorage | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryStorage | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryStorageParamKeys | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryStorageErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Depositary | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryRelatedRoles | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAccessControlManagerErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | AccessControlManager | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAccessControlManager | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IRouterErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | RouterLogic | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Router | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AccessControlManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAccessControlManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAccessControlManagerErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Roles | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Configurator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ContractProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IConfigurator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IContractProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IContractProviderErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | OracleDomain | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ContractIds | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IIterableIdAddressSetErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IterableIdAddressSet | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | WithdrawalRequestsQueue | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | WithdrawalRequestsQueueErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RouterLogic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRouter | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRouterErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Router | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AddressValidator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAddressValidatorErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IInterfaceValidationErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IPausable | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ITimeProviderErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ReentrancyGuardUpgradeable | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | TimeProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultBaseLogic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultBase | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultBaseErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultBase | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC20Logic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC20Storage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IERC20Storage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC20 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RhoERC20 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC4626Logic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC4626 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC4626Errors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RhoERC4626 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AllocatorVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAllocatorVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IOffchainStrategiesVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IOffchainStrategiesVaultErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | OffchainStrategiesVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultStorage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultStorageErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Parameters | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Rho Protocol Audit Report.pdf | VAMM | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | SwapLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | FutureLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Future | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | MarketLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | RatePoint | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | CollateralManager | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Router | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | RouterLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | FutureStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Issuer | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | BaseFloatIndexOracle | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | ContractProvider | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | MarketStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | VAMMStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | ViewDataProvider | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | CompoundingRateMath | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | LinearRateMath | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | SettlingLogic | unmatched — not counted | — | mentioned in findings | no |
| Rho Protocol Audit Report.pdf | ProvisionsLimitChecker | unmatched — not counted | — | mentioned in findings | no |
| Rho Protocol Audit Report.pdf | LiquidityLogic | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 104 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [2811] audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf
- [2812] Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf
- [2813] www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb
- [14353] Rho Protocol Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
