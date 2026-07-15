# Agentic Audit Brief: CVI Finance

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

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 4 unique implementations (5 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $129,169.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CVI Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum. Structural roles: 3 core, 1 supporting, 1 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (1), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ClonableBeaconProxy (`0x07e49d...875283`, chain 42161)
- GnosisSafeProxy (`0x223013...a02ada`, chain 42161)
- GnosisSafeProxy (`0x7f4b13...d96cc8`, chain 42161)
- TransparentUpgradeableProxy (`0x8096ad...27c722`, chain 42161)
- TransparentUpgradeableProxy (`0xfdeb59...fcc506`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CVIUSDCThetaVault | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-234751 | `0xfdeb59...fcc506` | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234752 | `0x8096ad...27c722` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-234749 (2 proxies) | 2 deployments: arbitrum `0x223013...a02ada`; arbitrum `0x7f4b13...d96cc8` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234750 | `0x07e49d...875283` | ⚠️ Unaudited |

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
| [usdt-audit.pdf](https://v2.cvi.finance/files/usdt-audit.pdf) | CertiK | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [eth-audit.pdf](https://v2.cvi.finance/files/eth-audit.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [sourcehat.com/audits/CVI](https://sourcehat.com/audits/CVI) | SourceHat | Audit | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [CVI_Zokyo_audit_report_30thNov_2023.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/CVI/CVI_Zokyo_audit_report_30thNov_2023.pdf) | Zokyo | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12971] usdt-audit.pdf — no match: No reason recorded
- [12972] eth-audit.pdf — no match: No reason recorded
- [12973] sourcehat.com/audits/CVI — no match: No reason recorded
- [12974] CVI_Zokyo_audit_report_30thNov_2023.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| usdt-audit.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| usdt-audit.pdf | CVIOracle | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ETHPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| usdt-audit.pdf | FeesModel | unmatched — not counted | — | — | no |
| usdt-audit.pdf | GOVI | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ICVIOracle | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IETHPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesCalculator | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesCollector | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesModel | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ILiquidation | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IRewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IStaking | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IWETH | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Liquidation | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Platform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Rewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath16 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath8 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath80 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Staking | unmatched — not counted | — | — | no |
| usdt-audit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | WETH9 | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorV2V3Interface | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracle | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracleV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracleV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ETHPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | ETHStakingProxy | unmatched — not counted | — | — | no |
| eth-audit.pdf | ExtractETH | unmatched — not counted | — | — | no |
| eth-audit.pdf | FactorRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculatorV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculatorV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesModel | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesModelV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | GOVI | unmatched — not counted | — | — | no |
| eth-audit.pdf | GOVIAirdrop | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracle | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracleV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracleV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IETHPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | IETHStakingProxy | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFactorRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculator | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculatorV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculatorV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCollector | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesModel | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesModelV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ILiquidation | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPlatformV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPositionRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPositionRewardsV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IStaking | unmatched — not counted | — | — | no |
| eth-audit.pdf | IWETH | unmatched — not counted | — | — | no |
| eth-audit.pdf | Liquidation | unmatched — not counted | — | — | no |
| eth-audit.pdf | Platform | unmatched — not counted | — | — | no |
| eth-audit.pdf | PlatformV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | PositionRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | PositionRewardsV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | Rewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath16 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath168 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath8 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath80 | unmatched — not counted | — | — | no |
| eth-audit.pdf | Staking | unmatched — not counted | — | — | no |
| eth-audit.pdf | StakingContracts | unmatched — not counted | — | — | no |
| eth-audit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | WETH9 | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | CVIOracle | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | FeesCalculator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | FeesCollector | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | GOVI | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | GOVIAirdrop | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | KeepersFeeVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Liquidation | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Platform | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | PlatformMigrator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | PositionRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Rebaser | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | RequestFeesCalculator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Staking | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | StakingRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | StakingVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | ThetaVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | ThetaVaultRequestFulfiller | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Treasury | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | VolTokenRequestFulfiller | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | VolatilityToken | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | CVIOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | CVIReverseOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ETHVolOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | FeesCollector | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | HedgedThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | KeepersBased | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | KeepersFeeVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Liquidation | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | LowLatencyRequestFulfiller | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | MegaThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Platform | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformHelper | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformMigrator | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PositionRewards | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Rebaser | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | RebaserV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ReferralManager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | RequestFulfiller | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultV3Manager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Treasury | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UCVIOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UniswapHelper | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UniswapV3LiquidityManager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityToken | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityTokenRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityTokenV3 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xfdeb59...fcc506` | CVIUSDCThetaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8096ad...27c722` | CVIUSDCVolatilityTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x07e49d...875283` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 127 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12971] usdt-audit.pdf
- [12972] eth-audit.pdf
- [12973] sourcehat.com/audits/CVI
- [12974] CVI_Zokyo_audit_report_30thNov_2023.pdf

Fork inheritance lineage and inherited audits are included when available.
