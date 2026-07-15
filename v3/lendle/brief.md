# Agentic Audit Brief: Lendle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 2 audit(s)
- Eligible audit results: 10 (2 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 65 unique implementations (156 raw deployments)
- Coverage basis: 10/11 confirmed own live verified implementations (90.9%); conservative 90.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $506,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lendle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across mantle. Structural roles: 6 unclassified, 4 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (6), core (4), supporting (1)
- Contract kinds: contract (11)
- Detected standards: ownable (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x006b07...df1a2f`, chain 5000)
- UnnamedContract (`0x228518...8f4eaa`, chain 5000)
- UnnamedContract (`0x256cd4...56f851`, chain 5000)
- UnnamedContract (`0x26ae2b...48cff0`, chain 5000)
- UnnamedContract (`0x2a5b18...33f8dc`, chain 5000)
- UnnamedContract (`0x30d990...044856`, chain 5000)
- UnnamedContract (`0x4c57be...79aa6b`, chain 5000)
- UnnamedContract (`0x552b9e...b84773`, chain 5000)
- UnnamedContract (`0x5645d7...d8fff6`, chain 5000)
- UnnamedContract (`0x5c75a7...f49230`, chain 5000)
- UnnamedContract (`0x79e2fd...f27c41`, chain 5000)
- UnnamedContract (`0x8500a4...f5abba`, chain 5000)
- UnnamedContract (`0x870c96...506efc`, chain 5000)
- UnnamedContract (`0xb74b3a...150a45`, chain 5000)
- UnnamedContract (`0xc2e285...37b8c2`, chain 5000)
- UnnamedContract (`0xcfa5ae...fb7cf3`, chain 5000)
- UnnamedContract (`0xe5f9ff...9db37b`, chain 5000)
- UnnamedContract (`0xefdc43...457fda`, chain 5000)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc90c10...ddee12`, chain 5000)
- LendingRateOracle (`0xc7f65c...d72392`, chain 5000)
- LendleToken (`0x25356a...e49396`, chain 5000)
- TokenVesting (`0xa7f784...1f7e6f`, chain 5000)
- WETHGateway (`0xec831f...ac55c2`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/11 (90.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 29 of 65 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/40
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 65
- Raw deployments: 156
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 10 | 25.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244824 | `0xec3414...320694` | ✅ Audited |
| LendingPoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | mantle | unit-244809 | `0xab94be...19c3d4` | ✅ Audited |
| LendingPoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | mantle | unit-244814 | `0xb92bff...11b868` | ✅ Audited |
| LendingRateOracle | unknown | project_anchor | own_supporting | 0 | mantle | unit-244817 | `0xc7f65c...d72392` | ✅ Audited |
| LendleToken | token | project_anchor | own_supporting | 0 | mantle | unit-244784 | `0x25356a...e49396` | ✅ Audited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | mantle | unit-244812 | `0xb57f32...589296` | ✅ Audited |
| StableDebtToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244822 | `0xd8a36c...745407` | ✅ Audited |
| TokenVesting | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-244807 | `0xa7f784...1f7e6f` | ✅ Audited |
| VariableDebtToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244811 | `0xb3f838...7d6af5` | ✅ Audited |
| WETHGateway | token | project_anchor | own_supporting | 0 | mantle | unit-244825 | `0xec831f...ac55c2` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Api3AggregatorAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x6982e8...a66508`; mantle `0x7cbdfc...ba421f` | ⚠️ Unaudited |
| Api3PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x14d48a...831c73`; mantle `0x7ed5ed...6021f1`; mantle `0x983086...84ff06`; mantle `0xcde071...8dc50c` | ⚠️ Unaudited |
| Api3PythPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 19 deployments: mantle `0x04dcaa...d88ef8`; mantle `0x0f4716...df9f07`; mantle `0x242a36...d4c147`; mantle `0x244f11...035de0`; mantle `0x2e014f...9d20ee`; mantle `0x37d09f...789297`; mantle `0x39d9ec...80b131`; mantle `0x42591e...d6a3bb`; mantle `0x42f915...367d2d`; mantle `0x4f8402...85d863`; mantle `0x525927...31dd1c`; mantle `0x790292...aec5b3`; mantle `0x82d263...fb283f`; mantle `0x8ba59d...efe909`; mantle `0xad22b2...85756b`; mantle `0xb7edd9...b27891`; mantle `0xdcc5f2...692a09`; mantle `0xf5c791...380850`; mantle `0xf73c33...721f2a` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x19342d...251655`; mantle `0x3bb743...57d5c1`; mantle `0x3e597f...214eff`; mantle `0x63e42e...e94898`; mantle `0x6a4a5e...1e6de0`; mantle `0xb8ed11...596de3`; mantle `0xbff488...2f60bb`; mantle `0xf375e5...966e05` | ⚠️ Unaudited |
| ATokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x1bd5e3...04698d`; mantle `0x248ba0...ce4436`; mantle `0x37d051...173bec`; mantle `0x38113c...504b43`; mantle `0x4d7b93...0f22cf`; mantle `0x612271...0c8c8c`; mantle `0x665f9a...6e8d47`; mantle `0x892e01...6162d6`; mantle `0x990a4e...ad6e1e`; mantle `0xc430c4...fc2f7a`; mantle `0xf8d3af...1184e2` | ⚠️ Unaudited |
| ChefIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201673...413b32` | ⚠️ Unaudited |
| ChefIncentivesControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc36b75...c6db95` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 18 deployments: mantle `0x1bb165...ff5bee`; mantle `0x29a26d...e93778`; mantle `0x50c7e4...5ae2a9`; mantle `0x5588be...cf7d4b`; mantle `0x58a704...b23571`; mantle `0x713749...aa6cfa`; mantle `0x719844...0d028b`; mantle `0x975e25...614538`; mantle `0x9bca50...edbb9f`; mantle `0x9c08c8...1fc37b`; mantle `0xa2fd0a...931cfb`; mantle `0xac8d69...6dec64`; mantle `0xb92ead...eb0f13`; mantle `0xcd214b...10ae1c`; mantle `0xd2b3c2...6f31a5`; mantle `0xd9b0b0...40a488`; mantle `0xe35fa6...938e4a`; mantle `0xe89dec...3ddbaf` | ⚠️ Unaudited |
| FairAuctionNoES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa0fa32...27c349` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf9e8f0...bb30fd` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-244818 | `0xc90c10...ddee12` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13e976...9d9ec7` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd27275...0978bc` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d3503...9394cc` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x845a24...2883fe`; mantle `0xfe91d9...7dd0c1` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2186a9...8cd56b` | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x48222d...5827b8`; mantle `0x938034...67078f`; mantle `0xce848c...191383` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfa12aa...de522b` | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x2e2df1...2f7ea9`; mantle `0xb1946b...d97704`; mantle `0xb442f5...fa7fa1`; mantle `0xd4df2e...35f7f9` | ⚠️ Unaudited |
| PythPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x0a0636...e61f17`; mantle `0x4169e5...5904c6`; mantle `0x4358d5...58bdc3`; mantle `0x68b76f...a7acbd`; mantle `0x7099bb...fea137`; mantle `0xbac333...e4b50b` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa9902e...7facfa` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x17dd84...4d58a2`; mantle `0x18f6e6...dd381d`; mantle `0x2f1c30...8e7736`; mantle `0x4b0968...ac04e3`; mantle `0x743e9e...3b7c74`; mantle `0x783e5a...f008f5`; mantle `0xf74481...b40291` | ⚠️ Unaudited |
| StakingConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4e565...528b2f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5cbf95...1e0345`; mantle `0xf64896...70a1b0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb6eeda...a92484` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x733aad...ee1623` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x25a1b6...d072c4`; mantle `0x5b82b7...ef1277`; mantle `0x63d5a8...0ae8ce`; mantle `0x6e24fb...54a820`; mantle `0x929138...108ee1`; mantle `0xf7f3ba...ad55f2` | ⚠️ Unaudited |
| VaultV7 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 9 deployments: mantle `0x3ad7d1...34cb52`; mantle `0x43703b...20b7bf`; mantle `0x4606e0...0c53f4`; mantle `0x4fd28e...d98076`; mantle `0xb2be0a...c72100`; mantle `0xb76167...4a18b4`; mantle `0xd1d9c7...4b15d8`; mantle `0xd1fc69...e87cae`; mantle `0xeb244c...3b7373` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x079c99...3ad8b4`; mantle `0x217d15...e9b1d8`; mantle `0x5841b7...24d26f`; mantle `0x9aeb85...0ad3c8`; mantle `0xa126a4...1e70a9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x370bc6...79a01e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244779 | `0x006b07...df1a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0a4e3e...962019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1fb19c...52d70c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244783 | `0x228518...8f4eaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244785 | `0x256cd4...56f851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244786 | `0x26ae2b...48cff0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244787 | `0x2a5b18...33f8dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244790 | `0x30d990...044856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x415e2d...7825bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244796 | `0x4c57be...79aa6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x520e7f...dbead6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244797 | `0x552b9e...b84773` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244798 | `0x5645d7...d8fff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244799 | `0x5c75a7...f49230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6eea6c...f3f106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244801 | `0x79e2fd...f27c41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244803 | `0x8500a4...f5abba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8668fa...b0a01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244804 | `0x870c96...506efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae5f62...597287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244813 | `0xb74b3a...150a45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244816 | `0xc2e285...37b8c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244820 | `0xcfa5ae...fb7cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244823 | `0xe5f9ff...9db37b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244827 | `0xefdc43...457fda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/Lendle](https://sourcehat.com/audits/Lendle) | SourceHat | Audit | 2023-09 | stale | Direct | n/a | matched | 10 | 0 | 0 | 9 | n/a |
| [www.halborn.com/audits/lendle/brink-a73cf0](https://www.halborn.com/audits/lendle/brink-a73cf0) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view](https://drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view](https://drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view](https://drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view](https://drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view](https://drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view](https://drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view](https://drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [sourcehat.com/audits/GeistProtocol](https://sourcehat.com/audits/GeistProtocol) | SourceHat | Audit | 2021-10 | stale | Direct | address | matched | 7 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3142] sourcehat.com/audits/Lendle — matched: No reason recorded
- [3143] www.halborn.com/audits/lendle/brink-a73cf0 — no match: Scope section lists 10 contracts/files. Audit date from engagement end date July 31, 2025.
- [3144] drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view — no match: The provided text is a URL to a Google Drive file, not the actual audit report content. No contract names or audit date could be extracted.
- [3145] drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view — no match: The provided text is a Google Drive URL and a markdown header, not the actual audit report content. No contract names or audit date could be extracted.
- [3146] drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3147] drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3148] drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3149] drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view — no match: The provided text is a Google Drive URL and a title, not an audit report. No contracts or dates could be extracted.
- [3150] drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view — no match: The provided text is a Google Drive URL and a title, not the full audit report content. No contracts or dates could be extracted.
- [15216] sourcehat.com/audits/GeistProtocol — matched: All contracts listed in the 'Contract Source Summary and Visualizations' table are considered in scope. The audit date is explicitly stated as 'Date: October 22nd, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/Lendle | AToken | own contract | AToken (selected) `0xec3414...320694` — deployed 2023-07-21 16:06:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | AaveOracle | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | ChefIncentivesController | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPool | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xab94be...19c3d4` — deployed 2023-07-21 16:04:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendingPoolAddressesProviderRegistry | own contract | LendingPoolAddressesProviderRegistry (selected) `0xb92bff...11b868` — deployed 2023-07-21 16:04:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendingPoolCollateralManager | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPoolConfigurator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingRateOracle | own contract | LendingRateOracle (selected) `0xc7f65c...d72392` — deployed 2023-07-21 16:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendleToken | own contract | LendleToken (selected) `0x25356a...e49396` — deployed 2023-07-21 16:09:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | MasterChef | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | MerkleDistributor | own contract | MerkleDistributor (selected) `0xb57f32...589296` — deployed 2023-07-21 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | MultiFeeDistribution | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | PythPriceFeed | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | StableDebtToken | own contract | StableDebtToken (selected) `0xd8a36c...745407` — deployed 2023-07-21 16:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | StakingConfigurator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | TokenVesting | own contract | TokenVesting (selected) `0xa7f784...1f7e6f` — deployed 2023-07-21 16:11:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | VariableDebtToken | own contract | VariableDebtToken (selected) `0xb3f838...7d6af5` — deployed 2023-07-21 16:06:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | WETHGateway | own contract | WETHGateway (selected) `0xec831f...ac55c2` — deployed 2023-07-21 16:12:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.halborn.com/audits/lendle/brink-a73cf0 | BrinkVaultFactory | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | MorphoStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | AaveStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | LendleStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | MathLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | UtilsLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | BrinkVault | unmatched — not counted | — | listed in scope | no |
| sourcehat.com/audits/GeistProtocol | AToken | own contract | AToken (selected) `0xec3414...320694` — deployed 2023-07-21 16:06:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | StableDebtToken | own contract | StableDebtToken (selected) `0xd8a36c...745407` — deployed 2023-07-21 16:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | VariableDebtToken | own contract | VariableDebtToken (selected) `0xb3f838...7d6af5` — deployed 2023-07-21 16:06:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | ChefIncentivesController | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | GeistToken | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | TokenVesting | own contract | TokenVesting (selected) `0xa7f784...1f7e6f` — deployed 2023-07-21 16:11:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | MultiFeeDistribution | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | MasterChef | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | MerkleDistributor | own contract | MerkleDistributor (selected) `0xb57f32...589296` — deployed 2023-07-21 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | LendingPool | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolCollateralManager | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xab94be...19c3d4` — deployed 2023-07-21 16:04:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | LendingPoolAddressesProviderRegistry | own contract | LendingPoolAddressesProviderRegistry (selected) `0xb92bff...11b868` — deployed 2023-07-21 16:04:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=7
- Match method counts: unique_name=17

Zero-match audit list:

- [3143] www.halborn.com/audits/lendle/brink-a73cf0
- [3144] drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view
- [3145] drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view
- [3146] drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view
- [3147] drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view
- [3148] drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view
- [3149] drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view
- [3150] drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view

Fork inheritance lineage and inherited audits are included when available.
