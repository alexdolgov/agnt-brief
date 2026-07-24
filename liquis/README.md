# Agentic Audit Brief: Liquis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Liquis (`liquis`)
- Website: [https://liquis.app/](https://liquis.app/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea6930a9487ce8d039f7cc89432435e6d5acb23` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631e58246a88c3957763e1469cb52f93bc1ddcf2` | ⚠️ Unaudited |
| BoosterHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea2efb759591eec7f916f89547d339a69d171f4` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948a608ff2198a4546abdbfadf43039a99c0a6cb` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96bce10480d2a8eb2995ee4f04a70d48997856a` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c6f0ca0363652398abfb08d154f114e61c4ad8` | ⚠️ Unaudited |
| EthInvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a663c4bdd4b5cb395e4025e464049470dd2b48` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441745aec50db58a5bde1fef916d84771235aaf2` | ⚠️ Unaudited |
| FlashOptionsExerciser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x036c4567db47cd840de37e7e8658b0bb3ae95d40` | ⚠️ Unaudited |
| LiqLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x748a0f458b9e71061ca0ac543b984473f203e1cb` | ⚠️ Unaudited |
| LiqMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e8617079e97ac78fce7a2a2ec7c4a84492b805e` | ⚠️ Unaudited |
| LiqToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82fd4d6d62f89a1e50b1db69ad19932314aa408` | ⚠️ Unaudited |
| LiquisClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad161b8beb5bf2af9cda30e3988b13f62e70431b` | ⚠️ Unaudited |
| LiquisViewHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58dd6def2d0e8e16ffc537c7f269719e19b9fe4` | ⚠️ Unaudited |
| LiqVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2f48cb0da01ba75e321c870fa77f19f285c69693`; ethereum `0x4c715f7ce87f4c09c438edabf357657623031f70`; ethereum `0x545210fac9ce6c9104fbfbf2ed429cc222234670`; ethereum `0x5ecaed31db3e1a20529b503de75b917e44f7617e`; ethereum `0x9bc6dcc2497f1feb7bc7d68ce658c2984c646172`; ethereum `0xae566f666617f7c788cc47ac51ccc3e43ae5cf9d`; ethereum `0xf97964749b52c55d64e971571e1370b2618b718f` | ⚠️ Unaudited |
| LitDepositorHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4512c81c2a88ea83539b535988cbe2f454d373b5`; ethereum `0x97a2585ddb121db8e9a3b6575e302f9c610af08c` | ⚠️ Unaudited |
| PooledOptionsExerciser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57956b5ec3e7592f8785a96ba25763a6f2a042f0` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61e69c64e8cdf804cf3e0be287969d272939ccb5` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4335aa6fc488c474b02bf5302a7295740f4c0b0d` | ⚠️ Unaudited |
| PrelaunchRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c988c4e1f3cf1ca871a54af3a1dcb5fef2612fc` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6c12e26c632b8aab52ce2bacaeb288f88f2f52` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368dda6c8cce7283f4ee2577b8cbe454f40f9a48` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6909be1df994cc158abda432db7fc25343ce2d` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c04b9a73a7c63b91de4051bc761bc3062072b6` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37aeb332d6e57112f1bfe36923a7ee670ee9278b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17d23136b4fead139f54fb766c8795faae09660` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9232a548dd9e81bac65500b5e0d918f8ba93675c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 27
- Live contracts: 0
- Unknown liveness contracts: 27
- Source-verified contracts: 27
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=6, contamination review=12, source verified unclassified=9

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | BoosterOwner<br>`0x948a608ff2198a4546abdbfadf43039a99c0a6cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | candidate review | LiquisViewHelpers<br>`0xd58dd6def2d0e8e16ffc537c7f269719e19b9fe4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | candidate review | LitDepositorHelper<br>`0x4512c81c2a88ea83539b535988cbe2f454d373b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | candidate review | LitDepositorHelper<br>`0x97a2585ddb121db8e9a3b6575e302f9c610af08c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | candidate review | PoolManager<br>`0x61e69c64e8cdf804cf3e0be287969d272939ccb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | candidate review | RewardFactory<br>`0x368dda6c8cce7283f4ee2577b8cbe454f40f9a48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | Booster<br>`0x631e58246a88c3957763e1469cb52f93bc1ddcf2` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | CrvDepositor<br>`0xb96bce10480d2a8eb2995ee4f04a70d48997856a` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | EthInvestor<br>`0x81a663c4bdd4b5cb395e4025e464049470dd2b48` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | ExtraRewardStashV3<br>`0x441745aec50db58a5bde1fef916d84771235aaf2` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | FlashOptionsExerciser<br>`0x036c4567db47cd840de37e7e8658b0bb3ae95d40` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | LiqVestedEscrow<br>`0x2f48cb0da01ba75e321c870fa77f19f285c69693` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | PooledOptionsExerciser<br>`0x57956b5ec3e7592f8785a96ba25763a6f2a042f0` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | PoolManagerProxy<br>`0x4335aa6fc488c474b02bf5302a7295740f4c0b0d` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | PrelaunchRewardsPool<br>`0x5c988c4e1f3cf1ca871a54af3a1dcb5fef2612fc` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | ProxyFactory<br>`0xfa6c12e26c632b8aab52ce2bacaeb288f88f2f52` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | StashFactoryV2<br>`0xba6909be1df994cc158abda432db7fc25343ce2d` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | contamination review | TokenFactory<br>`0xe9c04b9a73a7c63b91de4051bc761bc3062072b6` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | cvxCrvToken<br>`0x03c6f0ca0363652398abfb08d154f114e61c4ad8` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqMinter<br>`0x2e8617079e97ac78fce7a2a2ec7c4a84492b805e` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0x4c715f7ce87f4c09c438edabf357657623031f70` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0x545210fac9ce6c9104fbfbf2ed429cc222234670` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0x5ecaed31db3e1a20529b503de75b917e44f7617e` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0x9bc6dcc2497f1feb7bc7d68ce658c2984c646172` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0xae566f666617f7c788cc47ac51ccc3e43ae5cf9d` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | LiqVestedEscrow<br>`0xf97964749b52c55d64e971571e1370b2618b718f` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |
| ethereum | source verified unclassified | VoterProxy<br>`0x37aeb332d6e57112f1bfe36923a7ee670ee9278b` | non_address_book | unknown | unknown | verified | n/a | `0xa35e14f9d731ddb1994b5590574b32a838646ccf` |

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
