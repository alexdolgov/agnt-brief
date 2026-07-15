# Agentic Audit Brief: YieldNest

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 10 audit(s)
- Eligible audit results: 14 (10 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, ink, optimism
- Contract surface: 16 unique implementations (17 raw deployments)
- Coverage basis: 6/11 confirmed own live verified implementations (54.5%); conservative 54.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,891,692.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldNest. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across bsc, ethereum, ink, optimism. Structural roles: 7 core, 4 supporting, 2 unclassified. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (4), unclassified (2)
- Contract kinds: contract (7), abstract (6)
- Detected standards: erc1967proxy (10)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x68589a...44ed5d`, chain 1)
- UnnamedContract (`0x7159cc...8a45ba`, chain 1)
- UnnamedContract (`0x8c33a1...59cd7d`, chain 1)
- UnnamedContract (`0xe439fe...26536e`, chain 1)
- TransparentUpgradeableProxy (`0x01ba69...4c15d8`, chain 1)
- TransparentUpgradeableProxy (`0x09db87...373a48`, chain 1)
- TransparentUpgradeableProxy (`0x1d6b2a...95c12b`, chain 1)
- TransparentUpgradeableProxy (`0x35ec69...42630c`, chain 1)
- TransparentUpgradeableProxy (`0x3db228...ddcb4b`, chain 1)
- TransparentUpgradeableProxy (`0x40d5ff...652351`, chain 1)
- TransparentUpgradeableProxy (`0x657d9a...c96dcb`, chain 1)
- TransparentUpgradeableProxy (`0xdb8e54...af0511`, chain 10)
- TransparentUpgradeableProxy (`0xe231db...635a61`, chain 10)
- TransparentUpgradeableProxy (`0x304b58...74b509`, chain 56)
- TransparentUpgradeableProxy (`0x32c830...0a2c5f`, chain 56)
- TransparentUpgradeableProxy (`0x78839c...606a56`, chain 56)
- UnnamedContract (`0x0ce01d...bc1576`, chain 57073)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (12 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/11 (54.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/11
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 16
- Raw deployments: 17
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 36.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 36.4% | 2024-08 |
| Zokyo | Tier 2 | 4 | 36.4% | 2025-04 |
| Composable Security | Tier 2 | 2 | 18.2% | 2025-01 |
| unknown | Tier 2 | 2 | 18.2% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KernelStrategy | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397617 | `0x78839c...606a56` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-397608 | `0x40d5ff...652351` | ✅ Audited |
| RewardsReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397609 | `0x1d6b2a...95c12b` | ✅ Audited |
| Vault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397618 | `0x32c830...0a2c5f` | ✅ Audited |
| ynEigen | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397611 | `0x35ec69...42630c` | ✅ Audited |
| ynETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397610 | `0x09db87...373a48` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397615 | `0xdb8e54...af0511` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397614 | `0xe231db...635a61` | ⚠️ Unaudited |
| SingleVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397616 | `0x304b58...74b509` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-397613 | `0x01ba69...4c15d8` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-397612 (2 proxies) | 2 deployments: ethereum `0x3db228...ddcb4b`; ethereum `0x657d9a...c96dcb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397603 | `0x68589a...44ed5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397604 | `0x7159cc...8a45ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397605 | `0x8c33a1...59cd7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397606 | `0xe439fe...26536e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397607 | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 16 | n/a |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | matched | 3 | 2 | 0 | 5 | n/a |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 15 | n/a |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | n/a | matched | 5 | 4 | 0 | 25 | n/a |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | Composable Security | Audit | 2025-01 | aging | Direct | n/a | matched | 2 | 2 | 0 | 10 | n/a |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | Zokyo | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 5 | n/a |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | Zokyo | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | Zokyo | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [zokyo_audit_yieldnest_May7th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6053] 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6054] 2024-05-07-zokyo-yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6067] chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6068] chainsecurity_yieldnest_protocol_audit_aug_2024.pdf — matched: No reason recorded
- [6069] composable_security_yieldnest_jan_2025.pdf — matched: No reason recorded
- [6070] yieldnest_clisbnb_strategy_audit_report.pdf — no match: Scope section lists 5 files with paths; contract names extracted from filenames.
- [6071] yieldnest_default_asset_index_audit_report.pdf — no match: No explicit scope section or file listing; contracts inferred from findings and codebase overview. No audit date found.
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf — no match: Scope section lists 7 files/contracts. Date inferred from 'Feb 2025' at top of report.
- [6073] zokyo_audit_yieldnest_Jan8th_2025.pdf — matched: No reason recorded
- [6075] zokyo_audit_yieldnest_dec12th_2024.pdf — matched: Scope section explicitly lists 5 contracts with file paths.
- [6076] zokyo_audit_yieldnest_feb4th_2025.pdf — matched: Scope explicitly lists 6 contracts from Yieldnest repository.
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf — no match: Scope explicitly listed four contracts from the yieldnest-protocol repository.
- [6078] zokyo_yneth_audit_yieldnest_april_2025.pdf — matched: Audit report clearly lists two contracts in scope: StakingNode.sol and StakingNodesManager.sol. Date found in header: 'April 28th 2025'.
- [28439] zokyo_audit_yieldnest_May7th_2024.pdf — matched: Scope explicitly lists ynETH.sol, RewardDistributor.sol, RewardsReceiver.sol, StakingNode.sol, StakingNodesManager.sol, YieldNestOracle.sol, LSDStakingNode.sol. ynLSD is mentioned as a contract name. Audit date from cover page: May 7th 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | Constants | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | EigenStrategyManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDRateProvider | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | WithdrawalQueueManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETHRedemptionAssetsVault | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigen | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x35ec69...42630c` — deployed 2024-08-17 01:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigenDepositAdapter | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynLSD | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BNBRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseVault | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | FeeMath | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Guard | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839c...606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Provider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 5d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | ynETHxVault | unmatched — not counted | — | — | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategyRateProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ISlisBnbProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | Interaction | unmatched — not counted | — | listed in scope | no |
| yieldnest_default_asset_index_audit_report.pdf | Vault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yieldnest_default_asset_index_audit_report.pdf | VaultLib | unmatched — not counted | — | mentioned in findings | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | VaultLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | AsyncWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | OriginWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Withdrawer | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseWithdrawer | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839c...606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Guard | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 15d from audit; next candidate 36d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_dec12th_2024.pdf | ynETHxVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_feb4th_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): StakingNode.sol StakingNodesManager.sol' | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynLSD | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | YieldNestOracle | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | LSDStakingNode | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xdb8e54...af0511` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe231db...635a61` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x304b58...74b509` | SingleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01ba69...4c15d8` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3db228...ddcb4b` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (18 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 108 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: temporal_name=2, unique_name=23

Zero-match audit list:

- [6070] yieldnest_clisbnb_strategy_audit_report.pdf
- [6071] yieldnest_default_asset_index_audit_report.pdf
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
