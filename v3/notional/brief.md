# Agentic Audit Brief: Notional

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 157 unique implementations (365 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,098,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Notional. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, ethereum. Structural roles: 35 core, 5 supporting, 4 unclassified. 40 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: core (35), supporting (5), unclassified (4)
- Contract kinds: contract (35), abstract (9)
- Detected standards: erc1967proxy (9), erc20 (1)
- Frameworks: openzeppelin (40), openzeppelin-upgradeable (39), chainlink (1)
- Upgradeable-pattern rows: 40

## Fork Analysis

0 of 73 contracts are derived from known codebases. 73 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0da210...8b210e`, chain 1)
- UnnamedContract (`0x11de34...3eb2b6`, chain 1)
- UnnamedContract (`0x161d33...44ddfa`, chain 1)
- UnnamedContract (`0x19fe8c...7598a5`, chain 1)
- UnnamedContract (`0x265329...57948f`, chain 1)
- UnnamedContract (`0x2920f9...77f97e`, chain 1)
- UnnamedContract (`0x2f7350...b84afc`, chain 1)
- UnnamedContract (`0x341046...c31fd3`, chain 1)
- UnnamedContract (`0x39a1f8...f5cc95`, chain 1)
- UnnamedContract (`0x40bf20...33a057`, chain 1)
- UnnamedContract (`0x4a9e28...dee9b8`, chain 1)
- UnnamedContract (`0x4ebfc1...d305a6`, chain 1)
- UnnamedContract (`0x54fa13...959974`, chain 1)
- UnnamedContract (`0x6e7058...e4263f`, chain 1)
- UnnamedContract (`0x794a78...bc423e`, chain 1)
- UnnamedContract (`0x7ef4d0...bf3dec`, chain 1)
- UnnamedContract (`0x81a2b6...ce86d7`, chain 1)
- UnnamedContract (`0x83706a...25d29d`, chain 1)
- UnnamedContract (`0x87c478...703444`, chain 1)
- UnnamedContract (`0x9499ad...650933`, chain 1)
- UnnamedContract (`0x96be0c...2a5c6f`, chain 1)
- UnnamedContract (`0xa2adbc...067da0`, chain 1)
- UnnamedContract (`0xaa57dd...466a03`, chain 1)
- UnnamedContract (`0xaeeafb...2de762`, chain 1)
- UnnamedContract (`0xbb828e...33e878`, chain 1)
- UnnamedContract (`0xcc6fb2...cf747f`, chain 1)
- UnnamedContract (`0xd5c341...bab6dc`, chain 1)
- UnnamedContract (`0xd62364...af9ce3`, chain 1)
- UnnamedContract (`0xda7f29...0a116b`, chain 1)
- UnnamedContract (`0xe25d40...a1a13d`, chain 1)
- UnnamedContract (`0xf3c275...96cdf1`, chain 1)
- UnnamedContract (`0xfbadc4...6788d1`, chain 1)
- ClonableBeaconProxy (`0x019be2...bc7bc1`, chain 42161)
- EmptyProxy (`0x90c3c4...41a4ff`, chain 42161)
- FinalRouterV3_Arbitrum (`0xc3209c...b03574`, chain 42161)
- nBeaconProxy (`0x051961...f75db7`, chain 42161)
- nBeaconProxy (`0x06d45e...37619a`, chain 42161)
- nBeaconProxy (`0x0ace2d...93b886`, chain 42161)
- nBeaconProxy (`0x0f13fb...986adc`, chain 42161)
- nBeaconProxy (`0x18b0fc...305a29`, chain 42161)
- nBeaconProxy (`0x1fd865...85d3aa`, chain 42161)
- nBeaconProxy (`0x2c4294...c9216f`, chain 42161)
- nBeaconProxy (`0x2ddb08...e8e5dd`, chain 42161)
- nBeaconProxy (`0x3482db...88e707`, chain 42161)
- nBeaconProxy (`0x4068a4...673efe`, chain 42161)
- nBeaconProxy (`0x41be01...a3ba90`, chain 42161)
- nBeaconProxy (`0x452f5c...04cc56`, chain 42161)
- nBeaconProxy (`0x4ee657...92e081`, chain 42161)
- nBeaconProxy (`0x52602a...7f99d6`, chain 42161)
- nBeaconProxy (`0x63ffcf...c40650`, chain 42161)
- nBeaconProxy (`0x65ea9a...159a6c`, chain 42161)
- nBeaconProxy (`0x692749...46eaa0`, chain 42161)
- nBeaconProxy (`0x696336...8a2f57`, chain 42161)
- nBeaconProxy (`0x6d13d3...ed73c4`, chain 42161)
- nBeaconProxy (`0x6ebce2...231818`, chain 42161)
- nBeaconProxy (`0x6f28ca...e0f53d`, chain 42161)
- nBeaconProxy (`0x6f6603...d45b8f`, chain 42161)
- nBeaconProxy (`0x7366d1...5d13b3`, chain 42161)
- nBeaconProxy (`0x809b43...0773bb`, chain 42161)
- nBeaconProxy (`0x8652de...8febcc`, chain 42161)
- nBeaconProxy (`0x866eb0...840385`, chain 42161)
- nBeaconProxy (`0x9c0fbb...27f442`, chain 42161)
- nBeaconProxy (`0xa135d7...cf56bf`, chain 42161)
- nBeaconProxy (`0xabc07b...1b90d6`, chain 42161)
- nBeaconProxy (`0xb9bfbb...463192`, chain 42161)
- nBeaconProxy (`0xbc323e...402d6b`, chain 42161)
- nBeaconProxy (`0xc12d27...9ff958`, chain 42161)
- nBeaconProxy (`0xc3882b...dd5d75`, chain 42161)
- nBeaconProxy (`0xc9c5e5...665ea3`, chain 42161)
- nBeaconProxy (`0xd63ace...8081ac`, chain 42161)
- nBeaconProxy (`0xef3f53...9f547a`, chain 42161)
- nBeaconProxy (`0xfbd9e8...644b56`, chain 42161)
- NoteERC20 (`0x95df7e...bd6ba3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 118 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 92
- Confirmed-live implementations: 39 of 157 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/116
- Verified + Unaudited implementations: 116
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 157
- Raw deployments: 365
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (116)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x5f11e9...b0227e`; ethereum `0x7f9536...35768c`; ethereum `0x8a096f...7f9a8c`; ethereum `0x922e6e...bc87d0`; ethereum `0x95ed51...cc94ae`; ethereum `0x97cc93...4b9af7`; ethereum `0xf9fdb6...69002a`; arbitrum `0xc2763a...7b03b7` | ⚠️ Unaudited |
| AddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46a237...5a2d74`; ethereum `0x6a273b...a6f7bc` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe335d3...63ec95`; ethereum `0xe569a3...8d49c8` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x32d82a...1d52d1` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x914255...d278ca` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeeb885...758f91` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf94507...dc9cfb` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x91b79f...bc8010` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa0d61c...f25857` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xcac9c0...e97e68` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd7c3dc...dd1937` | ⚠️ Unaudited |
| BatchAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x112170...59283f`; ethereum `0x1d1a53...f7dd46`; ethereum `0x3b8b09...0708af`; ethereum `0x4fc792...ebede9`; ethereum `0x53423d...a5c8a9`; ethereum `0x59074a...8e9d39`; ethereum `0x63757f...efcb93`; ethereum `0xb484dd...65f59f`; ethereum `0xb87afd...9a9263`; ethereum `0xdb7a1b...8762e1`; arbitrum `0x0092a5...59707f` | ⚠️ Unaudited |
| CalculationViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x851a28...49c7f3`; ethereum `0xbe4aba...5f261e`; ethereum `0xc6f5ba...312a9e`; arbitrum `0x280dec...16f423` | ⚠️ Unaudited |
| cTokenAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x181900...c3c424`; ethereum `0x1ce3d7...92c988`; ethereum `0x5fbf45...c450fc`; ethereum `0x913f57...7977d8`; ethereum `0xc7b9c5...79d2e9` | ⚠️ Unaudited |
| cTokenLegacyAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x612741...15c693`; ethereum `0x8e3d44...3cfad6` | ⚠️ Unaudited |
| cTokenV2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x39d959...13e69d`; ethereum `0x719993...f78e00`; ethereum `0x7b0cc1...597987`; ethereum `0xe329e8...e1abde` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30fba4...e553e2` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84e58d...5570b8` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86b222...1ef538` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba4eb3...26e9c6` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe20048...32f848` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3533f0...baea10` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5c36a0...cdb643` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xae04e4...5a1f4a` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf95441...34eedd` | ⚠️ Unaudited |
| Curve2TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb1113c...d85172` | ⚠️ Unaudited |
| Curve2TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6aa58...89f021` | ⚠️ Unaudited |
| CurveConvex2Token | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x271656...7f167f` | ⚠️ Unaudited |
| EmptyProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389990 | 2 deployments: arbitrum `0x90c3c4...41a4ff`; arbitrum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| ERC1155Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x518885...79aa10`; ethereum `0xbf12d7...75bfa5`; ethereum `0xffd753...a341c9`; arbitrum `0xde14d5...d2a939` | ⚠️ Unaudited |
| ERC4626OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x227eb3...5bd330`; ethereum `0x5165b1...70cfa5` | ⚠️ Unaudited |
| EthenaWithdrawRequestManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c7c9a...803c9f` | ⚠️ Unaudited |
| EtherFiWithdrawRequestManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x71ba37...962f20` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389992 | 2 deployments: arbitrum `0x1344a3...de0369`; arbitrum `0xc3209c...b03574` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1b3534...0292d7`; arbitrum `0x634a52...0d2cf7`; arbitrum `0xf3f7dd...c0dee7` | ⚠️ Unaudited |
| FinalRouterV3_Mainnet | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15ce51...5b90fe`; ethereum `0xfe2944...f6ea8e` | ⚠️ Unaudited |
| FinalV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1344a3...de0369`; ethereum `0x5c424c...e8923f` | ⚠️ Unaudited |
| FlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x0a058e...ed3e76`; ethereum `0x430ea5...8f1a7b`; ethereum `0x572dcc...282f4e`; ethereum `0x61f1fb...3e645b`; ethereum `0x7e9819...195493`; ethereum `0x9bfc1c...f64395`; arbitrum `0x0158fc...b888db`; arbitrum `0x326746...1e2ce1`; arbitrum `0x48a18d...120fd6`; arbitrum `0x53423d...a5c8a9`; arbitrum `0xa44a87...ff6c71` | ⚠️ Unaudited |
| FreeCollateralExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x422a2e...59bb6a`; ethereum `0xea7aa6...c6fdf7`; arbitrum `0x72ec9d...940d4e` | ⚠️ Unaudited |
| GenericERC20WithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d8295...2a936c`; ethereum `0xe854ce...d1d0ff` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x02479b...cb0909` | ⚠️ Unaudited |
| GovernanceAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x514f95...64690f`; ethereum `0xd2b104...34253d`; arbitrum `0x10aae3...c0f51d` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086b4e...06d7cb` | ⚠️ Unaudited |
| InfiniFiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7ee5ff...f151f6`; ethereum `0xb3b111...e14761`; ethereum `0xbecf0e...8d2d79` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x46c423...3a9898`; ethereum `0x49b194...da20ec` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x955580...24c133`; ethereum `0xf72c1c...b79348` | ⚠️ Unaudited |
| InitializeMarketsAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x280dec...16f423`; ethereum `0x6a3516...26881f`; ethereum `0x884b74...45c893`; ethereum `0xa44a87...ff6c71`; ethereum `0xf35431...2f6a09`; arbitrum `0x422a2e...59bb6a` | ⚠️ Unaudited |
| LeveragedNTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee01...64cfcf` | ⚠️ Unaudited |
| LiquidateCurrencyAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0ff45f...7284b0`; ethereum `0x3abbd5...68a0b2`; ethereum `0x6b986a...392ce7`; ethereum `0x885d3d...7181a6`; arbitrum `0xdfb618...86832f` | ⚠️ Unaudited |
| LiquidatefCashAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xb12b08...d8ed70`; ethereum `0xf38a93...16a800`; arbitrum `0x1c5107...6e4332` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x372808...5acc0c`; ethereum `0xa40aed...7f1dd4` | ⚠️ Unaudited |
| MidasOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3cda35...914e5d`; ethereum `0xde9b77...7dcd6c` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x091356...9dd673`; ethereum `0x780e28...48deaa` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a5c94...092ce4`; ethereum `0x3519ba...da467d` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x496135...7f4ad0`; ethereum `0xb9cd42...4f5d42` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x769720...b17fa4`; ethereum `0x94f6cb...ec7e6e` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18f866...4ec10f`; ethereum `0x6e4471...bacdb0` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe4ebb6...da7268`; ethereum `0xefb950...341014` | ⚠️ Unaudited |
| MigrateCTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02551d...e042b2` | ⚠️ Unaudited |
| MigrateIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6085b0...d1e29b` | ⚠️ Unaudited |
| MigrateV2ToV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f0fb...b8d437` | ⚠️ Unaudited |
| MorphoLendingRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9a0c63...2ecaa0` | ⚠️ Unaudited |
| NoteERC20 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389986 | 2 deployments: ethereum `0x95df7e...bd6ba3`; ethereum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| NotionalV1ToNotionalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf47d71...8b7876` | ⚠️ Unaudited |
| nTokenAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1cd33f...a3c93a`; ethereum `0x3533f0...baea10`; arbitrum `0x662f1b...975526` | ⚠️ Unaudited |
| nTokenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb2577...fd8ec5` | ⚠️ Unaudited |
| nTokenERC20Proxy | token | project_anchor | own_supporting | 9 | arbitrum | unit-389989 (9 proxies) | 9 deployments: arbitrum `0x06d45e...37619a`; arbitrum `0x0f13fb...986adc`; arbitrum `0x18b0fc...305a29`; arbitrum `0x2c4294...c9216f`; arbitrum `0x52602a...7f99d6`; arbitrum `0x696336...8a2f57`; arbitrum `0x6f6603...d45b8f`; arbitrum `0x809b43...0773bb`; arbitrum `0x9c0fbb...27f442` | ⚠️ Unaudited |
| nTokenMintAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0092a5...59707f`; ethereum `0x0e01db...003573`; ethereum `0x380cdf...e1ff55`; ethereum `0x65c23f...13ca2e`; ethereum `0xe5ae18...432de7`; ethereum `0xf95441...34eedd`; arbitrum `0x086b4e...06d7cb` | ⚠️ Unaudited |
| nTokenRedeemAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c5107...6e4332`; ethereum `0x2f77cd...7ceb92`; ethereum `0x91b79f...bc8010`; ethereum `0xce3f1d...7a48d4`; arbitrum `0x95df7e...bd6ba3` | ⚠️ Unaudited |
| nUpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd676d7...2329dd` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f12b8...960187`; ethereum `0x24b5ff...1e40f7` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47b320...038640`; ethereum `0xaac514...965c9c` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba43bf...3cdde0`; ethereum `0xdbbb03...fa24d5` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc91864...fb492a`; ethereum `0xe8f28c...6e929b` | ⚠️ Unaudited |
| OriginWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0bc6d6...bb7251`; ethereum `0x59aa04...64b9fb` | ⚠️ Unaudited |
| PauseAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078dc7...969d08`; ethereum `0xee8086...0fba0d` | ⚠️ Unaudited |
| PauseRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f9e06...0055f8`; ethereum `0x7652d9...16b949`; ethereum `0x847051...0ef0f6`; ethereum `0xb15b2c...4e5ca1`; ethereum `0xbe401d...e0bd25`; arbitrum `0x6b986a...392ce7` | ⚠️ Unaudited |
| PendlePT_sUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e61e8...f3f622` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5fc3fc...00e1dd` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87a90...7296b0` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe47d15...3c282b` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x851a28...49c7f3` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x878c46...940b12` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dc86...58a560` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389991 (14 proxies) | 14 deployments: arbitrum `0x051961...f75db7`; arbitrum `0x0ace2d...93b886`; arbitrum `0x1fd865...85d3aa`; arbitrum `0x63ffcf...c40650`; arbitrum `0x6d13d3...ed73c4`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x8652de...8febcc`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac`; arbitrum `0xef3f53...9f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366d5b...6b178f` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389988 (14 proxies) | 14 deployments: arbitrum `0x2ddb08...e8e5dd`; arbitrum `0x3482db...88e707`; arbitrum `0x4068a4...673efe`; arbitrum `0x41be01...a3ba90`; arbitrum `0x452f5c...04cc56`; arbitrum `0x4ee657...92e081`; arbitrum `0x65ea9a...159a6c`; arbitrum `0x692749...46eaa0`; arbitrum `0x6ebce2...231818`; arbitrum `0x7366d1...5d13b3`; arbitrum `0xc12d27...9ff958`; arbitrum `0xc3882b...dd5d75`; arbitrum `0xc9c5e5...665ea3`; arbitrum `0xfbd9e8...644b56` | ⚠️ Unaudited |
| RebalanceHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x366d5b...6b178f` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x0158fc...b888db`; ethereum `0x123fca...5aa7e4`; ethereum `0x16ed13...189962`; ethereum `0x19152d...392b23`; ethereum `0x2c67b0...e981e0`; ethereum `0x2cc280...031cb0`; ethereum `0x3da72a...1ee555`; ethereum `0x42c74c...f6fb23`; ethereum `0x587843...1f96ca`; ethereum `0x878c46...940b12`; ethereum `0x9a419c...c2e0bd`; ethereum `0xd7c3dc...dd1937`; ethereum `0xed1546...23f4b0`; ethereum `0xfab3b2...15eaad`; ethereum `0xfea323...e9fa0a`; arbitrum `0xb12b08...d8ed70` | ⚠️ Unaudited |
| SecondaryRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf3552...b3abb2` | ⚠️ Unaudited |
| SettleAssetsExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xb15167...126e49`; ethereum `0xe10836...a44b21`; arbitrum `0xa40aed...7f1dd4` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0409d3...206a3e`; ethereum `0xa9f31d...2e9b31` | ⚠️ Unaudited |
| StakingStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04b517...fad718`; ethereum `0x0fa90c...9d84de`; ethereum `0x5fdc7e...c41810`; ethereum `0xaa7c54...6efca0`; ethereum `0xc02b6d...dfd31f` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2838f9...5135ba`; ethereum `0xaf14d0...d9c48b` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48ba5c...002dab`; ethereum `0x9fb579...b465e0` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4eed2b...767d93`; ethereum `0x7f723f...a7d5ae` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-389987 | `0x019be2...bc7bc1` | ⚠️ Unaudited |
| StrategyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78d09...c67c67` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x375eaf...643235`; ethereum `0xad2078...75416b` | ⚠️ Unaudited |
| TimelockRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfe98...7b0068` | ⚠️ Unaudited |
| TradingAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x111a2f...3cc5d7`; ethereum `0x5c36a0...cdb643`; ethereum `0x662f1b...975526`; ethereum `0xcac9c0...e97e68`; ethereum `0xf6b306...10761a`; arbitrum `0xca2848...b89b90` | ⚠️ Unaudited |
| TradingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x179a2d...7dc823`; ethereum `0x86bece...3908b0`; ethereum `0xf1dfc2...7dca3d`; arbitrum `0x514f95...64690f` | ⚠️ Unaudited |
| TreasuryAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x3965d7...b8bc68`; arbitrum `0x1cd33f...a3c93a` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xe728ea...3b07b7`; ethereum `0xe801b5...ec5b0a`; arbitrum `0x92dc86...58a560` | ⚠️ Unaudited |
| UnderlyingHoldingsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: ethereum `0x1d1c4b...131494`; ethereum `0x218af5...92ef29`; ethereum `0x25bbd3...a24067`; ethereum `0x269689...754549`; ethereum `0x3a0499...7d985f`; ethereum `0x7cb892...bce3f7`; ethereum `0x84edde...b73680`; ethereum `0x85ced2...9f01f0`; ethereum `0x99745f...2fc6aa`; ethereum `0xa7d226...acbf61`; ethereum `0xb8129e...1b4505`; ethereum `0xc0ab10...de9d25`; arbitrum `0x0eae7b...91eb0e`; arbitrum `0x253b76...27ce13`; arbitrum `0x4af053...51207f`; arbitrum `0x614bc6...05c914`; arbitrum `0x913f57...7977d8`; arbitrum `0x96d2c6...cf1052` | ⚠️ Unaudited |
| VaultAccountAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a751c...db1a78`; ethereum `0x602f8e...68090b`; ethereum `0x8d3d71...b92cbd`; ethereum `0x941460...2b3c04`; ethereum `0xf8b25d...06021a`; arbitrum `0xabd096...f1b488` | ⚠️ Unaudited |
| VaultAccountHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d7646...b87052`; arbitrum `0xffd753...a341c9` | ⚠️ Unaudited |
| VaultAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x67e5f0...31aa75`; ethereum `0xae04e4...5a1f4a`; ethereum `0xd16273...4655f4`; arbitrum `0x63757f...efcb93` | ⚠️ Unaudited |
| VaultLiquidationAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49d0e9...cff50c`; arbitrum `0x5f11e9...b0227e` | ⚠️ Unaudited |
| VaultRewarderLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x96b1eb...6c4974`; ethereum `0x9c7b86...c29d84`; arbitrum `0x3965d7...b8bc68`; arbitrum `0x54bb21...e30a97`; arbitrum `0xf38a93...16a800` | ⚠️ Unaudited |
| Views | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54bb21...e30a97`; ethereum `0xfebc56...f3dd1b` | ⚠️ Unaudited |
| Views | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xde14d5...d2a939`; arbitrum `0xb15167...126e49` | ⚠️ Unaudited |
| wfCashERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x895f06...e40fbf`; arbitrum `0x895f06...e40fbf` | ⚠️ Unaudited |
| wfCashERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd676d7...2329dd` | ⚠️ Unaudited |
| WrappedfCashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5d051d...e27261`; arbitrum `0x5d051d...e27261` | ⚠️ Unaudited |
| wstETHOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37a27...f74c35` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389922 | `0x0da210...8b210e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389923 | `0x11de34...3eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389924 | `0x161d33...44ddfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389925 | `0x19fe8c...7598a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389926 | `0x265329...57948f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389927 | `0x2920f9...77f97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389928 | `0x2f7350...b84afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389929 | `0x341046...c31fd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389930 | `0x39a1f8...f5cc95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389931 | `0x40bf20...33a057` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389932 | `0x4a9e28...dee9b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389933 | `0x4ebfc1...d305a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389934 | `0x54fa13...959974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3dd2...0095d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e7f6...f0037b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389935 | `0x6e7058...e4263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ec9d...940d4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389936 | `0x794a78...bc423e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389937 | `0x7ef4d0...bf3dec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389938 | `0x81a2b6...ce86d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389939 | `0x83706a...25d29d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389940 | `0x87c478...703444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90c3c4...41a4ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389941 | `0x9499ad...650933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389942 | `0x96be0c...2a5c6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389943 | `0xa2adbc...067da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389944 | `0xaa57dd...466a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389945 | `0xaeeafb...2de762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389946 | `0xbb828e...33e878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2763a...7b03b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc38170...a21e1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389947 | `0xcc6fb2...cf747f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389948 | `0xd5c341...bab6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389949 | `0xd62364...af9ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389950 | `0xda7f29...0a116b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389951 | `0xe25d40...a1a13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389952 | `0xf3c275...96cdf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389953 | `0xfbadc4...6788d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68225f...bc76b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbbb03...fa24d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1dfc2...7dca3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.07.18 - Final - Notional Exponent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Audit_Report.pdf](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [www.openzeppelin.com/news/notional-audit](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [audits.sherlock.xyz/contests/59](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 35 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf — no match: No reason recorded
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf — no match: No reason recorded
- [2730] Audit_Report.pdf — no match: Extracted contract names from findings and file paths in the audit report. No explicit scope section found, but contracts are clearly in scope as they are the subject of findings.
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf — no match: No reason recorded
- [2733] www.openzeppelin.com/news/notional-audit — no match: The report covers two audits: first audit (commit 66ce8f3e...) and second audit (commit b6fc6be...). The scope for the second audit includes all contracts in /contracts directory except MockLiquidation.sol. The first audit scope includes all contracts in /packages/contracts/contracts excluding some interfaces and mocks. Extracted names are from both audits, focusing on contracts explicitly mentioned in scope or findings.
- [2734] audits.sherlock.xyz/contests/59 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [14895] Notional v4 Security Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | IMidas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | Midas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasUSDOracle | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Audit_Report.pdf | TradingUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StrategyUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | ZeroExAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Stable2TokenOracleMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | AuraStakingMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | CrossCurrencyfCashVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | SettlementUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TradingModule | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | PoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenVaultMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerConstants | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerVaultStorage | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StableMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | wstETHChainlinkOracle | unmatched — not counted | — | listed in scope and findings | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | InfiniFi | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/notional-audit | CashMarket | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Common | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Directory | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Token | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Trade | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Escrow | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ExchangeRate | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | FutureCash | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Governed | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Liquidation | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Portfolios | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | PortfoliosStorage | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | RiskFramework | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | SafeInt256 | unmatched — not counted | — | mentioned in findings | no |
| Notional v4 Security Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EthenaWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFiWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20WithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | OriginWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x90c3c4...41a4ff` | EmptyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1344a3...de0369` | FinalRouterV3_Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95df7e...bd6ba3` | NoteERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x06d45e...37619a` | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x051961...f75db7` | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ddb08...e8e5dd` | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x019be2...bc7bc1` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 86 |
| upstream | 28 |
| standard_library | 2 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf
- [2730] Audit_Report.pdf
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf
- [2733] www.openzeppelin.com/news/notional-audit
- [2734] audits.sherlock.xyz/contests/59
- [14895] Notional v4 Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
