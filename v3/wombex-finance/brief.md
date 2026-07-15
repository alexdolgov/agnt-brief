# Agentic Audit Brief: Wombex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wombex Finance (`wombex-finance`)
- Website: [https://wombex.finance/](https://wombex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc
- Contract surface: 82 unique implementations (82 raw deployments)
- Coverage basis: 5/13 confirmed own live verified implementations (38.5%); conservative 38.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $379,205.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wombex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, bsc. Structural roles: 9 core, 2 infra, 2 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (9), infra (2), supporting (2)
- Contract kinds: contract (12), abstract (1)
- Detected standards: erc20 (5), erc1967proxy (4), ownable (3), erc20permit (2), accesscontrol (1), erc165 (1), erc4626 (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BaseRewardPoolLocked (`0x383a77...0701ba`, chain 56)
- Booster (`0x54c327...39b38e`, chain 56)
- CvxCrvToken (`0x041502...402979`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x0029b7...9d4183`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x052045...fc74b2`, chain 56)
- SkimmableAsset (`0x51e073...769606`, chain 42161)
- TokenFactory (`0x13e050...9a5b55`, chain 56)
- TokenImplementation (`0x5190f0...293293`, chain 42161)
- VoterProxy (`0x24d2f6...0c1ec1`, chain 42161)
- Whitelist (`0x9a6578...f2735d`, chain 42161)
- Wmx (`0xa75d9c...4a2ced`, chain 56)
- WombatERC20 (`0xad6742...b94fb1`, chain 56)
- WombatRouter (`0x19609b...a4add7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/13 (38.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 13 of 82 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/82
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 82
- Raw deployments: 82
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 38.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 5 | 6.1% | 2022-10 |
| Zokyo | Tier 2 | 5 | 6.1% | 2023-01 |
| PeckShield | Tier 2 | 2 | 2.4% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Booster | unknown | project_anchor | own_supporting | 0 | bsc | unit-261940 | `0x54c327...39b38e` | ✅ Audited |
| CvxCrvToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-261936 | `0x041502...402979` | ✅ Audited |
| TokenFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-261937 | `0x13e050...9a5b55` | ✅ Audited |
| VoterProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261946 | `0x24d2f6...0c1ec1` | ✅ Audited |
| Wmx | unknown | project_anchor | own_supporting | 0 | bsc | unit-261941 | `0xa75d9c...4a2ced` | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABnbcAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2dea...96406b` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x128fa2...08228b` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06228b...2e48b5` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11f64f...45db5f` | ⚠️ Unaudited |
| BaseRewardPoolLocked | unknown | project_anchor | own_supporting | 0 | bsc | unit-261939 | `0x383a77...0701ba` | ⚠️ Unaudited |
| BnbxAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10f7c6...1fc24f` | ⚠️ Unaudited |
| BoostedMasterWombat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26d67a...1a1933` | ⚠️ Unaudited |
| BoostedMultiRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12d6a5...73bf7e` | ⚠️ Unaudited |
| BoosterEarmark | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bb974...3a674b` | ⚠️ Unaudited |
| BoosterLensUI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e7a98...97c727` | ⚠️ Unaudited |
| BoosterMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bf5...c47835` | ⚠️ Unaudited |
| Bribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x048dc3...118047` | ⚠️ Unaudited |
| BribeRewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e08a...a6f3e1` | ⚠️ Unaudited |
| BribesRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x272ed5...b96c1a` | ⚠️ Unaudited |
| BribesTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e11c0...274a86` | ⚠️ Unaudited |
| BribeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e9fab...adab55` | ⚠️ Unaudited |
| CoreV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fff85...90ecc0` | ⚠️ Unaudited |
| DepositorMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99d473...f997b8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dfffa...f609b9` | ⚠️ Unaudited |
| DynamicAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0321d1...740f86` | ⚠️ Unaudited |
| DynamicPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b1878...44984f` | ⚠️ Unaudited |
| EarmarkRewardsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aceb4...53edee` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa30243...64b554` | ⚠️ Unaudited |
| ExtraRewardsDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cff97...dcf44c` | ⚠️ Unaudited |
| GaugeVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0092e7...dc27e6` | ⚠️ Unaudited |
| GaugeVotingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x050d44...609164` | ⚠️ Unaudited |
| GovernedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d15c4...918797` | ⚠️ Unaudited |
| jUsdcAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde509f...626dae` | ⚠️ Unaudited |
| LensPoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x124ac6...ebea14` | ⚠️ Unaudited |
| LensUser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bba59...29df49` | ⚠️ Unaudited |
| LpVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1b677...d54d98` | ⚠️ Unaudited |
| MasterWombatV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cff94...88fe8e` | ⚠️ Unaudited |
| MasterWombatV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0020a8...680db6` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd067...ec28cf` | ⚠️ Unaudited |
| MerkleDistributorAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2740f3...7fbe09` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6084ce...82a77a` | ⚠️ Unaudited |
| MultiRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04299f...15ffa4` | ⚠️ Unaudited |
| MultiStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c7537...e879ff` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-261950 | `0x0029b7...9d4183` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x04d4e1...8d563d` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-261948 | `0x052045...fc74b2` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x083640...2f9f55` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x191601...ad205b` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1ee156...754bef` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3da628...b5b0cc` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0b041d...bf6f27` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3c34...bebd20` | ⚠️ Unaudited |
| PoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0227a6...93ba07` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6521a5...86cd7b` | ⚠️ Unaudited |
| PriceFeedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a2020...346aaa` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x2722fe...3de182` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4181e5...c80c8f` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261934 | `0x51e073...769606` | ⚠️ Unaudited |
| StkbnbAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x9f3f1e...140655` | ⚠️ Unaudited |
| TokenImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261944 | `0x5190f0...293293` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8cbd...8f7fed` | ⚠️ Unaudited |
| UnprotectedDynamicPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0553f2...c2bd73` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x7e10ff...a2feff` | ⚠️ Unaudited |
| WBETHAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x975693...51d57f` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261935 | `0x9a6578...f2735d` | ⚠️ Unaudited |
| WmxClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b57a6...12602c` | ⚠️ Unaudited |
| WmxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4e596...1504ee` | ⚠️ Unaudited |
| WmxMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eb849...090323` | ⚠️ Unaudited |
| WmxMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7773e4...c61270` | ⚠️ Unaudited |
| WmxPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa65c11...e94d38` | ⚠️ Unaudited |
| WmxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x688253...22bdff` | ⚠️ Unaudited |
| WmxRewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062f2d...872792` | ⚠️ Unaudited |
| WmxRewardPoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d144e...f8ee99` | ⚠️ Unaudited |
| WmxVestedEscrowLockOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58272b...5ae6a9` | ⚠️ Unaudited |
| WombatERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-261942 | `0xad6742...b94fb1` | ⚠️ Unaudited |
| WombatRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-261938 | `0x19609b...a4add7` | ⚠️ Unaudited |
| WombexLensUI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x036e46...1e9e38` | ⚠️ Unaudited |
| WomDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4322cb...004e87` | ⚠️ Unaudited |
| WomStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35957c...203fa4` | ⚠️ Unaudited |
| WomSwapDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c1a2e...7aa6cd` | ⚠️ Unaudited |
| WstETHAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb7e2f...5f7465` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Wombex-v1.0.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/PeckShield-Audit-Report-Wombex-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [SlowMist-Audit-Report-Wombex-Finance.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/SlowMist-Audit-Report-Wombex-Finance.pdf) | SlowMist | Audit | 2022-10 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 14 | high |
| [Zokyo-Audit-Report-Wombex-Finance-Main.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/Zokyo-Audit-Report-Wombex-Finance-Main.pdf) | Zokyo | Audit | 2023-01 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18613] PeckShield-Audit-Report-Wombex-v1.0.pdf — matched: Contracts extracted from findings targets. No explicit scope table, but these are the audited contracts.
- [18614] SlowMist-Audit-Report-Wombex-Finance.pdf — matched: All contracts listed in the visibility tables and referenced in findings are considered in scope. The audit date is the end date of the audit period (2022.09.16 - 2022.10.10).
- [18615] Zokyo-Audit-Report-Wombex-Finance-Main.pdf — matched: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Wombex-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | Booster | own contract | Booster (selected) `0x54c327...39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | WomDepositor | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | Wmx | own contract | Wmx (selected) `0xa75d9c...4a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | Booster | own contract | Booster (selected) `0x54c327...39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | CvxCrvToken | own contract | CvxCrvToken (selected) `0x041502...402979` — deployed 2022-10-16 19:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | DepositToken | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | RewardFactory | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | TokenFactory | own contract | TokenFactory (selected) `0x13e050...9a5b55` — deployed 2023-05-28 15:16:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | VoterProxy | own proxy deployment | VoterProxy (proxy) (selected) `0x24d2f6...0c1ec1` — deployed 2023-04-01 13:03:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | Wmx | own contract | Wmx (selected) `0xa75d9c...4a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxClaimZap | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxLocker | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxMerkleDrop | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxMinter | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxPenaltyForwarder | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxRewardPool | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxVestedEscrow | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WomDepositor | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WomStakingProxy | unmatched — not counted | — | listed in visibility table | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Wmx | own contract | Wmx (selected) `0xa75d9c...4a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxClaimZap | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxLocker | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMath | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMinter | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxPenaltyForwarder | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxRewardPool | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxVestedEscrow | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WomDepositor | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WomStakingProxy | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Booster | own contract | Booster (selected) `0x54c327...39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | CvxCrvToken | own contract | CvxCrvToken (selected) `0x041502...402979` — deployed 2022-10-16 19:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | RewardFactory | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | TokenFactory | own contract | TokenFactory (selected) `0x13e050...9a5b55` — deployed 2023-05-28 15:16:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | VoterProxy | own proxy deployment | VoterProxy (proxy) (selected) `0x24d2f6...0c1ec1` — deployed 2023-04-01 13:03:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BoringMath | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IGaugeController | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IProxyFactory | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IRewardHook | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IRewarder | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | MathUtil | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x383a77...0701ba` | BaseRewardPoolLocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0029b7...9d4183` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x052045...fc74b2` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x51e073...769606` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5190f0...293293` | TokenImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9a6578...f2735d` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xad6742...b94fb1` | WombatERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19609b...a4add7` | WombatRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 40 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=12

Fork inheritance lineage and inherited audits are included when available.
