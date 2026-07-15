# Agentic Audit Brief: Lets Get HAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lets Get HAI (`lets-get-hai`)
- Website: [https://www.letsgethai.com](https://www.letsgethai.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: optimism
- Contract surface: 90 unique implementations (103 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $969,423.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lets Get HAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across optimism. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (5), erc20permit (5), ownable (1), pausable (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GovernanceToken (`0x420000...000042`, chain 10)
- WETH9 (`0x420000...000006`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (2 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 83 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 2 of 90 unique; 88 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 90
- Raw deployments: 103
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa49007...65bd10` | ⚠️ Unaudited |
| AccountingJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc256c3...729ef0` | ⚠️ Unaudited |
| BasicActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd36b1b...da7bb0` | ⚠️ Unaudited |
| BeefyVeloVaultRelayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x02fe16...fdaabf`; optimism `0x6cbfa1...df67fd` | ⚠️ Unaudited |
| CoinJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30ce72...7c6ea3` | ⚠️ Unaudited |
| CollateralAuctionHouseFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81c5c2...94b427` | ⚠️ Unaudited |
| CollateralBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbfac17...fc694d` | ⚠️ Unaudited |
| CollateralJoinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe7987...536143` | ⚠️ Unaudited |
| DebtAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7cde0d...f617b3` | ⚠️ Unaudited |
| DebtBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc55b8...9f8117` | ⚠️ Unaudited |
| DelayedOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41a600...97b3bb` | ⚠️ Unaudited |
| DenominatedOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3a003...67fd35` | ⚠️ Unaudited |
| GlobalSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75880a...864218` | ⚠️ Unaudited |
| GlobalSettlementActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0a788...845fa1` | ⚠️ Unaudited |
| GovernanceToken | token | project_anchor | own_supporting | 0 | optimism | unit-266873 | `0x420000...000042` | ⚠️ Unaudited |
| HaiDelegatee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c6c63...aa2b63` | ⚠️ Unaudited |
| HaiGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe807f3...a23777` | ⚠️ Unaudited |
| HaiProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbafbcd...e03a27` | ⚠️ Unaudited |
| HaiSafeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0ff82...5106c3` | ⚠️ Unaudited |
| HardcodedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c212b...be0d39` | ⚠️ Unaudited |
| HypERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbdf4a4...1f1152`; optimism `0xfdf059...aba0b1` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8be588...891b56` | ⚠️ Unaudited |
| LiquidationJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef157...1b3638` | ⚠️ Unaudited |
| OracleJob | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4f182...f9fc22` | ⚠️ Unaudited |
| OracleRelayer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x627040...fdb3a6` | ⚠️ Unaudited |
| PessimisticVeloSingleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x2d442a...e26585`; optimism `0x557c24...a19e6c`; optimism `0x898e74...d1c91a`; optimism `0x8cb126...9d7bcb`; optimism `0xdfeb54...ff5448` | ⚠️ Unaudited |
| PIDController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6f9aec...72f609` | ⚠️ Unaudited |
| PIDRateSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f76f2...434d2f` | ⚠️ Unaudited |
| Pool | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266875 | `0xbded65...ea6b86` | ⚠️ Unaudited |
| Pool | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266876 | `0xf4638d...447238` | ⚠️ Unaudited |
| PostSettlementSurplusAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1fa281...956d66` | ⚠️ Unaudited |
| PostSettlementSurplusBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48c341...463640` | ⚠️ Unaudited |
| ProtocolToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266877 | `0xf467c7...1e1404` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a3cbf...c66091` | ⚠️ Unaudited |
| ProxyERC20 | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266874 | `0x8c6f28...1ec8d9` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x629b03...3c0958`; optimism `0xcabaac...a25224`; optimism `0xdaa95c...0d94d7`; optimism `0xefa456...9ecb75` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfed2eb...ac3d4d` | ⚠️ Unaudited |
| RewardedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb688d7...81cde7` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6dcda...81b7ea` | ⚠️ Unaudited |
| SAFEEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ff826...75a700` | ⚠️ Unaudited |
| SettlementSurplusAuctioneer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7edad0...3afe43` | ⚠️ Unaudited |
| StabilityFeeTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9e54c...3c4f6f` | ⚠️ Unaudited |
| StakingManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1250f2...e6bc90`; optimism `0x13531b...fcd1d9`; optimism `0x70bf15...279e93` | ⚠️ Unaudited |
| StakingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0xaa46f6...62be0a`; optimism `0xcb7e5b...d1980f`; optimism `0xf632d7...881fc3` | ⚠️ Unaudited |
| SurplusAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x096125...1778e9` | ⚠️ Unaudited |
| SurplusBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x632229...925cec` | ⚠️ Unaudited |
| SystemCoin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266871 | `0x10398a...10dc71` | ⚠️ Unaudited |
| TaxCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62b82c...1973c3` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb9654...cc9e02` | ⚠️ Unaudited |
| TrustedRelayerIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5efe30...91d505` | ⚠️ Unaudited |
| UniV3RelayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6a352...3948c1` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | optimism | unit-266872 | `0x420000...000006` | ⚠️ Unaudited |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70f371...b1bb6a` | ⚠️ Unaudited |
| WrappedTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20a7ea...b5ddd6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0078fb...9a36a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ef96c...3b7a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x146b02...c150ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15f0ad...78324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1be428...1c3469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c48bb...d2ee02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x226e60...dd6a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2729b1...ba59f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d57b9...d506f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3975ff...ac5980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3baf7c...17ed94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ccc00...55d6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e2d4b...8fb7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47c6ae...6bbb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fcd90...dcb1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x50d758...bf2859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x524fe1...2abcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c9842...8a44db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x635362...8055fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c797b...a0c200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c4407...687a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ddb1b...1fa66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x805a26...217d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90de1e...8d7741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaacc03...33bd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb72ff1...438c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb97a5f...5a77e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb2d45...1069a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd68d4...8bc50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc16cac...acad9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc19975...f56ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc64d0c...1fc53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd84852...747b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe15146...1462af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1d169...7b80ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc4fd0...12ea56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [HaiVELO V2 Electisec.pdf](https://github.com/hai-on-op/audit-reports/blob/main/HaiVELO%20V2%20Electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ackee_HAI_new-core-features_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/ackee_HAI_new-core-features_report.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [dMakers_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/dMakers_HAI_audit_report.pdf) | dMakers | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [solidified_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/solidified_HAI_audit_report.pdf) | Solidified | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 131 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf — no match: Two contracts in scope: CurveStableSwapNGRelayer and CurveStableSwapNGRelayerFactory. Audit date from timeline: February 12 to 13, 2026, so end date is 2026-02-13.
- [3167] HaiVELO V2 Electisec.pdf — no match: No reason recorded
- [3168] ackee_HAI_new-core-features_report.pdf — no match: No reason recorded
- [3169] dMakers_HAI_audit_report.pdf — no match: No reason recorded
- [3170] solidified_HAI_audit_report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf | CurveStableSwapNGRelayer | unmatched — not counted | — | listed in scope | no |
| 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf | CurveStableSwapNGRelayerFactory | unmatched — not counted | — | listed in scope | no |
| HaiVELO V2 Electisec.pdf | WrappedTokenV2 | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | AbstractVeloVaultRelayer | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Assertions | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Authorizable | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | BeefyVeloVaultRelayer | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Encoding | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | FactoryChild | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Modifiable | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPool | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPoolChild | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPoolFactory | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | StakingManager | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | StakingToken | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | WrappedToken | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | YearnVeloVaultRelayer | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | CoinJoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | DelayedOracle | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | ETHJoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | Encoding | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxy | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxyFactory | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxyRegistry | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | Ownable | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | PidRateSetter | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SafeEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SystemCoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | TokenDistributor | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | UniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AccountingJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Assertions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Authorizable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AuthorizableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | BasicActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CoinJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouseChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouseFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinDelegatableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CommonActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DebtAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DebtBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DeviatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Disableable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DisableableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ETHJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Encoding | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | FactoryChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | GlobalSettlement | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | GlobalSettlementActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxy | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxyFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxyRegistry | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiSafeManager | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HardcodedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAccountingEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAccountingJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAuthorizable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAuthorizableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IBaseOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IBasicActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICoinJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouseChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouseFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinDelegatableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICommonActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICommonSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDebtAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDebtBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDisableable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDisableableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IETHJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IFactoryChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IGlobalSettlement | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IGlobalSettlementActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxy | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxyFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxyRegistry | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiSafeManager | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ILiquidationEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ILiquidationJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IModifiable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOracleJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOracleRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOwnable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPIDController | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPIDRateSetter | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IProtocolToken | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IRewardedActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISAFEEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISAFESaviour | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISettlementSurplusAuctioneer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IStabilityFeeTreasury | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISystemCoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ITaxCollector | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ITokenDistributor | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3RelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3RelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IWeth | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Job | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | LiquidationJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Math | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | MintableERC20 | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Modifiable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | OracleJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Ownable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PIDController | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PIDRateSetter | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PostSettlementSurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ProtocolToken | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | RewardedActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SAFEHandler | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SettlementSurplusAuctioneer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SystemCoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | TaxCollector | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | TokenDistributor | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3RelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3RelayerFactory | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x420000...000042` | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 168 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf
- [3167] HaiVELO V2 Electisec.pdf
- [3168] ackee_HAI_new-core-features_report.pdf
- [3169] dMakers_HAI_audit_report.pdf
- [3170] solidified_HAI_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
