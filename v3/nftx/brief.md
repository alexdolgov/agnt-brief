# Agentic Audit Brief: NFTX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 243 unique implementations (417 raw deployments)
- Coverage basis: 11/64 confirmed own live verified implementations (17.2%); conservative 17.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,165,703.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NFTX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 82 contract row(s) across arbitrum, ethereum. Structural roles: 56 unclassified, 13 core, 13 supporting. 18 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 82
- Structural roles: unclassified (56), core (13), supporting (13)
- Contract kinds: contract (81), abstract (1)
- Detected standards: ownable (17), erc165 (13), erc20 (3), multicall (3), erc721 (2)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (15), uniswap-v3 (11), permit2 (3), solmate (3), uniswap-v2 (2)
- Upgradeable-pattern rows: 18

## Fork Analysis

0 of 37 contracts are derived from known codebases. 37 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x40d73d...16c7b2`, chain 1)
- UnnamedContract (`0x5566b3...00eb33`, chain 1)
- UnnamedContract (`0x87665c...0305b8`, chain 1)
- UnnamedContract (`0xd4e155...5fe31f`, chain 42161)
- AdminUpgradeabilityProxy (`0x7ae9d7...4ae090`, chain 1)
- AdminUpgradeabilityProxy (`0xaf93fc...e8bf7e`, chain 1)
- MarketplaceUniversalRouterZap (`0x293a0c...79be3d`, chain 1)
- MarketplaceUniversalRouterZap (`0xf56296...b9ca40`, chain 42161)
- MiniMeToken (`0x87d73e...47f776`, chain 1)
- MultiProxyController (`0x35fb40...48750c`, chain 1)
- MultiProxyController (`0x732e5f...e164c1`, chain 42161)
- NFTXFeeDistributor (`0x58efca...bb70b1`, chain 1)
- NFTXMarketplaceZap (`0x0fc584...c0c22d`, chain 1)
- NFTXMarketplaceZap (`0x66f26e...8001b7`, chain 42161)
- NFTXRouter (`0x70a741...ebe42a`, chain 1)
- NFTXRouter (`0x527317...a3ef4d`, chain 42161)
- NFTXStakingZap (`0x0b8ee2...b65fb1`, chain 1)
- NFTXStakingZap (`0xdc774d...11345c`, chain 1)
- NFTXStakingZap (`0xfb8664...c84959`, chain 42161)
- NFTXUnstakingInventoryZap (`0x2374a3...4868d3`, chain 1)
- NFTXVaultUpgradeable (`0xe8b682...d97bd1`, chain 1)
- NonfungiblePositionManager (`0x26387f...4b71bf`, chain 1)
- NonfungiblePositionManager (`0x8ad238...5466ea`, chain 42161)
- Permit2 (`0x000000...c78ba3`, chain 1)
- Permit2 (`0x000000...c78ba3`, chain 42161)
- QuoterV2 (`0x5493df...c5294a`, chain 1)
- QuoterV2 (`0xff3957...9e7d6d`, chain 42161)
- SwapRouter (`0x1703f8...4277a3`, chain 1)
- TickLens (`0x3f2797...a7b081`, chain 42161)
- TimelockExcludeList (`0x96c394...4e1df9`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- UniversalRouter (`0x250d62...0cc90f`, chain 1)
- UniversalRouter (`0x0da692...32e5ad`, chain 42161)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- XBounties (`0x9c5a36...83e1dc`, chain 1)
- XStore (`0xbe5473...92e7b7`, chain 1)
- XTokenClonable (`0x925297...b864b0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 82; live-surface rows included: 82 (82 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 68/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/64 (17.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 68 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 175 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 68 of 243 unique; 175 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/190
- Verified + Unaudited implementations: 179
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 243
- Raw deployments: 417
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 15.6% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 6 | 3.2% | 2022-04 |
| Code4rena | Tier 1 | 5 | 2.6% | 2022-12 |
| unknown | Tier 2 | 1 | 0.5% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249858 | 2 deployments: arbitrum `0x1a0f3d...7f35a2`; arbitrum `0xc88f4c...3a211e` | ✅ Audited |
| NFTXFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249842 | 2 deployments: ethereum `0x58efca...bb70b1`; ethereum `0x7ae9d7...4ae090` | ✅ Audited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249853 | 2 deployments: arbitrum `0x1a2c03...8c4cc6`; arbitrum `0x6fc85d...63c6a8` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249838 | 2 deployments: ethereum `0x0e49a0...85029a`; ethereum `0x688c3e...538e37` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249851 | 2 deployments: arbitrum `0x5326a7...df3934`; arbitrum `0x5b3004...9fa41d` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249857 | 2 deployments: arbitrum `0x68a7f4...d3f78e`; arbitrum `0xc6d7e3...5d14ee` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 2 | ethereum | unit-249849 | 2 deployments: ethereum `0xbe86f6...558216`; ethereum `0xfa7504...4b7062` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249855 | 2 deployments: arbitrum `0x91c0f0...e1f48c`; arbitrum `0xe77b89...fbb33c` | ✅ Audited |
| NFTXVaultUpgradeable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249817 | `0xe8b682...d97bd1` | ✅ Audited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249846 | 2 deployments: ethereum `0x5fad0e...b1a5c7`; ethereum `0xacc36b...62f5a2` | ✅ Audited |
| XStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249811 | `0xbe5473...92e7b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (179)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fffe9...a0c3d9` | ⚠️ Unaudited |
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-249854 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| Autoglyphs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e407...197782` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1a9...e0af59` | ⚠️ Unaudited |
| Blockmon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4882...b33e15` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x1ba12a...435357`; ethereum `0x4333b4...fc4671`; ethereum `0x59304d...e134ca`; ethereum `0xd55c20...024232`; ethereum `0xf13206...581c6a` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a6e8...5ca98a` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e8bbd...f58e39` | ⚠️ Unaudited |
| Create2BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013cf7...7f9635` | ⚠️ Unaudited |
| CreateVaultZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510c9f...587a0d` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249795 | `0x56dab3...8e6f74` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249835 | `0xf9e891...38946f` | ⚠️ Unaudited |
| CryptoPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6f2...66db8d` | ⚠️ Unaudited |
| CryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f5a3...3af3b2` | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47e3c...193bbb` | ⚠️ Unaudited |
| DoomRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7166e7...ff84e5` | ⚠️ Unaudited |
| ERC721Batcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83eee...0f0207` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fff03...cb1d96` | ⚠️ Unaudited |
| ERC721Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006dd6...f3b218` | ⚠️ Unaudited |
| FailSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6bb724...b0e698`; ethereum `0x866566...fb8f2b`; arbitrum `0xbda73b...a06fb7` | ⚠️ Unaudited |
| GeneScience | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97e0a...946a2b` | ⚠️ Unaudited |
| HashmaskSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078d3b...517452`; ethereum `0x9c41fa...ba7ae1` | ⚠️ Unaudited |
| InventoryStakingDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x39d9a9...e9f8bb`; arbitrum `0x7bd0ff...2bd732` | ⚠️ Unaudited |
| KittyCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06012c...7a266d` | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42638...5541eb` | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce97...b3ef05` | ⚠️ Unaudited |
| LSSVMPairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb16c13...89c0a4` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92de3a...755b22` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd80c9...436d56` | ⚠️ Unaudited |
| LSSVMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b2e8c...d68329`; ethereum `0xe5763f...fb50a4` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249785 | `0x293a0c...79be3d` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249834 | `0xf56296...b9ca40` | ⚠️ Unaudited |
| Meebits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd294...716bc7` | ⚠️ Unaudited |
| MGear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5d070a...9b4821`; ethereum `0x65b394...3950e2`; ethereum `0x85aea7...3ce4fc` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08ea78...141751`; ethereum `0x129e0f...464154`; ethereum `0x43354d...e0a26b`; ethereum `0x9e3acb...e5a1d8`; ethereum `0xb12c68...b605d7`; ethereum `0xcc147a...924319` | ⚠️ Unaudited |
| MigratorZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x089610...e98cec`; ethereum `0x946eca...6b3f51`; ethereum `0xd0999d...9b9fe3`; arbitrum `0x6e1537...d2cabd` | ⚠️ Unaudited |
| MineablePunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b5a69...e22a06`; ethereum `0x595a89...bda687` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-249801 | `0x87d73e...47f776` | ⚠️ Unaudited |
| MonImageRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d824d...a13e67` | ⚠️ Unaudited |
| MonMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042774...e0f750` | ⚠️ Unaudited |
| MonSpawner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fad5d...dfc868` | ⚠️ Unaudited |
| MonStaker2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06337...c3c1c0` | ⚠️ Unaudited |
| MonStaker3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3300b...1c3197` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249787 | `0x35fb40...48750c` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249828 | `0x732e5f...e164c1` | ⚠️ Unaudited |
| MultiProxyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x871e3e...60c737` | ⚠️ Unaudited |
| MultiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306262...dfb6c8` | ⚠️ Unaudited |
| Multisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc653e1...f3ad1f` | ⚠️ Unaudited |
| NFGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c7704...9b4077` | ⚠️ Unaudited |
| NFGasNames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2f1b...cfe031` | ⚠️ Unaudited |
| NFTClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe354ac...9f027c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x4dfd47...2860fc`; arbitrum `0x1b180e...f7ab09` | ⚠️ Unaudited |
| Nftdns | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xe37bb1...6218da`; ethereum `0xee4c82...0fc149`; ethereum `0xfc5a18...d8360f` | ⚠️ Unaudited |
| NFTLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3baa5a...e344fb`; ethereum `0x9fd1e5...065560` | ⚠️ Unaudited |
| NFTLotteryPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dd2b...f4cd87` | ⚠️ Unaudited |
| NFTLotteryPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd9c0...105026` | ⚠️ Unaudited |
| NFTLotteryURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2031bd...8f9251`; ethereum `0x513ca6...594e50`; ethereum `0xce060b...dd5656` | ⚠️ Unaudited |
| Nftnft | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537edf...c7ba40` | ⚠️ Unaudited |
| NFTStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5802b...3339af` | ⚠️ Unaudited |
| NFTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a2f04...afe868`; ethereum `0x9f65a0...c1ba16` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249844 | 2 deployments: ethereum `0x4086e9...ed94d5`; ethereum `0x74520b...d96674` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0b8ee2...b65fb1`; arbitrum `0x2c556f...29d493` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6dcdfd...c2ad16`; arbitrum `0x8d03b9...11f9b7` | ⚠️ Unaudited |
| NFTXENSMerkleEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82dbee...753ecd` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249798 | `0x6845ff...7406e7` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d96c...9e21fe` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249822 | `0x0d5097...7de886` | ⚠️ Unaudited |
| NFTXGen0KittyEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa267eb...dcbceb`; arbitrum `0x1efd76...5bc6c9` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x11e3f6...119f43`; ethereum `0x3e9f47...05bd74`; ethereum `0x72012a...ed6b66`; arbitrum `0x1678c8...af4434`; arbitrum `0x3f8fdf...b8b742` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249847 | 2 deployments: ethereum `0x3e135c...fab893`; ethereum `0xccb1cf...485880` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x608f0d...9d5798`; ethereum `0xde74a8...961cb7` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64029e...e5d557`; arbitrum `0xd9a609...c5d857` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b3d8f...a28e8e`; ethereum `0x8e912c...61de33` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249848 | 2 deployments: ethereum `0x889f31...cd6152`; ethereum `0xf76e6b...45081a` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249850 | 2 deployments: arbitrum `0x2c76d2...0433de`; arbitrum `0xe39a7e...47d155` | ⚠️ Unaudited |
| NFTXListEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x162d7a...821044`; arbitrum `0x81f56d...455ab1` | ⚠️ Unaudited |
| NFTXLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0e3ab4...94ff3b`; ethereum `0x156911...dead37`; ethereum `0x4f566a...46188e`; ethereum `0x64651f...9cc86c`; ethereum `0x703845...dd7649`; ethereum `0x8dceab...c3753b`; ethereum `0x95eadd...3df8be`; ethereum `0xa64c2f...04bf68`; ethereum `0xb9a6b3...7b22b7`; ethereum `0xbde654...f24da9`; ethereum `0xd9a609...c5d857`; ethereum `0xdde5a3...1976d6`; ethereum `0xf7a232...0b0687`; arbitrum `0x57c8aa...a59cd6`; arbitrum `0x7827bc...ecabd7` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27eb56...ec3c22`; ethereum `0xbbc530...c14371` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249805 | `0x941a6d...cd481c` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249824 | `0x3bd751...8a2904` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249778 | `0x0fc584...c0c22d` | ⚠️ Unaudited |
| NFTXMarketplaceZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3693ab...f67746`; ethereum `0x5542ab...dc98ad`; ethereum `0xceb0a5...d79ec8`; arbitrum `0x95eadd...3df8be` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249827 | `0x66f26e...8001b7` | ⚠️ Unaudited |
| NFTXRangeEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38141d...5db6d3`; arbitrum `0xafa950...f6c686` | ⚠️ Unaudited |
| NFTXRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b3e4e...254f5f`; ethereum `0x833657...e13a94` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249799 | `0x70a741...ebe42a` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249826 | `0x527317...a3ef4d` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06c36f...79d8e1`; ethereum `0x309577...af562d` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249839 | 2 deployments: ethereum `0x0ef372...2d1680`; ethereum `0xfd8a76...ae4a86` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d74b7...4915c6`; arbitrum `0x4939f5...dd2765` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249776 | `0x0b8ee2...b65fb1` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0d74b7...4915c6`; ethereum `0x26735b...b7a644`; ethereum `0x28e916...fce360`; ethereum `0x4939f5...dd2765`; ethereum `0x64029e...e5d557`; ethereum `0x7a5e0b...436791`; arbitrum `0xa12d30...4c695e` | ⚠️ Unaudited |
| NFTXStakingZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249815 | `0xdc774d...11345c` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249836 | `0xfb8664...c84959` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249782 | `0x2374a3...4868d3` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249791 | `0x51d660...f3543b` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xa8f152...6e8eef`; arbitrum `0x009e41...de8c70`; arbitrum `0xe8c93d...60dd28` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249831 | `0xb25ea8...67bc07` | ⚠️ Unaudited |
| NFTXv12Migration | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249841 | 2 deployments: ethereum `0x47d9ac...876c72`; ethereum `0xaf93fc...e8bf7e` | ⚠️ Unaudited |
| NFTXv12Migration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2431...8dab98` | ⚠️ Unaudited |
| NFTXV1Buyout | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28083d...8a6f1e`; ethereum `0xba8880...f89075` | ⚠️ Unaudited |
| NFTXv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaf638...59ec9f` | ⚠️ Unaudited |
| NFTXv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf912d...1dc04d` | ⚠️ Unaudited |
| NFTXv4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d52e6...2e7f4f` | ⚠️ Unaudited |
| NFTXv5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb67f19...d58ac4` | ⚠️ Unaudited |
| NFTXVaultCreationZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa42eca...506d37`; arbitrum `0x4164c9...446103` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x367b2c...a46207`; ethereum `0x612447...017812`; ethereum `0x6a911d...cb0dab`; ethereum `0x7f899e...00f16d`; ethereum `0xb0652e...9705ba`; arbitrum `0x786bd8...e75a99`; arbitrum `0x86157f...e060e9` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x668fa5...5a33c1`; ethereum `0xe2858f...e5b46a` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xcb6230...2b4b08`; arbitrum `0xe01cf5...98afae` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b85d7...441480` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249845 | 2 deployments: ethereum `0xaba2eb...47b4db`; ethereum `0xc25533...858f01` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249856 | 2 deployments: arbitrum `0x4deeb9...1cb711`; arbitrum `0xa96b03...f9ced2` | ⚠️ Unaudited |
| NFTXVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x0fa0fd...d279ed`; ethereum `0x20ea6c...4db6a3`; ethereum `0x2c556f...29d493`; ethereum `0x2d7db0...bb198e`; ethereum `0x36b799...7d321c`; ethereum `0x46c64e...463d12`; ethereum `0x4d6d11...8d3172`; ethereum `0x73d2ff...f6b52a`; ethereum `0x881ca9...0f6c14`; ethereum `0x8b0c35...30cd26`; ethereum `0xb13907...c31545`; ethereum `0xb14b8f...559d2e`; ethereum `0xcb6230...2b4b08`; ethereum `0xe0fbc3...3700b9`; ethereum `0xf69d08...e8fa80`; ethereum `0xfd5fb4...646ee2`; ethereum `0xfe8e4f...0ace82`; arbitrum `0xb14b8f...559d2e`; arbitrum `0xca523f...a65baa`; arbitrum `0xd4031c...034338`; arbitrum `0xe7a3ee...a4f7ed`; arbitrum `0xf09bcf...6316b7`; arbitrum `0xfde612...b05342` | ⚠️ Unaudited |
| NFTXVaultUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x173233...6768af`; ethereum `0x1f8698...c7fdc0`; ethereum `0x4bdd44...e4066e`; ethereum `0x711b85...b79f16`; arbitrum `0xe263cf...527dda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-249784 | `0x26387f...4b71bf` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38b19...072fda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-249829 | `0x8ad238...5466ea` | ⚠️ Unaudited |
| OtherPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9b1b...06389f` | ⚠️ Unaudited |
| OtherPunksConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53ef0...face19` | ⚠️ Unaudited |
| PenguSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b505...e05afb` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249775 | `0x000000...c78ba3` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249821 | `0x000000...c78ba3` | ⚠️ Unaudited |
| ProtoCards0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c07d...9348a3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: ethereum `0x1abdcb...a2ca5e`; ethereum `0x51a0df...fed976`; ethereum `0x57e266...108533`; ethereum `0x6ce71b...c52fab`; ethereum `0x7be610...b4a9db`; ethereum `0x99751a...535a62`; ethereum `0xbb270b...3c579c`; ethereum `0xdbaad4...687f91`; ethereum `0xf8cab5...325e58`; arbitrum `0x19f319...229ba8`; arbitrum `0x2be289...5c7b77`; arbitrum `0xbab852...1b8be8`; arbitrum `0xda7c2f...468a54` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249789 | `0x4333d6...0437df` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249806 | `0x947c0b...8741c2` | ⚠️ Unaudited |
| ProxyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae9f6b...ffde7d`; ethereum `0xb359ee...fd98cc` | ⚠️ Unaudited |
| ProxyControllerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e7488...e2ff30`; ethereum `0xf5f191...5144df` | ⚠️ Unaudited |
| PublicCryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f15e1...6cd1cc` | ⚠️ Unaudited |
| PunkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cca1...418539` | ⚠️ Unaudited |
| PunkVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a99fa...79e491` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249792 | `0x5493df...c5294a` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249837 | `0xff3957...9e7d6d` | ⚠️ Unaudited |
| Renderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8a3a...ccb51a` | ⚠️ Unaudited |
| RNGDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d514c...2fa546` | ⚠️ Unaudited |
| S3KS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed0c0...01801d` | ⚠️ Unaudited |
| SaleClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7163cd...89a9e5`; ethereum `0x98a46c...7183cf`; ethereum `0xb1690c...b57d8c` | ⚠️ Unaudited |
| Salt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17030...342d93` | ⚠️ Unaudited |
| SaltTokenURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4c16...ea4747` | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1eabb6...ea6b45`; ethereum `0xe27250...70337e` | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31333d...172d5a`; ethereum `0x96cf14...aa7f30` | ⚠️ Unaudited |
| ShutdownRedeemerV3Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3b4e64...e4ae7e`; ethereum `0xa9abbf...87cbe3` | ⚠️ Unaudited |
| SiringClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6b5a1e...2c4aac`; ethereum `0x795275...a36a86`; ethereum `0xc7af99...f27f26` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x930ebe...4c9041`; ethereum `0xea478e...5ba71d` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d7775...05dd8e`; arbitrum `0x31cb83...a02aed` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249852 | 2 deployments: arbitrum `0x5ee78a...2a9543`; arbitrum `0x92b80f...5830d5` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe5ab39...4b0b7a`; arbitrum `0xfb3c37...3b842a` | ⚠️ Unaudited |
| SVGGenerator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1036f5...87776a`; ethereum `0x6c9f3e...b97464`; ethereum `0xdcec4a...1ef89e` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249781 | `0x1703f8...4277a3` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249833 | `0xea6024...eef502` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249780 | `0x165011...a42c40` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249825 | `0x3f2797...a7b081` | ⚠️ Unaudited |
| TimelockExcludeList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xd44198...c0d6b9`; ethereum `0xe614ae...76b49e`; arbitrum `0x1c57d0...d152a3` | ⚠️ Unaudited |
| TimelockExcludeList | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249830 | `0x96c394...4e1df9` | ⚠️ Unaudited |
| TimelockRewardDistributionTokenImpl | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda2d4...a55ec0` | ⚠️ Unaudited |
| TokenAppController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f89a...b8f4e2` | ⚠️ Unaudited |
| TokenMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249814 | `0xd62b2d...1b8df3` | ⚠️ Unaudited |
| TransformERC20Feature | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdef1c0...b25eff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x33b381...5b6702` | ⚠️ Unaudited |
| Unexpected | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a835...462d22` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0463a0...99d332` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249840 | `0xa70e10...3db101` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249859 | `0xf4d051...1cabf8` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249783 | `0x250d62...0cc90f` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249823 | `0x0da692...32e5ad` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4529ad...c4b628` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-249812 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| XBounties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249807 | `0x9c5a36...83e1dc` | ⚠️ Unaudited |
| XMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aada3...70bf74` | ⚠️ Unaudited |
| XStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92abef...036198` | ⚠️ Unaudited |
| XStoreMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249777 | `0x0cca02...3aed62` | ⚠️ Unaudited |
| XToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x04e6ba...0611f6`; ethereum `0x0fe629...a48a3f`; ethereum `0x181380...3dd9b5`; ethereum `0x1aa177...1df428`; ethereum `0x1dc172...ad7347`; ethereum `0x27ffed...80a8a2`; ethereum `0x49706a...2ded4d`; ethereum `0x4acc9c...333f58`; ethereum `0x59a82f...fe1769`; ethereum `0x5b9f63...a49729`; ethereum `0x603002...061c21`; ethereum `0x69bbe2...786385`; ethereum `0x77ecd3...91e895`; ethereum `0x8712a5...cdf7b6`; ethereum `0x9cea2e...a61ea5`; ethereum `0xab9c92...4403c8`; ethereum `0xaba49d...70536e`; ethereum `0xb10d6a...b6244a`; ethereum `0xb547fa...40eb08`; ethereum `0xb5a093...1ae32d`; ethereum `0xb7acb1...dfcc3c`; ethereum `0xc4bf60...354849`; ethereum `0xc8aa43...2cb2b5`; ethereum `0xf18ade...4a3a74` | ⚠️ Unaudited |
| XTokenClonable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249804 | `0x925297...b864b0` | ⚠️ Unaudited |
| XTokenClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f3c3...17fd3d` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa76cee...929881`; ethereum `0xe7ac17...3cefea` | ⚠️ Unaudited |
| XTokenUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x08765c...dd76fb` | ⚠️ Unaudited |
| XXMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5c90...6ab2f3` | ⚠️ Unaudited |
| ZeroExRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a994...c10cd3` | ⚠️ Unaudited |
| ZeroExRouter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608276...cd4664` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02363a...c4f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cc6d...26cb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091c7d...a1b9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12680c...cbf349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x143ba2...2f0cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2ab8...ad795e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2428f4...bc8e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309558...d82314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d327...4816c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8881...d75cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249788 | `0x40d73d...16c7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516431...85d764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5296e8...f4290d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249793 | `0x5566b3...00eb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58517b...f4eafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ba23b...fde32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6731f4...c07455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a56a8...053485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bde06...f95ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f4df...a416c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3ee7...f0fec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af7b1...5044db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7336...8de419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82744d...91c821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b28b...f71a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c902...576cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f6e5...52409d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249800 | `0x87665c...0305b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2c1e...8f428e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2631...a9b277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9683d9...19cc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984976...aea346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dcf...869438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae9574...da67a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd6bf3...37fd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc61735...f08839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c0a6...cb5303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a6e8...f6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9377b...47d4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed16db...3eb43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0202e...28f6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81d6e...c0ead8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5af9...e6bc46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56c3...e1d883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26735b...b7a644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd6fc...3f30ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47d9ac...876c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d67ba...4175a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57ebf3...1065b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e6ed...fd0bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249832 | `0xd4e155...5fe31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8b9e6...95dd12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9b081...b4c7a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NFTX-final.pdf](https://github.com/NFTX-project/audit-level-k/blob/master/NFTX-final.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [code4rena.com/reports/2021-05-nftx](https://code4rena.com/reports/2021-05-nftx) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | matched | 5 | 4 | 0 | 5 | high |
| [code4rena.com/reports/2021-12-nftx](https://code4rena.com/reports/2021-12-nftx) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2FxxMQXacJ9gspSb09eUCz%2FToB_Audit.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | contract_name | matched | 6 | 5 | 0 | 4 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2Ff5r6lXZIs4rTMBTrt0eH%2FNFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3022] NFTX-final.pdf — matched: No reason recorded
- [3023] code4rena.com/reports/2021-05-nftx — matched: Extracted 10 contract names from findings and scope section. Audit date from report header.
- [3024] code4rena.com/reports/2021-12-nftx — matched: Extracted 12 contracts from the NFTX contest audit report. The scope section mentions 11 smart contracts, but the findings reference additional contracts like XTokenUpgradeable, PalmNFTXStakingZap, NFTXFlashSwipe, TimelockRewardDistributionTokenImpl, and NFTXV1Buyout, which are likely part of the audited codebase. The audit date is from the report title.
- [3025] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf — matched: Extracted contracts from Project Coverage section and findings. Excluded out-of-scope files.
- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf — no match: Four contracts explicitly listed in scope table. Audit date from cover page: December 23, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NFTX-final.pdf | NFTX | unmatched — not counted | — | — | no |
| NFTX-final.pdf | XStore | own contract | XStore (selected) `0xbe5473...92e7b7` — deployed 2020-12-13 05:57:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXFeeDistributor | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7ae9d7...4ae090` — deployed 2021-06-21 08:40:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXEligiblityManager | unmatched — not counted | — | Mentioned in findings H-02, M-05, L-03, N-02 | no |
| code4rena.com/reports/2021-05-nftx | NFTXMintRequestEligibility | unmatched — not counted | — | Mentioned in findings M-07, G-02, G-06 | no |
| code4rena.com/reports/2021-05-nftx | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | StakingTokenProvider | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x92b80f...5830d5` — deployed 2022-05-14 23:33:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x5fad0e...b1a5c7` — deployed 2021-06-25 06:21:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-25 was 4d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | PausableUpgradeable | unmatched — not counted | — | Mentioned in findings N-01, N-03 | no |
| code4rena.com/reports/2021-05-nftx | ERC20FlashMintUpgradeable | unmatched — not counted | — | Mentioned in findings H-01, N-01 | no |
| code4rena.com/reports/2021-05-nftx | NFTXRangeEligibility | unmatched — not counted | — | Mentioned in finding N-04 | no |
| code4rena.com/reports/2021-12-nftx | NFTXMarketplaceZap | ambiguous — not counted | NFTXMarketplaceZap (alternative) `0x0fc584...c0c22d` — deployed 2022-01-19 08:44:55+03 — liveness: live (current_address_book_code)<br>NFTXMarketplaceZap (alternative) `0x66f26e...8001b7` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXSimpleFeeDistributor | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x68a7f4...d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76...ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXStakingZap | ambiguous — not counted | NFTXStakingZap (alternative) `0xfb8664...c84959` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0xdc774d...11345c` — deployed 2022-05-02 06:32:33+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0x0b8ee2...b65fb1` — deployed 2021-07-18 21:25:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultFactoryUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-12-nftx | NFTXInventoryStaking | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1a2c03...8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c...fab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXLPStaking | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | XTokenUpgradeable | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | PalmNFTXStakingZap | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXFlashSwipe | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | TimelockRewardDistributionTokenImpl | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXV1Buyout | unmatched — not counted | — | Referenced in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXInventoryStaking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1a2c03...8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c...fab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 87d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXSimpleFeeDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68a7f4...d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76...ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 168d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | XTokenUpgradeable | unmatched — not counted | — | mentioned in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXEligibilityManager | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x4086e9...ed94d5` — deployed 2021-06-21 08:41:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x1a0f3d...7f35a2` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | ProxyController | ambiguous — not counted | ProxyController (alternative) `0x4333d6...0437df` — deployed 2021-06-25 06:21:18+03 — liveness: live (current_address_book_code)<br>ProxyController (alternative) `0x947c0b...8741c2` — deployed 2020-12-13 05:58:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXRangeEligibility | unmatched — not counted | — | explicitly in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | RewardDistributionToken | unmatched — not counted | — | mentioned in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXMarketplace0xZap | ambiguous — not counted | NFTXMarketplace0xZap (alternative) `0x3bd751...8a2904` — deployed 2023-01-10 20:44:30+03 — liveness: live (current_address_book_code)<br>NFTXMarketplace0xZap (alternative) `0x941a6d...cd481c` — deployed 2023-01-10 16:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXYieldStakingZap | unmatched — not counted | — | listed in scope table with 156 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXENSMerkleEligibility | unmatched — not counted | — | listed in scope table with 38 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | VaultCreationZap | unmatched — not counted | — | listed in scope table with 198 lines | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56dab3...8e6f74` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf9e891...38946f` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x293a0c...79be3d` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf56296...b9ca40` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87d73e...47f776` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35fb40...48750c` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732e5f...e164c1` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4086e9...ed94d5` | NFTXEligibilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6845ff...7406e7` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d5097...7de886` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e135c...fab893` | NFTXInventoryStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x889f31...cd6152` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c76d2...0433de` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941a6d...cd481c` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bd751...8a2904` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fc584...c0c22d` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66f26e...8001b7` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70a741...ebe42a` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x527317...a3ef4d` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ef372...2d1680` | NFTXSimpleFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b8ee2...b65fb1` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc774d...11345c` | NFTXStakingZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfb8664...c84959` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2374a3...4868d3` | NFTXUnstakingInventoryZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51d660...f3543b` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb25ea8...67bc07` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47d9ac...876c72` | NFTXv12Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaba2eb...47b4db` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4deeb9...1cb711` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26387f...4b71bf` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8ad238...5466ea` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4333d6...0437df` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947c0b...8741c2` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5493df...c5294a` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff3957...9e7d6d` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ee78a...2a9543` | StakingTokenProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1703f8...4277a3` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea6024...eef502` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x165011...a42c40` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3f2797...a7b081` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c394...4e1df9` | TimelockExcludeList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd62b2d...1b8df3` | TokenMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x250d62...0cc90f` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0da692...32e5ad` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c5a36...83e1dc` | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cca02...3aed62` | XStoreMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x925297...b864b0` | XTokenClonable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 181 |
| upstream | 3 |
| standard_library | 6 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (9 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 17 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=8, unique_name=5

Zero-match audit list:

- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf

Fork inheritance lineage and inherited audits are included when available.
