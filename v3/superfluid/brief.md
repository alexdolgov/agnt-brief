# Agentic Audit Brief: Superfluid

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Superfluid (`superfluid`)
- Website: [https://superfluid.org/](https://superfluid.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,582,650.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Superfluid. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CFAv1Forwarder (`0xcfa132...ceb125`, chain 1)
- GDAv1Forwarder (`0x6da13b...d1de08`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CFAv1Forwarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393291 | `0xcfa132...ceb125` | ⚠️ Unaudited |
| GDAv1Forwarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393290 | `0x6da13b...d1de08` | ⚠️ Unaudited |

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
| [202408 Sherlock - super-boring-audit-report-1723469151.pdf](https://github.com/superfluid-finance/averagex-contracts-cloned/blob/master/packages/evm-contracts/audits/202408%20Sherlock%20-%20super-boring-audit-report-1723469151.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Superfluid-Scheduler-Report.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/automation-contracts/scheduler/audit/Superfluid-Scheduler-Report.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2021-01%20PeckShield%20-%20Audit-Report-Superfluid-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2022-02%20Halborn%20-%20Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [2023-12 Trail of Bits - Changes Since Audit.md](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2023-12%20Trail%20of%20Bits%20-%20Changes%20Since%20Audit.md) | Trail of Bits | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2023-12%20Trail%20of%20Bits%20-%20Comprehensive%20Report%20with%20Fix%20Review.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2026-01-27%20-%20Final%20-%20Superfluid%20Collaborative%20Audit%20Report%201769517931.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2026-05-25%20-%20Final%20-%20Superfluid%20Public%20Best%20Efforts%20Audit%20Contest%20Report%201779704022.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7697] 202408 Sherlock - super-boring-audit-report-1723469151.pdf — no match: Extracted from the report header: 'DatesAudited: July11-July17,2024' and 'Preparedon: August12,2024'. The audit date is the end date of the audit period.
- [7699] Superfluid-Scheduler-Report.pdf — no match: No reason recorded
- [7700] 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf — no match: No reason recorded
- [7701] 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf — no match: No reason recorded
- [7702] 2023-12 Trail of Bits - Changes Since Audit.md — no match: No reason recorded
- [7703] 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf — no match: No reason recorded
- [7704] 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf — no match: No reason recorded
- [7705] 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf — no match: Extracted 7 contract names from the scope section of the audit report. Audit date range April 10-13, 2026, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | SuperBoring | unmatched — not counted | — | mentioned in scope and findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | DistributionFeeDIP | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | QuadraticEmissionTIP | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | InitialStakingTIP | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | SleepPod | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | UniswapV3PoolTwapObserver | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | TorexCore | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | Torex | unmatched — not counted | — | mentioned in findings | no |
| 202408 Sherlock - super-boring-audit-report-1723469151.pdf | DistributionFeeManager | unmatched — not counted | — | mentioned in findings | no |
| Superfluid-Scheduler-Report.pdf | FlowScheduler | unmatched — not counted | — | — | no |
| Superfluid-Scheduler-Report.pdf | IFlowScheduler | unmatched — not counted | — | — | no |
| Superfluid-Scheduler-Report.pdf | IVestingScheduler | unmatched — not counted | — | — | no |
| Superfluid-Scheduler-Report.pdf | VestingScheduler | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | ConstantFlowAgreementV1 | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | FixedSizeData | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | ISuperApp | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | ISuperToken | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | ISuperfluidGovernance | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | ISuperfluidToken | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | SuperAppDefinitions | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | SuperToken | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | SuperTokenFactoryBase | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | SuperUpgrader | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | Superfluid | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | SuperfluidToken | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | UUPSProxiable | unmatched — not counted | — | — | no |
| 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf | UUPSProxy | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | AgreementBase | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | BatchLiquidator | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | ConstantFlowAgreementV1 | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | Definitions | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | InstandDistributionAgreementV1 | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | MaticBridgedNativeSuperToken | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | NativeSuperToken | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperToken | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperTokenFactory | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | Superfluid | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperfluidGovernanceBase | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperfluidGovernanceII | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperfluidOwnableGovernance | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | SuperfluidToken | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | Superupgrader | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | TOGA | unmatched — not counted | — | — | no |
| 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf | TokenCustodian | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | GeneralDistributionAgreementV1 | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | SafeGasLibrary | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | Superfluid | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | SuperfluidGovernanceBase | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | SuperfluidPool | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Changes Since Audit.md | SuperfluidPoolPlaceholder | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | GeneralDistributionAgreementV1 | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | SafeGasLibrary | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | SemanticMoney | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | SuperfluidPool | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | SuperfluidPoolDeployerLibrary | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | SuperfluidUpgradeableBeacon | unmatched — not counted | — | — | no |
| 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf | TokenMonad | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | AaveETHYieldBackend | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | AaveYieldBackend | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | CallUtils | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | ERC4626YieldBackend | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | SuperToken | unmatched — not counted | — | — | no |
| 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf | SuperfluidToken | unmatched — not counted | — | — | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | IClearMacroForwarderV1 | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | BlindMacroForwarder | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | ClearMacroBase | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | ClearMacroForwarderV1 | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | ClearMacroForwarderV1WithPermit2 | unmatched — not counted | — | listed in scope | no |
| 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf | ForwarderBase | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcfa132...ceb125` | CFAv1Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6da13b...d1de08` | GDAv1Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 71 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [7697] 202408 Sherlock - super-boring-audit-report-1723469151.pdf
- [7699] Superfluid-Scheduler-Report.pdf
- [7700] 2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf
- [7701] 2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf
- [7702] 2023-12 Trail of Bits - Changes Since Audit.md
- [7703] 2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf
- [7704] 2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf
- [7705] 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf

Fork inheritance lineage and inherited audits are included when available.
