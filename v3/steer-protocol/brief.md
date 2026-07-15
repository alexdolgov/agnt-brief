# Agentic Audit Brief: Steer Protocol

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

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance](https://app.steer.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, celo, ethereum, fantom, kava, linea, manta-pacific, mantle, metis, mode, moonbeam, optimism, polygon, polygon-zkevm, scroll, sei, sonic, unichain
- Contract surface: 73 unique implementations (120 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,600,255.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Steer Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 73
- Raw deployments: 120
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseSwapMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefecc1...f76ced` | ⚠️ Unaudited |
| BasexMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3fd4b...9965bc` | ⚠️ Unaudited |
| BasexSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d04a1...0dcf24` | ⚠️ Unaudited |
| BasexWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cb98e...125649` | ⚠️ Unaudited |
| BasexWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x157822...830189` | ⚠️ Unaudited |
| BundleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x806c22...4b903f`; base `0xab36d3...cc6576` | ⚠️ Unaudited |
| BundleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x279228...dc39c4`; arbitrum `0xca19be...c0edc4` | ⚠️ Unaudited |
| CamelotMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2c286...22026f` | ⚠️ Unaudited |
| CamelotSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a9e78...1078b2` | ⚠️ Unaudited |
| CamelotWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe86842...fe8e68` | ⚠️ Unaudited |
| CamelotWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7350b...2b12bd` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x660257...93b158`; arbitrum `0xb2f009...1613ea` | ⚠️ Unaudited |
| DynamicJobs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x279228...dc39c4`; base `0x491bf4...2c34e5`; arbitrum `0x981c9a...b0075f`; arbitrum `0xb27a61...1f779b` | ⚠️ Unaudited |
| ERC1155AdminMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x375775...90c812`; arbitrum `0xd778a4...4d10be` | ⚠️ Unaudited |
| ERC1155MaxSupplyMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x20d7e6...8f4456`; arbitrum `0x792e36...44cf18` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xac4d51...3290e6`; base `0xd02c0e...03f76b` | ⚠️ Unaudited |
| GasVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b4145...51cc2d`; base `0xc1ecd1...15081c` | ⚠️ Unaudited |
| GasVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x16ba71...d7668e`; arbitrum `0x254d37...9e1ada` | ⚠️ Unaudited |
| GlobalReentrancyLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x147138...875079`; arbitrum `0x90eaa6...10539a` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa98376...7974fe` | ⚠️ Unaudited |
| HorizaMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a4ed7...bfb2a5` | ⚠️ Unaudited |
| HorizaSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bd01b...4fa08a` | ⚠️ Unaudited |
| HorizaWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d32bd...18e153` | ⚠️ Unaudited |
| HorizaWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42d131...3caf6d` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a7e75...907472`; base `0xce965b...afde1e` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64833f...1aa06e` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8fb2cd...c971e2`; arbitrum `0xf4de41...47513b` | ⚠️ Unaudited |
| KimMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8032d0...3365de` | ⚠️ Unaudited |
| KinetixMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x364736...7eb561` | ⚠️ Unaudited |
| MultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00d0cc...7aaff8` | ⚠️ Unaudited |
| MultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc1ecd1...15081c`; arbitrum `0xe1c56f...bced66` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8fb2cd...c971e2`; base `0xf4de41...47513b` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2822ee...4e14b5`; arbitrum `0x38a071...da0c77` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0x465519...f0e2d5`; base `0xbcf958...84c8b8`; arbitrum `0x2b4f9a...92d710`; arbitrum `0x99eca0...99f59b` | ⚠️ Unaudited |
| QuickSwapIntegralMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x391cf3...d72d23` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2ca933...14d566`; arbitrum `0xf71bb6...cb3d30` | ⚠️ Unaudited |
| SinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b4145...51cc2d` | ⚠️ Unaudited |
| SingleStakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x811d4e...df0799` | ⚠️ Unaudited |
| SmartRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3985ab...3c7d79`; base `0xff42cd...12f48b` | ⚠️ Unaudited |
| SmartRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bb3b1...cfaabb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: base `0x07536e...e45b97`; base `0x6d5a04...499e9a`; arbitrum `0x004a73...ce4922`; arbitrum `0x0635b7...bf5ca8`; arbitrum `0x0b6194...1c43e0`; arbitrum `0x1e6a35...6e863b`; arbitrum `0x233918...ded41f`; arbitrum `0x25ef10...173763`; arbitrum `0x3338b8...8475bb`; arbitrum `0x3dc572...bd7f38`; arbitrum `0x6519a9...bf36cf`; arbitrum `0x78fe84...eadd52`; arbitrum `0xacdc6f...df546f`; arbitrum `0xb10ab1...0b37f1`; arbitrum `0xc3b5fd...5f4e4b`; arbitrum `0xff46e1...8576a4` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x116dba...32014c`; base `0xa1dd21...0c02e9` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x301389...83eb21` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x16ba71...d7668e` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x254d37...9e1ada`; base `0xbfd2e0...cd01f5`; arbitrum `0xab36d3...cc6576` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x37fef4...489ed9`; arbitrum `0x806c22...4b903f` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x317eed...5b476f`; base `0x99eca0...99f59b` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09eb27...be7d1d`; arbitrum `0xd96481...0d1bb2` | ⚠️ Unaudited |
| ThickMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb77e4...490b96` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c43d0...6cd04e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x31e4ee...d48983`; arbitrum `0x81a765...0a2c5e` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2822ee...4e14b5` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7760d5...34cde5`; base `0xd96481...0d1bb2` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x116dba...32014c`; arbitrum `0x9f5b09...8877dc` | ⚠️ Unaudited |
| VeloStakedPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62726c...2dec54` | ⚠️ Unaudited |
| WhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c5c5b...9a60ce` | ⚠️ Unaudited |
| WhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdca325...e4bef1` | ⚠️ Unaudited |
| WhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x09eb27...be7d1d`; arbitrum `0xa1dd21...0c02e9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71be47...5b7747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9790af...54d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaad31...30c854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x122126...4c06c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x122e6d...a5abe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x253b89...cefab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44379e...03ca07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x657bb5...6f6163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d611e...aaa9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73f478...f42261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76fcf4...9d0c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc113f...881e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b49b...bce0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe489df...192ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfebd20...f5c1a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/04/Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4](https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566](https://omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243](https://omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f](https://omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf — no match: Three contracts explicitly listed in scope table on page 7. Audit date given as 'March, 2025'.
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 — no match: Extracted contract names from scope section and storage incompatibility discussion. Audit date is the latest revision date (May 29th 2024).
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 — no match: Scope section not provided in text; extracted contract names from audit overview and post-audit sections.
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243 — no match: The report text does not contain a clear scope section listing specific contracts or files. The title mentions 'Algebra Strategies' but no individual contract names are provided.
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManager | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManagerV2 | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeSteerLib | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | AlgebraMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapSinglePositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingSingleRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingDualRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | SmartRewardDistributor | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | IntegralMultiPositionLiquidityManager | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Beacon | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BeaconManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BundleRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BaseLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | DynamicJobs | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | GasVault | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InterfaceManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | KeeperRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Orchestrator | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerToken | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StakingRewards | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerPeriphery | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StrategyRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SinglePositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | TreasuryVester | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedMultiLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedSingleLiquidityManager | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f

Fork inheritance lineage and inherited audits are included when available.
