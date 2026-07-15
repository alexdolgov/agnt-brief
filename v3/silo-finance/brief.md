# Agentic Audit Brief: Silo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 18 (1 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Silo Finance (`silo-finance`)
- Website: [https://app.silo.finance](https://app.silo.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, optimism, sonic
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,664,510.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Silo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, avalanche, base, ethereum, optimism, sonic. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), ownable (3), erc20permit (2), ownable2step (2), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xdd4c6f...221a91`, chain 1)
- UnnamedContract (`0xa6521c...f6df55`, chain 10)
- UnnamedContract (`0x53f753...81e698`, chain 146)
- UnnamedContract (`0xb098af...3e61db`, chain 146)
- UnnamedContract (`0x57bd5c...31dce7`, chain 8453)
- UnnamedContract (`0x0341c0...44e391`, chain 42161)
- UnnamedContract (`0x09f569...ef2214`, chain 42161)
- UnnamedContract (`0xf3775f...3e6c8a`, chain 42161)
- UnnamedContract (`0xbb4287...e2dc70`, chain 43114)
- SiloGovernanceToken (`0x6f8031...8ab1f8`, chain 1)
- SiloToken (`0xf0b2dd...486bb0`, chain 1)
- XSilo (`0x445176...e1dcc9`, chain 146)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 3 aging, 3 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SiloGovernanceToken | token | project_anchor | own_supporting | 0 | ethereum | unit-254801 | `0x6f8031...8ab1f8` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SiloToken | token | project_anchor | own_supporting | 0 | ethereum | unit-254805 | `0xf0b2dd...486bb0` | ⚠️ Unaudited |
| XSilo | unknown | project_anchor | own_supporting | 0 | sonic | unit-254807 | `0x445176...e1dcc9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254804 | `0xdd4c6f...221a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-254806 | `0xa6521c...f6df55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-254808 | `0x53f753...81e698` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-254809 | `0xb098af...3e61db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254814 | `0x57bd5c...31dce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254810 | `0x0341c0...44e391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254811 | `0x09f569...ef2214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254812 | `0xf3775f...3e6c8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-254813 | `0xbb4287...e2dc70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xJCN Audit GitHub.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/0xJCN%20Audit%20%C2%B7%20GitHub.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/Silo%20-%20Silo%20-%20Aggregator%20and%20Manageable%20Oracle%20-%20Final%20Report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [Silo Enterprise Continuous Audit.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/Silo%20Enterprise%20Continuous%20Audit.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Kink_Interest_Rate_Model_V2_2025_10_16.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/develop/silo-core/docs/Kink_Interest_Rate_Model_V2_2025_10_16.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view](https://drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view](https://drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 46 | high |
| [drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view](https://drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view) | unknown | Audit | 2022-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 54 | high |
| [Silo - Defaulting Liquidations - Final Report .pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/Silo%20-%20Defaulting%20Liquidations%20-%20Final%20Report%20.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 27 | n/a |
| [25-11-2024_Certora.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/reports/25-11-2024_Certora.pdf) | Certora | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Silo - Liquidation-by-Defaulting - Draft Report.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/reports/Silo%20-%20Liquidation-by-Defaulting%20-%20Draft%20Report.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [2026-02_Security Review_Silo Finance_Silo_v3.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/2026-02_Security%20Review_Silo%20Finance_Silo_v3.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Silo - Description - Final Report (2ad3aec).pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/Silo%20-%20Description%20-%20Final%20Report%20(2ad3aec).pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [report-cli-cantina-silo-finance-0124.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/report-cli-cantina-silo-finance-0124.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf](https://docs.silo.finance/assets/files/SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf](https://docs.silo.finance/assets/files/Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [prover.certora.com/output/40726/5ded49442eb744f48db2be31fdf4bcca](https://prover.certora.com/output/40726/5ded49442eb744f48db2be31fdf4bcca?anonymousKey=3ac339bd3d9c26dba41c4ac84c680239a332ef9) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [prover.certora.com/output/40726/b781ebc4e8dd4625befda44aef45c3d6](https://prover.certora.com/output/40726/b781ebc4e8dd4625befda44aef45c3d6?anonymousKey=b2d48d6ff66d30dc474092a6234b41de07fe83b9) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [prover.certora.com/output/40726/df2a8289a92642b798925e5ee028f102](https://prover.certora.com/output/40726/df2a8289a92642b798925e5ee028f102?anonymousKey=91b09db29d355f1a326f14d874985a724c46cee0) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4906] 0xJCN Audit GitHub.pdf — no match: The report does not list specific contract names or file paths in scope; it only mentions a diff-based review of modified contracts for Silo V2 4.0.0 release without naming individual contracts.
- [4909] Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf — no match: No reason recorded
- [4910] Silo Enterprise Continuous Audit.pdf — no match: No reason recorded
- [4914] Kink_Interest_Rate_Model_V2_2025_10_16.pdf — no match: The document is a mathematical description of an interest rate model (Silo Interest Rate Model) with pseudocode, but does not list any specific smart contracts, source files, or modules in scope for an audit. No contract names are identifiable.
- [15217] drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view — no match: Extracted 15 contract names from the scope section on page 2. Audit date inferred from 'July 2022' in the title and summary.
- [15218] drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view — no match: Extracted contract names from the scope section listing files and from findings that reference additional contracts not in the initial list.
- [15219] drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view — matched: Extracted from Quantstamp audit report for Silo 2. Scope includes all contracts listed in the file signatures appendix and those referenced in findings. Audit date from changelog: 2022-07-14 final reaudit.
- [15220] Silo - Defaulting Liquidations - Final Report .pdf — no match: No reason recorded
- [15221] 25-11-2024_Certora.pdf — no match: No reason recorded
- [15222] Silo - Liquidation-by-Defaulting - Draft Report.pdf — no match: No reason recorded
- [15224] 2026-02_Security Review_Silo Finance_Silo_v3.pdf — no match: No reason recorded
- [15225] Silo - Description - Final Report (2ad3aec).pdf — no match: No reason recorded
- [15228] report-cli-cantina-silo-finance-0124.pdf — no match: No reason recorded
- [15238] SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf — no match: No reason recorded
- [15239] Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf — no match: No reason recorded
- [15240] prover.certora.com/output/40726/5ded49442eb744f48db2be31fdf4bcca — no match: The provided text only contains 'Certora - Prover' which is not an audit report with contract names or scope information.
- [15241] prover.certora.com/output/40726/b781ebc4e8dd4625befda44aef45c3d6 — no match: The provided text only contains 'Certora - Prover' which is not an audit report with contract names or scope information.
- [15242] prover.certora.com/output/40726/df2a8289a92642b798925e5ee028f102 — no match: The provided text only contains 'Certora - Prover' which is not an audit report with contract names or scope information.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | Aggregator | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ChainlinkV3Oracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | DIAOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ERC4626Oracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ERC4626OracleHardcodeQuote | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ERC4626OracleWithUnderlying | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ManageableOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | ManageableOracleFactory | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | OracleForQA | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | OracleForwarder | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | PTLinearOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | PendleLPTOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | PendleWrapperLPTToAssetOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | PendleWrapperLPTToSyOracle | unmatched — not counted | — | — | no |
| Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf | sAVAXOracle | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | GaugeHookReceiver | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | LeverageUsingSiloFlashloan | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | PartialLiquidationByDefaulting | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | SiloConfig | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | SiloDeployer | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | SiloRouterV2Implementation | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | SiloVault | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | UniswapV3OracleFactory | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | VaultIncentivesModule | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | Views | unmatched — not counted | — | — | no |
| Silo Enterprise Continuous Audit.pdf | Whitelist | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | EasyMath | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | Solvency | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | BalancerV2PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | UniswapV3PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | GuardedLaunch | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | Manageable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | ShareCollateralToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | ShareDebtToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | TwoStepOwnable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | PriceProvidersRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | Silo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | SiloFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | SiloRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view | TokensFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IBaseSilo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IERC20R | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IFlashLiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IGuardedLaunch | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | INotificationReceiver | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IPriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IPriceProvidersRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IShareToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ISilo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ISiloFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ISiloRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ISwapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ITokensFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | EasyMath | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ModelStats | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | Ping | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | PRBMathCommon | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | PRBMathSD59x18 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | Solvency | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | TokenSymbol | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | BalancerV2PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | TwoStepOwnable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | UniswapV3PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ERC20R | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | GuardedLaunch | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | Managable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ShareCollateralToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ShareDebtToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | ShareToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | BaseSilo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | Error | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | PriceProvidersRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | Silo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | SiloFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | SiloLens | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | SiloRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | SiloRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | TokensFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | LiquidationReentrancyGuard | unmatched — not counted | — | mentioned in findings | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | InterestRateDataResolver | unmatched — not counted | — | mentioned in findings | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | TokenHelper | unmatched — not counted | — | mentioned in findings | no |
| drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view | IERC20Like | unmatched — not counted | — | mentioned in findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | BaseSilo | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloLens | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Error | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | InterestRateModel | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TokensFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | PriceProvidersRepository | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloRepository | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Silo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloRouter | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IPriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ITokensFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ISiloFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IBaseSilo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ISwapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | INotificationReceiver | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ISilo | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IERC20R | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IShareToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IPriceProvidersRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ISiloRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IGuardedLaunch | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | GuardedLaunch | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ShareCollateralToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ShareDebtToken | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Managable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ShareToken | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TwoStepOwnable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ERC20R | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | MockSiloGovernor | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Forwarder | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | MockPriceFetchersRepository | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | MockLiquidationHelper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TestTokenSymbol | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | MockERC20 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | PRBMathSD59x18 | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | ModelStats | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | PRBMathCommon | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Solvency | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | Ping | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TokenSymbol | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | EasyMath | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloGovernanceToken | own contract | SiloGovernanceToken (selected) `0x6f8031...8ab1f8` — deployed 2021-11-30 21:27:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloGovernor | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | PriceProvider | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | UniswapV3PriceProvider | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | BalancerV2PriceProvider | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | SiloSnapshotWrapper | unmatched — not counted | — | mentioned in findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TreasuryVester | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | LiquidationHelper | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | BalancerV2Swap | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | UniswapV3Swap | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view | TokenHelper | unmatched — not counted | — | mentioned in findings | no |
| Silo - Defaulting Liquidations - Final Report .pdf | Actions | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | BaseIncentivesController | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | DefaultingRepayLib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | DefaultingSiloLogic | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | DistributionManager | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | EventsLib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | Hook | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | PartialLiquidation | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | PartialLiquidationByDefaulting | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | PartialLiquidationLib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | Silo | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloConfig | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloCoreContracts | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloERC4626Lib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloFactory | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloHookV2 | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloHookV3 | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloIncentivesController | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloIncentivesControllerCompatible | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloIncentivesControllerFactory | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloLendingLib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloLens | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloLensLib | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloRouterV2Implementation | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | SiloVaultsFactory | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | Views | unmatched — not counted | — | — | no |
| Silo - Defaulting Liquidations - Final Report .pdf | Whitelist | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | Actions | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | Actions.sol | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | InterestRateModelV2 | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | ShareDebtToken | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | ShareDebtToken.sol | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | Silo | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | SiloConfig | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | SiloLendingLib | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | SiloMathLib | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | SiloRounter.sol | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | SiloRouter | unmatched — not counted | — | — | no |
| 25-11-2024_Certora.pdf | silo.sol | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | Actions | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | BaseIncentivesController | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | DefaultingRepayLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | DefaultingSiloLogic | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | DistributionManager | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | EventsLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | GaugeHookReceiver | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | Hook | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | PartialLiquidation | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | PartialLiquidationByDefaulting | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | PartialLiquidationLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | PendleRewardsClaimer | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | Silo | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloConfig | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloCoreContracts | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloERC4626Lib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloFactory | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloHookV2 | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloHookV3 | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloIncentivesController | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloIncentivesControllerCompatible | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloIncentivesControllerFactory | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloLendingLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloLens | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloLensLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloRouterV2Implementation | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloSolvencyLib | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | SiloVaultsFactory | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | Views | unmatched — not counted | — | — | no |
| Silo - Liquidation-by-Defaulting - Draft Report.pdf | Whitelist | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | BaseIncentivesController | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | DefaultingRepayLib | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | PartialLiquidation | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | PartialLiquidationByDefaulting | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | PartialLiquidationLib | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | Silo | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | SiloConfig | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | SiloHookV2 | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | SiloIncentivesController | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | SiloIncentivesControllerFactory | unmatched — not counted | — | — | no |
| 2026-02_Security Review_Silo Finance_Silo_v3.pdf | Whitelist | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | Actions | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | BaseIncentivesController | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | DefaultingRepayLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | DefaultingSiloLogic | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | DistributionManager | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | EventsLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | GaugeHookReceiver | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | Hook | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | PartialLiquidation | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | PartialLiquidationByDefaulting | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | PartialLiquidationLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | PendleRewardsClaimer | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | Silo | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloConfig | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloCoreContracts | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloERC4626Lib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloFactory | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloHookV2 | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloHookV3 | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloIncentivesController | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloIncentivesControllerCompatible | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloIncentivesControllerFactory | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloLendingLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloLens | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloLensLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloRouterV2Implementation | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloSolvencyLib | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | SiloVaultsFactory | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | Views | unmatched — not counted | — | — | no |
| Silo - Description - Final Report (2ad3aec).pdf | Whitelist | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | DefaultingRepayLib.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | DefaultingSiloLogic.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | PartialLiquidation.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | PartialLiquidationByDefaulting.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | Silo.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | SiloConfig.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | SiloHookV2.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | SiloIncentivesController.sol | unmatched — not counted | — | — | no |
| report-cli-cantina-silo-finance-0124.pdf | SiloIncentivesControllerFactory.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | Actions.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | DexSwap.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | GaugeHookReceiver.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | Hook.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | InterestRateModelV2.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | LiquidationHelper.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | PartialLiquidationLib.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | RevertLib.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | Rounding.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | ShareCollateralToken.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | ShareCollateralTokenLib.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | Silo.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloConfig.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloDeployer.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloERC4626Lib.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloFactory.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloHookReceiver.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloLendingLib.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloLens.sol | unmatched — not counted | — | — | no |
| SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf | SiloMathLib.sol | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | GeneralSwapModule | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | LeverageRouter | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | LeverageTxState | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | LeverageUsingSiloFlashloan | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | LeverageUsingSiloFlashloanWithGeneralSwap | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | RescueModule | unmatched — not counted | — | — | no |
| Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf | RevenueModule | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf0b2dd...486bb0` | SiloToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x445176...e1dcc9` | XSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 287 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=5
- Match method counts: unique_name=1

Zero-match audit list:

- [4906] 0xJCN Audit GitHub.pdf
- [4909] Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf
- [4910] Silo Enterprise Continuous Audit.pdf
- [4914] Kink_Interest_Rate_Model_V2_2025_10_16.pdf
- [15217] drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view
- [15218] drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view
- [15220] Silo - Defaulting Liquidations - Final Report .pdf
- [15221] 25-11-2024_Certora.pdf
- [15222] Silo - Liquidation-by-Defaulting - Draft Report.pdf
- [15224] 2026-02_Security Review_Silo Finance_Silo_v3.pdf
- [15225] Silo - Description - Final Report (2ad3aec).pdf
- [15228] report-cli-cantina-silo-finance-0124.pdf
- [15238] SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf
- [15239] Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf
- [15240] prover.certora.com/output/40726/5ded49442eb744f48db2be31fdf4bcca
- [15241] prover.certora.com/output/40726/b781ebc4e8dd4625befda44aef45c3d6
- [15242] prover.certora.com/output/40726/df2a8289a92642b798925e5ee028f102

Fork inheritance lineage and inherited audits are included when available.
