# Agentic Audit Brief: Compound Finance

## Project Overview

- Project: Compound Finance (`compound-finance`)
- Website: [https://compound.finance/](https://compound.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.018Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, linea, mantle, optimism, polygon, scroll, unichain
- Contract surface: 777 unique implementations (777 raw deployments)
- DeFi Llama TVL: $2,244,363,245.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 726 project-authored contract(s) across 9 chain(s); 5 ERC4626 vaults, 99 ERC20 tokens, 15 ERC721 NFTs, 4 ERC1155 multi-tokens, 26 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 195 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 777; live-surface contracts included: 777 (770 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 105/770 (13.6%)
- Deployed-live implementations: 770 of 777 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 105/777
- Verified + Unaudited implementations: 672
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 777
- Raw deployments: 777
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 105 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 13.6% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 105 | 13.5% | 2022-06 |
| Trail of Bits | Tier 1 | 6 | 0.8% | 2020-02 |

## Contract Surface

### ✅ Verified + Audited (105)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLSRegistry | unknown | ethereum | n/a | [`0x1ed35b...11dd67`](./contracts/ethereum-1/0x1ed35b793d887e028493dac4a11aa5feb811dd67/) | ✅ Audited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ✅ Audited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ✅ Audited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ✅ Audited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ✅ Audited |
| ChainlinkCorrelatedAssetsPriceOracle | unknown | unichain | n/a | [`0x0090a5...83c8c3`](./contracts/unichain-130/0x0090a563c4832e4e519f5f054483519b1a83c8c3/) | ✅ Audited |
| Comet | unknown | arbitrum | n/a | [`0x023ee7...0a5f1b`](./contracts/arbitrum-42161/0x023ee795361b28cdbb94e302983578486a0a5f1b/) | ✅ Audited |
| CometExt | unknown | mantle | n/a | [`0x052a2a...b5cd69`](./contracts/mantle-5000/0x052a2aa8d16e3d69c3c6def0e743b7d958b5cd69/) | ✅ Audited |
| CometFactory | unknown | base | n/a | [`0x023ee7...0a5f1b`](./contracts/base-8453/0x023ee795361b28cdbb94e302983578486a0a5f1b/) | ✅ Audited |
| CometFactoryWithExtendedAssetList | unknown | optimism | n/a | [`0x0202ae...4d6155`](./contracts/optimism-10/0x0202aecab5f0c6c147bb4630a5678da7094d6155/) | ✅ Audited |
| CometProxyAdmin | unknown | mantle | n/a | [`0x0e3837...0f0a7b`](./contracts/mantle-5000/0x0e383794eaaa6cf7ffb2c8ad5bebbbc5cb0f0a7b/) | ✅ Audited |
| CometRewards | unknown | mantle | n/a | [`0x06029a...64d756`](./contracts/mantle-5000/0x06029a334626aa22228aa0e624b119212064d756/) | ✅ Audited |
| Comp | unknown | ethereum | n/a | [`0xc00e94...f26888`](./contracts/ethereum-1/0xc00e94cb662c3520282e6f5717214004a7f26888/) | ✅ Audited |
| CompoundEzEthLoopStrategy | unknown | ethereum | n/a | [`0xd050d6...22f1bc`](./contracts/ethereum-1/0xd050d674bdd75a0398be6b6ec87978cd6622f1bc/) | ✅ Audited |
| CompoundGovernor | unknown | ethereum | n/a | [`0x309a86...04c8c0`](./contracts/ethereum-1/0x309a862bbc1a00e45506cb8a802d1ff10004c8c0/) | ✅ Audited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ✅ Audited |
| CPoR | unknown | ethereum | n/a | [`0x575a16...f28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ✅ Audited |
| DataLayrChallengeUtils | unknown | ethereum | n/a | [`0xcdc78c...b0f55d`](./contracts/ethereum-1/0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d/) | ✅ Audited |
| DataLayrServiceManager | unknown | ethereum | n/a | [`0x5bd63a...3c14c1`](./contracts/ethereum-1/0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1/) | ✅ Audited |
| deUSD | unknown | ethereum | n/a | [`0x15700b...7aa138`](./contracts/ethereum-1/0x15700b564ca08d9439c58ca5053166e8317aa138/) | ✅ Audited |
| EigenLayrDelegation | unknown | ethereum | n/a | [`0xea4f1f...af4798`](./contracts/ethereum-1/0xea4f1fe4928f1f83a450899c068bcd455baf4798/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x478bf5...dd2192`](./contracts/ethereum-1/0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x57f5e0...af7812`](./contracts/ethereum-1/0x57f5e098cad7a3d1eed53991d4d66c45c9af7812/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x5c4606...f59219`](./contracts/ethereum-1/0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x5c5b19...198326`](./contracts/ethereum-1/0x5c5b196abe0d54485975d1ec29617d42d9198326/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xd11c45...6d5ed8`](./contracts/ethereum-1/0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ✅ Audited |
| ERC4626CorrelatedAssetsPriceOracle | unknown | base | n/a | [`0x311930...390e7a`](./contracts/base-8453/0x311930889c61e141e15a61d11be974d749390e7a/) | ✅ Audited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x5e4be8...81d58f`](./contracts/ethereum-1/0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f/) | ✅ Audited |
| InvestmentManager | unknown | ethereum | n/a | [`0x237547...a7cefd`](./contracts/ethereum-1/0x23754725a49c0f003c349a6c7869ff8609a7cefd/) | ✅ Audited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ✅ Audited |
| LiquidityBuffer | unknown | ethereum | n/a | [`0x006fad...dad409`](./contracts/ethereum-1/0x006fad88c35d973a87e451cf8d000c7e83dad409/) | ✅ Audited |
| MantleOFTAdapterUpgradeable | unknown | ethereum | n/a | [`0x60af26...3f7c4f`](./contracts/ethereum-1/0x60af2681bcc4886935f428a1386a4a68973f7c4f/) | ✅ Audited |
| Maximillion | unknown | ethereum | n/a | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | ✅ Audited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | [`0x0c3702...3ebe99`](./contracts/ethereum-1/0x0c3702bf1052acfeca77804cdb46da705e3ebe99/) | ✅ Audited |
| Pauser | unknown | ethereum | n/a | [`0x29ab87...6cf1f8`](./contracts/ethereum-1/0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8/) | ✅ Audited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ✅ Audited |
| Proxy | unknown | base | n/a | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | ✅ Audited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x02612d...8a3db3`](./contracts/arbitrum-42161/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ✅ Audited |
| ProxyFactory | unknown | arbitrum | n/a | [`0x81e5c1...78179f`](./contracts/arbitrum-42161/0x81e5c1483c6869e95a4f5b00b41181561278179f/) | ✅ Audited |
| RateBasedCorrelatedAssetsPriceOracle | unknown | ethereum | n/a | [`0x00c03a...121101`](./contracts/ethereum-1/0x00c03abc59b978ecda0a118ca8b0061ea6121101/) | ✅ Audited |
| ReverseMultiplicativePriceFeed | unknown | ethereum | n/a | [`0x04eab6...9c2796`](./contracts/ethereum-1/0x04eab657b065238aa67c3879f4d71bfdd09c2796/) | ✅ Audited |
| RsETHCorrelatedAssetsPriceOracle | unknown | ethereum | n/a | [`0x0af91e...8214c2`](./contracts/ethereum-1/0x0af91e13383fd771f21b40b79421b2d59e8214c2/) | ✅ Audited |
| RsETHTokenWrapper | unknown | optimism | n/a | [`0x87eee9...9d61b1`](./contracts/optimism-10/0x87eee96d50fb761ad85b1c982d28a042169d61b1/) | ✅ Audited |
| TAssetMultichainToken | unknown | arbitrum | n/a | [`0xd09acb...167003`](./contracts/arbitrum-42161/0xd09acb80c1e8f2291862c4978a008791c9167003/) | ✅ Audited |
| Timelock | unknown | arbitrum | n/a | [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0295e0...a5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x03abee...164e1e`](./contracts/ethereum-1/0x03abeec03bf39ac5a5c8886cf3496326d8164e1e/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0742bd...a65567`](./contracts/ethereum-1/0x0742bd018d1e9c8c918afa605e53e71cb0a65567/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x08921f...cfae6d`](./contracts/ethereum-1/0x08921f17a32110f8df44a3d5007f2acd09cfae6d/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x09134c...066572`](./contracts/ethereum-1/0x09134c643a6b95d342bdaf081fa473338f066572/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0d4fef...ab584b`](./contracts/ethereum-1/0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x173601...a830a6`](./contracts/ethereum-1/0x1736011d3e075351b319dbc1da28dac68ea830a6/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1766be...9d3b82`](./contracts/ethereum-1/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x177879...aa9de0`](./contracts/ethereum-1/0x177879ad09f0bdf71fa91573f825ae29d5aa9de0/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1e70dc...63f2e7`](./contracts/ethereum-1/0x1e70dc4b6f41c16b23cf0ee674b4d5471c63f2e7/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1fcca6...404e1e`](./contracts/ethereum-1/0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x22eec8...6fa778`](./contracts/ethereum-1/0x22eec85ba6a5cd97ead4728ea1c69e1d9c6fa778/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27e120...5985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x289d60...2d2d71`](./contracts/ethereum-1/0x289d600447a74b952ad16f0bd53b8eaaac2d2d71/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2b5b36...c3fd01`](./contracts/ethereum-1/0x2b5b36597be376221a098361ceedaaf426c3fd01/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2bf60d...4ac18a`](./contracts/ethereum-1/0x2bf60d953c8afc18415840e46272806eb14ac18a/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x33757a...f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x387dbc...02c84c`](./contracts/ethereum-1/0x387dbc0fb00b26fb085aa658527d5be98302c84c/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x38fdf7...3fdcf9`](./contracts/ethereum-1/0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3a0613...2d26ed`](./contracts/ethereum-1/0x3a0613a7ee2a0621ee11f8a609d17606612d26ed/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3b099b...6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x46ddc3...1a1a1d`](./contracts/ethereum-1/0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x582dc2...747482`](./contracts/ethereum-1/0x582dc2ee559077ae3a2bb08ef0eefe064c747482/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x58749c...56f064`](./contracts/ethereum-1/0x58749c46ffe97e4d79508a2c781c440f4756f064/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5a1279...814042`](./contracts/ethereum-1/0x5a12796f7e7ebbbc8a402667d266d2e65a814042/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6f149f...94aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x708de6...b0a1a9`](./contracts/ethereum-1/0x708de6fa67da1ce1d53d14fc3c29fba104b0a1a9/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x83ee10...360110`](./contracts/ethereum-1/0x83ee10a7aa71ddc721b871ea687f13542a360110/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x85e115...c4b5ee`](./contracts/ethereum-1/0x85e1157b1f3d1384a6a67679b761517916c4b5ee/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb08fbe...1f061e`](./contracts/ethereum-1/0xb08fbe0e46c284c002d7718b992c7022aa1f061e/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc94cff...6d0936`](./contracts/ethereum-1/0xc94cffd5249df4008a043ee61e13f19af16d0936/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xd78987...5da146`](./contracts/ethereum-1/0xd789870bea40d056a4d26055d0befcc8755da146/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | unichain | n/a | [`0x24c896...ea42cc`](./contracts/unichain-130/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | unichain | n/a | [`0x85c4f8...bfe97d`](./contracts/unichain-130/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x04c059...6c150a`](./contracts/base-8453/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0xc38e04...1208a5`](./contracts/base-8453/0xc38e046dfdadf15f7f56853674242888301208a5/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x104177...b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x05f519...e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x0ece76...2203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x22c498...30f5dc`](./contracts/linea-59144/0x22c498b5c42c787c790f8f1fcef50b33a830f5dc/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x823106...6d9cca`](./contracts/linea-59144/0x823106e745a62d0c2fc4d27644c62ade946d9cca/) | ✅ Audited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ✅ Audited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ✅ Audited |
| XERC20 | unknown | optimism | n/a | [`0x241609...cceea5`](./contracts/optimism-10/0x2416092f143378750bb29b79ed961ab195cceea5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (672)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00377d...5734cf`](./contracts/ethereum-1/0x00377d6c82df8f63163ff828760b2a5d935734cf/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | ethereum | n/a | [`0x019699...b06215`](./contracts/ethereum-1/0x019699e5b12331cf77df9e39818c2e15c8b06215/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x00260d...a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | [`0x4195ed...b6bc56`](./contracts/ethereum-1/0x4195ed6e112cbddc1adf7271047dba4e6bb6bc56/) | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | ethereum | n/a | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | ⚠️ Unaudited |
| ActionRegistry | unknown | ethereum | n/a | [`0x94af59...c3073f`](./contracts/ethereum-1/0x94af5994eb6841e1d930c95ad0c9f89771c3073f/) | ⚠️ Unaudited |
| AddressMapping | unknown | ethereum | n/a | [`0x7298d8...e74de8`](./contracts/ethereum-1/0x7298d8995eb7a932b36a77fcc44dc0cfdce74de8/) | ⚠️ Unaudited |
| AddressProvider | unknown | ethereum | n/a | [`0x20ee00...e38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | ⚠️ Unaudited |
| AddressQueueStorage | unknown | ethereum | n/a | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| Aero | unknown | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AGETHPoolV3 | unknown | arbitrum | n/a | [`0x60ff20...95a1d2`](./contracts/arbitrum-42161/0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2/) | ⚠️ Unaudited |
| AGETHTokenWrapper | unknown | arbitrum | n/a | [`0xa88845...1f73a5`](./contracts/arbitrum-42161/0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5/) | ⚠️ Unaudited |
| Aggregator | unknown | ethereum | n/a | [`0x0b8b84...eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | ⚠️ Unaudited |
| AggregatorFacade | unknown | ethereum | n/a | [`0x010b33...6c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | ⚠️ Unaudited |
| AIP1Point1Target | unknown | arbitrum | n/a | [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | n/a | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| AirdropDistributor | unknown | base | n/a | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | arbitrum | n/a | [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ⚠️ Unaudited |
| ArbFiatToken | unknown | arbitrum | n/a | [`0x1efb3f...f5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/) | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | arbitrum | n/a | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ⚠️ Unaudited |
| ArbitrumExtension | unknown | arbitrum | n/a | [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c...c38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| ArbUXRNFT | unknown | arbitrum | n/a | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| ARM | unknown | arbitrum | n/a | [`0xe06b0e...b64e4b`](./contracts/arbitrum-42161/0xe06b0e8c4bd455153e8794ad7ea8ff5a14b64e4b/) | ⚠️ Unaudited |
| ARMProxy | unknown | arbitrum | n/a | [`0xc311a2...62a145`](./contracts/arbitrum-42161/0xc311a21e6fef769344eb1515588b9d535662a145/) | ⚠️ Unaudited |
| AssetListFactory | unknown | mantle | n/a | [`0x0daf7a...f5b202`](./contracts/mantle-5000/0x0daf7a2772c84a82d1d46a4b628151e6d7f5b202/) | ⚠️ Unaudited |
| AssetPool | unknown | ethereum | n/a | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | ⚠️ Unaudited |
| AssetRouter | unknown | ethereum | n/a | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x85a227...612569`](./contracts/ethereum-1/0x85a22763f94d703d2ee39e9374616ae4c1612569/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | n/a | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| AuctionManager | unknown | ethereum | n/a | [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | ⚠️ Unaudited |
| AuraSwEthBbAWethSYV2 | unknown | ethereum | n/a | [`0xcb6ea7...27b96b`](./contracts/ethereum-1/0xcb6ea7fddfdf2afc2bc6bf715185a33f8e27b96b/) | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | n/a | [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | base | n/a | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | ⚠️ Unaudited |
| BaseBulker | unknown | linea | n/a | [`0x023ee7...0a5f1b`](./contracts/linea-59144/0x023ee795361b28cdbb94e302983578486a0a5f1b/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | n/a | [`0x6e8439...b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | ⚠️ Unaudited |
| BatchSender | unknown | arbitrum | n/a | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | ⚠️ Unaudited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x3fe380...11000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | ⚠️ Unaudited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | ⚠️ Unaudited |
| BlackPearl | unknown | ethereum | n/a | [`0x677365...65e8af`](./contracts/ethereum-1/0x677365ac7ca3e9efe12a29a001737a3db265e8af/) | ⚠️ Unaudited |
| Blocklist | unknown | ethereum | n/a | [`0x70222d...1001b2`](./contracts/ethereum-1/0x70222d2579877a1a82dd4f00bfc97975d41001b2/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BLSPublicKeyCompendium | unknown | ethereum | n/a | [`0x18dd3c...a56a72`](./contracts/ethereum-1/0x18dd3cbe484f955217165feac6fe928d04a56a72/) | ⚠️ Unaudited |
| BNFT | unknown | ethereum | n/a | [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | ethereum | n/a | [`0x130e22...3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | base | n/a | [`0xd87243...bbf839`](./contracts/base-8453/0xd8724322f44e5c58d7a815f542036fb17dbbf839/) | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | base | n/a | [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/) | ⚠️ Unaudited |
| BridgeGovernance | unknown | ethereum | n/a | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BridgeV2 | unknown | ethereum | n/a | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | arbitrum | n/a | [`0x0a7b23...c696a1`](./contracts/arbitrum-42161/0x0a7b237027b1c351c4bd3a6c1906a47005c696a1/) | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | arbitrum | n/a | [`0x07d7a9...dd4200`](./contracts/arbitrum-42161/0x07d7a985832369ef32f0491aa4cd44ffa9dd4200/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | arbitrum | n/a | [`0x0c6dda...672d02`](./contracts/arbitrum-42161/0x0c6dda1c33e62ca3a8ceb4ae2485f08510672d02/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | arbitrum | n/a | [`0x821646...8939db`](./contracts/arbitrum-42161/0x82164603b46a79c0ddcf2e622e242f16428939db/) | ⚠️ Unaudited |
| BVM_ETH | unknown | mantle | n/a | [`0xdeadde...ad1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | ⚠️ Unaudited |
| CachedRateProvider | unknown | ethereum | n/a | [`0x4709ab...404fc7`](./contracts/ethereum-1/0x4709ab91123f7dbb4b6c4a02c94e855678404fc7/) | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | n/a | [`0x031828...1dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | base | n/a | [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/) | ⚠️ Unaudited |
| ChannelConfigStore | unknown | ethereum | n/a | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CLAdapter | unknown | ethereum | n/a | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | base | n/a | [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/) | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | arbitrum | n/a | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| CometExtAssetList | unknown | ethereum | n/a | [`0x055e53...091e1f`](./contracts/ethereum-1/0x055e53f50b84fd91c4be367220efd36c3d091e1f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | linea | n/a | [`0x0090a5...83c8c3`](./contracts/linea-59144/0x0090a563c4832e4e519f5f054483519b1a83c8c3/) | ⚠️ Unaudited |
| CommitStore | unknown | arbitrum | n/a | [`0x032b20...9ee2c1`](./contracts/arbitrum-42161/0x032b209a6b7a00336047505b55a4cbfbd29ee2c1/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | mantle | n/a | [`0x113308...68b1a3`](./contracts/mantle-5000/0x113308f0d52cea7a50c185ff4edcbd789e68b1a3/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | arbitrum | n/a | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x04b221...8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ⚠️ Unaudited |
| Consortium | unknown | ethereum | n/a | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | linea | n/a | [`0x033bf4...417c7e`](./contracts/linea-59144/0x033bf4885274d9740b2e09bac0fc7ddd93417c7e/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| CoveragePool | unknown | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | ⚠️ Unaudited |
| Create2Factory | unknown | ethereum | n/a | [`0x652199...92ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | base | n/a | [`0x5f81a5...e7a92d`](./contracts/base-8453/0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x26542f...dd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DaiUsds | unknown | ethereum | n/a | [`0x322573...db276a`](./contracts/ethereum-1/0x3225737a9bbb6473cb4a45b7244aca2befdb276a/) | ⚠️ Unaudited |
| DaoModule | unknown | ethereum | n/a | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | ⚠️ Unaudited |
| DataLayrChallenge | unknown | ethereum | n/a | [`0x6ee53d...57c066`](./contracts/ethereum-1/0x6ee53d3d6e622ac0296369445afb3cbbdc57c066/) | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | base | n/a | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | ⚠️ Unaudited |
| Deposit | unknown | ethereum | n/a | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | ⚠️ Unaudited |
| DepositDataRegistry | unknown | ethereum | n/a | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0x2a41d5...92ea28`](./contracts/ethereum-1/0x2a41d539d5a599a6ea6a79e32bd047277892ea28/) | ⚠️ Unaudited |
| DepositQueue | unknown | ethereum | n/a | [`0x24aa95...7377ae`](./contracts/ethereum-1/0x24aa958c90b7973dc16c63c9992f69e1767377ae/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | n/a | [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| DForce | unknown | arbitrum | n/a | [`0x5d8063...a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | base | n/a | [`0xdb282a...b4c1e3`](./contracts/base-8453/0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3/) | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | base | n/a | [`0x851de5...37904b`](./contracts/base-8453/0x851de5ea424557b52d1d6debe5bda12a7d37904b/) | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | ethereum | n/a | [`0x242b0f...3c34d0`](./contracts/ethereum-1/0x242b0fe8b141cabe48b79115f376137b983c34d0/) | ⚠️ Unaudited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| DorMigrator | unknown | ethereum | n/a | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | ⚠️ Unaudited |
| DorRewards | unknown | ethereum | n/a | [`0x5324e2...152a10`](./contracts/ethereum-1/0x5324e2f61987fcb06d892f1256b7c12ca9152a10/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DualAggregator | unknown | arbitrum | n/a | [`0x01065f...57c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/) | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | n/a | [`0xbc6197...b684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/) | ⚠️ Unaudited |
| DVFInterface3 | unknown | ethereum | n/a | [`0xa297ec...319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | ⚠️ Unaudited |
| DVFInterface4 | unknown | ethereum | n/a | [`0x7de1f0...645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | ⚠️ Unaudited |
| DWSTETHV3RateProvider | unknown | ethereum | n/a | [`0xf5760a...fbbf08`](./contracts/ethereum-1/0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | [`0x0017ab...7f9cf4`](./contracts/arbitrum-42161/0x0017abac5b6f291f9164e35b1234ca1d697f9cf4/) | ⚠️ Unaudited |
| eBtcRateProvider | unknown | ethereum | n/a | [`0x81be35...31b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | n/a | [`0x1b47a6...eff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0x7b28a6...9fb585`](./contracts/ethereum-1/0x7b28a6cdf1bc937a984334ef5409b755489fb585/) | ⚠️ Unaudited |
| ENSRegistry | unknown | linea | n/a | [`0x50130b...121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ERC20Bridged | unknown | arbitrum | n/a | [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/) | ⚠️ Unaudited |
| ERC20PaymentReceiverEzRVault | unknown | ethereum | n/a | [`0x24c28e...5d65af`](./contracts/ethereum-1/0x24c28e5ea9960dff3c00c02790d1aec21b5d65af/) | ⚠️ Unaudited |
| ERC20RebasableBridgedPermit | unknown | unichain | n/a | [`0x5a007d...6bebc3`](./contracts/unichain-130/0x5a007d6e37633fb297b82c074b94bb29546bebc3/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | ethereum | n/a | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | arbitrum | n/a | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | ethereum | n/a | [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/) | ⚠️ Unaudited |
| EthBlocklistVault | unknown | ethereum | n/a | [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/) | ⚠️ Unaudited |
| EthDepositor | unknown | ethereum | n/a | [`0x45fed8...19cccd`](./contracts/ethereum-1/0x45fed80345757ce3b530effa4b8022df3419cccd/) | ⚠️ Unaudited |
| EthErc20Vault | unknown | ethereum | n/a | [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/) | ⚠️ Unaudited |
| EthGenesisVault | unknown | ethereum | n/a | [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/) | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | ethereum | n/a | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | ethereum | n/a | [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/) | ⚠️ Unaudited |
| EthPrivVault | unknown | ethereum | n/a | [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | linea | n/a | [`0xdb75db...d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | ethereum | n/a | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | ethereum | n/a | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | ethereum | n/a | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | ethereum | n/a | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | ethereum | n/a | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVault | unknown | ethereum | n/a | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | ethereum | n/a | [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | ethereum | n/a | [`0xac9125...fafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | ⚠️ Unaudited |
| EthVault | unknown | ethereum | n/a | [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/) | ⚠️ Unaudited |
| EthVaultFactory | unknown | ethereum | n/a | [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/) | ⚠️ Unaudited |
| ETHx | unknown | ethereum | n/a | [`0x4c22ff...283358`](./contracts/ethereum-1/0x4c22ffd479637ea0ed61d451cbe6355627283358/) | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | unknown | ethereum | n/a | [`0xbe97c9...9b5fe6`](./contracts/ethereum-1/0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6/) | ⚠️ Unaudited |
| EulerSwapEzEthDelegateStrategy | unknown | ethereum | n/a | [`0x0d0226...23dd89`](./contracts/ethereum-1/0x0d02267b9529ba1ee284e73e107feaf91e23dd89/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | arbitrum | n/a | [`0x017513...2c029e`](./contracts/arbitrum-42161/0x017513a8ca43992938e7fa72033ee29a0e2c029e/) | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | arbitrum | n/a | [`0x05b723...d17988`](./contracts/arbitrum-42161/0x05b723f3db92430fbe4395fd03e40cc7e9d17988/) | ⚠️ Unaudited |
| EzAdminL1 | unknown | ethereum | n/a | [`0x762571...a24718`](./contracts/ethereum-1/0x7625716271e5dd3896cf5336a1ea62fae9a24718/) | ⚠️ Unaudited |
| EzAuction | unknown | ethereum | n/a | [`0x5ab40d...1ba29f`](./contracts/ethereum-1/0x5ab40d79d1c85670a10803853a307c862c1ba29f/) | ⚠️ Unaudited |
| ezETHConversionStrategy | unknown | ethereum | n/a | [`0xebb77a...bbd86a`](./contracts/ethereum-1/0xebb77a6a553646f81eaf57429c8fc004f9bbd86a/) | ⚠️ Unaudited |
| EzETHExchangeRatePriceFeed | unknown | ethereum | n/a | [`0xde4360...d6ec1b`](./contracts/ethereum-1/0xde43600de5016b50752cc2615332d8ccbed6ec1b/) | ⚠️ Unaudited |
| EzEthToken | unknown | ethereum | n/a | [`0x1e756b...bbacb0`](./contracts/ethereum-1/0x1e756b7bcca7b26fb9d85344b3525f5559bbacb0/) | ⚠️ Unaudited |
| ezETHValueStrategy | unknown | ethereum | n/a | [`0x35b5eb...b0bd9e`](./contracts/ethereum-1/0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e/) | ⚠️ Unaudited |
| EzRVault | unknown | ethereum | n/a | [`0x04fc0e...957d73`](./contracts/ethereum-1/0x04fc0eec2f93b94781e89fcab192613c48957d73/) | ⚠️ Unaudited |
| EzRVaultLib | unknown | ethereum | n/a | [`0x47fbab...5158e2`](./contracts/ethereum-1/0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2/) | ⚠️ Unaudited |
| EzRVaultsFactory | unknown | ethereum | n/a | [`0x02e976...b0727f`](./contracts/ethereum-1/0x02e976adf6d27ec622b00a0125e3c52e32b0727f/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FactoryRegistry | unknown | base | n/a | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | ⚠️ Unaudited |
| FastlaneFee | unknown | ethereum | n/a | [`0x434b68...1d6354`](./contracts/ethereum-1/0x434b68b11bbe8fd3074089397ca3d275801d6354/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | ⚠️ Unaudited |
| FBTC | unknown | mantle | n/a | [`0xc96de2...d6c364`](./contracts/mantle-5000/0xc96de26018a54d51c097160568752c4e3bd6c364/) | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb25...ceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ⚠️ Unaudited |
| FeeManager | unknown | ethereum | n/a | [`0x48a42f...dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FeeTo | unknown | ethereum | n/a | [`0xdaf819...7f0970`](./contracts/ethereum-1/0xdaf819c2437a82f9e01f6586207ebf961a7f0970/) | ⚠️ Unaudited |
| FeeToSetter | unknown | ethereum | n/a | [`0x18e433...771360`](./contracts/ethereum-1/0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360/) | ⚠️ Unaudited |
| Fiat24CryptoDeposit2 | unknown | ethereum | n/a | [`0x08a65c...d24df9`](./contracts/ethereum-1/0x08a65c2ac24680e6c9dd1a61a1e823f058d24df9/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | unichain | n/a | [`0x078d78...f57ad6`](./contracts/unichain-130/0x078d782b760474a361dda0af3839290b0ef57ad6/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | scroll | n/a | [`0x06efdb...f663a4`](./contracts/scroll-534352/0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | arbitrum | n/a | [`0x0f4fb9...b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| FixedRateProvider | unknown | ethereum | n/a | [`0xcbb64b...ba2860`](./contracts/ethereum-1/0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860/) | ⚠️ Unaudited |
| Flags | unknown | polygon | n/a | [`0x15e9dd...3b2e5d`](./contracts/polygon-137/0x15e9dd0f01fc778c7f97ca1e2c4d9895b03b2e5d/) | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | ethereum | n/a | [`0x39e2a9...e1a521`](./contracts/ethereum-1/0x39e2a9eb9d8d9cc30fe096b5a642d7597be1a521/) | ⚠️ Unaudited |
| Forwarder | unknown | base | n/a | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | ⚠️ Unaudited |
| Franchiser | unknown | ethereum | n/a | [`0xefae01...5475a2`](./contracts/ethereum-1/0xefae01493270dc08af466369cf588aa5025475a2/) | ⚠️ Unaudited |
| FranchiserFactory | unknown | ethereum | n/a | [`0x002e32...cc27cf`](./contracts/ethereum-1/0x002e326b8ed01f27588388b731720f9b72cc27cf/) | ⚠️ Unaudited |
| FranchiserPoolFactory | unknown | ethereum | n/a | [`0x219a69...2b5ceb`](./contracts/ethereum-1/0x219a69e60eaf34a7658848664b907fa6d72b5ceb/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | n/a | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | polygon | n/a | [`0x09e4f6...9f7831`](./contracts/polygon-137/0x09e4f606a78d21a0cdc72894fd0b75f5039f7831/) | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | base | n/a | [`0x97b207...948ace`](./contracts/base-8453/0x97b207cdbd46400f23c2392c4fb20f7b4e948ace/) | ⚠️ Unaudited |
| FunctionsRouter | unknown | base | n/a | [`0xf9b8fc...25b278`](./contracts/base-8453/0xf9b8fc078197181c841c296c876945aaa425b278/) | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GaugeFactory | unknown | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GearboxDeposit | unknown | ethereum | n/a | [`0x879316...c22f31`](./contracts/ethereum-1/0x8793164ae37e5fae2cdf7620f4d4dc615bc22f31/) | ⚠️ Unaudited |
| GearboxDepositV31 | unknown | ethereum | n/a | [`0x4deed6...cd234f`](./contracts/ethereum-1/0x4deed6b663a64f76f6a59412486a9d9048cd234f/) | ⚠️ Unaudited |
| GearboxRedeem | unknown | ethereum | n/a | [`0x150d67...718ece`](./contracts/ethereum-1/0x150d67ad07700918fc77d7fd2e78967693718ece/) | ⚠️ Unaudited |
| GearboxRedeemV31 | unknown | ethereum | n/a | [`0x90a029...08257a`](./contracts/ethereum-1/0x90a02936ba645ab719574512b578ee85d208257a/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| Generalized4626Strategy | unknown | ethereum | n/a | [`0x167747...98d425`](./contracts/ethereum-1/0x167747bf5b3b6bf2f7f7c4cce32c463e9598d425/) | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | n/a | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpBalance | unknown | arbitrum | n/a | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | ⚠️ Unaudited |
| GlpManager | unknown | arbitrum | n/a | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | ⚠️ Unaudited |
| GmxTimelock | unknown | arbitrum | n/a | [`0x34b45e...118a81`](./contracts/arbitrum-42161/0x34b45ee7cdccb5652bf54fd9795dd447a4118a81/) | ⚠️ Unaudited |
| GnosisSafe | unknown | optimism | n/a | [`0x035e93...dcb7c5`](./contracts/optimism-10/0x035e930e88cdf1849ca1e9abb3e72043efdcb7c5/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | optimism | n/a | [`0x0b681c...4f11bf`](./contracts/optimism-10/0x0b681cc8cddcd687aba50a99f8dfb31ede4f11bf/) | ⚠️ Unaudited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ⚠️ Unaudited |
| GovernanceToken | unknown | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | n/a | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0xa3ff11...21a538`](./contracts/ethereum-1/0xa3ff1121068a3d88d56b885b38921bed7121a538/) | ⚠️ Unaudited |
| HashStorage | unknown | unichain | n/a | [`0x2a2f37...64150b`](./contracts/unichain-130/0x2a2f37d29143aea599c57169817a48c04664150b/) | ⚠️ Unaudited |
| IBCVoucher | unknown | ethereum | n/a | [`0x77d81c...8a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/) | ⚠️ Unaudited |
| InstantWithdrawer | unknown | ethereum | n/a | [`0x2ddaa1...f6f8ff`](./contracts/ethereum-1/0x2ddaa152b3cf455693c944f9f47925408ff6f8ff/) | ⚠️ Unaudited |
| InternalAccountingUnit | unknown | ethereum | n/a | [`0x1b6238...68ba92`](./contracts/ethereum-1/0x1b6238e95bbcabee58997c99badd4154ad68ba92/) | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | ethereum | n/a | [`0x9fecf3...edc6b9`](./contracts/ethereum-1/0x9fecf38689349a5cff97526610cdb27618edc6b9/) | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | ethereum | n/a | [`0x310fc2...d872ee`](./contracts/ethereum-1/0x310fc2403b0d12fc6de088b96da9ac7399d872ee/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| Keeper | unknown | ethereum | n/a | [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/) | ⚠️ Unaudited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x4f7595...dd08c7`](./contracts/ethereum-1/0x4f75953c2661d3a0138fcd80551ea10b80dd08c7/) | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | ethereum | n/a | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | n/a | [`0x9d7aef...8bf9f6`](./contracts/ethereum-1/0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6/) | ⚠️ Unaudited |
| L1cmETHAdapter | unknown | ethereum | n/a | [`0xae96df...9fac44`](./contracts/ethereum-1/0xae96df024b9cb69a39a219d7176df6e7e39fac44/) | ⚠️ Unaudited |
| L1Cook | unknown | ethereum | n/a | [`0x3bb3d7...4df4bc`](./contracts/ethereum-1/0x3bb3d74b1280a2e86013a03d05147b9a684df4bc/) | ⚠️ Unaudited |
| L1CookAdapter | unknown | ethereum | n/a | [`0x078382...348a79`](./contracts/ethereum-1/0x078382dfdc3b1b984b53c38268e6a683fa348a79/) | ⚠️ Unaudited |
| L1CookMessagingStatus | unknown | ethereum | n/a | [`0x12a01c...4824be`](./contracts/ethereum-1/0x12a01ce234b063417d0916a755e31201ab4824be/) | ⚠️ Unaudited |
| L1ERC20Q | unknown | ethereum | n/a | [`0x6be0f7...8aed1b`](./contracts/ethereum-1/0x6be0f719ac481adcbdde30486b1b80e1728aed1b/) | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | n/a | [`0x332754...ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | ⚠️ Unaudited |
| L1MessagingStatus | unknown | ethereum | n/a | [`0xa91377...84de7e`](./contracts/ethereum-1/0xa91377ab040d9571e14ac8192343a3247c84de7e/) | ⚠️ Unaudited |
| L2AddressRegistry | unknown | arbitrum | n/a | [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | unknown | unichain | n/a | [`0x1a513e...dee372`](./contracts/unichain-130/0x1a513e9b6434a12c7bb5b9af3b21963308dee372/) | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | optimism | n/a | [`0x23b96a...08f4c7`](./contracts/optimism-10/0x23b96add54c479c6784dd504670b5376b808f4c7/) | ⚠️ Unaudited |
| L2MessageService | unknown | linea | n/a | [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x9bcef7...8eb81d`](./contracts/optimism-10/0x9bcef72be871e61ed4fbbc7630889bee758eb81d/) | ⚠️ Unaudited |
| L2TBTC | unknown | base | n/a | [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2USDCBridge | unknown | linea | n/a | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | [`0x12364c...348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/) | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | ethereum | n/a | [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/) | ⚠️ Unaudited |
| LEZyVault | unknown | ethereum | n/a | [`0x00aa80...0496ac`](./contracts/ethereum-1/0x00aa8017206206dd43a2dd3679e890f9b50496ac/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| LineaBridgeReceiver | unknown | linea | n/a | [`0x1f7190...676856`](./contracts/linea-59144/0x1f71901daf98d70b4baf40de080321e5c2676856/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | n/a | [`0x96b3a1...124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | n/a | [`0xd83af4...cf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | n/a | [`0xc24e7b...9cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| LinkToken | unknown | ethereum | n/a | [`0x13432a...1f7abc`](./contracts/ethereum-1/0x13432a43f2779c9c64fe9e436c2576e5231f7abc/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xb61c66...a81fa3`](./contracts/ethereum-1/0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3/) | ⚠️ Unaudited |
| LiquidCashier | unknown | ethereum | n/a | [`0x485fd9...03c12e`](./contracts/ethereum-1/0x485fd98f834b4bf9db855f8fa03990318103c12e/) | ⚠️ Unaudited |
| LiquidFactory | unknown | ethereum | n/a | [`0xaec1fb...039a3b`](./contracts/ethereum-1/0xaec1fbb90528533d5f066094abdeb2f1b0039a3b/) | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | [`0x02656f...bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | ⚠️ Unaudited |
| LiquidOracle | unknown | ethereum | n/a | [`0x6f26b0...8404ac`](./contracts/ethereum-1/0x6f26b0f570c2cfb4050b424ef6ea5903818404ac/) | ⚠️ Unaudited |
| LiquidVault | unknown | ethereum | n/a | [`0xd1693b...9ffa3b`](./contracts/ethereum-1/0xd1693b20932c798a63375db0252be7ca449ffa3b/) | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | n/a | [`0x2225c9...6b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | arbitrum | n/a | [`0x34700f...bfa726`](./contracts/arbitrum-42161/0x34700f5fae61ba628c4269bdcba12da53bbfa726/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | arbitrum | n/a | [`0x387e40...978653`](./contracts/arbitrum-42161/0x387e40ed22ee3396288c874411b00c48f6978653/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | n/a | [`0x2e1871...763565`](./contracts/ethereum-1/0x2e1871fc8ac793dcf2a74ce004ee21d913763565/) | ⚠️ Unaudited |
| LombardTimeLock | unknown | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | ethereum | n/a | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | ethereum | n/a | [`0x1d716d...f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | ⚠️ Unaudited |
| LRTSquare | unknown | ethereum | n/a | [`0x3d987e...9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/) | ⚠️ Unaudited |
| LRTSquared | unknown | ethereum | n/a | [`0x138f08...ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | ethereum | n/a | [`0xd2b8c7...d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | ⚠️ Unaudited |
| LRTSquaredCore | unknown | ethereum | n/a | [`0x1cb489...1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | ethereum | n/a | [`0x2c7760...eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | ⚠️ Unaudited |
| MaintainerProxy | unknown | ethereum | n/a | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | base | n/a | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | optimism | n/a | [`0x170a53...748552`](./contracts/optimism-10/0x170a530bbb5925808f743aac7ba89d6f0e748552/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MembershipManager | unknown | ethereum | n/a | [`0x047a77...f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | ⚠️ Unaudited |
| MembershipNFT | unknown | ethereum | n/a | [`0x290d98...307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | ⚠️ Unaudited |
| MerklClaim | unknown | ethereum | n/a | [`0x23bd2d...0f049e`](./contracts/ethereum-1/0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e/) | ⚠️ Unaudited |
| MerklClaimerStrategy | unknown | ethereum | n/a | [`0xbca648...4957db`](./contracts/ethereum-1/0xbca64801a6639ebda2c28cc0bdddf804424957db/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| MerkleTreeLeafChecker | unknown | ethereum | n/a | [`0x1d2252...2fc5f1`](./contracts/ethereum-1/0x1d225296cd421aa65b2b9a68a971d7bf912fc5f1/) | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | [`0x052f52...613e52`](./contracts/ethereum-1/0x052f52748109bae13d6319a463d64b6a2a613e52/) | ⚠️ Unaudited |
| METHExchangeRatePriceFeed | unknown | ethereum | n/a | [`0x5bd3e6...f7de46`](./contracts/ethereum-1/0x5bd3e64f6702f55e744e70e27281a7caabf7de46/) | ⚠️ Unaudited |
| METHL2 | unknown | mantle | n/a | [`0xa1f06b...3c6a2c`](./contracts/mantle-5000/0xa1f06b96f082c470e9759d1090d281b2493c6a2c/) | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/) | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | linea | n/a | [`0x04c059...6c150a`](./contracts/linea-59144/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/) | ⚠️ Unaudited |
| Minter | unknown | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | n/a | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | ⚠️ Unaudited |
| Multicall2 | unknown | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | ethereum | n/a | [`0x023ee7...0a5f1b`](./contracts/ethereum-1/0x023ee795361b28cdbb94e302983578486a0a5f1b/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x77deaa...d64081`](./contracts/ethereum-1/0x77deaa3c55f576d3ec0c130cadfbc5bf1cd64081/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | arbitrum | n/a | [`0x4a9196...1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | polygon | n/a | [`0x4a9d21...82700d`](./contracts/polygon-137/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| NameWrapper | unknown | linea | n/a | [`0xa53cca...13c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/) | ⚠️ Unaudited |
| NativeStakingChecker | unknown | ethereum | n/a | [`0xa47f92...a5a0da`](./contracts/ethereum-1/0xa47f925659799636c73f1fa244affe21f2a5a0da/) | ⚠️ Unaudited |
| NavErc20 | unknown | ethereum | n/a | [`0xa0a105...57af36`](./contracts/ethereum-1/0xa0a105e10801b52bf89a042bdb40c7389e57af36/) | ⚠️ Unaudited |
| NavErc20WithDebt | unknown | ethereum | n/a | [`0xff62ad...0c48bc`](./contracts/ethereum-1/0xff62ad6200a54fff9288c997f8ca2d480a0c48bc/) | ⚠️ Unaudited |
| NavHelper | unknown | ethereum | n/a | [`0x86b238...62b6e6`](./contracts/ethereum-1/0x86b238787f24eecf24500135bc9d4d117062b6e6/) | ⚠️ Unaudited |
| NavLens | unknown | ethereum | n/a | [`0xfda0b8...09b258`](./contracts/ethereum-1/0xfda0b8bca5d0a5a5093141d8a45d133a9f09b258/) | ⚠️ Unaudited |
| NavRegistry | unknown | ethereum | n/a | [`0xe2d604...5451e9`](./contracts/ethereum-1/0xe2d60463de3a0221276d737b87c605e0bb5451e9/) | ⚠️ Unaudited |
| NavUnStEth | unknown | ethereum | n/a | [`0x4c82f6...1e5e39`](./contracts/ethereum-1/0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | ethereum | n/a | [`0x274bbd...cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0x009c9f...629655`](./contracts/ethereum-1/0x009c9f7e2709ea488e53c2ab1bf9080547629655/) | ⚠️ Unaudited |
| NodeELRewardVault | unknown | ethereum | n/a | [`0x97c927...7367af`](./contracts/ethereum-1/0x97c92752dd8a8947ce453d3e35d2cad5857367af/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | linea | n/a | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | unknown | ethereum | n/a | [`0x8bddb5...67f4f8`](./contracts/ethereum-1/0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8/) | ⚠️ Unaudited |
| NoOp | unknown | base | n/a | [`0x0972e6...adb887`](./contracts/base-8453/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | ⚠️ Unaudited |
| OCRConfigurationStoreEVMSimple | unknown | ethereum | n/a | [`0xffe6b3...fe22c6`](./contracts/ethereum-1/0xffe6b35ef0a2178b80138cfae82c912195fe22c6/) | ⚠️ Unaudited |
| OETH | unknown | base | n/a | [`0x10b342...439989`](./contracts/base-8453/0x10b342e0205fc20a0934d1a0f25e270520439989/) | ⚠️ Unaudited |
| OETHBase | unknown | base | n/a | [`0x1c62a3...b82be9`](./contracts/base-8453/0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9/) | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | base | n/a | [`0x02f2c6...d7f8d6`](./contracts/base-8453/0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6/) | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | base | n/a | [`0xa50fd5...5ffad8`](./contracts/base-8453/0xa50fd560af7433d00d231b397512f5df375ffad8/) | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | base | n/a | [`0x0cbeac...54c22e`](./contracts/base-8453/0x0cbeacf86232fc04050cd679d860516f7254c22e/) | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | base | n/a | [`0xbc80da...97c75b`](./contracts/base-8453/0xbc80da22601eae8720ed8ab117eb88c92b97c75b/) | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | base | n/a | [`0xd50f7d...70d1a7`](./contracts/base-8453/0xd50f7d13632ccadcf24fb74676981099fe70d1a7/) | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | base | n/a | [`0x4a759f...6caaab`](./contracts/base-8453/0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab/) | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | base | n/a | [`0x98a0cb...38cc93`](./contracts/base-8453/0x98a0cbef61bd2d21435f433be4cd42b56b38cc93/) | ⚠️ Unaudited |
| OETHBaseZapper | unknown | base | n/a | [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/) | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | base | n/a | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | base | n/a | [`0xc5d369...4f38e0`](./contracts/base-8453/0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0/) | ⚠️ Unaudited |
| OETHDripper | unknown | base | n/a | [`0x0030c7...e6b16a`](./contracts/base-8453/0x0030c7dc6cb7f449e9566f273342c3370ee6b16a/) | ⚠️ Unaudited |
| OETHHarvester | unknown | ethereum | n/a | [`0x0d017a...a6785c`](./contracts/ethereum-1/0x0d017afa83eace9f10a8ec5b6e13941664a6785c/) | ⚠️ Unaudited |
| OETHOracleRouter | unknown | ethereum | n/a | [`0x3ccd26...b61dba`](./contracts/ethereum-1/0x3ccd26e82f7305b12742fbb36708b42f82b61dba/) | ⚠️ Unaudited |
| OETHVault | unknown | ethereum | n/a | [`0x392540...8bd7ab`](./contracts/ethereum-1/0x39254033945aa2e4809cc2977e7087bee48bd7ab/) | ⚠️ Unaudited |
| OETHVaultAdmin | unknown | ethereum | n/a | [`0x60c91b...940d74`](./contracts/ethereum-1/0x60c91b985ac7117765b859d718576b2ed8940d74/) | ⚠️ Unaudited |
| OETHVaultCore | unknown | ethereum | n/a | [`0x109158...1c89f3`](./contracts/ethereum-1/0x1091588cc431275f99dc5df311fd8e1ab81c89f3/) | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | base | n/a | [`0x9d98cf...7bcf6a`](./contracts/base-8453/0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a/) | ⚠️ Unaudited |
| OETHZapper | unknown | ethereum | n/a | [`0x8c135f...5b66b0`](./contracts/ethereum-1/0x8c135f50c7317a93cc95bb208a494e5ade5b66b0/) | ⚠️ Unaudited |
| OgvStaking | unknown | ethereum | n/a | [`0xe61110...590a42`](./contracts/ethereum-1/0xe61110663334794aba03c349c621a075dc590a42/) | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | n/a | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OperatorDelegator | unknown | ethereum | n/a | [`0x07b86a...4a6eb5`](./contracts/ethereum-1/0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5/) | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | ethereum | n/a | [`0x4f1cf8...b03f56`](./contracts/ethereum-1/0x4f1cf88b1f9edb4cbd8eaf0364970cf8aab03f56/) | ⚠️ Unaudited |
| OperatorFactory | unknown | ethereum | n/a | [`0x53ae22...287606`](./contracts/ethereum-1/0x53ae226d3384d1d2cfbacdcc069e9860e2287606/) | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | ethereum | n/a | [`0x6ccabb...dfe250`](./contracts/ethereum-1/0x6ccabba6100be33ded45bcec21df92dba9dfe250/) | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | base | n/a | [`0x0e3759...46eacf`](./contracts/base-8453/0x0e37599436974a25ddeedf795c848d30af46eacf/) | ⚠️ Unaudited |
| OptimismBridgeReceiver | unknown | base | n/a | [`0x18281d...3c468a`](./contracts/base-8453/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | mantle | n/a | [`0x52b7d8...a3f17f`](./contracts/mantle-5000/0x52b7d8851d6ccbc6342ba0855be65f7b82a3f17f/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84a...546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| OracleQuorumManager | unknown | ethereum | n/a | [`0x54c23e...4174b4`](./contracts/ethereum-1/0x54c23e0d89da943165c969d1abdb65f0d64174b4/) | ⚠️ Unaudited |
| OracleRouter | unknown | ethereum | n/a | [`0x06c7a3...cc89ff`](./contracts/ethereum-1/0x06c7a36bfe715479c7f583785b7e9303dfcc89ff/) | ⚠️ Unaudited |
| Oracles | unknown | ethereum | n/a | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| OrderBookReader | unknown | arbitrum | n/a | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | ⚠️ Unaudited |
| OrderExecutor | unknown | arbitrum | n/a | [`0x7257ac...32c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | optimism | n/a | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | arbitrum | n/a | [`0x07d469...331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/) | ⚠️ Unaudited |
| OsToken | unknown | ethereum | n/a | [`0x475e7d...b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/) | ⚠️ Unaudited |
| OsTokenConfig | unknown | ethereum | n/a | [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/) | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | ethereum | n/a | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | ⚠️ Unaudited |
| OsTokenVaultController | unknown | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| OUSDVault | unknown | base | n/a | [`0xa96fd1...3820f9`](./contracts/base-8453/0xa96fd141e92de60394103c7f9e045662913820f9/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| OwnedResolver | unknown | linea | n/a | [`0x9453dc...f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | base | n/a | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | ⚠️ Unaudited |
| PauserRegistry | unknown | ethereum | n/a | [`0x075a48...b2a86f`](./contracts/ethereum-1/0x075a48633dc6845f92339741e9c96b88f1b2a86f/) | ⚠️ Unaudited |
| PaymentSplitter | unknown | ethereum | n/a | [`0xe9e365...1a5fce`](./contracts/ethereum-1/0xe9e3659858d530914cb81d0833c30e47931a5fce/) | ⚠️ Unaudited |
| Penalty | unknown | ethereum | n/a | [`0x84645f...dc6ed6`](./contracts/ethereum-1/0x84645f1b80475992df2c65c28be6688d15dc6ed6/) | ⚠️ Unaudited |
| PepeToken | unknown | mantle | n/a | [`0x8baf44...640477`](./contracts/mantle-5000/0x8baf44b350ef672232a6673e1e128c7875640477/) | ⚠️ Unaudited |
| PerlinNoise | unknown | base | n/a | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | ⚠️ Unaudited |
| PermissionedNodeRegistry | unknown | ethereum | n/a | [`0x106c70...69b27b`](./contracts/ethereum-1/0x106c7053fbb563bcb06b723072bf0628db69b27b/) | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | base | n/a | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | ⚠️ Unaudited |
| PermissionlessNodeRegistry | unknown | ethereum | n/a | [`0x4f4bfa...2fdcf1`](./contracts/ethereum-1/0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1/) | ⚠️ Unaudited |
| PermissionlessPool | unknown | ethereum | n/a | [`0x30c250...bbb3f0`](./contracts/ethereum-1/0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| PnlAccounting | unknown | ethereum | n/a | [`0xdd317b...acaea7`](./contracts/ethereum-1/0xdd317b85f7bd56361e2e3216610803e433acaea7/) | ⚠️ Unaudited |
| PnlAccountingHelper | unknown | ethereum | n/a | [`0x57c23f...81437e`](./contracts/ethereum-1/0x57c23fe7a1a8d86f1128196c7c22f8711e81437e/) | ⚠️ Unaudited |
| PolygonBridgeReceiver | unknown | polygon | n/a | [`0x18281d...3c468a`](./contracts/polygon-137/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| PoolFactory | unknown | base | n/a | [`0x420dd3...ce40da`](./contracts/base-8453/0x420dd381b31aef6683db6b902084cb0ffece40da/) | ⚠️ Unaudited |
| PoolSelector | unknown | ethereum | n/a | [`0x62e0b4...4603b0`](./contracts/ethereum-1/0x62e0b431990ea128fe685e764fb04e7d604603b0/) | ⚠️ Unaudited |
| PoolUtils | unknown | ethereum | n/a | [`0xc4f53a...9719e4`](./contracts/ethereum-1/0xc4f53a6c259a6951406534b214564b3b529719e4/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | ⚠️ Unaudited |
| PositionRouterReader | unknown | arbitrum | n/a | [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | ⚠️ Unaudited |
| PreOrder | unknown | ethereum | n/a | [`0x8b7a14...97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d99...22f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x802351...dfe471`](./contracts/ethereum-1/0x8023518b2192fb5384dadc596765b3dd1cdfe471/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| PriceFeedWith4626Support | unknown | ethereum | n/a | [`0x139338...b05e37`](./contracts/ethereum-1/0x13933885c9a392ce73f396707ec61f30a8b05e37/) | ⚠️ Unaudited |
| PriceProvider | unknown | ethereum | n/a | [`0x28a6e7...c1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | ⚠️ Unaudited |
| PriceRegistry | unknown | arbitrum | n/a | [`0x13015e...20438c`](./contracts/arbitrum-42161/0x13015e4e6f839e1aa1016df521ea458eca20438c/) | ⚠️ Unaudited |
| ProtocolGovernor | unknown | base | n/a | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ⚠️ Unaudited |
| ProtocolPoolController | unknown | ethereum | n/a | [`0x03a993...3f5e61`](./contracts/ethereum-1/0x03a993369b5b6290d412b63d29f3bc2dc13f5e61/) | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | ethereum | n/a | [`0xaf8749...e0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | n/a | [`0x72233f...dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ⚠️ Unaudited |
| PublicResolver | unknown | linea | n/a | [`0x86c5ae...733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ⚠️ Unaudited |
| Puff | unknown | mantle | n/a | [`0x26a6b0...3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | ⚠️ Unaudited |
| PUMP | unknown | ethereum | n/a | [`0x0ed540...4b079c`](./contracts/ethereum-1/0x0ed540d53b4b49931544a6d8926f3157784b079c/) | ⚠️ Unaudited |
| PumpLockMint | unknown | ethereum | n/a | [`0x77d22a...04eaad`](./contracts/ethereum-1/0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad/) | ⚠️ Unaudited |
| PumpToken | unknown | ethereum | n/a | [`0x2cd264...d49cfe`](./contracts/ethereum-1/0x2cd2644edab51cb2122f37e03e5f997661d49cfe/) | ⚠️ Unaudited |
| PumpTokenOFT | unknown | ethereum | n/a | [`0xadc9c9...f4f9a8`](./contracts/ethereum-1/0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8/) | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | ethereum | n/a | [`0xcb1b27...ef3a52`](./contracts/ethereum-1/0xcb1b273f03c084a906ee64f27beeed7293ef3a52/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| QuoterV2 | unknown | linea | n/a | [`0x1e662e...6c0b10`](./contracts/linea-59144/0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10/) | ⚠️ Unaudited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | ethereum | n/a | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| RateBasedScalingPriceFeed | unknown | ethereum | n/a | [`0x1ad4ce...330f26`](./contracts/ethereum-1/0x1ad4ceba9f8135a557bbe317db62aa125c330f26/) | ⚠️ Unaudited |
| RateProviderRegistry | unknown | ethereum | n/a | [`0xd0b6c0...bedce7`](./contracts/ethereum-1/0xd0b6c01e9a8d21ed05726f9020b577a614bedce7/) | ⚠️ Unaudited |
| RBACTimelock | unknown | optimism | n/a | [`0x1e2fae...a3ea45`](./contracts/optimism-10/0x1e2faed390be7945acbf22fc25173c4bdda3ea45/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | ⚠️ Unaudited |
| RedemptionController | unknown | ethereum | n/a | [`0xdf2ee4...eb2510`](./contracts/ethereum-1/0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510/) | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| ReferralReader | unknown | arbitrum | n/a | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | arbitrum | n/a | [`0x818792...9071d7`](./contracts/arbitrum-42161/0x818792c958ac33c01c58d5026cec91a86e9071d7/) | ⚠️ Unaudited |
| RegistryPermission | unknown | ethereum | n/a | [`0xab00b9...186b85`](./contracts/ethereum-1/0xab00b934de01c1b4931047125c2ba5b3d6186b85/) | ⚠️ Unaudited |
| RegulationsManager | unknown | ethereum | n/a | [`0x1fcb83...2cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ⚠️ Unaudited |
| RestakeManager | unknown | ethereum | n/a | [`0x18ac4d...1a042a`](./contracts/ethereum-1/0x18ac4d26acd4c5c4fe98c9098d2e5e1e501a042a/) | ⚠️ Unaudited |
| RETHCorrelatedAssetsPriceOracle | unknown | ethereum | n/a | [`0x584a6b...f33b72`](./contracts/ethereum-1/0x584a6bb85fc446642217be0f6491c9d652f33b72/) | ⚠️ Unaudited |
| ReturnsReceiver | unknown | ethereum | n/a | [`0x1980b3...d09a27`](./contracts/ethereum-1/0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | n/a | [`0x08d3ff...2b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| RevokableVester | unknown | ethereum | n/a | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x1de098...4f5554`](./contracts/arbitrum-42161/0x1de098faf30bd74f22753c28db17a2560d4f5554/) | ⚠️ Unaudited |
| RewardEthToken | unknown | ethereum | n/a | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | [`0x1a2a2d...75e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | ⚠️ Unaudited |
| RewardReader | unknown | arbitrum | n/a | [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/) | ⚠️ Unaudited |
| RewardRouter | unknown | arbitrum | n/a | [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | ⚠️ Unaudited |
| RewardRouterV2 | unknown | arbitrum | n/a | [`0xa906f3...f8d8f1`](./contracts/arbitrum-42161/0xa906f338cb21815cbc4bc87ace9e68c87ef8d8f1/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardSplitter | unknown | ethereum | n/a | [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/) | ⚠️ Unaudited |
| RewardSplitterFactory | unknown | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | [`0x0a22fe...be964b`](./contracts/arbitrum-42161/0x0a22fec325b89ac294fceafefd7fbc9115be964b/) | ⚠️ Unaudited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| RMN | unknown | arbitrum | n/a | [`0x2d45c4...04a7fc`](./contracts/arbitrum-42161/0x2d45c49506ba94ea46dff99f12159fe8be04a7fc/) | ⚠️ Unaudited |
| RocketTokenRETH | unknown | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| RoleManager | unknown | ethereum | n/a | [`0x09aa40...b7666e`](./contracts/ethereum-1/0x09aa40b6e0e768a04d650302e1879dced6b7666e/) | ⚠️ Unaudited |
| Root | unknown | linea | n/a | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/) | ⚠️ Unaudited |
| RSETH_OFT | unknown | arbitrum | n/a | [`0x4186bf...56b41f`](./contracts/arbitrum-42161/0x4186bfc76e2e237523cbc30fd220fe055156b41f/) | ⚠️ Unaudited |
| RSETHPool | unknown | arbitrum | n/a | [`0x352e20...8a699c`](./contracts/arbitrum-42161/0x352e20158c9916579b337d1332f462b26a8a699c/) | ⚠️ Unaudited |
| RSETHPoolNoWrapper | unknown | unichain | n/a | [`0x9a7fa6...fbbe81`](./contracts/unichain-130/0x9a7fa6fe70f2a23dc3980df69f922b6961fbbe81/) | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | arbitrum | n/a | [`0x3222d3...dc627e`](./contracts/arbitrum-42161/0x3222d3de5a9a3ab884751828903044cc4adc627e/) | ⚠️ Unaudited |
| RsETHScalingPriceFeed | unknown | ethereum | n/a | [`0x3c30b5...7ed178`](./contracts/ethereum-1/0x3c30b5a5a04656565686f800481580ac4e7ed178/) | ⚠️ Unaudited |
| RswETH | unknown | ethereum | n/a | [`0x4796d9...4e2362`](./contracts/ethereum-1/0x4796d939b22027c2876d5ce9fde52da9ec4e2362/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0xd9496f...3183cb`](./contracts/ethereum-1/0xd9496f2a3fd2a97d8a4531d92742f3c8f53183cb/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xb3e79c...0c4129`](./contracts/base-8453/0xb3e79c7cac540ca833015e63d96d3032ba0c4129/) | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | mantle | n/a | [`0x00cbf7...3ebd4b`](./contracts/mantle-5000/0x00cbf714d5fa2083ea7c816c80c954442d3ebd4b/) | ⚠️ Unaudited |
| ScalingPriceFeedWithCustomDescription | unknown | mantle | n/a | [`0x0090a5...83c8c3`](./contracts/mantle-5000/0x0090a563c4832e4e519f5f054483519b1a83c8c3/) | ⚠️ Unaudited |
| ScrollBridgeReceiver | unknown | scroll | n/a | [`0xc6bf5a...9b610d`](./contracts/scroll-534352/0xc6bf5a64896d679cf89843dbec6c0f5d3c9b610d/) | ⚠️ Unaudited |
| SDCollateral | unknown | ethereum | n/a | [`0x7af473...3ee91f`](./contracts/ethereum-1/0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f/) | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | n/a | [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | ⚠️ Unaudited |
| SEthFiStrategy | unknown | ethereum | n/a | [`0x76c57e...805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | ⚠️ Unaudited |
| SharedMevEscrow | unknown | ethereum | n/a | [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/) | ⚠️ Unaudited |
| ShortsTracker | unknown | arbitrum | n/a | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| SignatureChecker | unknown | unichain | n/a | [`0xd25491...ec3527`](./contracts/unichain-130/0xd254915fc567865730f0516f8933bc0b96ec3527/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | n/a | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21...82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleStakingERC20 | unknown | ethereum | n/a | [`0x38d43a...31d774`](./contracts/ethereum-1/0x38d43a6cb8da0e855a42fb6b0733a0498531d774/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | optimism | n/a | [`0x0f8605...c1a5fe`](./contracts/optimism-10/0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe/) | ⚠️ Unaudited |
| Sky | unknown | ethereum | n/a | [`0x56072c...ed9279`](./contracts/ethereum-1/0x56072c95faa701256059aa122697b133aded9279/) | ⚠️ Unaudited |
| SocializingPool | unknown | ethereum | n/a | [`0x1082a4...39be6d`](./contracts/ethereum-1/0x1082a48779188c53507d28b1d2a4b17ad839be6d/) | ⚠️ Unaudited |
| SortitionPool | unknown | ethereum | n/a | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | ⚠️ Unaudited |
| StaderConfig | unknown | ethereum | n/a | [`0x060a6a...bd2c30`](./contracts/ethereum-1/0x060a6a57f8ce8fb99cbc8d4fd6b73c36eebd2c30/) | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | ethereum | n/a | [`0x254093...ae1f3d`](./contracts/ethereum-1/0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d/) | ⚠️ Unaudited |
| StaderStakePoolsManager | unknown | ethereum | n/a | [`0x9dceae...0d0ff5`](./contracts/ethereum-1/0x9dceaeb1c035c1427e64e6c6fec61f816e0d0ff5/) | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedEthToken | unknown | ethereum | n/a | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | ⚠️ Unaudited |
| StakedFrax | unknown | ethereum | n/a | [`0xa663b0...c41c32`](./contracts/ethereum-1/0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32/) | ⚠️ Unaudited |
| StakedGlp | unknown | arbitrum | n/a | [`0x01af26...ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/) | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | arbitrum | n/a | [`0xe19ab1...0b382c`](./contracts/arbitrum-42161/0xe19ab1cca0a010521140cf5ada1cf8308c0b382c/) | ⚠️ Unaudited |
| StakedLBTC | unknown | ethereum | n/a | [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | ethereum | n/a | [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | ⚠️ Unaudited |
| StakedTokenV1 | unknown | ethereum | n/a | [`0xbe9895...a49704`](./contracts/ethereum-1/0xbe9895146f7af43049ca1c1ae358b0541ea49704/) | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | mantle | n/a | [`0x211cc4...5fe5d2`](./contracts/mantle-5000/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | ethereum | n/a | [`0x9d39a5...7a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | ⚠️ Unaudited |
| StakeManager | unknown | arbitrum | n/a | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xb68b12...df17a0`](./contracts/ethereum-1/0xb68b125e5b0f2600841b2bba484e76a495df17a0/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x01a360...7a06a2`](./contracts/ethereum-1/0x01a360392c74b5b8bf4973f438ff3983507a06a2/) | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | n/a | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| STETHShim | unknown | ethereum | n/a | [`0x86a722...6699d3`](./contracts/ethereum-1/0x86a72256932d32afbcd841fce2e9e5534c6699d3/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0x5ae0e4...284938`](./contracts/ethereum-1/0x5ae0e44de96885702bd99a6914751c952d284938/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0x60d2d9...2e5943`](./contracts/ethereum-1/0x60d2d94acb969ca54e781007ee89f04c1a2e5943/) | ⚠️ Unaudited |
| StrategyExecutor | unknown | ethereum | n/a | [`0x89f57d...0ef50e`](./contracts/ethereum-1/0x89f57d3617f6a9ff877fea34dd0688b2840ef50e/) | ⚠️ Unaudited |
| StrategyStorage | unknown | ethereum | n/a | [`0x97c03f...6f1f47`](./contracts/ethereum-1/0x97c03f52244e60bb18511cbf03f890d5886f1f47/) | ⚠️ Unaudited |
| Streamer | unknown | ethereum | n/a | [`0xf86b6b...9ea752`](./contracts/ethereum-1/0xf86b6b0cc4d7178e118db3179a2d2191959ea752/) | ⚠️ Unaudited |
| StreamerFactory | unknown | ethereum | n/a | [`0xe04102...b70a8a`](./contracts/ethereum-1/0xe041026b9176e98a365a7f9343d8e6224cb70a8a/) | ⚠️ Unaudited |
| SupporterVester | unknown | ethereum | n/a | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | ⚠️ Unaudited |
| SUsds | unknown | ethereum | n/a | [`0x4e7991...9f61e0`](./contracts/ethereum-1/0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0/) | ⚠️ Unaudited |
| Swapper1InchV5 | unknown | ethereum | n/a | [`0xcd0fcf...d18366`](./contracts/ethereum-1/0xcd0fcf8a31bc78ec07752e9ccd3960e936d18366/) | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | ethereum | n/a | [`0x747cac...52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | linea | n/a | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | ⚠️ Unaudited |
| swETH | unknown | ethereum | n/a | [`0x2d3b4b...0211a7`](./contracts/ethereum-1/0x2d3b4bb82bdf0a3593bcf098b5c5b6f7570211a7/) | ⚠️ Unaudited |
| SwETHProxyOFT | unknown | ethereum | n/a | [`0x5c6392...ed7b05`](./contracts/ethereum-1/0x5c6392a69dc11f254457716c682f70e4b2ed7b05/) | ⚠️ Unaudited |
| SwETHSY | unknown | ethereum | n/a | [`0xaa68ca...1875e8`](./contracts/ethereum-1/0xaa68ca9c69a4ff22203ce189ce4448d7401875e8/) | ⚠️ Unaudited |
| swEXIT | unknown | ethereum | n/a | [`0x02454d...6c8f78`](./contracts/ethereum-1/0x02454d649054276e3ed8b9f17f8d5f49ac6c8f78/) | ⚠️ Unaudited |
| SWNFTv3 | unknown | ethereum | n/a | [`0xc9f6d9...9caf9b`](./contracts/ethereum-1/0xc9f6d9aafca9ea1d1673099c6f085aab829caf9b/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x9ca047...436310`](./contracts/ethereum-1/0x9ca047689261e35c9e507b1bb0b7443c2a436310/) | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TBTCVault | unknown | ethereum | n/a | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | ethereum | n/a | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | ⚠️ Unaudited |
| TermsOfServiceAllowList | unknown | base | n/a | [`0x767b63...99bbf1`](./contracts/base-8453/0x767b63ae98fcf99ad04e819ce93ec5cd0299bbf1/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | ethereum | n/a | [`0xde706e...bd5c7d`](./contracts/ethereum-1/0xde706e90f07ffa15b1783379edab3c21fbbd5c7d/) | ⚠️ Unaudited |
| TEthExchangeRateProvider | unknown | ethereum | n/a | [`0x4bd1ec...55fa8d`](./contracts/ethereum-1/0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d/) | ⚠️ Unaudited |
| TEthRateProvider | unknown | ethereum | n/a | [`0x077c21...9fdc1e`](./contracts/ethereum-1/0x077c2122e96c7457d11fb9523f5745acb49fdc1e/) | ⚠️ Unaudited |
| TickLens | unknown | linea | n/a | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | ⚠️ Unaudited |
| TimelockController | unknown | unichain | n/a | [`0x1237d9...9e62c0`](./contracts/unichain-130/0x1237d9538b400233d876bf7cbefa3e5b1d9e62c0/) | ⚠️ Unaudited |
| TmpStreamHelper | unknown | ethereum | n/a | [`0x139f63...130d8d`](./contracts/ethereum-1/0x139f6317863571c67acda646e07d0399d3130d8d/) | ⚠️ Unaudited |
| TNFT | unknown | ethereum | n/a | [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | arbitrum | n/a | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | ⚠️ Unaudited |
| TokenBridge | unknown | linea | n/a | [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/) | ⚠️ Unaudited |
| TokenRateOracle | unknown | unichain | n/a | [`0x537a7f...1029af`](./contracts/unichain-130/0x537a7f9d551da3c2800cb11ca17f2946d21029af/) | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| Topupper | unknown | ethereum | n/a | [`0x11d0cf...694285`](./contracts/ethereum-1/0x11d0cff93cc1def7b621de281296ded0e3694285/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x3d30b1...3f1e94`](./contracts/ethereum-1/0x3d30b1ab88d487b0f3061f40de76845bec3f1e94/) | ⚠️ Unaudited |
| TreehouseAccounting | unknown | ethereum | n/a | [`0xb7ce3c...535709`](./contracts/ethereum-1/0xb7ce3cb5bc5c00cd2f9b39d9b0580f5355535709/) | ⚠️ Unaudited |
| TreehouseFastlane | unknown | ethereum | n/a | [`0x829525...06c0d6`](./contracts/ethereum-1/0x829525417cd78cba0f99a8736426fc299506c0d6/) | ⚠️ Unaudited |
| TreehouseRedemption | unknown | ethereum | n/a | [`0x0618db...4ad09f`](./contracts/ethereum-1/0x0618dbdb3be798346e6d9c08c3c84658f94ad09f/) | ⚠️ Unaudited |
| TreehouseRedemptionV2 | unknown | ethereum | n/a | [`0xcd63a2...aabb85`](./contracts/ethereum-1/0xcd63a29faff07130d3af89bb4f40778938aabb85/) | ⚠️ Unaudited |
| TreehouseRouter | unknown | ethereum | n/a | [`0x8ae023...c4d398`](./contracts/ethereum-1/0x8ae023d31d3590b7fd0919251a8c68dfc0c4d398/) | ⚠️ Unaudited |
| Trig | unknown | base | n/a | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x009aed...643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UnderwriterToken | unknown | ethereum | n/a | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| UnichainPriceFeedEzethFundamentalWithoutRoundsV1 | unknown | unichain | n/a | [`0x3587a7...0bc2cc`](./contracts/unichain-130/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | ⚠️ Unaudited |
| UnichainPriceFeedWeethFundamentalWithoutRoundsV1 | unknown | unichain | n/a | [`0xa8a94d...74aa43`](./contracts/unichain-130/0xa8a94da411425634e3ed6c331a32ab4fd774aa43/) | ⚠️ Unaudited |
| UnichainPriceFeedWstethstethWithoutRoundsV1 | unknown | unichain | n/a | [`0x4bad96...ea7a57`](./contracts/unichain-130/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | ethereum | n/a | [`0x046728...63a58d`](./contracts/ethereum-1/0x046728da7cb8272284238bd3e47909823d63a58d/) | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | ethereum | n/a | [`0x09af9b...1700fb`](./contracts/ethereum-1/0x09af9b2261463c38115acd6d345da345851700fb/) | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | n/a | [`0x3aa974...3a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| UniversalRouter | unknown | linea | n/a | [`0x07507a...241c91`](./contracts/linea-59144/0x07507a719e7d040ebcbcf54715d7ce7ce5241c91/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0x18efef...ab5982`](./contracts/ethereum-1/0x18efef04f525a9bf0c6440b12ebb71bfa2ab5982/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| UsccDepositStrategy | unknown | ethereum | n/a | [`0x7c4564...760395`](./contracts/ethereum-1/0x7c4564bd54da474314f715b19d7d8c7671760395/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | arbitrum | n/a | [`0xf46bef...be97e4`](./contracts/arbitrum-42161/0xf46beff26e1c4552fb4ffb00314bdf175fbe97e4/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| USDeOFT | unknown | mantle | n/a | [`0x5d3a1f...52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | n/a | [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | ⚠️ Unaudited |
| Usds | unknown | base | n/a | [`0x191cd4...4cad5e`](./contracts/base-8453/0x191cd41681a3fe15aa15a0bec415821ce24cad5e/) | ⚠️ Unaudited |
| UsdsJoin | unknown | ethereum | n/a | [`0x3c0f89...777feb`](./contracts/ethereum-1/0x3c0f895007ca717aa01c8693e59df1e8c3777feb/) | ⚠️ Unaudited |
| USDT | unknown | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| UserWithdrawalManager | unknown | ethereum | n/a | [`0x0f9479...620e0c`](./contracts/ethereum-1/0x0f9479226734ef4fd25b36470584f8e1ab620e0c/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x0ef8fa...42d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x1b7a4c...736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x200057...d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2093bb...a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2ecd15...2fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x46c4ab...cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x57aaf0...bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x857b4f...d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd0ff89...fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd5edf7...54e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/) | ⚠️ Unaudited |
| UUPSProxy | unknown | linea | n/a | [`0x3a1986...5a3975`](./contracts/linea-59144/0x3a19866d5e0fae0ce19adda617f9d2b9fd5a3975/) | ⚠️ Unaudited |
| V3Migrator | unknown | linea | n/a | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x023824...ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ⚠️ Unaudited |
| ValidatorWithdrawalVault | unknown | ethereum | n/a | [`0x3073cc...f3458f`](./contracts/ethereum-1/0x3073cc90ad39e0c30bb0d4c70f981fbd00f3458f/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultAdapter | unknown | ethereum | n/a | [`0x6d8cc0...e8f872`](./contracts/ethereum-1/0x6d8cc0262bb3802eafaf4e7dde7afd3383e8f872/) | ⚠️ Unaudited |
| VaultAdmin | unknown | ethereum | n/a | [`0x1ef055...a6452b`](./contracts/ethereum-1/0x1ef0553feb80e6f133cae3092e38f0b23da6452b/) | ⚠️ Unaudited |
| VaultCore | unknown | ethereum | n/a | [`0x69d9a7...4b7a92`](./contracts/ethereum-1/0x69d9a767e071cfba316ba06a914a08f1314b7a92/) | ⚠️ Unaudited |
| VaultErrorController | unknown | arbitrum | n/a | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | arbitrum | n/a | [`0x1cf457...2b5de3`](./contracts/arbitrum-42161/0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3/) | ⚠️ Unaudited |
| VaultPull | unknown | ethereum | n/a | [`0x313ca6...5b3ab9`](./contracts/ethereum-1/0x313ca6136521d22a7ea763b3566ed0b53f5b3ab9/) | ⚠️ Unaudited |
| VaultReader | unknown | arbitrum | n/a | [`0x060cbb...463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/) | ⚠️ Unaudited |
| VaultRescuer | unknown | ethereum | n/a | [`0x1af329...db933a`](./contracts/ethereum-1/0x1af329d2c4ceaf45e1d8062c696b09ffaddb933a/) | ⚠️ Unaudited |
| VaultSend | unknown | ethereum | n/a | [`0xc78011...45fc3a`](./contracts/ethereum-1/0xc780112305ed959ceeeb0de692e2407e4145fc3a/) | ⚠️ Unaudited |
| VaultsRegistry | unknown | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |
| VaultValueChecker | unknown | ethereum | n/a | [`0x25041c...ad8739`](./contracts/ethereum-1/0x25041ccb8352b9ba65883a94685aef07a5ad8739/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | n/a | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0xa618f1...457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | ⚠️ Unaudited |
| VerifierProxy | unknown | ethereum | n/a | [`0xaae5ec...ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | unknown | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | base | n/a | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/) | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WalletRegistry | unknown | ethereum | n/a | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | n/a | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WBTCPriceFeed | unknown | ethereum | n/a | [`0x319f19...7f7d96`](./contracts/ethereum-1/0x319f19ffb23fdfe322873af6480685f4db7f7d96/) | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | ethereum | n/a | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WithdrawQueue | unknown | ethereum | n/a | [`0x02ac87...e2ba0b`](./contracts/ethereum-1/0x02ac87c747f5b74d3d290adcf83bb2b694e2ba0b/) | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | ethereum | n/a | [`0x3ed97c...0a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WOETH | unknown | ethereum | n/a | [`0x388782...4eb830`](./contracts/ethereum-1/0x388782b21275f75255f3ee08e23bd3991d4eb830/) | ⚠️ Unaudited |
| WOETHBase | unknown | base | n/a | [`0x2e1826...583408`](./contracts/base-8453/0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408/) | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |
| WrappedOusd | unknown | ethereum | n/a | [`0xdeabeb...16e632`](./contracts/ethereum-1/0xdeabeb7dfda1deff8a90fde8a16d7a42d316e632/) | ⚠️ Unaudited |
| WrappedRSETH | unknown | arbitrum | n/a | [`0xe119d2...064a6b`](./contracts/arbitrum-42161/0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| wstETH_Burner | unknown | ethereum | n/a | [`0xa7581e...9b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | ⚠️ Unaudited |
| WstETHCorrelatedAssetsPriceOracle | unknown | ethereum | n/a | [`0x0866fc...015b1c`](./contracts/ethereum-1/0x0866fc8a76bfc485b8e8c7d543a54bd72f015b1c/) | ⚠️ Unaudited |
| WstETHExchangeRateProvider | unknown | ethereum | n/a | [`0x3ce02c...c6cd1e`](./contracts/ethereum-1/0x3ce02cba4952cf75dc8c1baade27761141c6cd1e/) | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | ethereum | n/a | [`0x4f67e4...f48e79`](./contracts/ethereum-1/0x4f67e4d9bd67efa28236013288737d39aef48e79/) | ⚠️ Unaudited |
| WstETHRateProvider | unknown | ethereum | n/a | [`0xa14a1a...fe6109`](./contracts/ethereum-1/0xa14a1a1646980c2b78eddd51b66ec220aefe6109/) | ⚠️ Unaudited |
| Zap | unknown | ethereum | n/a | [`0xbd9fc4...2ade0d`](./contracts/ethereum-1/0xbd9fc4fdb07e46a69349101e862e82aa002ade0d/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Trail of Bits - April 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Direct | contract_name | 2 | high |
| [OpenZeppelin - August 2019](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Direct | contract_name | 6 | high |
| [Trail of Bits - August 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Direct | contract_name | 3 | high |
| [OpenZeppelin - Timelock & Pause Guardian](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | 2019-10 | stale | Direct | contract_name | 5 | high |
| [OpenZeppelin - cDAI](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | 1 | high |
| [OpenZeppelin - COMP & Governance](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | 2 | high |
| [Trail of Bits - February 2020](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Direct | contract_name | 3 | high |
| [OpenZeppelin - Tether](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | 2020-04 | stale | Direct | contract_name | 3 | high |
| [OpenZeppelin - COMP Distribution](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Direct | contract_name | 1 | high |
| [Compound III Audit by OpenZeppelin](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | 93 | high |
| [Compound III Security Audit by ChainSecurity](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 777 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=119

Zero-match audit list:

- [16923] Compound III Security Audit by ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
