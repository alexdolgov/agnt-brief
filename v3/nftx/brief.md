# Agentic Audit Brief: NFTX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, sepolia
- Contract surface: 259 unique implementations (433 raw deployments)
- Coverage basis: 11/64 confirmed own live verified implementations (17.2%); conservative 17.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,165,703.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NFTX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 82 contract row(s) across arbitrum, ethereum, sepolia. Structural roles: 56 unclassified, 13 core, 13 supporting. 18 row(s) use upgradeable patterns.

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

- UnnamedContract (`0x40d73df4f99bae688ce3c23a01022224fe16c7b2`, chain 1)
- UnnamedContract (`0x5566b3e5fc300a1b28c214b49a5950c34d00eb33`, chain 1)
- UnnamedContract (`0x87665c29ea77c4285ea7443f5f71c54ea90305b8`, chain 1)
- UnnamedContract (`0xd4e155135b7dff66c9c3b34eca4ae7d9555fe31f`, chain 42161)
- AdminUpgradeabilityProxy (`0x7ae9d7ee8489cad7afc84111b8b185ee594ae090`, chain 1)
- AdminUpgradeabilityProxy (`0xaf93fcce0548d3124a5fc3045adaf1dde4e8bf7e`, chain 1)
- MarketplaceUniversalRouterZap (`0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d`, chain 1)
- MarketplaceUniversalRouterZap (`0xf56296b3010a59ef7f0915569dd44e1302b9ca40`, chain 42161)
- MiniMeToken (`0x87d73e916d7057945c9bcd8cdd94e42a6f47f776`, chain 1)
- MultiProxyController (`0x35fb4026dcf19f8ca37dcca4d2d68a549548750c`, chain 1)
- MultiProxyController (`0x732e5f7fe7c40333dfeff57755666f85d1e164c1`, chain 42161)
- NFTXFeeDistributor (`0x58efca0e52f254b76aec95dbd8d8e687e1bb70b1`, chain 1)
- NFTXMarketplaceZap (`0x0fc584529a2aefa997697fafacba5831fac0c22d`, chain 1)
- NFTXMarketplaceZap (`0x66f26e38bd50fd52a50da8e87e435f04f98001b7`, chain 42161)
- NFTXRouter (`0x70a741a12262d4b5ff45c0179c783a380eebe42a`, chain 1)
- NFTXRouter (`0x52731751dede22827ad47109f5e9697d75a3ef4d`, chain 42161)
- NFTXStakingZap (`0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1`, chain 1)
- NFTXStakingZap (`0xdc774d5260ec66e5dd4627e1dd800eff3911345c`, chain 1)
- NFTXStakingZap (`0xfb8664e4eb4d2f8b0220d358d0d9c4896dc84959`, chain 42161)
- NFTXUnstakingInventoryZap (`0x2374a32ab7b4f7be058a69ea99cb214bff4868d3`, chain 1)
- NFTXVaultUpgradeable (`0xe8b6820b74533c27786e4724a578bfca28d97bd1`, chain 1)
- NonfungiblePositionManager (`0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf`, chain 1)
- NonfungiblePositionManager (`0x8ad238377531547838370b9c4ac346b9ed5466ea`, chain 42161)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 1)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 42161)
- QuoterV2 (`0x5493df723c17b6a768aa61f79405ba56ffc5294a`, chain 1)
- QuoterV2 (`0xff3957cb28ab34186543281e0bbe0de05c9e7d6d`, chain 42161)
- SwapRouter (`0x1703f8111b0e7a10e1d14f9073f53680d64277a3`, chain 1)
- TickLens (`0x3f2797b0e19cbf2377b8de2d1cec2698aca7b081`, chain 42161)
- TimelockExcludeList (`0x96c394cdd3b09b7b2971aa6fb8c0435c914e1df9`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UniversalRouter (`0x250d62a67254a46c0de472d2c9215e1d890cc90f`, chain 1)
- UniversalRouter (`0x0da69287b4c1b28181e5d155dddda7fa5c32e5ad`, chain 42161)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- XBounties (`0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc`, chain 1)
- XStore (`0xbe54738723cea167a76ad5421b50caa49692e7b7`, chain 1)
- XTokenClonable (`0x925297edcb4893d0d914e6d28f49381d47b864b0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 82; live-surface rows included: 82 (82 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 68/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/64 (17.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 68 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 68 of 259 unique; 191 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/190
- Verified + Unaudited implementations: 179
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 259
- Raw deployments: 433
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
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249858 | 2 deployments: arbitrum `0x1a0f3d0e40e9c211bd2d215e709b6fd2c17f35a2`; arbitrum `0xc88f4ca984e62fc198550e89e178311fa73a211e` | ✅ Audited |
| NFTXFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249842 | 2 deployments: ethereum `0x58efca0e52f254b76aec95dbd8d8e687e1bb70b1`; ethereum `0x7ae9d7ee8489cad7afc84111b8b185ee594ae090` | ✅ Audited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249853 | 2 deployments: arbitrum `0x1a2c03abd4af7c87d8b4d5ad39b56fa98e8c4cc6`; arbitrum `0x6fc85db5abde8c8401fc1bfb9ccf397e1663c6a8` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249838 | 2 deployments: ethereum `0x0e49a0fa1ae7b7a16fa66a5d5a7057e96285029a`; ethereum `0x688c3e4658b5367da06fd629e41879beab538e37` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249851 | 2 deployments: arbitrum `0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934`; arbitrum `0x5b3004375cd6770c466377acf4dd2382db9fa41d` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249857 | 2 deployments: arbitrum `0x68a7f493f6c40556931559afd22d7ed868d3f78e`; arbitrum `0xc6d7e3d586dc53031ac7d452477c16cdf45d14ee` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 2 | ethereum | unit-249849 | 2 deployments: ethereum `0xbe86f647b167567525ccaafcd6f881f1ee558216`; ethereum `0xfa750439a60e385d9e5f3d25eb9db289b74b7062` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249855 | 2 deployments: arbitrum `0x91c0f0cda1fc1d855b548649093e195bc2e1f48c`; arbitrum `0xe77b89fec41a7b7dc74eb33602e82f0672fbb33c` | ✅ Audited |
| NFTXVaultUpgradeable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249817 | `0xe8b6820b74533c27786e4724a578bfca28d97bd1` | ✅ Audited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249846 | 2 deployments: ethereum `0x5fad0e4cc9925365b9b0bbec9e0c3536c0b1a5c7`; ethereum `0xacc36baacc16e56c4a7dacd913d6e4c0af62f5a2` | ✅ Audited |
| XStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249811 | `0xbe54738723cea167a76ad5421b50caa49692e7b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (179)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fffe97f444d97e9cfe63e89144c2667b8a0c3d9` | ⚠️ Unaudited |
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-249854 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| Autoglyphs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e4078ca3495de5b1d4db434bebc5a986197782` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1a9e8bc6cbe4beaeeac277a042a584fe0af59` | ⚠️ Unaudited |
| Blockmon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf488234796ca27dba8ecf17f803ea1f4ab33e15` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x1ba12ae1fcfadd08fa37db849ef4b6e11e435357`; ethereum `0x4333b49244cc455f0a4f6010df5a4db86bfc4671`; ethereum `0x59304d0a0c594c4c2f84be7fc2a5f38765e134ca`; ethereum `0xd55c20794c31bfe5ba5a22b7dd36bff9dd024232`; ethereum `0xf1320646be6090d9ba2c7260ba6e282e88581c6a` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a6e8c436bd28fbd694cc4d31cad9d48e5ca98a` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e8bbde11dfef31532c78260502ae0a629f58e39` | ⚠️ Unaudited |
| Create2BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013cf78239144abcf06bbd56d3d190c65d7f9635` | ⚠️ Unaudited |
| CreateVaultZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510c9fb7d1ab8b0338b7434872f0d22633587a0d` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249795 | `0x56dab32697b4a313f353da0ce42b5113ed8e6f74` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249835 | `0xf9e891ab1eca89b7a4b3cbd45aebfdf3ec38946f` | ⚠️ Unaudited |
| CryptoPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6f2207e343923ba692e5cae646fb0f566db8d` | ⚠️ Unaudited |
| CryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2` | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb` | ⚠️ Unaudited |
| DoomRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7166e7db426228ba180694e0621613fc84ff84e5` | ⚠️ Unaudited |
| ERC721Batcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83eee39e723526605d784917b6e38ebcf0f0207` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96` | ⚠️ Unaudited |
| ERC721Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006dd6c488e90180d7346db5a026fd747af3b218` | ⚠️ Unaudited |
| FailSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6bb724f11a8d7254800cf34922e0d54407b0e698`; ethereum `0x8665664cd32b6263a9b716371814dc8cecfb8f2b`; arbitrum `0xbda73b600435bf4309270438842dce06f9a06fb7` | ⚠️ Unaudited |
| GeneScience | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b` | ⚠️ Unaudited |
| HashmaskSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078d3b62e82b5cee3ebdc0754cda976230517452`; ethereum `0x9c41fa54ca1aa9a2a180bd3ddf87597e2bba7ae1` | ⚠️ Unaudited |
| InventoryStakingDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x39d9a925d7fca17e430b731882b97e2d10e9f8bb`; arbitrum `0x7bd0ffd74cfdfab6fbbb9de08cdbce80202bd732` | ⚠️ Unaudited |
| KittyCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06012c8cf97bead5deae237070f9587f8e7a266d` | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42638863462d2f21bb7d4275d7637ee5d5541eb` | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce97807a81896e85841d74fb7e7b065ab3ef05` | ⚠️ Unaudited |
| LSSVMPairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb16c1342e617a5b6e4b631eb114483fdb289c0a4` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92de3a1511ef22abcf3526c302159882a4755b22` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd80c916b1194beb48abf007d0b79a7238436d56` | ⚠️ Unaudited |
| LSSVMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b2e8cda09bba9660dca5cb6233787738ad68329`; ethereum `0xe5763f17cf9668328938b61e282855c04ffb50a4` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249785 | `0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249834 | `0xf56296b3010a59ef7f0915569dd44e1302b9ca40` | ⚠️ Unaudited |
| Meebits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7` | ⚠️ Unaudited |
| MGear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5d070a1c9acdc38d853d8501f2740fab9e9b4821`; ethereum `0x65b394366af4683903077e369603d388193950e2`; ethereum `0x85aea7e1e69c0cf70f42b2b1476863dbd43ce4fc` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08ea78fb540fe5361afd39a6b421a0662e141751`; ethereum `0x129e0f1ea3afe3e132e980f377b6154f87464154`; ethereum `0x43354d2e52bd525ac5d1234caf93351a7ce0a26b`; ethereum `0x9e3acbbe7b6145a758511bb2347791f165e5a1d8`; ethereum `0xb12c6832c1d224ee9219260df38a8ffcd7b605d7`; ethereum `0xcc147a1a8fa4414c6a2ce53a64dbf48964924319` | ⚠️ Unaudited |
| MigratorZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x089610fb04c34c014b4b391f4ecefaef94e98cec`; ethereum `0x946eca3fd23778ccf96f4e8d4d1ef114a56b3f51`; ethereum `0xd0999df61929e9d83d4236cf0e1a0755869b9fe3`; arbitrum `0x6e1537ed56f52414f0182faebf79a5fb2ad2cabd` | ⚠️ Unaudited |
| MineablePunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b5a6917e1c9cf9aa12975de71a2136dade22a06`; ethereum `0x595a8974c1473717c4b5d456350cd594d9bda687` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-249801 | `0x87d73e916d7057945c9bcd8cdd94e42a6f47f776` | ⚠️ Unaudited |
| MonImageRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d824d66e1b7ba0f73b5caf75886abf812a13e67` | ⚠️ Unaudited |
| MonMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0427743df720801825a5c82e0582b1e915e0f750` | ⚠️ Unaudited |
| MonSpawner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fad5ddc4e0186b932e27baa7d37d97457dfc868` | ⚠️ Unaudited |
| MonStaker2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06337a401b468657de2f9d3e390ce5b21c3c1c0` | ⚠️ Unaudited |
| MonStaker3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3300bfc13556fa5146ffde34e92a0230a1c3197` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249787 | `0x35fb4026dcf19f8ca37dcca4d2d68a549548750c` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249828 | `0x732e5f7fe7c40333dfeff57755666f85d1e164c1` | ⚠️ Unaudited |
| MultiProxyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x871e3ec0aeaab4f99155917eb56493749260c737` | ⚠️ Unaudited |
| MultiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3062627136de797f807bcb63f0d5399a21dfb6c8` | ⚠️ Unaudited |
| Multisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc653e1b3a971078812a72d11c45ad71e00f3ad1f` | ⚠️ Unaudited |
| NFGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c770425aeb064135b5e625d46b12619189b4077` | ⚠️ Unaudited |
| NFGasNames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031` | ⚠️ Unaudited |
| NFTClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe354ac0bb78a8013617fe0efa6099769749f027c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x4dfd4706299712322c4d45896d25c878d52860fc`; arbitrum `0x1b180e12e8f675831006389f8c7a3eb10df7ab09` | ⚠️ Unaudited |
| Nftdns | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xe37bb18b86d228831a61872f5df3b5f24b6218da`; ethereum `0xee4c821ed264916d1c035515703f8980410fc149`; ethereum `0xfc5a18cc59fba8b4996e0997a19af60d4cd8360f` | ⚠️ Unaudited |
| NFTLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3baa5ab805c7888e7a92cf6d32c20938ede344fb`; ethereum `0x9fd1e56001785b37623385c6c866eba2a5065560` | ⚠️ Unaudited |
| NFTLotteryPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87` | ⚠️ Unaudited |
| NFTLotteryPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd9c0bd5628c90db7a8cf787c2580d1ef105026` | ⚠️ Unaudited |
| NFTLotteryURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2031bd6c7861509ab48bf338e280a401ee8f9251`; ethereum `0x513ca6d9cd788632418f228de292123ea6594e50`; ethereum `0xce060bc398f8154d56959e5794104d8456dd5656` | ⚠️ Unaudited |
| Nftnft | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537edfb50100974af813f263ca7714ecc4c7ba40` | ⚠️ Unaudited |
| NFTStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af` | ⚠️ Unaudited |
| NFTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a2f04faa1d39acb088bece5c2d6b00e81afe868`; ethereum `0x9f65a0730beffc2486ddff94690bc579e0c1ba16` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249844 | 2 deployments: ethereum `0x4086e98cce041d286112d021612fd894cfed94d5`; ethereum `0x74520b82c7dfafe4f960733f0912b8ad67d96674` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1`; arbitrum `0x2c556ffbdcbd5abae92fed0231e2d1752a29d493` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6dcdfd7e94957cbae9023c232de18c0f72c2ad16`; arbitrum `0x8d03b93eae73226ef1e975ed8cc82368ed11f9b7` | ⚠️ Unaudited |
| NFTXENSMerkleEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82dbeec079aeca972c75334c0f52597def753ecd` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249798 | `0x6845ff5f102bef9d785468f0beb535b4687406e7` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d96c5094fcd9ec24e612585e723b58f89e21fe` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249822 | `0x0d50970c7848ebbe52661e70057d7d063b7de886` | ⚠️ Unaudited |
| NFTXGen0KittyEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa267eb55d2cf45a966480ff52ff14fbfcadcbceb`; arbitrum `0x1efd767e7b2beba1df70c18e8b4225e7795bc6c9` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x11e3f6c1c5b751f2bf2cabc7d48e6a5af9119f43`; ethereum `0x3e9f474f4d83ecd12fa9420e270dd8306b05bd74`; ethereum `0x72012ada1d0a9e9cba22b3f13f3bc52b57ed6b66`; arbitrum `0x1678c88b66f989accbccf20e1eaf65e75aaf4434`; arbitrum `0x3f8fdf5c7e5b5d8b6b0960b905d79b375eb8b742` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249847 | 2 deployments: ethereum `0x3e135c3e981fae3383a5ae0d323860a34cfab893`; ethereum `0xccb1cfc9caa2b73a82ad23a9b3219da900485880` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x608f0d84657bb876ddedd8d8d5ab9d12639d5798`; ethereum `0xde74a8c4556e91cade600c26fce6711a29961cb7` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64029e2da85b1d53815d111fed15609034e5d557`; arbitrum `0xd9a60945dd4b3a5ea91480e82da20d3acec5d857` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e`; ethereum `0x8e912c466bd1d720b7d97034c03572c4a261de33` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249848 | 2 deployments: ethereum `0x889f313e2a3fdc1c9a45bc6020a8a18749cd6152`; ethereum `0xf76e6b0029cb2d6d41b321e5beb2e849d345081a` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249850 | 2 deployments: arbitrum `0x2c76d21d2ff72756ae7adcef87745813470433de`; arbitrum `0xe39a7e67d3e3b6eaf58bc02c4e80c3688847d155` | ⚠️ Unaudited |
| NFTXListEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x162d7a0fb6104942df3615afc8861b2fbe821044`; arbitrum `0x81f56d9fad3029a6716ec3dc00b0e67e6d455ab1` | ⚠️ Unaudited |
| NFTXLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0e3ab439db6504df11d19a2bc9107bdd6994ff3b`; ethereum `0x1569114c948d5530f73bc443fafe5af76ddead37`; ethereum `0x4f566a711901168804a74f252680d85c9246188e`; ethereum `0x64651fe54cd4ebded98fe664cd35b28b499cc86c`; ethereum `0x7038459a7db9a4318f0298a32c119db2bcdd7649`; ethereum `0x8dceab1d2aa148b5bee81b71b774870290c3753b`; ethereum `0x95eaddd888c0063b392b771d11db9704843df8be`; ethereum `0xa64c2f3f965f055e51482bf0960ebb5f2904bf68`; ethereum `0xb9a6b3e8a1b6eeb3fa6b1f48f591a953ca7b22b7`; ethereum `0xbde65406b20adb4ba9d88908187bc9460ff24da9`; ethereum `0xd9a60945dd4b3a5ea91480e82da20d3acec5d857`; ethereum `0xdde5a3175f5c9755480e4cb3cca5f1865c1976d6`; ethereum `0xf7a232044c586d658f826e1932c37cad770b0687`; arbitrum `0x57c8aa1b15229c677d309b52715f3d8442a59cd6`; arbitrum `0x7827bc09d464f7842d3725430831e1cf0eecabd7` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27eb56bce836f1068e12157d57c5083781ec3c22`; ethereum `0xbbc53022af15bb973ad906577c84784c47c14371` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249805 | `0x941a6d105802cccaa06de58a13a6f49ebdcd481c` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249824 | `0x3bd7512966cbc3406962f8877edbe80aea8a2904` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249778 | `0x0fc584529a2aefa997697fafacba5831fac0c22d` | ⚠️ Unaudited |
| NFTXMarketplaceZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3693aba8f2d90b40ba5c975967a665ac30f67746`; ethereum `0x5542abc7dc05fa2c8142804bdbcc0da8a0dc98ad`; ethereum `0xceb0a5d5ec289454570ad57054842765ecd79ec8`; arbitrum `0x95eaddd888c0063b392b771d11db9704843df8be` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249827 | `0x66f26e38bd50fd52a50da8e87e435f04f98001b7` | ⚠️ Unaudited |
| NFTXRangeEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38141d1fe316950b2dd5750c4fa8c1a1695db6d3`; arbitrum `0xafa950c8b1699e36488626a79934932951f6c686` | ⚠️ Unaudited |
| NFTXRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f`; ethereum `0x833657427eff3365d768202b986fe1164de13a94` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249799 | `0x70a741a12262d4b5ff45c0179c783a380eebe42a` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249826 | `0x52731751dede22827ad47109f5e9697d75a3ef4d` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06c36fb81ee037139b1b44406ef70e565e79d8e1`; ethereum `0x30957783ee7cc09fcf964ce9e56422f7beaf562d` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249839 | 2 deployments: ethereum `0x0ef372b6a2f8bb030760261b858b6c50e92d1680`; ethereum `0xfd8a76dc204e461db5da4f38687adc9cc5ae4a86` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d74b761eab5cc7cc0e4e625a2e2b8251a4915c6`; arbitrum `0x4939f5e390d20b7ac0bd6913a353dff753dd2765` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249776 | `0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0d74b761eab5cc7cc0e4e625a2e2b8251a4915c6`; ethereum `0x26735b389acf46309f075073175683ac15b7a644`; ethereum `0x28e9162fc10bb3a7f98f44e90fa7273698fce360`; ethereum `0x4939f5e390d20b7ac0bd6913a353dff753dd2765`; ethereum `0x64029e2da85b1d53815d111fed15609034e5d557`; ethereum `0x7a5e0b4069709cf4d02423b8cafdc608f4436791`; arbitrum `0xa12d30440d75ac533f781a2dd5fcf7eabb4c695e` | ⚠️ Unaudited |
| NFTXStakingZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249815 | `0xdc774d5260ec66e5dd4627e1dd800eff3911345c` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249836 | `0xfb8664e4eb4d2f8b0220d358d0d9c4896dc84959` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249782 | `0x2374a32ab7b4f7be058a69ea99cb214bff4868d3` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249791 | `0x51d660ba5c218b2cf33fbaca5e3abb8aeff3543b` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xa8f152a463c1c5b6a3370e9245682711c76e8eef`; arbitrum `0x009e4110fd68c603dd1f9189c4bac3d12cde8c70`; arbitrum `0xe8c93d7fcc126e25e956a7f996c4fa6ed960dd28` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249831 | `0xb25ea886fce4bfdc8750cb2d4464fe3f7a67bc07` | ⚠️ Unaudited |
| NFTXv12Migration | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249841 | 2 deployments: ethereum `0x47d9acee6aa260c36f4368091be92f0824876c72`; ethereum `0xaf93fcce0548d3124a5fc3045adaf1dde4e8bf7e` | ⚠️ Unaudited |
| NFTXv12Migration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed24316f06d67b0933c9c2a961a568ce7e8dab98` | ⚠️ Unaudited |
| NFTXV1Buyout | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28083d8bce883aa7b70130c915cd4308448a6f1e`; ethereum `0xba88803bbfc17963fe7711668209a0efb6f89075` | ⚠️ Unaudited |
| NFTXv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaf638b2ec38724b95b384127893dc938a59ec9f` | ⚠️ Unaudited |
| NFTXv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf912dafa570d6a97bd177b7b28e08097b1dc04d` | ⚠️ Unaudited |
| NFTXv4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f` | ⚠️ Unaudited |
| NFTXv5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb67f19b92210ca64c32defad5bed2898cdd58ac4` | ⚠️ Unaudited |
| NFTXVaultCreationZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa42ecabb4aded01600d6e84a3ee7785e3a506d37`; arbitrum `0x4164c90589e596239a31579417775c980f446103` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x367b2c045e15c3e653b55e08f18c1ee851a46207`; ethereum `0x612447e8d0bdb922059ce048bb5a7cef9e017812`; ethereum `0x6a911d2aaabe631f8d7daa82afbfe38633cb0dab`; ethereum `0x7f899e0cf9bc5f4d8bb3ca9df30d901dd000f16d`; ethereum `0xb0652e5d02b4bc9e9ae28263833ab08b639705ba`; arbitrum `0x786bd8aa811b3749d1310808c698020683e75a99`; arbitrum `0x86157f3e862989b71b81718ee6ed5de2ace060e9` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x668fa5d6d156faaccacb95371adbae376c5a33c1`; ethereum `0xe2858fb92facb9eb36b011938e3670bb27e5b46a` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xcb62303a5ecc5f9c5cf7b5aa967a25d9bb2b4b08`; arbitrum `0xe01cf5099e700c282a56e815abd0c4948298afae` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b85d72791f5aa390eccde320bb125df23441480` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249845 | 2 deployments: ethereum `0xaba2eb6cb6121de2a2c754a02f265dfa3547b4db`; ethereum `0xc255335bc5abd6928063f5788a5e420554858f01` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249856 | 2 deployments: arbitrum `0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711`; arbitrum `0xa96b039c455c2989b0b58a450d25684358f9ced2` | ⚠️ Unaudited |
| NFTXVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x0fa0fd98727c443dd5275774c44d27cff9d279ed`; ethereum `0x20ea6c6c0f3d4405efc3e11466e314fa7f4db6a3`; ethereum `0x2c556ffbdcbd5abae92fed0231e2d1752a29d493`; ethereum `0x2d7db053ada8af9449a34390256dddfcaabb198e`; ethereum `0x36b799160cdc2d9809d108224d1967cc9b7d321c`; ethereum `0x46c64e0b93692933f97a84681670403625463d12`; ethereum `0x4d6d117bf2fd1ffc790b95c219f4fa7e338d3172`; ethereum `0x73d2ff81fcea9832fc9ee90521abde1150f6b52a`; ethereum `0x881ca986802e8628b50b3ffffcfdbdac110f6c14`; ethereum `0x8b0c35a8593d399105448f0040011d250330cd26`; ethereum `0xb13907103606118d01d18c9deb249b89f6c31545`; ethereum `0xb14b8f97ba435c72c9814e05f946a00593559d2e`; ethereum `0xcb62303a5ecc5f9c5cf7b5aa967a25d9bb2b4b08`; ethereum `0xe0fbc366b704d0fcbcd752bfdded8382e93700b9`; ethereum `0xf69d083c17366431fca03bda8bf79e4e1ae8fa80`; ethereum `0xfd5fb4d94e085f90643cb59178daf7f10e646ee2`; ethereum `0xfe8e4f1234c87418986fefae0c0e2642280ace82`; arbitrum `0xb14b8f97ba435c72c9814e05f946a00593559d2e`; arbitrum `0xca523fbaf06a157f3d96735b6fc0626323a65baa`; arbitrum `0xd4031c7cf0e726c1d67832d5218a3bf7c5034338`; arbitrum `0xe7a3ee18abb273e55de74d824b8aaeb6d2a4f7ed`; arbitrum `0xf09bcfdb9dd2068234e08002e58f7e47b86316b7`; arbitrum `0xfde612740eb6d59d6a316e1e7fccf7c59cb05342` | ⚠️ Unaudited |
| NFTXVaultUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1732336586a5c27eb07eff5a4abed0400c6768af`; ethereum `0x1f8698a30f26fe55ccaffcd009b135b98cc7fdc0`; ethereum `0x4bdd4433215360110c7268ed5a62de43ade4066e`; ethereum `0x711b85950dbf816e7ea7f8aa77aa677cd5b79f16`; arbitrum `0xe263cfb78a1923a93e1625f43f33f55594527dda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-249784 | `0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38b19b06d96f1c0a3bc3a1478613ba91f072fda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-249829 | `0x8ad238377531547838370b9c4ac346b9ed5466ea` | ⚠️ Unaudited |
| OtherPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9b1bb73ed02db2dc3cd0d25adb42ad4d06389f` | ⚠️ Unaudited |
| OtherPunksConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53ef091e6370f0d6dab82eb83dd632141face19` | ⚠️ Unaudited |
| PenguSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b5058670211a6c39f821d01aa51f4671e05afb` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249775 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249821 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| ProtoCards0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c07dc4086af57db39821fd50417fda449348a3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: ethereum `0x1abdcb5e96650bcc0669c5544510d086e9a2ca5e`; ethereum `0x51a0df519558fd13153513776b71a2d3cffed976`; ethereum `0x57e2660578106776f558cd6933d512e360108533`; ethereum `0x6ce71bcba9500229ee5240cb854d0ab140c52fab`; ethereum `0x7be610409366950272f589b52b4fe48468b4a9db`; ethereum `0x99751a68ef1030b39d1ca67b51d145fad0535a62`; ethereum `0xbb270b34f36dd4f06cbba2b447ffaef6b23c579c`; ethereum `0xdbaad4ff02d708a0c64203487d34845c10687f91`; ethereum `0xf8cab5e4912e08c475033776d9472b81c1325e58`; arbitrum `0x19f3194e98f87367dcaa2ce502d8706a73229ba8`; arbitrum `0x2be289a6d1239f1b7be6dc309054692d055c7b77`; arbitrum `0xbab85293cf2a6702dc81943a9d9bfaf02e1b8be8`; arbitrum `0xda7c2f023dd30329d41483b95afd24962f468a54` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249789 | `0x4333d66ec59762d1626ec102d7700e64610437df` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249806 | `0x947c0bfa2bf3ae009275f13f548ba539d38741c2` | ⚠️ Unaudited |
| ProxyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae9f6b6b85389d68f6836230a90bca4f6dffde7d`; ethereum `0xb359ee637dc5550a129c6391e4faa36a06fd98cc` | ⚠️ Unaudited |
| ProxyControllerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e7488e4cec0381e7ac758234e1a8a793be2ff30`; ethereum `0xf5f1912a8afaa8f18d86814c47d623f9925144df` | ⚠️ Unaudited |
| PublicCryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f15e15b4b2b7e3c25afde61c424c82e186cd1cc` | ⚠️ Unaudited |
| PunkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cca15553f244196970eefcd45e13d459418539` | ⚠️ Unaudited |
| PunkVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a99fa495c894441180113515aab3b80ce79e491` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249792 | `0x5493df723c17b6a768aa61f79405ba56ffc5294a` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249837 | `0xff3957cb28ab34186543281e0bbe0de05c9e7d6d` | ⚠️ Unaudited |
| Renderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8a3ab1096297b99ec4feea43ebc2ef44ccb51a` | ⚠️ Unaudited |
| RNGDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d514cf4912c7ed280afe4cdf2738ef9282fa546` | ⚠️ Unaudited |
| S3KS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d` | ⚠️ Unaudited |
| SaleClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7163cd869f445a0fe0c5049a979c9e27b589a9e5`; ethereum `0x98a46c20544791cce7551d159ec4e56e857183cf`; ethereum `0xb1690c08e213a35ed9bab7b318de14420fb57d8c` | ⚠️ Unaudited |
| Salt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17030798a6d6e1a76382cf8f439182eb0342d93` | ⚠️ Unaudited |
| SaltTokenURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747` | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1eabb6eaa1854cd082fe293191b23ff868ea6b45`; ethereum `0xe27250b52fa4eb4d5b9d866d95a8aed49f70337e` | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31333df4a9c32c1a74c2869d8bb8de3225172d5a`; ethereum `0x96cf14c2a61b7142421397735e702e25f1aa7f30` | ⚠️ Unaudited |
| ShutdownRedeemerV3Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3b4e64beaa22c88844c53c122e9a290497e4ae7e`; ethereum `0xa9abbf9d6f8b46c00ec2d431445fd3fe6987cbe3` | ⚠️ Unaudited |
| SiringClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6b5a1ed9e51448c1c76dc4ddf24e243d402c4aac`; ethereum `0x795275585f84a5a6426b58109b9fd5f011a36a86`; ethereum `0xc7af99fe5513eb6710e6d5f44f9989da40f27f26` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x930ebedde65a95144dd169cb3a9c15b4614c9041`; ethereum `0xea478ec1dc4c7241b0d2a7dd82ecccecf95ba71d` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d77756c139ed3c25472daf233f332e8f605dd8e`; arbitrum `0x31cb832f661cd90fc9fca6fb70a39ca811a02aed` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249852 | 2 deployments: arbitrum `0x5ee78a5a46c4c90caa5898f5fbb14360bb2a9543`; arbitrum `0x92b80faa01389b753f41faf90e1c46dc975830d5` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe5ab394e284d095adacff8a0fb486cb5a24b0b7a`; arbitrum `0xfb3c3734d2951d0f71a2e325596a0646593b842a` | ⚠️ Unaudited |
| SVGGenerator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1036f5c5278358ea004e6530a86e4b968687776a`; ethereum `0x6c9f3ea7a182d45d63d705f9e47779ab2eb97464`; ethereum `0xdcec4a007ea2f89ff505c35814c1431af71ef89e` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249781 | `0x1703f8111b0e7a10e1d14f9073f53680d64277a3` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249833 | `0xea60242d7183e3d13dc17fb2a4d0230d34eef502` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249780 | `0x1650115ddd287be6f4972180d290d0ff89a42c40` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249825 | `0x3f2797b0e19cbf2377b8de2d1cec2698aca7b081` | ⚠️ Unaudited |
| TimelockExcludeList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xd44198f1257dc88a8eb5a2dbb389179647c0d6b9`; ethereum `0xe614ae8d4a37e048d75a08a3848fd8a62776b49e`; arbitrum `0x1c57d081ca022c6d707afb241e13690bf3d152a3` | ⚠️ Unaudited |
| TimelockExcludeList | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249830 | `0x96c394cdd3b09b7b2971aa6fb8c0435c914e1df9` | ⚠️ Unaudited |
| TimelockRewardDistributionTokenImpl | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda2d4ea96ae4c6c21b34ec4e607576163a55ec0` | ⚠️ Unaudited |
| TokenAppController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2` | ⚠️ Unaudited |
| TokenMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249814 | `0xd62b2dd08fca73b82f014107bf1cc888c61b8df3` | ⚠️ Unaudited |
| TransformERC20Feature | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdef1c0ded9bec7f1a1670819833240f027b25eff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x33b381e2e0c4adc1dbd388888e9a29079e5b6702` | ⚠️ Unaudited |
| Unexpected | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a83528d0aa752f3bbe2b6877e222ed02462d22` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0463a06fbc8bf28b3f120cd1bfc59483f099d332` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249840 | `0xa70e10beb02ff9a44007d9d3695d4b96003db101` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249859 | `0xf4d0512fb47319b0ce9144ef582862e2921cabf8` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249783 | `0x250d62a67254a46c0de472d2c9215e1d890cc90f` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249823 | `0x0da69287b4c1b28181e5d155dddda7fa5c32e5ad` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4529ad73b2cc8d4db0b0deba90de165e35c4b628` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-249812 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| XBounties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249807 | `0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc` | ⚠️ Unaudited |
| XMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aada3e213abf8529606924d8d1c55cbdc70bf74` | ⚠️ Unaudited |
| XStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92abef50275abfb37bbf266c917b378d33036198` | ⚠️ Unaudited |
| XStoreMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249777 | `0x0cca025c7b8c264f7a569aff1a74907cd43aed62` | ⚠️ Unaudited |
| XToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6`; ethereum `0x0fe629d1e84e171f8ff0c1ded2cc2221caa48a3f`; ethereum `0x1813809d6c627d14cde8006e167ee262553dd9b5`; ethereum `0x1aa1778eb261ee3aa111efbfd544b4050c1df428`; ethereum `0x1dc17288e012a6df3bc7e001bc79e3d7b3ad7347`; ethereum `0x27ffed7e5926fb2795fc85aaab558243f280a8a2`; ethereum `0x49706a576bb823cde3180c930f9947d59e2ded4d`; ethereum `0x4acc9c89f47f5330b2f4f412ef157e3016333f58`; ethereum `0x59a82f0ff8e88804a34dd467b7061f1986fe1769`; ethereum `0x5b9f63f256fac333bc2bc73c7867ba4865a49729`; ethereum `0x6030021c45d4365a296c9e16a3901b4957061c21`; ethereum `0x69bbe2fa02b4d90a944ff328663667dc32786385`; ethereum `0x77ecd352d737ebb9a7e7f35172f56da36d91e895`; ethereum `0x8712a5580995a1b0e10856e8c3e26b14c1cdf7b6`; ethereum `0x9cea2ed9e47059260c97d697f82b8a14efa61ea5`; ethereum `0xab9c92a9337a1494c6d545e48187fa37144403c8`; ethereum `0xaba49db7e374cc6954401dc0a886e0b02670536e`; ethereum `0xb10d6a165ed1ff64c02557213b2e060fdcb6244a`; ethereum `0xb547faf8bd5a52b1fe4ce5d740bdfb396140eb08`; ethereum `0xb5a0931b1b7f21c2f557fd4fddccb504e71ae32d`; ethereum `0xb7acb10b6e1d15d2e5760a9fb328e10008dfcc3c`; ethereum `0xc4bf60b93ac60db9a45ad232368d50de0a354849`; ethereum `0xc8aa432112814b9cab53811d4340ed45482cb2b5`; ethereum `0xf18ade29a225faa555e475ee01f9eb66eb4a3a74` | ⚠️ Unaudited |
| XTokenClonable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249804 | `0x925297edcb4893d0d914e6d28f49381d47b864b0` | ⚠️ Unaudited |
| XTokenClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f3c3b138493473dbb9aa4fd19f367aa017fd3d` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa76cee17463bd34df43418e9b1acdf508e929881`; ethereum `0xe7ac17ce2550f3a0b4fe3616515975eb093cefea` | ⚠️ Unaudited |
| XTokenUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x08765c76c758da951dc73d3a8863b34752dd76fb` | ⚠️ Unaudited |
| XXMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3` | ⚠️ Unaudited |
| ZeroExRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a9942ecd1349793b72c246c3be7d6210c10cd3` | ⚠️ Unaudited |
| ZeroExRouter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608276a7becb0f26a9a986b339033a3b74cd4664` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02363a2f1b2c2c5815cb6893aa27861be0c4f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cc6d7d3438abb3914606a3ca7da9f3c226cb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091c7dec9cd4a0946f75bcc8f3c00e49afa1b9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12680c032a78c9879a81b7067c97cebd51cbf349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x143ba270d1b5b5b58039c083aa7b05686d2f0cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2ab86b39409ac6b812fe2c05b95b90baad795e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2428f46a467028e97ef2b120fffd2aae4ebc8e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3095583adfdc294bacdc7b5ec98b6cdb46d82314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d327150ff6f7d59f6bb698895cbfad2c4816c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a88813cdc25488769f93d98d8e4d32b89d75cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249788 | `0x40d73df4f99bae688ce3c23a01022224fe16c7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5164310cbec85f13dd3df8d7ffe35f45a085d764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5296e8579adf7d11a7663996cd95d9dc14f4290d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249793 | `0x5566b3e5fc300a1b28c214b49a5950c34d00eb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58517ba81fea9b63f6727292b2f6f9c803f4eafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ba23beab987463a64bd05575d3d4a947dfde32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6731f4a03879e8cc3e7699ad3748ea17ebc07455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a56a89612722fc04d488f46c87d50a16a053485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bde064b12de50df8b9fd57359ff684514f95ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f4df87f1908bd48ec71bf0579c446b76a416c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3ee731ee807a610f26faa98f6a8a38f6f0fec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af7b11c46e1fdda92f180f2d7807258975044db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c73364878f50f0f8d54cb8795aef1786b8de419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82744daa7f1eeba75ea5cc4ce942ec282691c821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b28b0a2d44f48ea81d9da535a5ccb74ef71a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c902e127827a541a0e483aa4772ac77a576cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f6e550f86571841a9e7b53bf7973cb1c52409d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249800 | `0x87665c29ea77c4285ea7443f5f71c54ea90305b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2c1eb5ca6e7983cfa27de94ba49661cb8f428e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2631610c7d301ec1d2017485172edab1a9b277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9683d905caa55743ac63c464c34053b0b219cc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984976f6aca045057cc2a9de3d86a6b6d8aea346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dcff6e13132f075e36ca3a7f403236f869438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae95744bd7df05fc1880bd2bc9febda7bcda67a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4114fccf310786d65cd43fb330aaf25bf12137a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd6bf35360971780a470eeb8821422e55e37fd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc617358037da6be46a42fab50197246a76f08839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8120381ffaae4c79dd51f71affdc9f88420b505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c0a62a104fe7ad0f5c86530697840e2ecb5303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a6e89898aea2500b58cf1f69998b4d4bf6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9377b8d92e6f2cf0c1d81525b42db651147d4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed16dbd28cb25b79695624d6a54ecefdab3eb43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0202e9267930ae942f0667dc6d805057328f6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81d6ebae82b429dcf0b29fddc4d17538ac0ead8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5af9ddb304a063a6688e7b5552869d82e6bc46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56c34d4cbbc7ab18edbf7c514b9db2c2e1d883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26735b389acf46309f075073175683ac15b7a644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd6fc37b2cdc4e7039a2df096d83f47253f30ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47d9acee6aa260c36f4368091be92f0824876c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d67bab6b9dd25afe4f101cbd94f265e484175a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57ebf3195ef7a03c50b2f6f0f8ba7fc2ae1065b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e6edeb27033b6c5e4b88fbf39b2332e3fd0bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249832 | `0xd4e155135b7dff66c9c3b34eca4ae7d9555fe31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8b9e6154e39ed285176410b10bfacc33a95dd12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9b081caa0bafd3f966541363a035e8af4b4c7a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x12156cca1958b6591cc49eae03a5553458a4b424` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x31c56caf49125043e80b4d3c7f8734f949d8178c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x441b7de4340aaa5aa86db4da43d9badf7b2daa66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x53ae38742c78ee64fc077ef840b2aa47a7e9c603` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xa13e04faee08e784a44c27e9e77ca7a02d45bfd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xa7069da6a7e600e0348620484fd2b1f24e075d5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xa9bcc1e29d3460177875f68fdcc0264d22c40bf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xb8eb27ca4715f7a04228c6f83935379d1f5ababd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xd80b916470f8e79fd8d09874cb159cbb8d13d8da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xd88a3b9d0fb2d39ec8394cffd983afbb2d4a6410` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xdd2dce9c403f93c10af1846543870d065419e70b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xfbff0635f7c5327fd138e1eba72bd9877a6a7c1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xfff9976782d46cc05630d1f6ebab18b2324d6b14` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 342
- Live contracts: 63
- Unknown liveness contracts: 279
- Source-verified contracts: 292
- Currently scope-matched contracts retained as-is: 10
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=10, candidate auto own=22, candidate review=155, contamination review=22, exact address book overlap=11, source verified unclassified=72, unverified unclassified=50

Showing first 200 of 342 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0x1a0f3d0e40e9c211bd2d215e709b6fd2c17f35a2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0x1a2c03abd4af7c87d8b4d5ad39b56fa98e8c4cc6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0x68a7f493f6c40556931559afd22d7ed868d3f78e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0xe77b89fec41a7b7dc74eb33602e82f0672fbb33c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xb14b8f97ba435c72c9814e05f946a00593559d2e` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xca523fbaf06a157f3d96735b6fc0626323a65baa` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xd4031c7cf0e726c1d67832d5218a3bf7c5034338` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xe7a3ee18abb273e55de74d824b8aaeb6d2a4f7ed` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xf09bcfdb9dd2068234e08002e58f7e47b86316b7` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate auto own | NFTXVaultUpgradeable<br>`0xfde612740eb6d59d6a316e1e7fccf7c59cb05342` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | CreateVaultZap<br>`0xf9e891ab1eca89b7a4b3cbd45aebfdf3ec38946f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | InventoryStakingDescriptor<br>`0x7bd0ffd74cfdfab6fbbb9de08cdbce80202bd732` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | MigratorZap<br>`0x6e1537ed56f52414f0182faebf79a5fb2ad2cabd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXEligibilityManager<br>`0x2c556ffbdcbd5abae92fed0231e2d1752a29d493` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXEligibilityManager<br>`0x8d03b93eae73226ef1e975ed8cc82368ed11f9b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXEligibilityManager<br>`0xc88f4ca984e62fc198550e89e178311fa73a211e` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXFeeDistributorV3<br>`0x0d50970c7848ebbe52661e70057d7d063b7de886` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXInventoryStaking<br>`0x1678c88b66f989accbccf20e1eaf65e75aaf4434` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXInventoryStaking<br>`0x3f8fdf5c7e5b5d8b6b0960b905d79b375eb8b742` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXInventoryStaking<br>`0x6fc85db5abde8c8401fc1bfb9ccf397e1663c6a8` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXInventoryStaking<br>`0xd9a60945dd4b3a5ea91480e82da20d3acec5d857` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXInventoryStakingV3Upgradeable<br>`0x2c76d21d2ff72756ae7adcef87745813470433de` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXLPStaking<br>`0x57c8aa1b15229c677d309b52715f3d8442a59cd6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXLPStaking<br>`0x5b3004375cd6770c466377acf4dd2382db9fa41d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXLPStaking<br>`0x7827bc09d464f7842d3725430831e1cf0eecabd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXMarketplace0xZap<br>`0x3bd7512966cbc3406962f8877edbe80aea8a2904` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXRangeEligibility<br>`0xafa950c8b1699e36488626a79934932951f6c686` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXSimpleFeeDistributor<br>`0x0d74b761eab5cc7cc0e4e625a2e2b8251a4915c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXSimpleFeeDistributor<br>`0xc6d7e3d586dc53031ac7d452477c16cdf45d14ee` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXUnstakingInventoryZap<br>`0x009e4110fd68c603dd1f9189c4bac3d12cde8c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXUnstakingInventoryZap<br>`0xb25ea886fce4bfdc8750cb2d4464fe3f7a67bc07` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXUnstakingInventoryZap<br>`0xe8c93d7fcc126e25e956a7f996c4fa6ed960dd28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultFactoryUpgradeable<br>`0x786bd8aa811b3749d1310808c698020683e75a99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultFactoryUpgradeable<br>`0x86157f3e862989b71b81718ee6ed5de2ace060e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultFactoryUpgradeable<br>`0x91c0f0cda1fc1d855b548649093e195bc2e1f48c` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultFactoryUpgradeable<br>`0xcb62303a5ecc5f9c5cf7b5aa967a25d9bb2b4b08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultFactoryUpgradeableV3<br>`0xa96b039c455c2989b0b58a450d25684358f9ced2` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | NFTXVaultUpgradeableV3<br>`0xe263cfb78a1923a93e1625f43f33f55594527dda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | ProxyAdmin<br>`0x19f3194e98f87367dcaa2ce502d8706a73229ba8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | ProxyAdmin<br>`0x2be289a6d1239f1b7be6dc309054692d055c7b77` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | ProxyAdmin<br>`0xda7c2f023dd30329d41483b95afd24962f468a54` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | StakingTokenProvider<br>`0x31cb832f661cd90fc9fca6fb70a39ca811a02aed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | StakingTokenProvider<br>`0x5ee78a5a46c4c90caa5898f5fbb14360bb2a9543` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | StakingTokenProvider<br>`0xfb3c3734d2951d0f71a2e325596a0646593b842a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | SwapRouter<br>`0xea60242d7183e3d13dc17fb2a4d0230d34eef502` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x2d77756c139ed3c25472daf233f332e8f605dd8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x4939f5e390d20b7ac0bd6913a353dff753dd2765` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x64029e2da85b1d53815d111fed15609034e5d557` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x6dcdfd7e94957cbae9023c232de18c0f72c2ad16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x92b80faa01389b753f41faf90e1c46dc975830d5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe01cf5099e700c282a56e815abd0c4948298afae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe39a7e67d3e3b6eaf58bc02c4e80c3688847d155` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe5ab394e284d095adacff8a0fb486cb5a24b0b7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xf4d0512fb47319b0ce9144ef582862e2921cabf8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | contamination review | NFTXENSMerkleEligibility<br>`0x82dbeec079aeca972c75334c0f52597def753ecd` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | contamination review | NFTXGen0KittyEligibility<br>`0x1efd767e7b2beba1df70c18e8b4225e7795bc6c9` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | MultiProxyController<br>`0x732e5f7fe7c40333dfeff57755666f85d1e164c1` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | NFTXStakingZap<br>`0xfb8664e4eb4d2f8b0220d358d0d9c4896dc84959` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | QuoterV2<br>`0xff3957cb28ab34186543281e0bbe0de05c9e7d6d` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | TickLens<br>`0x3f2797b0e19cbf2377b8de2d1cec2698aca7b081` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | TimelockExcludeList<br>`0x96c394cdd3b09b7b2971aa6fb8c0435c914e1df9` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | exact address book overlap | UniversalRouter<br>`0x0da69287b4c1b28181e5d155dddda7fa5c32e5ad` | project_anchor | unknown | live | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | FailSafe<br>`0xbda73b600435bf4309270438842dce06f9a06fb7` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | MultiProxyController<br>`0x871e3ec0aeaab4f99155917eb56493749260c737` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0x1b180e12e8f675831006389f8c7a3eb10df7ab09` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | NFTXListEligibility<br>`0x81f56d9fad3029a6716ec3dc00b0e67e6d455ab1` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | NFTXMarketplaceZap<br>`0x95eaddd888c0063b392b771d11db9704843df8be` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | NFTXStakingZap<br>`0xa12d30440d75ac533f781a2dd5fcf7eabb4c695e` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | NFTXVaultCreationZap<br>`0x4164c90589e596239a31579417775c980f446103` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | TimelockExcludeList<br>`0x1c57d081ca022c6d707afb241e13690bf3d152a3` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | source verified unclassified | UniversalRouter<br>`0x4529ad73b2cc8d4db0b0deba90de165e35c4b628` | non_address_book | unknown | unknown | verified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26735b389acf46309f075073175683ac15b7a644` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3cd6fc37b2cdc4e7039a2df096d83f47253f30ef` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47d9acee6aa260c36f4368091be92f0824876c72` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d67bab6b9dd25afe4f101cbd94f265e484175a1` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x57ebf3195ef7a03c50b2f6f0f8ba7fc2ae1065b1` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86e6edeb27033b6c5e4b88fbf39b2332e3fd0bd7` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8b9e6154e39ed285176410b10bfacc33a95dd12` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe9b081caa0bafd3f966541363a035e8af4b4c7a9` | non_address_book | unknown | unknown | unverified | n/a | `0xdea9196dcdd2173d6e369c2acc0facc83fd9346a` |
| ethereum | currently scope matched | AdminUpgradeabilityProxy<br>`0x5fad0e4cc9925365b9b0bbec9e0c3536c0b1a5c7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | currently scope matched | AdminUpgradeabilityProxy<br>`0x688c3e4658b5367da06fd629e41879beab538e37` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | currently scope matched | AdminUpgradeabilityProxy<br>`0x7ae9d7ee8489cad7afc84111b8b185ee594ae090` | project_anchor | unknown | live | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | currently scope matched | AdminUpgradeabilityProxy<br>`0xbe86f647b167567525ccaafcd6f881f1ee558216` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | currently scope matched | NFTXVaultUpgradeable<br>`0xe8b6820b74533c27786e4724a578bfca28d97bd1` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate auto own | NFTXVaultUpgradeable<br>`0x20ea6c6c0f3d4405efc3e11466e314fa7f4db6a3` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | AdminUpgradeabilityProxy<br>`0x4086e98cce041d286112d021612fd894cfed94d5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | NFTXEligibilityManager<br>`0x74520b82c7dfafe4f960733f0912b8ad67d96674` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | NFTXLPStaking<br>`0x0e3ab439db6504df11d19a2bc9107bdd6994ff3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | NFTXLPStaking<br>`0x1569114c948d5530f73bc443fafe5af76ddead37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | NFTXVaultFactoryUpgradeable<br>`0x7f899e0cf9bc5f4d8bb3ca9df30d901dd000f16d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | ProxyAdmin<br>`0x6ce71bcba9500229ee5240cb854d0ab140c52fab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | ProxyAdmin<br>`0xbb270b34f36dd4f06cbba2b447ffaef6b23c579c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | ProxyController<br>`0x4333d66ec59762d1626ec102d7700e64610437df` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | ProxyController<br>`0xae9f6b6b85389d68f6836230a90bca4f6dffde7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | StakingTokenProvider<br>`0x930ebedde65a95144dd169cb3a9c15b4614c9041` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | StakingTokenProvider<br>`0xacc36baacc16e56c4a7dacd913d6e4c0af62f5a2` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | candidate review | StakingTokenProvider<br>`0xea478ec1dc4c7241b0d2a7dd82ecccecf95ba71d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | contamination review | NFTXListEligibility<br>`0x162d7a0fb6104942df3615afc8861b2fbe821044` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | contamination review | NFTXRangeEligibility<br>`0x38141d1fe316950b2dd5750c4fa8c1a1695db6d3` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x4fffe97f444d97e9cfe63e89144c2667b8a0c3d9` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | CErc20Delegator<br>`0x90a6e8c436bd28fbd694cc4d31cad9d48e5ca98a` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | CEtherDelegator<br>`0x1e8bbde11dfef31532c78260502ae0a629f58e39` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | NFTXFeeDistributor<br>`0x58efca0e52f254b76aec95dbd8d8e687e1bb70b1` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | NFTXGen0KittyEligibility<br>`0xa267eb55d2cf45a966480ff52ff14fbfcadcbceb` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | source verified unclassified | NFTXMarketplaceZap<br>`0x5542abc7dc05fa2c8142804bdbcc0da8a0dc98ad` | non_address_book | unknown | unknown | verified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2428f46a467028e97ef2b120fffd2aae4ebc8e01` | non_address_book | unknown | unknown | unverified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc5af9ddb304a063a6688e7b5552869d82e6bc46` | non_address_book | unknown | unknown | unverified | n/a | `0x6ce798bc8c8c93f3c312644dcbdd2ad6698622c5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4114fccf310786d65cd43fb330aaf25bf12137a` | non_address_book | unknown | unknown | unverified | n/a | `0x6fc182a1c25f79f861629497836f9f4770ee92b1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8120381ffaae4c79dd51f71affdc9f88420b505` | non_address_book | unknown | unknown | unverified | n/a | `0x6fc182a1c25f79f861629497836f9f4770ee92b1` |
| ethereum | candidate review | LSSVMPairEnumerableERC20<br>`0xd42638863462d2f21bb7d4275d7637ee5d5541eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | LSSVMPairEnumerableETH<br>`0x08ce97807a81896e85841d74fb7e7b065ab3ef05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | LSSVMPairMissingEnumerableERC20<br>`0x92de3a1511ef22abcf3526c302159882a4755b22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | LSSVMPairMissingEnumerableETH<br>`0xcd80c916b1194beb48abf007d0b79a7238436d56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | LSSVMRouter<br>`0xe5763f17cf9668328938b61e282855c04ffb50a4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | MultiRouter<br>`0x3062627136de797f807bcb63f0d5399a21dfb6c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | XToken<br>`0xb7acb10b6e1d15d2e5760a9fb328e10008dfcc3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | ERC721Batcher<br>`0xf83eee39e723526605d784917b6e38ebcf0f0207` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | ERC721Sender<br>`0x006dd6c488e90180d7346db5a026fd747af3b218` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | HashmaskSwapper<br>`0x078d3b62e82b5cee3ebdc0754cda976230517452` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | NFGasNames<br>`0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | NFTLottery<br>`0x3baa5ab805c7888e7a92cf6d32c20938ede344fb` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | NFTLotteryURI<br>`0x2031bd6c7861509ab48bf338e280a401ee8f9251` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | PenguSVG<br>`0x25b5058670211a6c39f821d01aa51f4671e05afb` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | RNGDistributor<br>`0x8d514cf4912c7ed280afe4cdf2738ef9282fa546` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | SVGGenerator2<br>`0x1036f5c5278358ea004e6530a86e4b968687776a` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | XTokenFactory<br>`0xa76cee17463bd34df43418e9b1acdf508e929881` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | contamination review | ZeroExRouter<br>`0xb7a9942ecd1349793b72c246c3be7d6210c10cd3` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | exact address book overlap | XTokenClonable<br>`0x925297edcb4893d0d914e6d28f49381d47b864b0` | project_anchor | unknown | live | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | DoomRewarder<br>`0x7166e7db426228ba180694e0621613fc84ff84e5` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | HashmaskSwapper<br>`0x9c41fa54ca1aa9a2a180bd3ddf87597e2bba7ae1` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | MonImageRegistry<br>`0x2d824d66e1b7ba0f73b5caf75886abf812a13e67` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | MonSpawner<br>`0x4fad5ddc4e0186b932e27baa7d37d97457dfc868` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | MonStaker3<br>`0xa3300bfc13556fa5146ffde34e92a0230a1c3197` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFGas<br>`0x5c770425aeb064135b5e625d46b12619189b4077` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTClaim<br>`0xe354ac0bb78a8013617fe0efa6099769749f027c` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | Nftdns<br>`0xe37bb18b86d228831a61872f5df3b5f24b6218da` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | Nftdns<br>`0xee4c821ed264916d1c035515703f8980410fc149` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | Nftdns<br>`0xfc5a18cc59fba8b4996e0997a19af60d4cd8360f` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTLottery<br>`0x9fd1e56001785b37623385c6c866eba2a5065560` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTLotteryPool<br>`0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTLotteryPoolFactory<br>`0xabd9c0bd5628c90db7a8cf787c2580d1ef105026` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTLotteryURI<br>`0x513ca6d9cd788632418f228de292123ea6594e50` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | NFTLotteryURI<br>`0xce060bc398f8154d56959e5794104d8456dd5656` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | ProtoCards0<br>`0xa1c07dc4086af57db39821fd50417fda449348a3` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | SaltTokenURI<br>`0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | skunk<br>`0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | SVGGenerator2<br>`0x6c9f3ea7a182d45d63d705f9e47779ab2eb97464` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | SVGGenerator2<br>`0xdcec4a007ea2f89ff505c35814c1431af71ef89e` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | Unexpected<br>`0xa3a83528d0aa752f3bbe2b6877e222ed02462d22` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | XTokenClonable<br>`0xb5f3c3b138493473dbb9aa4fd19f367aa017fd3d` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | XTokenFactory<br>`0xe7ac17ce2550f3a0b4fe3616515975eb093cefea` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | source verified unclassified | ZeroExRouter2<br>`0x608276a7becb0f26a9a986b339033a3b74cd4664` | non_address_book | unknown | unknown | verified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02363a2f1b2c2c5815cb6893aa27861be0c4f760` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08cc6d7d3438abb3914606a3ca7da9f3c226cb56` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x143ba270d1b5b5b58039c083aa7b05686d2f0cbc` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3095583adfdc294bacdc7b5ec98b6cdb46d82314` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39d327150ff6f7d59f6bb698895cbfad2c4816c2` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a88813cdc25488769f93d98d8e4d32b89d75cab` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58517ba81fea9b63f6727292b2f6f9c803f4eafa` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ba23beab987463a64bd05575d3d4a947dfde32e` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6731f4a03879e8cc3e7699ad3748ea17ebc07455` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a56a89612722fc04d488f46c87d50a16a053485` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bde064b12de50df8b9fd57359ff684514f95ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77f4df87f1908bd48ec71bf0579c446b76a416c2` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a3ee731ee807a610f26faa98f6a8a38f6f0fec5` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7af7b11c46e1fdda92f180f2d7807258975044db` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9683d905caa55743ac63c464c34053b0b219cc8d` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac6dcff6e13132f075e36ca3a7f403236f869438` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae95744bd7df05fc1880bd2bc9febda7bcda67a7` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd6bf35360971780a470eeb8821422e55e37fd20` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc617358037da6be46a42fab50197246a76f08839` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9a6e89898aea2500b58cf1f69998b4d4bf6010b` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0202e9267930ae942f0667dc6d805057328f6dc` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf81d6ebae82b429dcf0b29fddc4d17538ac0ead8` | non_address_book | unknown | unknown | unverified | n/a | `0x75d4bdbf6593ed463e9625694272a0ff9a6d346f` |
| ethereum | candidate review | NFTX<br>`0x3a2f04faa1d39acb088bece5c2d6b00e81afe868` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | NFTXv2<br>`0xeaf638b2ec38724b95b384127893dc938a59ec9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | NFTXv3<br>`0xcf912dafa570d6a97bd177b7b28e08097b1dc04d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | NFTXv4<br>`0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | NFTXv5<br>`0xb67f19b92210ca64c32defad5bed2898cdd58ac4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | ProxyAdmin<br>`0xdbaad4ff02d708a0c64203487d34845c10687f91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | ProxyController<br>`0x947c0bfa2bf3ae009275f13f548ba539d38741c2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | ProxyController<br>`0xb359ee637dc5550a129c6391e4faa36a06fd98cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | TokenAppController<br>`0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | TokenMultiCall<br>`0xd62b2dd08fca73b82f014107bf1cc888c61b8df3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XStore<br>`0x92abef50275abfb37bbf266c917b378d33036198` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XStoreMultiCall<br>`0x0cca025c7b8c264f7a569aff1a74907cd43aed62` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x1813809d6c627d14cde8006e167ee262553dd9b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x1dc17288e012a6df3bc7e001bc79e3d7b3ad7347` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x27ffed7e5926fb2795fc85aaab558243f280a8a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x5b9f63f256fac333bc2bc73c7867ba4865a49729` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x6030021c45d4365a296c9e16a3901b4957061c21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0x77ecd352d737ebb9a7e7f35172f56da36d91e895` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0xb10d6a165ed1ff64c02557213b2e060fdcb6244a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0xb547faf8bd5a52b1fe4ce5d740bdfb396140eb08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | candidate review | XToken<br>`0xc8aa432112814b9cab53811d4340ed45482cb2b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |
| ethereum | exact address book overlap | AdminUpgradeabilityProxy<br>`0xaf93fcce0548d3124a5fc3045adaf1dde4e8bf7e` | project_anchor | unknown | live | verified | n/a | `0xb5191de5e9ed5ce94176b7917430a8512e5ad517` |

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
| NFTX-final.pdf | XStore | own contract | XStore (selected) `0xbe54738723cea167a76ad5421b50caa49692e7b7` — deployed 2020-12-13 05:57:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x688c3e4658b5367da06fd629e41879beab538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b6820b74533c27786e4724a578bfca28d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXFeeDistributor | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7ae9d7ee8489cad7afc84111b8b185ee594ae090` — deployed 2021-06-21 08:40:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXEligiblityManager | unmatched — not counted | — | Mentioned in findings H-02, M-05, L-03, N-02 | no |
| code4rena.com/reports/2021-05-nftx | NFTXMintRequestEligibility | unmatched — not counted | — | Mentioned in findings M-07, G-02, G-06 | no |
| code4rena.com/reports/2021-05-nftx | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89fec41a7b7dc74eb33602e82f0672fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xbe86f647b167567525ccaafcd6f881f1ee558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | StakingTokenProvider | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x92b80faa01389b753f41faf90e1c46dc975830d5` — deployed 2022-05-14 23:33:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x5fad0e4cc9925365b9b0bbec9e0c3536c0b1a5c7` — deployed 2021-06-25 06:21:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-25 was 4d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | PausableUpgradeable | unmatched — not counted | — | Mentioned in findings N-01, N-03 | no |
| code4rena.com/reports/2021-05-nftx | ERC20FlashMintUpgradeable | unmatched — not counted | — | Mentioned in findings H-01, N-01 | no |
| code4rena.com/reports/2021-05-nftx | NFTXRangeEligibility | unmatched — not counted | — | Mentioned in finding N-04 | no |
| code4rena.com/reports/2021-12-nftx | NFTXMarketplaceZap | ambiguous — not counted | NFTXMarketplaceZap (alternative) `0x0fc584529a2aefa997697fafacba5831fac0c22d` — deployed 2022-01-19 08:44:55+03 — liveness: live (current_address_book_code)<br>NFTXMarketplaceZap (alternative) `0x66f26e38bd50fd52a50da8e87e435f04f98001b7` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXSimpleFeeDistributor | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x68a7f493f6c40556931559afd22d7ed868d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76dc204e461db5da4f38687adc9cc5ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXStakingZap | ambiguous — not counted | NFTXStakingZap (alternative) `0xfb8664e4eb4d2f8b0220d358d0d9c4896dc84959` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0xdc774d5260ec66e5dd4627e1dd800eff3911345c` — deployed 2022-05-02 06:32:33+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1` — deployed 2021-07-18 21:25:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultFactoryUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89fec41a7b7dc74eb33602e82f0672fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f647b167567525ccaafcd6f881f1ee558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b6820b74533c27786e4724a578bfca28d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-12-nftx | NFTXInventoryStaking | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1a2c03abd4af7c87d8b4d5ad39b56fa98e8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c3e981fae3383a5ae0d323860a34cfab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXLPStaking | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e4658b5367da06fd629e41879beab538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | XTokenUpgradeable | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | PalmNFTXStakingZap | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXFlashSwipe | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | TimelockRewardDistributionTokenImpl | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXV1Buyout | unmatched — not counted | — | Referenced in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe77b89fec41a7b7dc74eb33602e82f0672fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f647b167567525ccaafcd6f881f1ee558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b6820b74533c27786e4724a578bfca28d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXInventoryStaking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1a2c03abd4af7c87d8b4d5ad39b56fa98e8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c3e981fae3383a5ae0d323860a34cfab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 87d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e4658b5367da06fd629e41879beab538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXSimpleFeeDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68a7f493f6c40556931559afd22d7ed868d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76dc204e461db5da4f38687adc9cc5ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 168d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | XTokenUpgradeable | unmatched — not counted | — | mentioned in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXEligibilityManager | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x4086e98cce041d286112d021612fd894cfed94d5` — deployed 2021-06-21 08:41:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x1a0f3d0e40e9c211bd2d215e709b6fd2c17f35a2` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | ProxyController | ambiguous — not counted | ProxyController (alternative) `0x4333d66ec59762d1626ec102d7700e64610437df` — deployed 2021-06-25 06:21:18+03 — liveness: live (current_address_book_code)<br>ProxyController (alternative) `0x947c0bfa2bf3ae009275f13f548ba539d38741c2` — deployed 2020-12-13 05:58:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXRangeEligibility | unmatched — not counted | — | explicitly in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | RewardDistributionToken | unmatched — not counted | — | mentioned in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXMarketplace0xZap | ambiguous — not counted | NFTXMarketplace0xZap (alternative) `0x3bd7512966cbc3406962f8877edbe80aea8a2904` — deployed 2023-01-10 20:44:30+03 — liveness: live (current_address_book_code)<br>NFTXMarketplace0xZap (alternative) `0x941a6d105802cccaa06de58a13a6f49ebdcd481c` — deployed 2023-01-10 16:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXYieldStakingZap | unmatched — not counted | — | listed in scope table with 156 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXENSMerkleEligibility | unmatched — not counted | — | listed in scope table with 38 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | VaultCreationZap | unmatched — not counted | — | listed in scope table with 198 lines | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56dab32697b4a313f353da0ce42b5113ed8e6f74` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf9e891ab1eca89b7a4b3cbd45aebfdf3ec38946f` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf56296b3010a59ef7f0915569dd44e1302b9ca40` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87d73e916d7057945c9bcd8cdd94e42a6f47f776` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35fb4026dcf19f8ca37dcca4d2d68a549548750c` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732e5f7fe7c40333dfeff57755666f85d1e164c1` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4086e98cce041d286112d021612fd894cfed94d5` | NFTXEligibilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6845ff5f102bef9d785468f0beb535b4687406e7` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d50970c7848ebbe52661e70057d7d063b7de886` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e135c3e981fae3383a5ae0d323860a34cfab893` | NFTXInventoryStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x889f313e2a3fdc1c9a45bc6020a8a18749cd6152` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c76d21d2ff72756ae7adcef87745813470433de` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941a6d105802cccaa06de58a13a6f49ebdcd481c` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bd7512966cbc3406962f8877edbe80aea8a2904` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fc584529a2aefa997697fafacba5831fac0c22d` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66f26e38bd50fd52a50da8e87e435f04f98001b7` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70a741a12262d4b5ff45c0179c783a380eebe42a` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x52731751dede22827ad47109f5e9697d75a3ef4d` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ef372b6a2f8bb030760261b858b6c50e92d1680` | NFTXSimpleFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc774d5260ec66e5dd4627e1dd800eff3911345c` | NFTXStakingZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfb8664e4eb4d2f8b0220d358d0d9c4896dc84959` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2374a32ab7b4f7be058a69ea99cb214bff4868d3` | NFTXUnstakingInventoryZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51d660ba5c218b2cf33fbaca5e3abb8aeff3543b` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb25ea886fce4bfdc8750cb2d4464fe3f7a67bc07` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47d9acee6aa260c36f4368091be92f0824876c72` | NFTXv12Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaba2eb6cb6121de2a2c754a02f265dfa3547b4db` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8ad238377531547838370b9c4ac346b9ed5466ea` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4333d66ec59762d1626ec102d7700e64610437df` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947c0bfa2bf3ae009275f13f548ba539d38741c2` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5493df723c17b6a768aa61f79405ba56ffc5294a` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff3957cb28ab34186543281e0bbe0de05c9e7d6d` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ee78a5a46c4c90caa5898f5fbb14360bb2a9543` | StakingTokenProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1703f8111b0e7a10e1d14f9073f53680d64277a3` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea60242d7183e3d13dc17fb2a4d0230d34eef502` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1650115ddd287be6f4972180d290d0ff89a42c40` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3f2797b0e19cbf2377b8de2d1cec2698aca7b081` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c394cdd3b09b7b2971aa6fb8c0435c914e1df9` | TimelockExcludeList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd62b2dd08fca73b82f014107bf1cc888c61b8df3` | TokenMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x250d62a67254a46c0de472d2c9215e1d890cc90f` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0da69287b4c1b28181e5d155dddda7fa5c32e5ad` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc` | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cca025c7b8c264f7a569aff1a74907cd43aed62` | XStoreMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x925297edcb4893d0d914e6d28f49381d47b864b0` | XTokenClonable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 181 |
| upstream | 3 |
| standard_library | 6 |
| needs_review | 69 |

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
