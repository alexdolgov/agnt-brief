# Agentic Audit Brief: ZeroLend

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: ZeroLend (`zerolend`)
- Website: [https://zerolend.xyz/](https://zerolend.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea, zksync-era
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $12,476,067.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ZeroLend in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Lineage

This project reuses audited code from **Aave** (`aave`) in the AaveOracle, WalletBalanceProvider subsystem.
1 audits inherited from `aave`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x861cc6...16aeec`, chain 324)
- UnnamedContract (`0x00000a...c6599d`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 9 (8 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 3 unknown
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398195 | `0x861cc6...16aeec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398197 | `0x00000a...c6599d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [zerolend_report_depcheck_final.pdf](https://github.com/zerolend/audits/blob/main/mundus/zerolend_report_depcheck_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 67 | n/a |
| [27-01-2022_SigmaPrime_AaveV3.pdf](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Aave_V3_Formal_Verification_Report_Jan2022.pdf](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/certora/Aave_V3_Formal_Verification_Report_Jan2022.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [14-01-2022_PeckShield_AaveV3.pdf](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn](https://www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf](https://github.com/zerolend/audits/blob/main/peckshield/PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/aave/aave-v3-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Inherited from Aave — forked code, scoped to AaveOracle, WalletBalanceProvider | contract_name | no match | 0 | 0 | 0 | 60 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11746] zerolend_report_depcheck_final.pdf — no match: No reason recorded
- [11749] 27-01-2022_SigmaPrime_AaveV3.pdf — no match: Extracted contract names from findings and file paths. Audit date from cover page: 'April, 2023' -> last day of month.
- [11750] Aave_V3_Formal_Verification_Report_Jan2022.pdf — no match: Scope explicitly lists StableDebtToken.sol, VariableDebtToken.sol, AToken.sol, ReserveConfiguration.sol, UserConfiguration.sol, and Pool.sol. Audit date from 'Jan. 24, 2022'.
- [11751] 14-01-2022_PeckShield_AaveV3.pdf — no match: Extracted contract names from findings sections where they are explicitly mentioned as targets. Audit date from cover page and table.
- [11752] 07-01-2022_TrailOfBits_AaveV3.pdf — no match: Extracted 25 contracts from the scope section and findings targets. Audit date from cover page.
- [11753] 01-11-2021_OpenZeppelin_AaveV3.pdf — no match: Scope includes all files in protocol and interfaces directories of aave-v3-core repository at commit 14f6148e21b477d78347db6a1603039c9559e275. No explicit date found in report text.
- [11760] www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn — no match: The document is a case study, not an audit report. It mentions a staking contract but does not provide a detailed scope of contracts audited.
- [11761] PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf — no match: No reason recorded
- [29721] 27-01-2022_ABDK_AaveV3.pdf — no match: The audit report explicitly lists 59 files in scope in the Introduction section (pages 25-27). All contract names were extracted from the file paths. The audit date is clearly stated on the cover page as '26th January 2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| zerolend_report_depcheck_final.pdf | ACLManager | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | AaveOracle | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | BUSD-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | BUSD-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | BUSD-VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | BorrowLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | BridgeLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ConfiguratorLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | DelegationAwareAToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | EModeLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | EmissionManager | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | FlashLoanLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | GhoATokenImplementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | GhoDiscountRateStrategy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | GhoOracle | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | GhoToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | GhoVariableDebtTokenImplementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | IncentivesProxy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | IncentivesV2-Implementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | LUSD-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | LiquidationLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Multisig | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ONEZ-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ONEZ-VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PEPE-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PEPE-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Pool-Implementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Pool-Proxy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolAddressesProvider | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolConfigurator-Implementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolConfigurator-Proxy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolDataProvider | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | PoolLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ReserveStrategy-rateStrategyStableOne | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ReserveStrategy-rateStrategyStableTwo | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ReserveStrategy-rateStrategyVolatileOne | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | ReservesSetupHelper | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | StableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | SupplyLogic | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Timelock | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | TransferStrategy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Treasury-Controller | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | Treasury-Implementation | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | TreasuryProxy | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDC-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDC-StableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDC-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDC-VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDT-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDT-StableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDT-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | USDT-VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | UiIncentiveDataProviderV3 | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | UiPoolDataProviderV3 | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WBTC-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WBTC-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WETH-AToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WETH-StableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WETH-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WETH-VariableDebtToken | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WalletBalanceProvider | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | WrappedTokenGatewayV3 | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | cbETH-USD | unmatched — not counted | — | — | no |
| zerolend_report_depcheck_final.pdf | uniV2LP-USD | unmatched — not counted | — | — | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in finding AAV3-01 and AAV3-04 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | AToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Pool | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | mentioned in findings AAV3-06 and AAV3-10 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | WadRayMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | PercentageMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings AAV3-07 and AAV3-09 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | mentioned in finding AAV3-08 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in findings AAV3-05 and AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings AAV3-03 and AAV3-11 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Helpers | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | IAToken | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Aave_V3_Formal_Verification_Report_Jan2022.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 14-01-2022_PeckShield_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | AaveOracle | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | ACLManager | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | Pool | unmatched — not counted | — | Target in findings PVE-002 and PVE-007 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | Target in finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | Target in finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | Target in finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | Target in findings PVE-004 and PVE-008 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | Target in finding PVE-005 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | GenericLogic | unmatched — not counted | — | Target in finding PVE-006 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | Target in findings PVE-008 and PVE-009 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | EModeLogic | unmatched — not counted | — | Target in finding PVE-010 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | Target in finding PVE-011 | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | Pool | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | AToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | mentioned in findings L01, L04, N04, N07 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | mentioned in finding L01 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ACLManager | unmatched — not counted | — | mentioned in findings N05, N07 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | mentioned in findings N02, N04 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | mentioned in findings L05, N05, N06, N14 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | InitializableUpgradeabilityProxy | unmatched — not counted | — | mentioned in finding L05 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in finding M01 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in findings M01, L03, L06 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | mentioned in findings M01, N08, N10, N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings L07, N03 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | GenericLogic | unmatched — not counted | — | mentioned in finding N03 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings H02, N08, N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | MathUtils | unmatched — not counted | — | mentioned in finding N07 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | mentioned in finding N08 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | mentioned in finding N11 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveConfigurationMap | unmatched — not counted | — | mentioned in finding N11 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in finding N08 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in findings N05, N08, N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | mentioned in findings L04, N08 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IFlashloanReceiver | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IAToken | unmatched — not counted | — | mentioned in finding N13 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | mentioned in finding N03 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | mentioned in finding L02 | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolStorage | unmatched — not counted | — | mentioned in finding N06 | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | AdminVoting | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | BaseDelegate | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | CurveProxy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | ERC20Delegate | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | LiquidationManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | PrismaToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | StabilityPool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | Vault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | WETHDelegate | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf | WrappedLendingCollateral | unmatched — not counted | — | — | no |
| 27-01-2022_ABDK_AaveV3.pdf | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IFlashLoanSimpleReceiver | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IACLManager | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IChainlinkAggregator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ICreditDelegationToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IDelegationToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IERC20WithPermit | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IInitializableAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IInitializableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracleGetter | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ISequencerOracle | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolStorage | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |

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
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 234 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: n/a

Zero-match audit list:

- [11746] zerolend_report_depcheck_final.pdf
- [11749] 27-01-2022_SigmaPrime_AaveV3.pdf
- [11750] Aave_V3_Formal_Verification_Report_Jan2022.pdf
- [11751] 14-01-2022_PeckShield_AaveV3.pdf
- [11752] 07-01-2022_TrailOfBits_AaveV3.pdf
- [11753] 01-11-2021_OpenZeppelin_AaveV3.pdf
- [11760] www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn
- [11761] PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf
- [29721] 27-01-2022_ABDK_AaveV3.pdf

Fork inheritance lineage and inherited audits are included when available.
