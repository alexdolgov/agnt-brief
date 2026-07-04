# Agentic Audit Brief: Ensuro

## Project Overview

- Project: Ensuro (`ensuro`)
- Website: [https://ensuro.co](https://ensuro.co)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:47.472Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum, polygon
- Contract surface: 139 unique implementations (331 raw deployments)
- DeFi Llama TVL: $1,102,228.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 46 project-authored contract(s) across 2 chain(s); 9 ERC4626 vaults, 10 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 8 common project-authored base contract(s) (accessmanagedproxybase, baseaccount, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 349; live-surface contracts included: 283 (280 live, 3 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/136 (2.9%)
- Deployed-live implementations: 136 of 139 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/136
- Verified + Unaudited implementations: 132
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 139
- Raw deployments: 331
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 1.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 2.9% | 2025-12 |
| SlowMist | Tier 1 | 2 | 1.5% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x367a03...f3a9d4`](./contracts/ethereum-1/0x367a03acd2f4df96871b891c0bad32b9f2f3a9d4/); ethereum `0x47e2af...026544`; ethereum `0xc3d6b7...373c07`; ethereum `0xf5866b...e69b3e`; polygon `0xa29df9...cdd79a`; polygon `0xf5866b...e69b3e` | ✅ Audited |
| FullSignedUW | unknown | ethereum | n/a | [`0xb259d0...170cf0`](./contracts/ethereum-1/0xb259d0267cdf1852714f6a3037551fd577170cf0/) | ✅ Audited |
| LPManualWhitelist | unknown | polygon | n/a | 2 deployments: ethereum `0xe43be3...518bf5`; polygon [`0x5dff0f...bbb9be`](./contracts/polygon-137/0x5dff0f8f5b0713405978162b146db7d896bbb9be/) | ✅ Audited |
| PolicyPool | unknown | polygon | n/a | 10 deployments: ethereum `0xb13557...3c84a0`; polygon [`0x076fb4...7f480b`](./contracts/polygon-137/0x076fb4a3de7a4285ac660fd52cebf924f67f480b/); polygon `0x32d54f...146a78`; polygon `0x367a03...f3a9d4`; polygon `0x49b11d...b8e154`; polygon `0x9633be...c728b7`; polygon `0xb06afa...a76d8d`; polygon `0xd1ab94...4f1251`; polygon `0xd7f8c3...9c01db`; polygon `0xd95478...4f3ef8` | ✅ Audited |

### ⚠️ Verified + Unaudited (132)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3InvestStrategy | operational_periphery | ethereum | n/a | [`0xd74a28...ac2497`](./contracts/ethereum-1/0xd74a28274c4b1a116add9857fc0e8f5e8fac2497/) | ⚠️ Unaudited |
| AccessControlAccount | unknown | polygon | n/a | [`0x90c5a7...c5477d`](./contracts/polygon-137/0x90c5a7d0c2c83ff3d145a2cf7f20b97253c5477d/) | ⚠️ Unaudited |
| AccessManagedMSV | unknown | polygon | n/a | 2 deployments: polygon [`0x8f73f5...64b18f`](./contracts/polygon-137/0x8f73f5e41b17c73e16962b04c7be2d193e64b18f/); polygon `0xef2f73...a10a0e` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x47e2af...026544`](./contracts/polygon-137/0x47e2afb074487682db5db6c7e41b43f913026544/); polygon `0x691a4d...22efb8` | ⚠️ Unaudited |
| AccessManagerAccount | unknown | polygon | n/a | 3 deployments: polygon [`0x144749...a077e5`](./contracts/polygon-137/0x144749b06376f949992123481441cfd0a9a077e5/); polygon `0x520501...dbc4c0`; polygon `0xbf148e...bdcc64` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| ATokenInstance | token | polygon | n/a | [`0xa4d940...c762bd`](./contracts/polygon-137/0xa4d94019934d8333ef880abffbf2fdd611c762bd/) | ⚠️ Unaudited |
| CashFlowLender | unknown | ethereum | n/a | 2 deployments: ethereum [`0x291a65...08d0d2`](./contracts/ethereum-1/0x291a65f1131950e37beda71a931a4dd33408d0d2/); ethereum `0x5fe11f...ae33e6` | ⚠️ Unaudited |
| CashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x02221b...e3dd58`](./contracts/polygon-137/0x02221b21775e5a3f5472403660b181b792e3dd58/); polygon `0xccd55d...c24982` | ⚠️ Unaudited |
| CashFlowLender | unknown | polygon | n/a | 4 deployments: polygon [`0x2efd18...430b08`](./contracts/polygon-137/0x2efd180a3423edb5d71360ddbdb651101e430b08/); polygon `0xd5b68b...da8ee7`; polygon `0xd8f301...b12330`; polygon `0xdda5c1...af3f70` | ⚠️ Unaudited |
| CashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x6cacea...8d10b5`](./contracts/polygon-137/0x6cacea88486260ef7e6fde39bab3236c908d10b5/); polygon `0x74e4f7...1c4be5` | ⚠️ Unaudited |
| Cooler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x492e50...074c6a`](./contracts/ethereum-1/0x492e505ef2fd4ca30d60c9caa5becda56f074c6a/); ethereum `0x9ec1c4...8e255b` | ⚠️ Unaudited |
| CurrencyMigrator | unknown | polygon | n/a | 2 deployments: polygon [`0x992a2b...715df7`](./contracts/polygon-137/0x992a2b3381ad95ec22418caa9b9fb0e1d2715df7/); polygon `0xbfe4a3...c42f63` | ⚠️ Unaudited |
| cUSDO | unknown | ethereum | n/a | [`0xad55ae...23e7c0`](./contracts/ethereum-1/0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0/) | ⚠️ Unaudited |
| ERC2771ForwarderAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x101dea...ddec73`](./contracts/ethereum-1/0x101deab893c3eef3e705e771edc2a0245addec73/); ethereum `0x62e479...d023e9` | ⚠️ Unaudited |
| ERC4626AssetManager | unknown | polygon | n/a | 3 deployments: polygon [`0x33681a...f8d86f`](./contracts/polygon-137/0x33681a76efbc8e7c0a7a08b36b9d16c895f8d86f/); polygon `0x4b9d6a...7609a1`; polygon `0x89f2c0...e8ac12` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x1858a3...1a85e8`](./contracts/polygon-137/0x1858a315c225a692ba40c3fc7a143362e31a85e8/); polygon `0x92d473...91a014` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | polygon | n/a | 6 deployments: polygon [`0x199a1f...abbde7`](./contracts/polygon-137/0x199a1f7c986b987ce5c68a07e17e8e77baabbde7/); polygon `0x36d049...ed72d8`; polygon `0x4187e0...6586c6`; polygon `0x4e0693...a85fe2`; polygon `0xa72b2b...48192a`; polygon `0xb642d9...309d50` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | polygon | n/a | 7 deployments: polygon [`0x1d04a9...293b85`](./contracts/polygon-137/0x1d04a92400d0b07182b895619216ada309293b85/); polygon `0x401fc5...45be0f`; polygon `0x5a38cb...6b351f`; polygon `0x7a95c4...5d06a9`; polygon `0x9b0b4f...e01bb3`; polygon `0xc49336...e1cd16`; polygon `0xccf281...6c8373` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | polygon | n/a | 3 deployments: polygon [`0x1d878b...bdf113`](./contracts/polygon-137/0x1d878bc19bdb2d3d3eb6236def6add3461bdf113/); polygon `0x42015e...d6708a`; polygon `0x4dbd84...a5f6c5` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | polygon | n/a | 4 deployments: polygon [`0x802930...ba8261`](./contracts/polygon-137/0x8029306034a8d085cb5b5f3f5bb068692bba8261/); polygon `0xa32138...2f056c`; polygon `0xc0cad6...e4ec76`; polygon `0xfeddf0...3e1aaf` | ⚠️ Unaudited |
| ERC4626InvestStrategy | operational_periphery | polygon | n/a | 4 deployments: ethereum `0x7c19bc...dff81d`; ethereum `0xde79ce...95ca80`; ethereum `0xf7bbf9...81b9ca`; polygon [`0x758130...b0a33d`](./contracts/polygon-137/0x758130f2204ad60cca03b9b03c467bfa32b0a33d/) | ⚠️ Unaudited |
| ERC4626PlusVaultAssetManager | unknown | polygon | n/a | 3 deployments: polygon [`0x0a175e...f411e2`](./contracts/polygon-137/0x0a175e57deff6f5357a1ee047f63fdcf7bf411e2/); polygon `0xa2679f...632b7b`; polygon `0xa5a2b0...7a8d85` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12a4f3...9025e7`](./contracts/ethereum-1/0x12a4f34d27b1d54defd4eb39799971e26d9025e7/); ethereum `0xa695f8...880fb7` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x176057...5341c2`](./contracts/ethereum-1/0x176057c7d384ffc8fee977615e4bf9c31f5341c2/); ethereum `0x495d41...50b191` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cf13b...5a7387`](./contracts/ethereum-1/0x2cf13b8b1467ce1a651767dcd498c607955a7387/); ethereum `0xcd71f1...4d48bf` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54012f...12577b`](./contracts/ethereum-1/0x54012f190d3facadd0f6b66897e94f08d812577b/); ethereum `0xb375f4...4249c7` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6192b4...7e4302`](./contracts/ethereum-1/0x6192b45fe7ed857fb607c086eec69b1f237e4302/); ethereum `0xfa9888...980b34` | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6bf86a...0f7895`](./contracts/ethereum-1/0x6bf86ad735d7a4ee52c9c2a8d9e8a275e70f7895/); ethereum `0xa55128...8ad224` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 2 deployments: polygon [`0x08639c...b147bf`](./contracts/polygon-137/0x08639cb1477136188122ade83aaa300821b147bf/); polygon `0x55bae6...421fb6` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 8 deployments: polygon [`0x0aa662...b0e4e3`](./contracts/polygon-137/0x0aa6623be5b293fdde18ae0095163785a0b0e4e3/); polygon `0x15f76f...7c1aab`; polygon `0x1c48ac...52defc`; polygon `0x1c7f0c...aceb45`; polygon `0x401482...5d4e06`; polygon `0x45435f...b22b99`; polygon `0x926248...26d410`; polygon `0xb1dff6...ac7414` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 6 deployments: polygon [`0x138ca6...b3d50e`](./contracts/polygon-137/0x138ca65ae1fb2a24041708ffe1bf757198b3d50e/); polygon `0x32a9cb...3ed858`; polygon `0x71d390...a55d00`; polygon `0x9078dd...bfb6f9`; polygon `0x9f967c...f7ec9d`; polygon `0xec4122...ac5aab` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 2 deployments: polygon [`0x28e039...86ef0e`](./contracts/polygon-137/0x28e03984451a4c0540ee30b16104c0f24786ef0e/); polygon `0x8d2ee8...9c0274` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 6 deployments: polygon [`0x32bebb...9615c5`](./contracts/polygon-137/0x32bebbfeb5d1b904799729bfad216baa709615c5/); polygon `0x623677...373cd7`; polygon `0x732088...9934a6`; polygon `0x883a45...f63f8f`; polygon `0xbc05fa...6c7df0`; polygon `0xbca3dd...d13823` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 3 deployments: polygon [`0x53802d...09000c`](./contracts/polygon-137/0x53802d49ad788306e523233b3e0231ff1d09000c/); polygon `0x6229d7...d1528c`; polygon `0xe36d65...74b476` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 4 deployments: polygon [`0x5be652...ce9546`](./contracts/polygon-137/0x5be65258c1583051d60afe2a99c79d846fce9546/); polygon `0x6a0e61...b4515e`; polygon `0xbc33c2...88dec6`; polygon `0xf383ef...a9f229` | ⚠️ Unaudited |
| EToken | unknown | polygon | n/a | 2 deployments: polygon [`0xb96eaa...cf6af2`](./contracts/polygon-137/0xb96eaaa2fdf6548b0b2a4f65234318d274cf6af2/); polygon `0xce9cd5...b14bc1` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | polygon | n/a | 2 deployments: polygon [`0x6202a0...28f681`](./contracts/polygon-137/0x6202a078af9ba596133d4aaa056f09361228f681/); polygon `0xc17e60...78c54b` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | polygon | n/a | 2 deployments: polygon [`0x981989...5992db`](./contracts/polygon-137/0x9819891095f88249be0990afb8c93303115992db/); polygon `0xc77b1d...0eb4aa` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x2bb764...fe4c08`](./contracts/polygon-137/0x2bb7644221cfcc35a1c99ed7167391ff82fe4c08/); polygon `0x31f1c2...0c3849` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x4d2da5...d835ae`](./contracts/polygon-137/0x4d2da537e0c6c8c63f74c0563b14a8d2b6d835ae/); polygon `0xe7dc8c...3cdeae` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x747be0...9af311`](./contracts/polygon-137/0x747be075b8ed012659103905fb0096783c9af311/); polygon `0x8d2ccb...5eaace` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x0096af...f9e59d`](./contracts/polygon-137/0x0096aff75e76648ca9fafbcbad77cc38dff9e59d/); polygon `0x43882a...ef8777` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x023c94...be77c8`](./contracts/polygon-137/0x023c94de38d3b7b57e00045fdf8c9362f6be77c8/); polygon `0xca583c...209a32` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x084730...5f55c0`](./contracts/polygon-137/0x0847308da19f826b2d7379b134d9a959245f55c0/); polygon `0x90d04a...4082a5` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x2e25a2...aada26`](./contracts/polygon-137/0x2e25a28ecbd7e8e70dabb1ca79bf6b4ea5aada26/); polygon `0xb37c44...afa197` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x32ca53...c3a70b`](./contracts/polygon-137/0x32ca53d87540dbb86731931365c2d5f872c3a70b/); polygon `0x3eab5b...d6539f` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x3d6c64...ce57ca`](./contracts/polygon-137/0x3d6c6488edb8024276ea0e2376826aecc1ce57ca/); polygon `0xc4d328...493e93` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x91d44e...dad830`](./contracts/polygon-137/0x91d44ed99aba67fcf5f9f3da0648358a16dad830/); polygon `0xe64b6b...d6f460` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0xa1edaf...81910d`](./contracts/polygon-137/0xa1edaf03813e7f68d7e980f47a284b869581910d/); polygon `0xa60bcf...60b1db` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0xca3f0a...2429df`](./contracts/polygon-137/0xca3f0a0fce99c8aa19f46611a90c326dde2429df/); polygon `0xfc8199...e7af2e` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0xd76171...9f088a`](./contracts/polygon-137/0xd76171900fc9e1bf6e9c79a243f507a2a69f088a/); polygon `0xdf0e56...8f66ce` | ⚠️ Unaudited |
| IdleInvestStrategy | operational_periphery | polygon | n/a | 3 deployments: ethereum `0xdd71d3...e1e570`; polygon [`0x1c8b02...e08d12`](./contracts/polygon-137/0x1c8b0245a1028ea4b27e1d9afc9f45d895e08d12/); polygon `0xebeb6d...0c0047` | ⚠️ Unaudited |
| LimitOutflowModifier | unknown | polygon | n/a | 2 deployments: polygon [`0x90f9b3...de3efa`](./contracts/polygon-137/0x90f9b3b51632a530b065f7d2285faf8f93de3efa/); polygon `0xec9b26...9de36f` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e8ac0...b897dc`](./contracts/ethereum-1/0x4e8ac0b7dd930aa814d8bd0dc6e4adf692b897dc/); ethereum `0xca0d8d...28e545` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | polygon | n/a | 2 deployments: polygon [`0x99b294...6a0c15`](./contracts/polygon-137/0x99b2949f4b12bf14f9ad66de374cd5a2bf6a0c15/); polygon `0xccb8dc...c5cf6e` | ⚠️ Unaudited |
| LPManualWhitelistV20Upgraded | unknown | polygon | n/a | 2 deployments: polygon [`0x05c779...3f95e3`](./contracts/polygon-137/0x05c77923d13a9efdb651d52b73b7f4b4f33f95e3/); polygon `0x13f6d7...1a3fc4` | ⚠️ Unaudited |
| MerklRewardsInvestStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0xa637f4...ffedf5`](./contracts/polygon-137/0xa637f498f73322dca6587189af8271b215ffedf5/); polygon `0xa67c6b...9cfbf6` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | polygon | n/a | 3 deployments: ethereum `0xe108fb...993add`; polygon [`0x781fb7...558c42`](./contracts/polygon-137/0x781fb7f6d845e3be129289833b04d43aa8558c42/); polygon `0xacb0dc...9ed6bc` | ⚠️ Unaudited |
| MigrateAssetMSV | unknown | polygon | n/a | [`0x5d3542...c38cd7`](./contracts/polygon-137/0x5d35426db6db23bf09ea59bcac21f25e20c38cd7/) | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | polygon | n/a | 4 deployments: polygon [`0x48ff8b...958bf4`](./contracts/polygon-137/0x48ff8b1493c6a3545aea3f0812f1303e2f958bf4/); polygon `0x7426fe...c4924c`; polygon `0x936dac...106f71`; polygon `0xf6b7a2...016ce0` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | polygon | n/a | 3 deployments: polygon [`0x81e9a6...d84454`](./contracts/polygon-137/0x81e9a64029e2b103d634a4fb829adcca90d84454/); polygon `0xa53000...69af91`; polygon `0xfd82f6...42a589` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | polygon | n/a | 2 deployments: polygon [`0x0917c2...9d26c9`](./contracts/polygon-137/0x0917c28b736746f9a32652cd2c66e918cc9d26c9/); polygon `0x28d3e2...dee14e` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | polygon | n/a | [`0xe98aaa...623e85`](./contracts/polygon-137/0xe98aaae0df8bcaf501c27373eb9c3eedde623e85/) | ⚠️ Unaudited |
| MultiStrategyERC4626 | unknown | polygon | n/a | 2 deployments: polygon [`0x0b351d...a7ec0e`](./contracts/polygon-137/0x0b351dfdbe5a1f329c2a1229708dc7b2e3a7ec0e/); polygon `0x1ee585...aca418` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x167107...16b823`](./contracts/ethereum-1/0x167107ec321f723c5a412968e19731cfcd16b823/); ethereum `0x55bae6...421fb6` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | polygon | n/a | 2 deployments: polygon [`0x14f6df...5dd6fb`](./contracts/polygon-137/0x14f6dfee761455247c6bf2b2b052a1f6245dd6fb/); polygon `0x48ddc3...4897a4` | ⚠️ Unaudited |
| P2PSwapRouter | adapter | polygon | n/a | 3 deployments: ethereum `0x934164...378377`; ethereum `0xa87ce1...6c1aba`; polygon [`0x7801cf...872952`](./contracts/polygon-137/0x7801cfc789721138aba7ffd957653b9aa1872952/) | ⚠️ Unaudited |
| PolicyPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9165f1...b23463`](./contracts/ethereum-1/0x9165f165b6ba787b5d7007b3ca8dbf12edb23463/); ethereum `0xd81a8b...9fa0a3` | ⚠️ Unaudited |
| PolicyPool | unknown | polygon | n/a | 2 deployments: polygon [`0x649b1e...e813cc`](./contracts/polygon-137/0x649b1e8c25763b1e83b73f76961662e0d4e813cc/); polygon `0xd74a28...ac2497` | ⚠️ Unaudited |
| PremiumsAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09a1e8...04abd6`](./contracts/ethereum-1/0x09a1e8bbb53b523003bf7300e859458a0a04abd6/); ethereum `0x644da7...49c162` | ⚠️ Unaudited |
| PremiumsAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b2aed...53bbdc`](./contracts/ethereum-1/0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc/); ethereum `0x1a4a62...012f43` | ⚠️ Unaudited |
| PremiumsAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c798a...d0a811`](./contracts/ethereum-1/0x0c798aa7d4638626f15af8021f2df47571d0a811/); ethereum `0x585b9b...4b5a85` | ⚠️ Unaudited |
| PremiumsAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2153fe...d4f0a9`](./contracts/ethereum-1/0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9/); ethereum `0x2dd9db...f55747` | ⚠️ Unaudited |
| PremiumsAccount | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33918b...589e1d`](./contracts/ethereum-1/0x33918bdc50e021d057145e17d3f31ac97f589e1d/); ethereum `0x8ae72a...62a2f2` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x056bf8...3fa4e5`](./contracts/polygon-137/0x056bf85398cb0ab9313a7a06cf020768533fa4e5/); polygon `0x47f35b...6e7b31` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x06347e...73e6f4`](./contracts/polygon-137/0x06347ea3da6a5b44eeae3b8f4a65992ae073e6f4/); polygon `0x111775...da21a4` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x0f24c3...3cf4ca`](./contracts/polygon-137/0x0f24c37f024d7bfc1d9b53377107c8cea73cf4ca/); polygon `0x1d71e3...386355` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x11b490...483442`](./contracts/polygon-137/0x11b490292799a0edfe37797592f77151c4483442/); polygon `0x4dd7ae...2b4d21` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x21b8fc...c5da91`](./contracts/polygon-137/0x21b8fc59ff2fb1ba0d4fc485aa7cb3a8d0c5da91/); polygon `0x6d3c1a...621283` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x2f2b6a...235806`](./contracts/polygon-137/0x2f2b6a02a9870d16a2b7126aacd18c99bf235806/); polygon `0x452929...0c5fdc` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x33f7b7...ff0957`](./contracts/polygon-137/0x33f7b7eeeca6c8d5d52f06f6808e0c3581ff0957/); polygon `0x6cb730...b3a5f7` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x3b8d6c...9bea8d`](./contracts/polygon-137/0x3b8d6cae8d625d1f2494ef3ac21e9ba41f9bea8d/); polygon `0x41b5a1...092460` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x41716b...025d1e`](./contracts/polygon-137/0x41716b609e6eacf05a129e5ccf4188606c025d1e/); polygon `0xd26d50...364eab` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x42118d...ad9358`](./contracts/polygon-137/0x42118df6ebb18346ca425f1c67ac739e95ad9358/); polygon `0x4626e5...5c09af` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x494fcb...45966d`](./contracts/polygon-137/0x494fcb06625260de267d2325f9eb41e1f745966d/); polygon `0x72b744...6a8dcf` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x4f43b8...394520`](./contracts/polygon-137/0x4f43b8f252887f814ed689346fdb5bd266394520/); polygon `0xb12420...7b2f0b` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x585d65...37cf90`](./contracts/polygon-137/0x585d65636acb42d8ec6b540ea6c688061037cf90/); polygon `0xf7ef82...930651` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x74b347...728c75`](./contracts/polygon-137/0x74b3476742542e0e8863e7ba5ec931d038728c75/); polygon `0xa490d8...584e4c` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x76d332...8f6926`](./contracts/polygon-137/0x76d33267ebbb0ba2f68e3c7a3c5e994c628f6926/); polygon `0xa4c5fc...7017dd` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x777829...6c521a`](./contracts/polygon-137/0x7778299e79cc0bc10a18a00547e72a3c016c521a/); polygon `0xc1a74e...2c6100` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x79f0a5...057677`](./contracts/polygon-137/0x79f0a51bfa5c489f6b6c743055c9394ee3057677/); polygon `0x8908d9...bfabc1` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x95d029...f7e89c`](./contracts/polygon-137/0x95d0294f089fb7c58b3d589bbd62c3b49cf7e89c/); polygon `0xf5fcd1...7f517d` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0x99aedc...ecb14a`](./contracts/polygon-137/0x99aedc825950579d4006f1a0fc031c7a81ecb14a/); polygon `0xe43587...df91e9` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0xa5a8c6...1d80a7`](./contracts/polygon-137/0xa5a8c6b6cb08db75f5d487f0838d0743871d80a7/); polygon `0xdf6f5b...d57923` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0xaf48bd...6a2567`](./contracts/polygon-137/0xaf48bd33916836f5a3dd8c9095692d240a6a2567/); polygon `0xd7f0eb...77c4de` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0xb1b963...3c516d`](./contracts/polygon-137/0xb1b96373b8bb7e3d0f66e1f94a135156663c516d/); polygon `0xf89229...c84f51` | ⚠️ Unaudited |
| PremiumsAccount | unknown | polygon | n/a | 2 deployments: polygon [`0xc22d26...139cb7`](./contracts/polygon-137/0xc22d26225bbebfab43c53848fa16171082139cb7/); polygon `0xccf5c4...ba9328` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | polygon | n/a | 2 deployments: polygon [`0x052251...0ad684`](./contracts/polygon-137/0x0522513fb2db66e402abd43a9f4daa8c480ad684/); polygon `0x0ce31c...57ae12` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | polygon | n/a | 2 deployments: polygon [`0x2b2a9e...264b30`](./contracts/polygon-137/0x2b2a9e12d14506071861b23f7e118fa2ca264b30/); polygon `0x61e3cf...08bc6d` | ⚠️ Unaudited |
| RiskModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09edb5...50611e`](./contracts/ethereum-1/0x09edb5935861b28bbd19bc1335770250f050611e/); ethereum `0x2343d9...9840b1` | ⚠️ Unaudited |
| RiskModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x243604...06107b`](./contracts/ethereum-1/0x243604937883777753fb2fc0cb4cdd951706107b/); ethereum `0x9c430c...11c425` | ⚠️ Unaudited |
| RiskModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x251e9f...0397f2`](./contracts/ethereum-1/0x251e9fc83cd14ea19c474ffad97b6ec3210397f2/); ethereum `0x95ec92...452891` | ⚠️ Unaudited |
| RiskModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x69dcc9...adc033`](./contracts/ethereum-1/0x69dcc9cd82651bca30ca531f893aab4002adc033/); ethereum `0xb0ff48...f5a623` | ⚠️ Unaudited |
| RiskModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x84e0be...c020d5`](./contracts/ethereum-1/0x84e0beaecd2cf6e6a28946f78dd34e8454c020d5/); ethereum `0xd51002...c4f9bb` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x0b9988...194e58`](./contracts/polygon-137/0x0b99888ff4e26a6fdb89c39e9944a0b0f7194e58/); polygon `0xfd43d3...8338c4` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 8 deployments: polygon [`0x0cde6c...9f6bd9`](./contracts/polygon-137/0x0cde6c5f4bc2832fd1cc8e931c338c30149f6bd9/); polygon `0x0e144b...5051e2`; polygon `0x36af72...b3fc06`; polygon `0x55ff47...e5074a`; polygon `0x96719a...305bc2`; polygon `0xb051dd...c7abd3`; polygon `0xe899f8...5603a8`; polygon `0xf4496e...06e3c9` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x34c560...a94b78`](./contracts/polygon-137/0x34c560b19dfd490e0d4b8054df35669092a94b78/); polygon `0xbc8773...ff9c27` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x416fed...83853a`](./contracts/polygon-137/0x416fed87aa32268426ccd94aeae9d9121383853a/); polygon `0x7341a1...78a297` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x45e6c2...2b7bd3`](./contracts/polygon-137/0x45e6c213528af48fb60ff1c01e8b6497972b7bd3/); polygon `0x9d4225...31f46f` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x641e72...37d30c`](./contracts/polygon-137/0x641e72fea330a882a7f9f4d41f2400ca4a37d30c/); polygon `0xd1ed79...31947d` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x6cd383...b34798`](./contracts/polygon-137/0x6cd383ef37a4b9b6153cf57d83eb50b36db34798/); polygon `0xa2f279...11683c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x7a0ebb...5296e1`](./contracts/polygon-137/0x7a0ebb40cff9990d7d0dc0b365a2d669e45296e1/); polygon `0x94d9b5...0d718c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x87c7b5...274f00`](./contracts/polygon-137/0x87c7b54f0c7f39aec8628704001b9c377e274f00/); polygon `0xf41e84...c77124` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0xa65c9d...366df8`](./contracts/polygon-137/0xa65c9de776d1f30c095eff9c775e001a1d366df8/); polygon `0xef49d2...ffcbe8` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0xdea3de...d33c8f`](./contracts/polygon-137/0xdea3defef5d8dfdd5b385f3af53cc937e6d33c8f/); polygon `0xef4c0a...b0b069` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | polygon | n/a | [`0x03562d...cfc40e`](./contracts/polygon-137/0x03562d797ccddda52d85fe4fe0f65935c7cfc40e/) | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x32ca74...9ef142`](./contracts/polygon-137/0x32ca744527634c3231a7d6f24b4d9ad2949ef142/); polygon `0x4d85a3...93121c` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x37fe45...c162ca`](./contracts/polygon-137/0x37fe456eff897cb5ddf040a5e95f399eabc162ca/); polygon `0xd66eae...d11f95` | ⚠️ Unaudited |
| StableSwapPayoutHandler | unknown | polygon | n/a | 2 deployments: polygon [`0xb920b7...940689`](./contracts/polygon-137/0xb920b7b4143ee4bada8dd0b077082b52bf940689/); polygon `0xe6b349...c909b7` | ⚠️ Unaudited |
| SwapLibrary | unknown | polygon | n/a | 4 deployments: ethereum `0x8b6411...a3cae3`; polygon [`0x204ad7...f71aff`](./contracts/polygon-137/0x204ad7e9e1b94acbf975314ff17e87ecc7f71aff/); polygon `0x8bb0f8...9f2175`; polygon `0x8dd211...322922` | ⚠️ Unaudited |
| SwapStableInvestStrategy | unknown | polygon | n/a | 6 deployments: ethereum `0x84bdaa...961dd8`; ethereum `0xd2bb05...124069`; polygon [`0x219108...81891b`](./contracts/polygon-137/0x2191087cc6688f24e939b840fb2c55631a81891b/); polygon `0x3a8096...ecceb9`; polygon `0x56eced...621bb5`; polygon `0x829cb3...bf740a` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x219aa0...8fcaa4`](./contracts/polygon-137/0x219aa0e548d92e0cdb67913decdda72a008fcaa4/); polygon `0x787b67...a9c4f4` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x303fe7...8c32fd`](./contracts/polygon-137/0x303fe729656ce9901953fe085fb414770c8c32fd/); polygon `0xdad2df...dd4df5` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | polygon | n/a | [`0x7b96b9...9032c0`](./contracts/polygon-137/0x7b96b96e5498dd6d457cc15014c57c38af9032c0/) | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | polygon | n/a | 2 deployments: polygon [`0x8355b7...35a091`](./contracts/polygon-137/0x8355b7251e88bfa35e0447709cd2b91cce35a091/); polygon `0xed1908...1c2ac6` | ⚠️ Unaudited |
| TimelockController | governance | polygon | n/a | 3 deployments: polygon [`0x371d67...0ac666`](./contracts/polygon-137/0x371d67ee31f6bfcdf13c7fa0cc9cc2c7080ac666/); polygon `0x76934c...623d2a`; polygon `0xc0d3ec...4e81a2` | ⚠️ Unaudited |
| TrustfulRiskModule | unknown | polygon | n/a | 3 deployments: polygon [`0x42842f...b31b28`](./contracts/polygon-137/0x42842f88c3ea0eb39f3303a80a03f7f55db31b28/); polygon `0x4e717f...082ed7`; polygon `0xdfc75a...e06e93` | ⚠️ Unaudited |
| USDO | unknown | ethereum | n/a | [`0x823888...823bfe`](./contracts/ethereum-1/0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x56bfa6...373ecf`](./contracts/ethereum-1/0x56bfa6f53669b836d1e0dfa5e99706b12c373ecf/); ethereum `0x8c106e...afa3d0` | ⚠️ Unaudited |
| WEToken | token | ethereum | n/a | [`0x8e4704...249b67`](./contracts/ethereum-1/0x8e4704dc80953245bc87e09980004498d4249b67/) | ⚠️ Unaudited |
| wUSDO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82b09f...791c04`](./contracts/ethereum-1/0x82b09f8b6096039aa0d62a5cee8dff7f95791c04/); ethereum `0x960348...ac6df6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0a7441...55afe8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33eb64...456325` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34460d...61749b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Quantstamp-Ensuro-Final-Report-2022-11-09.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-Final-Report-2022-11-09.pdf) | Quantstamp | Audit | 2022-11 | stale | Direct | contract_name | 3 | n/a |
| [SlowMistAuditReport-Ensuro-2021-09-29.pdf](https://github.com/ensuro/ensuro/blob/main/audits/SlowMistAuditReport-Ensuro-2021-09-29.pdf) | SlowMist | Audit | 2021-09 | stale | Direct | contract_name | 2 | n/a |
| [DefiSafety.Process_Quality_Review.Ensuro.pdf](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety.Process_Quality_Review.Ensuro.pdf) | DefiSafety | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf) | Quantstamp | Audit | 2025-12 | fresh | Direct | contract_name | 3 | n/a |
| [DefiSafety-93-badge.png](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety-93-badge.png) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 139 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Zero-match audit list:

- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf
- [13095] DefiSafety-93-badge.png

Fork inheritance lineage and inherited audits are included when available.
