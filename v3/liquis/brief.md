# Agentic Audit Brief: Liquis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Liquis (`liquis`)
- Website: [https://liquis.app/](https://liquis.app/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (34 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $321,069.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Liquis in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 34
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea693...5acb23` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631e58...1ddcf2` | ⚠️ Unaudited |
| BoosterHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea2ef...d171f4` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948a60...c0a6cb` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96bce...97856a` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c6f0...1c4ad8` | ⚠️ Unaudited |
| EthInvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a663...dd2b48` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441745...35aaf2` | ⚠️ Unaudited |
| FlashOptionsExerciser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x036c45...e95d40` | ⚠️ Unaudited |
| LiqLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x748a0f...03e1cb` | ⚠️ Unaudited |
| LiqMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e8617...2b805e` | ⚠️ Unaudited |
| LiqToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82fd4...4aa408` | ⚠️ Unaudited |
| LiquisClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad161b...70431b` | ⚠️ Unaudited |
| LiquisViewHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58dd6...9b9fe4` | ⚠️ Unaudited |
| LiqVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2f48cb...c69693`; ethereum `0x4c715f...031f70`; ethereum `0x545210...234670`; ethereum `0x5ecaed...f7617e`; ethereum `0x9bc6dc...646172`; ethereum `0xae566f...e5cf9d`; ethereum `0xf97964...8b718f` | ⚠️ Unaudited |
| LitDepositorHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4512c8...d373b5`; ethereum `0x97a258...0af08c` | ⚠️ Unaudited |
| PooledOptionsExerciser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57956b...a042f0` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61e69c...39ccb5` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4335aa...4c0b0d` | ⚠️ Unaudited |
| PrelaunchRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c988c...2612fc` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6c12...8f2f52` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368dda...0f9a48` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6909...43ce2d` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c04b...2072b6` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37aeb3...e9278b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17d23...e09660` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9232a5...93675c` | ⚠️ Unaudited |

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
| [Liquis_Audit_Report_by_Halborn.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 73 | n/a |
| [Liquis_Audit_Report_by_WatchPug.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Liquis_Audit_Report_by_WatchPug_prelaunch.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug_prelaunch.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13376] Liquis_Audit_Report_by_Halborn.pdf — no match: No reason recorded
- [13377] Liquis_Audit_Report_by_WatchPug.pdf — no match: Extracted contract names from the audit report's scope and findings sections. The report explicitly lists these contracts as part of the audited codebase.
- [13378] Liquis_Audit_Report_by_WatchPug_prelaunch.pdf — no match: Extracted contract names from findings and file paths in the audit report. The audit date is explicitly stated as Jul 29, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Liquis_Audit_Report_by_Halborn.pdf | AuraMath | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | AuraPenaltyForwarder | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BalInvestor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BalLiquidityProvider | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BalancerV2 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BaseRewardPool4626 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BoosterHelper | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | BunniToken | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ClaimFeesHelper | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ExtraRewardsDistributor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | FlashOptionsExerciser | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | GaugeMigrator | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBalGaugeController | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBalPtDeposit | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBalancerCore | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBaseRewardPool | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBasicRewards | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IBooster | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IChef | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ICrvDepositor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ICrvVoteEscrow | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IERC20Extra | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IExtraRewardsDistributor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IFeeDistributor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IGenericVault | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ILiqLocker | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ILitDepositorHelper | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IRewardHandler | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IRewardPool4626 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IRewardStaking | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IStrategy | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IVirtualRewards | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IVoterProxy | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | IVotingEscrow | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | Liq | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiqLocker | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiqMerkleDrop | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiqMinter | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiqVestedEscrow | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiquisClaimZap | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LiquisViewHelpers | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | LitDepositorHelper | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | Math | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockAuraMath | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockBalInvestor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockBalancerHelpers | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockBalancerPoolToken | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockBalancerVault | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockCrvDepositor | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockCurveGauge | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockCurveMinter | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockCurveVoteEscrow | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockERC20 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockFeeDistro | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockFeeTokenVerifier | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockGaugeController | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockLiqLocker | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockLiquidityGaugeFactory | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockRewardPool | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockStrategy | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockUniswapV2Pair | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockUniswapV2Router02 | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockVoteStorage | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockVoting | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | MockWalletChecker | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | Permission | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | PooledOptionsExerciser | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | PrelaunchRewardsPool | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | TempBooster | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_Halborn.pdf | ZapInEth | unmatched — not counted | — | — | no |
| Liquis_Audit_Report_by_WatchPug.pdf | FlashOptionsExerciser | unmatched — not counted | — | Listed in scope and findings | no |
| Liquis_Audit_Report_by_WatchPug.pdf | PooledOptionsExerciser | unmatched — not counted | — | Listed in scope and findings | no |
| Liquis_Audit_Report_by_WatchPug.pdf | LitDepositorHelper | unmatched — not counted | — | Listed in scope and findings | no |
| Liquis_Audit_Report_by_WatchPug.pdf | BalInvestor | unmatched — not counted | — | Listed in scope and findings | no |
| Liquis_Audit_Report_by_WatchPug.pdf | PrelaunchRewardsPool | unmatched — not counted | — | Listed in scope and findings | no |
| Liquis_Audit_Report_by_WatchPug_prelaunch.pdf | FlashOptionsExerciser | unmatched — not counted | — | Listed in findings and scope | no |
| Liquis_Audit_Report_by_WatchPug_prelaunch.pdf | PooledOptionsExerciser | unmatched — not counted | — | Listed in findings and scope | no |
| Liquis_Audit_Report_by_WatchPug_prelaunch.pdf | LitDepositorHelper | unmatched — not counted | — | Listed in findings and scope | no |
| Liquis_Audit_Report_by_WatchPug_prelaunch.pdf | BalInvestor | unmatched — not counted | — | Listed in findings and scope | no |
| Liquis_Audit_Report_by_WatchPug_prelaunch.pdf | PrelaunchRewardsPool | unmatched — not counted | — | Listed in findings and scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13376] Liquis_Audit_Report_by_Halborn.pdf
- [13377] Liquis_Audit_Report_by_WatchPug.pdf
- [13378] Liquis_Audit_Report_by_WatchPug_prelaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
