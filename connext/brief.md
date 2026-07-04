# Agentic Audit Brief: Connext

## Project Overview

- Project: Connext (`connext`)
- Website: [https://connext.network/](https://connext.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.456Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum, gnosis, linea, metis, mode, optimism, polygon
- Contract surface: 187 unique implementations (187 raw deployments)
- DeFi Llama TVL: $20,786,948.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 174 project-authored contract(s) across 10 chain(s); 38 ERC20 tokens, 5 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 51 common project-authored base contract(s) (proposedownable, watcherclient, connector). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 187; live-surface contracts included: 187 (182 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 38/164 (23.2%)
- Deployed-live implementations: 182 of 187 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 39/187
- Verified + Unaudited implementations: 148
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 187
- Raw deployments: 187
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/connext/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 39 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 23.2% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 38 | 20.3% | 2022-12 |
| Macro | Tier 2 | 17 | 9.1% | 2023-01 |
| Code4rena | Tier 1 | 4 | 2.1% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminHubConnector | unknown | ethereum | n/a | [`0x1e9b7e...4f57cd`](./contracts/ethereum-1/0x1e9b7e5ff9ccda4311ef475915b5a31b8b4f57cd/) | ✅ Audited |
| ArbitrumHubConnector | unknown | ethereum | n/a | [`0x7d8d16...949ae3`](./contracts/ethereum-1/0x7d8d16c500b89e4a1fde991f284d84d57e949ae3/) | ✅ Audited |
| ArbitrumSpokeConnector | unknown | arbitrum | n/a | [`0x2056c1...c1b678`](./contracts/arbitrum-42161/0x2056c11b071ae4cdd55007136c2493f3d4c1b678/) | ✅ Audited |
| BridgeFacet | unknown | ethereum | n/a | [`0x3606b0...2126a2`](./contracts/ethereum-1/0x3606b0d9c84224892c7407d4e8dcfd7e9e2126a2/) | ✅ Audited |
| BridgeToken | unknown | gnosis | n/a | [`0x0e1d5b...caaf4f`](./contracts/gnosis-100/0x0e1d5bcd2ac5cf2f71841a9667afc1e995caaf4f/) | ✅ Audited |
| ConnextERC20 | unknown | ethereum | n/a | [`0xfe67a4...28c67a`](./contracts/ethereum-1/0xfe67a4450907459c3e1fff623aa927dd4e28c67a/) | ✅ Audited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x13a1db...b3b676`](./contracts/ethereum-1/0x13a1dbf4c746775f606c77f2fb36bbe90bb3b676/) | ✅ Audited |
| DiamondInit | unknown | metis | n/a | [`0x1ac322...8ca84e`](./contracts/metis-1088/0x1ac32215b08806a5bc5271d7fd77919c3c8ca84e/) | ✅ Audited |
| EverclearXERC20 | unknown | optimism | n/a | [`0x58b9cb...9705e8`](./contracts/optimism-10/0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8/) | ✅ Audited |
| GnosisHubConnector | unknown | ethereum | n/a | [`0x245f75...8d6413`](./contracts/ethereum-1/0x245f757d660c3ec65416168690431076d58d6413/) | ✅ Audited |
| InboxFacet | unknown | ethereum | n/a | [`0x0296da...0d0f09`](./contracts/ethereum-1/0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09/) | ✅ Audited |
| LineaHubConnector | unknown | ethereum | n/a | [`0x076cd2...606a3d`](./contracts/ethereum-1/0x076cd2b25cb1ed7272d716bdeb4a8551cf606a3d/) | ✅ Audited |
| LPToken | unknown | base | n/a | [`0x0296da...0d0f09`](./contracts/base-8453/0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09/) | ✅ Audited |
| MainnetSpokeConnector | unknown | ethereum | n/a | [`0x02fdf0...a4a1cc`](./contracts/ethereum-1/0x02fdf04af077687cda03bd3162388b7972a4a1cc/) | ✅ Audited |
| MerkleTreeManager | unknown | ethereum | n/a | [`0x021c2b...563fd7`](./contracts/ethereum-1/0x021c2b7e89bde462c97de3c514c77e1c50563fd7/) | ✅ Audited |
| MetisHubConnector | unknown | ethereum | n/a | [`0xaf60b2...4a3bc5`](./contracts/ethereum-1/0xaf60b2a87f791aa9de81c32f964403da614a3bc5/) | ✅ Audited |
| MetisSpokeConnector | unknown | metis | n/a | [`0x20098c...e21031`](./contracts/metis-1088/0x20098c6d481225ff5d9b2ca84cf68fc683e21031/) | ✅ Audited |
| Multicall | unknown | ethereum | n/a | [`0x633771...2e4d81`](./contracts/ethereum-1/0x63377166e406ee6a992b8e20961f047bb12e4d81/) | ✅ Audited |
| OptimismHubConnector | unknown | ethereum | n/a | [`0x23b7ab...799a94`](./contracts/ethereum-1/0x23b7abe4cc664f24eb68e80cfadc572857799a94/) | ✅ Audited |
| OptimismSpokeConnector | unknown | base | n/a | [`0x0ed42f...b7dbda`](./contracts/base-8453/0x0ed42ffe155b35893d6ef7510e5893183bb7dbda/) | ✅ Audited |
| OptimismV0HubConnector | unknown | ethereum | n/a | [`0x5fa89e...5274c0`](./contracts/ethereum-1/0x5fa89ea322708b30882d3aa3a9fc3da4775274c0/) | ✅ Audited |
| PolygonHubConnector | unknown | ethereum | n/a | [`0x62c3f1...8dbb5a`](./contracts/ethereum-1/0x62c3f15eee9a932b90c64b07c02ee9962b8dbb5a/) | ✅ Audited |
| PolygonSpokeConnector | unknown | polygon | n/a | [`0x1a2380...97383a`](./contracts/polygon-137/0x1a238087e8fb9f6b248ec4143d94f11b1497383a/) | ✅ Audited |
| PolygonZkHubConnector | unknown | ethereum | n/a | [`0x279fda...24c625`](./contracts/ethereum-1/0x279fda9addb854541f0bb86733d924e28c24c625/) | ✅ Audited |
| PortalFacet | unknown | metis | n/a | [`0x191d76...38600a`](./contracts/metis-1088/0x191d761a722e13085e4c95b95cbcf3cc4938600a/) | ✅ Audited |
| ProposedOwnableFacet | unknown | optimism | n/a | [`0x1bcdbf...4dcbd5`](./contracts/optimism-10/0x1bcdbf11f9eb8ddac1725bb346890e45f14dcbd5/) | ✅ Audited |
| RelayerFacet | unknown | ethereum | n/a | [`0x064526...7a81ed`](./contracts/ethereum-1/0x0645265e254caeb175d75890259db3696e7a81ed/) | ✅ Audited |
| RootManager | unknown | ethereum | n/a | [`0x0031d2...760258`](./contracts/ethereum-1/0x0031d290b8526e2eb6ac22111e5ff96eca760258/) | ✅ Audited |
| RoutersFacet | unknown | metis | n/a | [`0x0296da...0d0f09`](./contracts/metis-1088/0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09/) | ✅ Audited |
| SendOutboundRootResolver | unknown | ethereum | n/a | [`0x17ab9b...0ec1bd`](./contracts/ethereum-1/0x17ab9b14ac7659390b3994f9e67bf833e60ec1bd/) | ✅ Audited |
| StableSwap | unknown | ethereum | n/a | [`0xca790c...00cd8d`](./contracts/ethereum-1/0xca790c6caacb69f070092ca680760a1abb00cd8d/) | ✅ Audited |
| StableSwapFacet | unknown | polygon | n/a | [`0x11984d...cf2259`](./contracts/polygon-137/0x11984dc4465481512eb5b777e44061c158cf2259/) | ✅ Audited |
| SwapAdminFacet | unknown | metis | n/a | [`0x064526...7a81ed`](./contracts/metis-1088/0x0645265e254caeb175d75890259db3696e7a81ed/) | ✅ Audited |
| SwapUtilsExternal | unknown | polygon | n/a | [`0x0296da...0d0f09`](./contracts/polygon-137/0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09/) | ✅ Audited |
| TokenFacet | unknown | ethereum | n/a | [`0x01ede4...aa180a`](./contracts/ethereum-1/0x01ede4fdf8cf7ef9942a935305c3145f8daa180a/) | ✅ Audited |
| Unwrapper | unknown | base | n/a | [`0x01ede4...aa180a`](./contracts/base-8453/0x01ede4fdf8cf7ef9942a935305c3145f8daa180a/) | ✅ Audited |
| UpgradeBeaconController | unknown | bsc | n/a | [`0x13a1db...b3b676`](./contracts/bsc-56/0x13a1dbf4c746775f606c77f2fb36bbe90bb3b676/) | ✅ Audited |
| WatcherManager | unknown | polygon | n/a | [`0x137072...9c171b`](./contracts/polygon-137/0x137072f68708eb7c82edceececcf64d6c29c171b/) | ✅ Audited |
| ZkSyncHubConnector | unknown | ethereum | n/a | [`0x18a7a4...58b898`](./contracts/ethereum-1/0x18a7a4e4c70fcec6eb4844eb84bc98523f58b898/) | ✅ Audited |

### ⚠️ Verified + Unaudited (148)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AIP1Point1Target | unknown | arbitrum | n/a | [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | n/a | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| AlchemixLockboxAdapter | unknown | ethereum | n/a | [`0xcfe063...79fc9f`](./contracts/ethereum-1/0xcfe063a764ea04a9a1dc6cf8b8978955f779fc9f/) | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | arbitrum | n/a | [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ⚠️ Unaudited |
| ArbFiatToken | unknown | arbitrum | n/a | [`0x1efb3f...f5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/) | ⚠️ Unaudited |
| ArbitrumExtension | unknown | arbitrum | n/a | [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ⚠️ Unaudited |
| ArbUXRNFT | unknown | arbitrum | n/a | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | n/a | [`0x6e8439...b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | [`0xae6aab...aba689`](./contracts/arbitrum-42161/0xae6aab43c4f3e0cea4ab83752c278f8debaba689/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x3fe380...11000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x22fbfb...d270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | unknown | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| bETH | unknown | mode | n/a | [`0x420000...000006`](./contracts/mode-34443/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| ConnextDiamond | unknown | base | n/a | [`0x064526...7a81ed`](./contracts/base-8453/0x0645265e254caeb175d75890259db3696e7a81ed/) | ⚠️ Unaudited |
| CrossMinter | unknown | bsc | n/a | [`0x24a1eb...497137`](./contracts/bsc-56/0x24a1eb8fae716ef04dca073e3f99f5f5c7497137/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DappRadarLockboxAdapter | unknown | ethereum | n/a | [`0x6ea3dc...685452`](./contracts/ethereum-1/0x6ea3dc2e17a0466b36dd3258574e0bd2e4685452/) | ⚠️ Unaudited |
| DForce | unknown | arbitrum | n/a | [`0x5d8063...a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | ⚠️ Unaudited |
| Diamond | unknown | ethereum | n/a | [`0x683151...b8ac48`](./contracts/ethereum-1/0x683151d43758bb7a37e9d47386154d5ae9b8ac48/) | ⚠️ Unaudited |
| DiamondERC165Init | unknown | metis | n/a | [`0x853300...fdd085`](./contracts/metis-1088/0x8533004ecb90151cd821dc2fafb78797d8fdd085/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0x025e75...5fba60`](./contracts/ethereum-1/0x025e75d8f799f362ac4fe136ddc197d3055fba60/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| ENSRegistry | unknown | linea | n/a | [`0x50130b...121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | linea | n/a | [`0xdb75db...d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | linea | n/a | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| GrumpycatLockboxAdapter | unknown | ethereum | n/a | [`0x6e7ab4...3957a4`](./contracts/ethereum-1/0x6e7ab4b68f1b184f677ed5e8e6e8f9348c3957a4/) | ⚠️ Unaudited |
| IXTLockboxAdapter | unknown | polygon | n/a | [`0x3bee41...03c5c2`](./contracts/polygon-137/0x3bee41753779e18a2d459a84c612ac6ef903c5c2/) | ⚠️ Unaudited |
| L2AddressRegistry | unknown | arbitrum | n/a | [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | ⚠️ Unaudited |
| L2DaiGateway | unknown | arbitrum | n/a | [`0x467194...c76c65`](./contracts/arbitrum-42161/0x467194771dae2967aef3ecbedd3bf9a310c76c65/) | ⚠️ Unaudited |
| L2GovernanceRelay | unknown | arbitrum | n/a | [`0x10e659...a55f2f`](./contracts/arbitrum-42161/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | ⚠️ Unaudited |
| L2MessageService | unknown | linea | n/a | [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | metis | n/a | [`0xbb06dc...16f4dc`](./contracts/metis-1088/0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc/) | ⚠️ Unaudited |
| L2TestSpell | unknown | arbitrum | n/a | [`0xaefc25...14b4a2`](./contracts/arbitrum-42161/0xaefc25750d8c2bd331293076e2dc5d5ad414b4a2/) | ⚠️ Unaudited |
| L2USDCBridge | unknown | linea | n/a | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ⚠️ Unaudited |
| LineaSpokeConnector | unknown | linea | n/a | [`0x4c1bf5...10e879`](./contracts/linea-59144/0x4c1bf5bda6f7aa11b5b4c6915df96620e710e879/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | n/a | [`0x96b3a1...124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | n/a | [`0xd83af4...cf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | n/a | [`0xc24e7b...9cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| LockboxAdapter | unknown | arbitrum | n/a | [`0x0b52ca...de3ae8`](./contracts/arbitrum-42161/0x0b52ca1406eea3ce1fcc37dc0121845ef1de3ae8/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MeanFinanceSource | unknown | optimism | n/a | [`0xface86...70edcd`](./contracts/optimism-10/0xface86b9f34230624cf48eb582aff4bba970edcd/) | ⚠️ Unaudited |
| MeanFinanceTarget | unknown | polygon | n/a | [`0x3e6421...f79b35`](./contracts/polygon-137/0x3e64213564cc30107beb81cd0dced3f18df79b35/) | ⚠️ Unaudited |
| MidasProtocolTarget | unknown | polygon | n/a | [`0x4e02ac...57443c`](./contracts/polygon-137/0x4e02ac4b0942e670dd0366fa504f665a2257443c/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| Multicall2 | unknown | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x7e4490...9fdc2e`](./contracts/ethereum-1/0x7e4490e97c8243d844719f26a0b47fd5a59fdc2e/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | arbitrum | n/a | [`0x4a9196...1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| NameWrapper | unknown | linea | n/a | [`0xa53cca...13c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| NextLockboxAdapter | unknown | ethereum | n/a | [`0x222051...b3828d`](./contracts/ethereum-1/0x222051df1632517e2008ca65cffcb0466cb3828d/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | linea | n/a | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | [`0x50c572...7db0cb`](./contracts/base-8453/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/) | ⚠️ Unaudited |
| OptimismV0SpokeConnector | unknown | mode | n/a | [`0x223e62...90cf0f`](./contracts/mode-34443/0x223e62d3a2c528ffbde81430a45c0bd30990cf0f/) | ⚠️ Unaudited |
| OVM_ETH | unknown | metis | n/a | [`0x420000...00000a`](./contracts/metis-1088/0x420000000000000000000000000000000000000a/) | ⚠️ Unaudited |
| OVMFiatToken | unknown | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| OwnedResolver | unknown | linea | n/a | [`0x9453dc...f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ⚠️ Unaudited |
| PancakeV3Swapper | unknown | bsc | n/a | [`0x0b081b...4fd7d0`](./contracts/bsc-56/0x0b081b724cdc4dd9186e64f259b5fc589a4fd7d0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | linea | n/a | [`0x1e1f6f...39774e`](./contracts/linea-59144/0x1e1f6f22f97b4a7522d8b62e983953639239774e/) | ⚠️ Unaudited |
| PublicResolver | unknown | linea | n/a | [`0x86c5ae...733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ⚠️ Unaudited |
| QuoterV2 | unknown | linea | n/a | [`0x1e662e...6c0b10`](./contracts/linea-59144/0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10/) | ⚠️ Unaudited |
| RelayerProxy | unknown | optimism | n/a | [`0x035aba...ba836b`](./contracts/optimism-10/0x035aba93c18d407dec788ca2fdc77b90feba836b/) | ⚠️ Unaudited |
| RelayerProxyHub | unknown | ethereum | n/a | [`0x21e23f...089cdc`](./contracts/ethereum-1/0x21e23f1b88a37d3b30e7e3ed7626dae189089cdc/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | n/a | [`0x08d3ff...2b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| Root | unknown | linea | n/a | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | n/a | [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | n/a | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| SwapAndXCall | unknown | arbitrum | n/a | [`0x054cb7...76d962`](./contracts/arbitrum-42161/0x054cb759cef515c8ca71e19367c6091a7b76d962/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | linea | n/a | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TestERC20 | unknown | metis | n/a | [`0x08cf3f...ef31ab`](./contracts/metis-1088/0x08cf3f03d9fc58c97d2e209894594a2877ef31ab/) | ⚠️ Unaudited |
| TestERC20Votes | unknown | arbitrum | n/a | [`0x008b59...2bb629`](./contracts/arbitrum-42161/0x008b59ff5364045337994c00efc7ad1c562bb629/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TickLens | unknown | linea | n/a | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | ⚠️ Unaudited |
| TimelessLockboxAdapter | unknown | ethereum | n/a | [`0x7831e3...108baf`](./contracts/ethereum-1/0x7831e325824621ceb14898ad494444fe08108baf/) | ⚠️ Unaudited |
| TokenBridge | unknown | linea | n/a | [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | ⚠️ Unaudited |
| TokenProxy | unknown | gnosis | n/a | [`0x4ecaba...d605c6`](./contracts/gnosis-100/0x4ecaba5870353805a9f068101a40e0f32ed605c6/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x104177...b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x05f519...e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x0ece76...2203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniV3Swapper | unknown | optimism | n/a | [`0x1135cc...658a08`](./contracts/optimism-10/0x1135cc96a7e9d8f161be8b6bdb74f896a9658a08/) | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | n/a | [`0x3aa974...3a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| UniversalRouter | unknown | linea | n/a | [`0x07507a...241c91`](./contracts/linea-59144/0x07507a719e7d040ebcbcf54715d7ce7ce5241c91/) | ⚠️ Unaudited |
| UnwrapSearcherFixed | unknown | ethereum | n/a | [`0x1d14ae...2ae9e3`](./contracts/ethereum-1/0x1d14ae6adfb0530a6a53ba8900f14c1ddb2ae9e3/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| UpgradeBeacon | unknown | polygon | n/a | [`0x054cb7...76d962`](./contracts/polygon-137/0x054cb759cef515c8ca71e19367c6091a7b76d962/) | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | ethereum | n/a | [`0x083c8b...d49d58`](./contracts/ethereum-1/0x083c8bc333f38131623ce1e0951748facad49d58/) | ⚠️ Unaudited |
| USDT | unknown | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| V3Migrator | unknown | linea | n/a | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |
| xDonate | unknown | optimism | n/a | [`0xd47bd3...165d3f`](./contracts/optimism-10/0xd47bd37deaa7d960659f5ddab98f4e4729165d3f/) | ⚠️ Unaudited |
| XERC20 | unknown | ethereum | n/a | [`0xac7318...727fe7`](./contracts/ethereum-1/0xac73181dceb40254b587810fb57e097872727fe7/) | ⚠️ Unaudited |
| XERC20LockboxDeprecated | unknown | ethereum | n/a | [`0x54dded...1a6103`](./contracts/ethereum-1/0x54ddede0b063c332715693a83cbe6b611a1a6103/) | ⚠️ Unaudited |
| XERC20Registry | unknown | linea | n/a | [`0x11984d...cf2259`](./contracts/linea-59144/0x11984dc4465481512eb5b777e44061c158cf2259/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1l42vxzHwLXrKU10v3FutG2DWthU43vB8/view?pli=1) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/connext/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [3. **Protocol security**: As with any protocol, router operators are ultimately exposed to the risk of Connext's underlying implementation. While this risk is never 0, Connext follows best practices for [auditing](), [security bounties](https://immunefi.com/bounty/connext/), and operational practices to keep routers safe.](https://github.com/connext/audits) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Connext Amarok contest — Code 423n4.pdf](https://github.com/connext/audits/blob/main/amarok/Connext%20Amarok%20contest%20%E2%80%94%20Code%20423n4.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | 4 | high |
| [Connext-Spearbit-Security-Review.pdf](https://github.com/connext/audits/blob/main/amarok/Connext-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2022-08 | stale | Direct | contract_name | 12 | high |
| [ConnextNxtp-Spearbit-Security-Review.pdf](https://github.com/connext/audits/blob/main/amarok/ConnextNxtp-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2022-12 | stale | Direct | contract_name | 35 | medium |
| [Connext_A-1__Macro_Audits.pdf](https://github.com/connext/audits/blob/main/amarok/Connext_A-1__Macro_Audits.pdf) | Macro | Audit | 2023-01 | stale | Direct | contract_name | 17 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | AIP1Point1Target | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | AIP1Point2Action | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfe063...79fc9f`](./contracts/ethereum-1/0xcfe063a764ea04a9a1dc6cf8b8978955f779fc9f/) | AlchemixLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ArbCommunityNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1efb3f...f5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/) | ArbFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ArbitrumExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ArbUXRNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6e8439...b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fe380...11000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | BeaconProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | BEP20BandProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22fbfb...d270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | BEP20BitcoinCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | BEP20Cardano | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | BEP20Cosmos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | BEP20EOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | BEP20Ontology | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | BEP20Polkadot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | BEP20Tezos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20UpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20UpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | BEP20XRP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | BEP20YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | BEP20Zcash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x420000...000006`](./contracts/mode-34443/0x4200000000000000000000000000000000000006/) | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x064526...7a81ed`](./contracts/base-8453/0x0645265e254caeb175d75890259db3696e7a81ed/) | ConnextDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24a1eb...497137`](./contracts/bsc-56/0x24a1eb8fae716ef04dca073e3f99f5f5c7497137/) | CrossMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ea3dc...685452`](./contracts/ethereum-1/0x6ea3dc2e17a0466b36dd3258574e0bd2e4685452/) | DappRadarLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d8063...a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | DForce | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x683151...b8ac48`](./contracts/ethereum-1/0x683151d43758bb7a37e9d47386154d5ae9b8ac48/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x853300...fdd085`](./contracts/metis-1088/0x8533004ecb90151cd821dc2fafb78797d8fdd085/) | DiamondERC165Init | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025e75...5fba60`](./contracts/ethereum-1/0x025e75d8f799f362ac4fe136ddc197d3055fba60/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x50130b...121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ENSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xdb75db...d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e7ab4...3957a4`](./contracts/ethereum-1/0x6e7ab4b68f1b184f677ed5e8e6e8f9348c3957a4/) | GrumpycatLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3bee41...03c5c2`](./contracts/polygon-137/0x3bee41753779e18a2d459a84c612ac6ef903c5c2/) | IXTLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | L2AddressRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x467194...c76c65`](./contracts/arbitrum-42161/0x467194771dae2967aef3ecbedd3bf9a310c76c65/) | L2DaiGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10e659...a55f2f`](./contracts/arbitrum-42161/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | L2GovernanceRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | L2MessageService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xbb06dc...16f4dc`](./contracts/metis-1088/0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc/) | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaefc25...14b4a2`](./contracts/arbitrum-42161/0xaefc25750d8c2bd331293076e2dc5d5ad414b4a2/) | L2TestSpell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | L2USDCBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4c1bf5...10e879`](./contracts/linea-59144/0x4c1bf5bda6f7aa11b5b4c6915df96620e710e879/) | LineaSpokeConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x96b3a1...124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | LineaSurgeXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd83af4...cf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | LineaVoyageXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc24e7b...9cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | LineaXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b52ca...de3ae8`](./contracts/arbitrum-42161/0x0b52ca1406eea3ce1fcc37dc0121845ef1de3ae8/) | LockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xface86...70edcd`](./contracts/optimism-10/0xface86b9f34230624cf48eb582aff4bba970edcd/) | MeanFinanceSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3e6421...f79b35`](./contracts/polygon-137/0x3e64213564cc30107beb81cd0dced3f18df79b35/) | MeanFinanceTarget | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4e02ac...57443c`](./contracts/polygon-137/0x4e02ac4b0942e670dd0366fa504f665a2257443c/) | MidasProtocolTarget | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a9196...1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa53cca...13c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | NameWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222051...b3828d`](./contracts/ethereum-1/0x222051df1632517e2008ca65cffcb0466cb3828d/) | NextLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x50c572...7db0cb`](./contracts/base-8453/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x223e62...90cf0f`](./contracts/mode-34443/0x223e62d3a2c528ffbde81430a45c0bd30990cf0f/) | OptimismV0SpokeConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x420000...00000a`](./contracts/metis-1088/0x420000000000000000000000000000000000000a/) | OVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9453dc...f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | OwnedResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b081b...4fd7d0`](./contracts/bsc-56/0x0b081b724cdc4dd9186e64f259b5fc589a4fd7d0/) | PancakeV3Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x86c5ae...733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1e662e...6c0b10`](./contracts/linea-59144/0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x035aba...ba836b`](./contracts/optimism-10/0x035aba93c18d407dec788ca2fdc77b90feba836b/) | RelayerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21e23f...089cdc`](./contracts/ethereum-1/0x21e23f1b88a37d3b30e7e3ed7626dae189089cdc/) | RelayerProxyHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x08d3ff...2b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | SetFiveMillionProposalThresholdAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | StaticMetadataService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x054cb7...76d962`](./contracts/arbitrum-42161/0x054cb759cef515c8ca71e19367c6091a7b76d962/) | SwapAndXCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x08cf3f...ef31ab`](./contracts/metis-1088/0x08cf3f03d9fc58c97d2e209894594a2877ef31ab/) | TestERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x008b59...2bb629`](./contracts/arbitrum-42161/0x008b59ff5364045337994c00efc7ad1c562bb629/) | TestERC20Votes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7831e3...108baf`](./contracts/ethereum-1/0x7831e325824621ceb14898ad494444fe08108baf/) | TimelessLockboxAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ecaba...d605c6`](./contracts/gnosis-100/0x4ecaba5870353805a9f068101a40e0f32ed605c6/) | TokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1135cc...658a08`](./contracts/optimism-10/0x1135cc96a7e9d8f161be8b6bdb74f896a9658a08/) | UniV3Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3aa974...3a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | UniversalResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x07507a...241c91`](./contracts/linea-59144/0x07507a719e7d040ebcbcf54715d7ce7ce5241c91/) | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d14ae...2ae9e3`](./contracts/ethereum-1/0x1d14ae6adfb0530a6a53ba8900f14c1ddb2ae9e3/) | UnwrapSearcherFixed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x054cb7...76d962`](./contracts/polygon-137/0x054cb759cef515c8ca71e19367c6091a7b76d962/) | UpgradeBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x083c8b...d49d58`](./contracts/ethereum-1/0x083c8bc333f38131623ce1e0951748facad49d58/) | UpgradeBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | WXDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd47bd3...165d3f`](./contracts/optimism-10/0xd47bd37deaa7d960659f5ddab98f4e4729165d3f/) | xDonate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac7318...727fe7`](./contracts/ethereum-1/0xac73181dceb40254b587810fb57e097872727fe7/) | XERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54dded...1a6103`](./contracts/ethereum-1/0x54ddede0b063c332715693a83cbe6b611a1a6103/) | XERC20LockboxDeprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x11984d...cf2259`](./contracts/linea-59144/0x11984dc4465481512eb5b777e44061c158cf2259/) | XERC20Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 169 |
| upstream | 1 |
| standard_library | 17 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=68

Zero-match audit list:

- [16895] DL audit link
- [16897] 3. **Protocol security**: As with any protocol, router operators are ultimately exposed to the risk of Connext's underlying implementation. While this risk is never 0, Connext follows best practices for [auditing](), [security bounties](https://immunefi.com/bounty/connext/), and operational practices to keep routers safe.

Fork inheritance lineage and inherited audits are included when available.
