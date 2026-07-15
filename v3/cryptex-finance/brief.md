# Agentic Audit Brief: Cryptex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 9 (1 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Cryptex Finance (`cryptex-finance`)
- Website: [https://cryptex.finance/](https://cryptex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $493,739.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cryptex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc165 (2), ownable (2), accesscontrol (1), erc20 (1), pausable (1)
- Frameworks: chainlink (2), openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ETHVaultHandler (`0x717170...ac1381`, chain 1)
- GovernorBeta (`0x874c5d...196d5b`, chain 1)
- TCAP (`0x16c52c...50afa4`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 2 | 66.7% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETHVaultHandler | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-234520 | `0x717170...ac1381` | ✅ Audited |
| TCAP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234518 | `0x16c52c...50afa4` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernorBeta | governance | project_anchor | own_supporting | 0 | ethereum | unit-234521 | `0x874c5d...196d5b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...000000` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [www.cryptex.finance/security](https://www.cryptex.finance/security) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex_-_Final_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Final_Report.pdf) | Unknown | Audit | 2021-04 | stale | Direct | n/a | matched | 2 | 0 | 0 | 12 | n/a |
| [Cryptex_-_Staking_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Staking_Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Cryptex-security-review.md](https://github.com/pashov/audits/blob/master/team/md/Cryptex-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Cryptex-security-review.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement period (September 30th - October 4th).
- [12958] www.cryptex.finance/security — no match: The provided text is a marketing page for Cryptex Finance's security section, listing audit firms (CCantina, Pashov Audit Group, Quantstamp) and audit names (TCAP v2 Audit, System Audit, Core Audit, Staking Audit) but does not contain specific contract names, file paths, or a scope section. No contracts in scope are identifiable.
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement: October 4th.
- [12961] Cryptex_-_Final_Report.pdf — matched: No reason recorded
- [12962] Cryptex_-_Staking_Report.pdf — no match: No reason recorded
- [12963] Cryptex-security-review.md — no match: Scope section explicitly lists 11 smart contracts. No audit date found in the provided text.
- [12964] Cryptex-security-review.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date from header: September 30th - October 4th, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope in section 4.5.4 | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_-_Final_Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Ctx | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ERC20VaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ETHVaultHandler | own contract | ETHVaultHandler (selected) `0x717170...ac1381` — deployed 2021-04-06 07:47:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IVaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IWETH | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | LiquidityReward | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Orchestrator | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | RewardHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | SafeMath | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TCAP | own contract | TCAP (selected) `0x16c52c...50afa4` — deployed 2021-04-06 07:42:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | Timelock | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TreasuryVester | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | Delegator | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | DelegatorFactory | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | IGovernanceToken | unmatched — not counted | — | — | no |
| Cryptex-security-review.md | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x874c5d...196d5b` | GovernorBeta | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf
- [12958] www.cryptex.finance/security
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf
- [12962] Cryptex_-_Staking_Report.pdf
- [12963] Cryptex-security-review.md
- [12964] Cryptex-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
