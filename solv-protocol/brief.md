# Agentic Audit Brief: Solv Protocol

## Project Overview

- Project: Solv Protocol (`solv-protocol`)
- Website: [https://solv.finance/](https://solv.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.504Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum, linea, mantle, scroll
- Contract surface: 96 unique implementations (96 raw deployments)
- DeFi Llama TVL: $441,346,597.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 89 project-authored contract(s) across 7 chain(s); 6 ERC20 tokens, 22 ERC721 NFTs, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (admincontrol, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 96 (95 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 27/88 (30.7%)
- Deployed-live implementations: 95 of 96 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 27/96
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 96
- Raw deployments: 96
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 27 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.3% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Salus | Tier 2 | 19 | 19.8% | 2026-05 |
| Quanstamp | Tier 2 | 8 | 8.3% | 2025-06 |
| OpenZeppelin | Tier 1 | 2 | 2.1% | 2024-12 |
| Guardian | Tier 2 | 1 | 1.0% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressResolver | unknown | base | n/a | [`0x2095ae...160611`](./contracts/base-8453/0x2095ae9d154a9a92bfbc03ec0836808e02160611/) | ✅ Audited |
| EarnConcrete | unknown | ethereum | n/a | [`0x08884c...8e77ca`](./contracts/ethereum-1/0x08884c9a13c87476cd59aafcdec82c7c2e8e77ca/) | ✅ Audited |
| EarnDelegate | unknown | ethereum | n/a | [`0x0e9b61...71c4db`](./contracts/ethereum-1/0x0e9b61c0f23c5a8cd111916d207938201e71c4db/) | ✅ Audited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ✅ Audited |
| IssueMarket | unknown | ethereum | n/a | [`0x443e5e...55e7f8`](./contracts/ethereum-1/0x443e5e0434e51db27717db447af2631f0355e7f8/) | ✅ Audited |
| MainnetMinter | unknown | bsc | n/a | [`0x83e025...667ea7`](./contracts/bsc-56/0x83e0252a8f60c054cace454cf18fe8da97667ea7/) | ✅ Audited |
| NavOracle | unknown | mantle | n/a | [`0x02a90b...05dcd9`](./contracts/mantle-5000/0x02a90b43a9179e51eec59415395437fa8e05dcd9/) | ✅ Audited |
| OpenFundMarket | unknown | ethereum | n/a | [`0x069c3b...ae2ff5`](./contracts/ethereum-1/0x069c3bdf1b0083bb78652b6e1e1a68c481ae2ff5/) | ✅ Audited |
| OpenFundRedemptionConcrete | unknown | base | n/a | [`0x2181e8...89f78a`](./contracts/base-8453/0x2181e83ba95df14fa339f0f854a706e7d289f78a/) | ✅ Audited |
| OpenFundRedemptionDelegate | unknown | ethereum | n/a | [`0x006a8b...d3612a`](./contracts/ethereum-1/0x006a8b583e18c94760aa71a004be4ecacad3612a/) | ✅ Audited |
| OpenFundShareConcrete | unknown | linea | n/a | [`0x2b45bc...8cd63f`](./contracts/linea-59144/0x2b45bca16bc4b57dda016d39afaf1f18858cd63f/) | ✅ Audited |
| OpenFundShareDelegate | unknown | arbitrum | n/a | [`0x069c3b...ae2ff5`](./contracts/arbitrum-42161/0x069c3bdf1b0083bb78652b6e1e1a68c481ae2ff5/) | ✅ Audited |
| PriceStrategyManager | unknown | ethereum | n/a | [`0xce4816...72d6b8`](./contracts/ethereum-1/0xce481616e34baa34b35596751bea1e34ff72d6b8/) | ✅ Audited |
| SftWrappedToken | unknown | mantle | n/a | [`0x33d762...5fe16d`](./contracts/mantle-5000/0x33d76210d69e8febe55fbcb38deaab82285fe16d/) | ✅ Audited |
| SftWrappedTokenFactory | unknown | ethereum | n/a | [`0x0679e9...aec176`](./contracts/ethereum-1/0x0679e96f5eeda5313099f812b558714717aec176/) | ✅ Audited |
| SftWrapRouter | unknown | arbitrum | n/a | [`0x2b62cd...41b649`](./contracts/arbitrum-42161/0x2b62cd7630002d57b780d65cc3382a4a4341b649/) | ✅ Audited |
| SOLV | unknown | ethereum | n/a | [`0x169e36...4c940d`](./contracts/ethereum-1/0x169e36f327caa83d004f5c2668ac25a1424c940d/) | ✅ Audited |
| SolvBTCMultiAssetPool | unknown | arbitrum | n/a | [`0x024a24...0e22c3`](./contracts/arbitrum-42161/0x024a2481206019b71ff3713d82a59f309b0e22c3/) | ✅ Audited |
| SolvBTCRouter | unknown | arbitrum | n/a | [`0x02c5be...3ad2ce`](./contracts/arbitrum-42161/0x02c5bee706852108417b12e2c83b8e50d73ad2ce/) | ✅ Audited |
| SolvBTCRouterV2 | unknown | bsc | n/a | [`0x13da31...6495d1`](./contracts/bsc-56/0x13da31073b656d49c8f0a05b17f7dab6c16495d1/) | ✅ Audited |
| SolvBTCV3 | unknown | arbitrum | n/a | [`0x3647c5...dbbdc0`](./contracts/arbitrum-42161/0x3647c54c4c2c65bc7a2d63c0da2809b399dbbdc0/) | ✅ Audited |
| SolvBTCYieldTokenOracleForSFT | unknown | linea | n/a | [`0x0e9b61...71c4db`](./contracts/linea-59144/0x0e9b61c0f23c5a8cd111916d207938201e71c4db/) | ✅ Audited |
| TimelockedERC20ContainerConcrete | unknown | bsc | n/a | [`0xc57108...4745d7`](./contracts/bsc-56/0xc57108f12c8068c763fa31245e8adc7cdd4745d7/) | ✅ Audited |
| TimelockedERC20ContainerDelegate | unknown | bsc | n/a | [`0x314e06...5004ee`](./contracts/bsc-56/0x314e063b48f653087f5a1991f8bee4db1f5004ee/) | ✅ Audited |
| WhitelistStrategyManager | unknown | ethereum | n/a | [`0xa1a4fa...ad5ed6`](./contracts/ethereum-1/0xa1a4faedc84db4707b171a311c9e842466ad5ed6/) | ✅ Audited |
| XSolvBTCOracle | unknown | ethereum | n/a | [`0x121de6...d77ae5`](./contracts/ethereum-1/0x121de6de03c02574586b2f59b3927dc33ad77ae5/) | ✅ Audited |
| XSolvBTCPool | unknown | base | n/a | [`0x412b49...fed437`](./contracts/base-8453/0x412b49a7dc7318d856c73e3348d9692e25fed437/) | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | base | n/a | [`0x038fa5...97c4b6`](./contracts/base-8453/0x038fa58bd4da1c938d2783941e657164d497c4b6/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x030879...1f66d1`](./contracts/bsc-56/0x0308796fa5bda7a991520a2fbd1ea8c0c81f66d1/) | ⚠️ Unaudited |
| ARM | unknown | base | n/a | [`0x38660c...5cce5f`](./contracts/base-8453/0x38660c8cc222c0192b635c2ac09687b4f25cce5f/) | ⚠️ Unaudited |
| ARMProxy | unknown | ethereum | n/a | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ⚠️ Unaudited |
| AtomicLockContract | unknown | ethereum | n/a | [`0x036505...5f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/) | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | [`0x09d334...bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/) | ⚠️ Unaudited |
| BondPool | unknown | bsc | n/a | [`0x27c39b...cb8d4f`](./contracts/bsc-56/0x27c39b8a80c79e85afe7fd26582fcc8f72cb8d4f/) | ⚠️ Unaudited |
| BondVoucher | unknown | ethereum | n/a | [`0x03d3de...899cd3`](./contracts/ethereum-1/0x03d3dec9a6ccc0241f76b4078eff8aaede899cd3/) | ⚠️ Unaudited |
| BondVoucherDescriptor | unknown | bsc | n/a | [`0x23bdfd...176f1c`](./contracts/bsc-56/0x23bdfd23235d158fb25d0b9527c721e59a176f1c/) | ⚠️ Unaudited |
| BRORouter | unknown | ethereum | n/a | [`0xb8c587...b00878`](./contracts/ethereum-1/0xb8c587fd9529ebf50265023ec88cf70aa2b00878/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | bsc | n/a | [`0x00ce37...1e4ce7`](./contracts/bsc-56/0x00ce37b1c949bf938de4281d8c4261ee421e4ce7/) | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | arbitrum | n/a | [`0x07d7a9...dd4200`](./contracts/arbitrum-42161/0x07d7a985832369ef32f0491aa4cd44ffa9dd4200/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | arbitrum | n/a | [`0x0c6dda...672d02`](./contracts/arbitrum-42161/0x0c6dda1c33e62ca3a8ceb4ae2485f08510672d02/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | ethereum | n/a | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | ⚠️ Unaudited |
| CommitStore | unknown | bsc | n/a | [`0x002b16...0edeea`](./contracts/bsc-56/0x002b164b1dcf4e92f352dc625a01be0e890edeea/) | ⚠️ Unaudited |
| ConvertiblePool | unknown | bsc | n/a | [`0x1f800d...66196f`](./contracts/bsc-56/0x1f800d72bfd4c202742e1cabf90faea55066196f/) | ⚠️ Unaudited |
| ConvertibleVoucher | unknown | ethereum | n/a | [`0x08a394...16747a`](./contracts/ethereum-1/0x08a3947cbd0abf0433bc71fb339b3a7b5116747a/) | ⚠️ Unaudited |
| ConvertibleVoucherDescriptor | unknown | ethereum | n/a | [`0xf613e5...94a43b`](./contracts/ethereum-1/0xf613e50bb40c7eafa39eea724f962ba1ef94a43b/) | ⚠️ Unaudited |
| CreditBondOfferingMarket | unknown | ethereum | n/a | [`0x26e417...72de24`](./contracts/ethereum-1/0x26e417dc9b4996e9403a4d5e6bb1b034a572de24/) | ⚠️ Unaudited |
| DefaultBondVoucherSVG | unknown | ethereum | n/a | [`0x042502...9b5cab`](./contracts/ethereum-1/0x042502610e8bdc73adf4bb34342c5758929b5cab/) | ⚠️ Unaudited |
| DefaultConvertibleVoucherSVG | unknown | ethereum | n/a | [`0x4a8de2...e901ab`](./contracts/ethereum-1/0x4a8de2fa8c4db347e0909a383f71e1d6f0e901ab/) | ⚠️ Unaudited |
| DefaultEarnSVG | unknown | ethereum | n/a | [`0x3cc251...231af1`](./contracts/ethereum-1/0x3cc251e71fcbd153e733b4eab21fd3d4cf231af1/) | ⚠️ Unaudited |
| DefaultFlexibleDateVestingVoucherSVG | unknown | bsc | n/a | [`0x3516f5...237686`](./contracts/bsc-56/0x3516f5ae208b5330a4a4aa0f13dcbb6f86237686/) | ⚠️ Unaudited |
| DefaultOpenFundRedemptionSVG | unknown | linea | n/a | [`0x9476fa...f7e918`](./contracts/linea-59144/0x9476fa44fd7b960e5346936882f7e3cf2ef7e918/) | ⚠️ Unaudited |
| DefaultOpenFundShareSVG | unknown | bsc | n/a | [`0x5c3c75...188f18`](./contracts/bsc-56/0x5c3c7502bfd4ca340133540e8c3e8d2596188f18/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | [`0x03a1f4...42cc45`](./contracts/arbitrum-42161/0x03a1f4b19aaea6e68f0f104dc4346da3e942cc45/) | ⚠️ Unaudited |
| EarnMetadataDescriptor | unknown | bsc | n/a | [`0x071449...af4065`](./contracts/bsc-56/0x0714497d0dd774c7bb1f07febb93900300af4065/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x6c029d...78efe9`](./contracts/arbitrum-42161/0x6c029d62944bb20900a4bc078f5760579d78efe9/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | bsc | n/a | [`0x006fc7...8bbca7`](./contracts/bsc-56/0x006fc7533e472ee3ac7277bd600e086a0a8bbca7/) | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | bsc | n/a | [`0x004405...03a390`](./contracts/bsc-56/0x004405d927cad243358a270c2dd3d51c8303a390/) | ⚠️ Unaudited |
| FeeManager | unknown | arbitrum | n/a | [`0x13da31...6495d1`](./contracts/arbitrum-42161/0x13da31073b656d49c8f0a05b17f7dab6c16495d1/) | ⚠️ Unaudited |
| FlexibleDateVestingPool | unknown | ethereum | n/a | [`0x00c392...99d97c`](./contracts/ethereum-1/0x00c3923802e147f12204c7be2f5e536e8399d97c/) | ⚠️ Unaudited |
| FlexibleDateVestingVoucher | unknown | ethereum | n/a | [`0x0a0c7c...15c228`](./contracts/ethereum-1/0x0a0c7c7d8faa70e6d88aab1663b40da88115c228/) | ⚠️ Unaudited |
| FlexibleDateVestingVoucherDescriptor | unknown | bsc | n/a | [`0x1187c9...5f7486`](./contracts/bsc-56/0x1187c9c4608230e5f39b28193fbb5265555f7486/) | ⚠️ Unaudited |
| FoFNavOracle | unknown | linea | n/a | [`0x11c2a1...880914`](./contracts/linea-59144/0x11c2a1212b7a33cfe943d05c08c0955c74880914/) | ⚠️ Unaudited |
| ForwardTokenToFormContract | unknown | ethereum | n/a | [`0xdc86b8...d023c1`](./contracts/ethereum-1/0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xbbf0a0...b3b5d5`](./contracts/ethereum-1/0xbbf0a02ae7f17d19cb3e3766633e7ca33ab3b5d5/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | arbitrum | n/a | [`0x04dd7c...791d3f`](./contracts/arbitrum-42161/0x04dd7cf38a249a371a8e589bc1c44485bc791d3f/) | ⚠️ Unaudited |
| ICToken | unknown | ethereum | n/a | [`0x030879...1f66d1`](./contracts/ethereum-1/0x0308796fa5bda7a991520a2fbd1ea8c0c81f66d1/) | ⚠️ Unaudited |
| InitialConvertibleOfferingMarket | unknown | ethereum | n/a | [`0x2e2e94...dc6afe`](./contracts/ethereum-1/0x2e2e940c7041a2948934175a81908baa8adc6afe/) | ⚠️ Unaudited |
| InitialVestingOfferingMarket | unknown | ethereum | n/a | [`0x1a34f8...cc6d7e`](./contracts/ethereum-1/0x1a34f804a5987c89a09f2e0fe02fb46c41cc6d7e/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | ethereum | n/a | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | ⚠️ Unaudited |
| ManualPriceOracle | unknown | ethereum | n/a | [`0x193371...6e45e2`](./contracts/ethereum-1/0x19337144d223b0ca0d3d19472f4b848d2b6e45e2/) | ⚠️ Unaudited |
| OFMWhitelistStrategyManager | unknown | bsc | n/a | [`0x069c3b...ae2ff5`](./contracts/bsc-56/0x069c3bdf1b0083bb78652b6e1e1a68c481ae2ff5/) | ⚠️ Unaudited |
| OpenFundRedemptionMetadataDescriptor | unknown | ethereum | n/a | [`0x14df2c...da160d`](./contracts/ethereum-1/0x14df2c6da1f0dc78b8f6c59c92d8109c9ada160d/) | ⚠️ Unaudited |
| OpenFundShareMetadataDescriptor | unknown | base | n/a | [`0x08884c...8e77ca`](./contracts/base-8453/0x08884c9a13c87476cd59aafcdec82c7c2e8e77ca/) | ⚠️ Unaudited |
| PriceOracleManager | unknown | ethereum | n/a | [`0x7b430d...e2edc4`](./contracts/ethereum-1/0x7b430d4ffd1bc1f635b9375c5dc602df44e2edc4/) | ⚠️ Unaudited |
| PriceRegistry | unknown | ethereum | n/a | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x010476...cc305d`](./contracts/bsc-56/0x010476784ce9a731b6b5463a9970402ba8cc305d/) | ⚠️ Unaudited |
| ProxyToMeson | unknown | ethereum | n/a | [`0x25ab3e...6948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/) | ⚠️ Unaudited |
| SafeProxy | unknown | scroll | n/a | [`0x33ec85...b46bb6`](./contracts/scroll-534352/0x33ec85c8ee04169feb60c8594afa305ab8b46bb6/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3 | unknown | ethereum | n/a | [`0x32bc65...617d75`](./contracts/ethereum-1/0x32bc653dbd08c70f4ddef2bab15915193a617d75/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | unknown | bsc | n/a | [`0x0f6f33...728f3b`](./contracts/bsc-56/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/) | ⚠️ Unaudited |
| SolvConvertibleMarket | unknown | ethereum | n/a | [`0x29935f...1b9d69`](./contracts/ethereum-1/0x29935f54a45f5955ad7bc9d5416f746c3d1b9d69/) | ⚠️ Unaudited |
| Solver | unknown | ethereum | n/a | [`0x73a911...087cfa`](./contracts/ethereum-1/0x73a91127ce3bd2e968925235c999840d34087cfa/) | ⚠️ Unaudited |
| SolvICMarket | unknown | ethereum | n/a | [`0x01981d...f9f4f2`](./contracts/ethereum-1/0x01981d869d8559b0d3b807f15ab51260a1f9f4f2/) | ⚠️ Unaudited |
| SVGBackgroundGenerator | unknown | ethereum | n/a | [`0x37eab4...9574dd`](./contracts/ethereum-1/0x37eab492e61a3eedccbded05b55f9b9ff29574dd/) | ⚠️ Unaudited |
| TimelockedERC20ContainerDefaultSVG | unknown | bsc | n/a | [`0xfc8ffd...5affbf`](./contracts/bsc-56/0xfc8ffd33da2ba271668b899ceb74618b465affbf/) | ⚠️ Unaudited |
| TimelockedERC20ContainerMetadataDescriptor | unknown | bsc | n/a | [`0x3e709b...f69ac5`](./contracts/bsc-56/0x3e709bf960f7bb60295f536e3ea144cf6ff69ac5/) | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | arbitrum | n/a | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x01024a...591261`](./contracts/ethereum-1/0x01024aaed5561fa6237c0ad4073417576c591261/) | ⚠️ Unaudited |
| UniswapV2PriceOracle | unknown | ethereum | n/a | [`0xaebb5d...47ff72`](./contracts/ethereum-1/0xaebb5d8de4513104f6f2c03bb9ca78b2f647ff72/) | ⚠️ Unaudited |
| UpgradableMeson | unknown | bsc | n/a | [`0x1522de...3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | base | n/a | [`0x13f967...acb6d5`](./contracts/base-8453/0x13f967f4431a44b604990ad4ad27bc0616acb6d5/) | ⚠️ Unaudited |
| VestingPool | unknown | bsc | n/a | [`0x00c392...99d97c`](./contracts/bsc-56/0x00c3923802e147f12204c7be2f5e536e8399d97c/) | ⚠️ Unaudited |

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
| [SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf](https://github.com/solv-finance/Audit/blob/main/Offside/SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf) | OffsideLabs | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Solv Mainnet Minter Audit-Openzeppelin.pdf](https://github.com/solv-finance/Audit/blob/main/Openzeppelin/Solv%20Mainnet%20Minter%20Audit-Openzeppelin.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [SolvBTC Blacklist Audit-Openzeppelin.pdf](https://github.com/solv-finance/Audit/blob/main/Openzeppelin/SolvBTC%20Blacklist%20Audit-Openzeppelin.pdf) | OpenZeppelin | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf](https://github.com/solv-finance/Audit/blob/main/Paladin/20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf) | Paladin | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf) | Quanstamp | Audit | 2024-07 | stale | Direct | contract_name | 5 | high |
| [Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf) | Guardian | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf) | Quanstamp | Audit | 2025-06 | aging | Direct | contract_name | 3 | high |
| [ERC3525 audit report v2 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/ERC3525%20audit%20report%20v2%20-%20Salus.pdf) | Salus | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [SOLV-token-bsc_audit_report_salus_2024-06-21.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/SOLV-token-bsc_audit_report_salus_2024-06-21.pdf) | Salus | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [SOLV-token-eth_audit_report_salus_2026-05-06.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/SOLV-token-eth_audit_report_salus_2026-05-06.pdf) | Salus | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Solv Protocol V3 Audit Report v2 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv%20Protocol%20V3%20Audit%20Report%20v2%20-%20Salus.pdf) | Salus | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |
| [Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol-Open-Fund_audit_report_2023-07-31%20-%20Salus.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | 6 | high |
| [Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol_incremental_audit_report_2023-05-15%20-%20Salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | contract_name | 3 | high |
| [Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf) | Salus | Audit | 2024-01 | stale | Direct | contract_name | 5 | high |
| [Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05%20-%20Salus.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x038fa5...97c4b6`](./contracts/base-8453/0x038fa58bd4da1c938d2783941e657164d497c4b6/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38660c...5cce5f`](./contracts/base-8453/0x38660c8cc222c0192b635c2ac09687b4f25cce5f/) | ARM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ARMProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x036505...5f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09d334...bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27c39b...cb8d4f`](./contracts/bsc-56/0x27c39b8a80c79e85afe7fd26582fcc8f72cb8d4f/) | BondPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d3de...899cd3`](./contracts/ethereum-1/0x03d3dec9a6ccc0241f76b4078eff8aaede899cd3/) | BondVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x23bdfd...176f1c`](./contracts/bsc-56/0x23bdfd23235d158fb25d0b9527c721e59a176f1c/) | BondVoucherDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8c587...b00878`](./contracts/ethereum-1/0xb8c587fd9529ebf50265023ec88cf70aa2b00878/) | BRORouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00ce37...1e4ce7`](./contracts/bsc-56/0x00ce37b1c949bf938de4281d8c4261ee421e4ce7/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07d7a9...dd4200`](./contracts/arbitrum-42161/0x07d7a985832369ef32f0491aa4cd44ffa9dd4200/) | BurnMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c6dda...672d02`](./contracts/arbitrum-42161/0x0c6dda1c33e62ca3a8ceb4ae2485f08510672d02/) | BurnWithFromMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | BurnWithFromMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x002b16...0edeea`](./contracts/bsc-56/0x002b164b1dcf4e92f352dc625a01be0e890edeea/) | CommitStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f800d...66196f`](./contracts/bsc-56/0x1f800d72bfd4c202742e1cabf90faea55066196f/) | ConvertiblePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08a394...16747a`](./contracts/ethereum-1/0x08a3947cbd0abf0433bc71fb339b3a7b5116747a/) | ConvertibleVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf613e5...94a43b`](./contracts/ethereum-1/0xf613e50bb40c7eafa39eea724f962ba1ef94a43b/) | ConvertibleVoucherDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26e417...72de24`](./contracts/ethereum-1/0x26e417dc9b4996e9403a4d5e6bb1b034a572de24/) | CreditBondOfferingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042502...9b5cab`](./contracts/ethereum-1/0x042502610e8bdc73adf4bb34342c5758929b5cab/) | DefaultBondVoucherSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a8de2...e901ab`](./contracts/ethereum-1/0x4a8de2fa8c4db347e0909a383f71e1d6f0e901ab/) | DefaultConvertibleVoucherSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cc251...231af1`](./contracts/ethereum-1/0x3cc251e71fcbd153e733b4eab21fd3d4cf231af1/) | DefaultEarnSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3516f5...237686`](./contracts/bsc-56/0x3516f5ae208b5330a4a4aa0f13dcbb6f86237686/) | DefaultFlexibleDateVestingVoucherSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9476fa...f7e918`](./contracts/linea-59144/0x9476fa44fd7b960e5346936882f7e3cf2ef7e918/) | DefaultOpenFundRedemptionSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5c3c75...188f18`](./contracts/bsc-56/0x5c3c7502bfd4ca340133540e8c3e8d2596188f18/) | DefaultOpenFundShareSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03a1f4...42cc45`](./contracts/arbitrum-42161/0x03a1f4b19aaea6e68f0f104dc4346da3e942cc45/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x071449...af4065`](./contracts/bsc-56/0x0714497d0dd774c7bb1f07febb93900300af4065/) | EarnMetadataDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x006fc7...8bbca7`](./contracts/bsc-56/0x006fc7533e472ee3ac7277bd600e086a0a8bbca7/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x004405...03a390`](./contracts/bsc-56/0x004405d927cad243358a270c2dd3d51c8303a390/) | EVM2EVMOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13da31...6495d1`](./contracts/arbitrum-42161/0x13da31073b656d49c8f0a05b17f7dab6c16495d1/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c392...99d97c`](./contracts/ethereum-1/0x00c3923802e147f12204c7be2f5e536e8399d97c/) | FlexibleDateVestingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a0c7c...15c228`](./contracts/ethereum-1/0x0a0c7c7d8faa70e6d88aab1663b40da88115c228/) | FlexibleDateVestingVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1187c9...5f7486`](./contracts/bsc-56/0x1187c9c4608230e5f39b28193fbb5265555f7486/) | FlexibleDateVestingVoucherDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x11c2a1...880914`](./contracts/linea-59144/0x11c2a1212b7a33cfe943d05c08c0955c74880914/) | FoFNavOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc86b8...d023c1`](./contracts/ethereum-1/0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1/) | ForwardTokenToFormContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x030879...1f66d1`](./contracts/ethereum-1/0x0308796fa5bda7a991520a2fbd1ea8c0c81f66d1/) | ICToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e2e94...dc6afe`](./contracts/ethereum-1/0x2e2e940c7041a2948934175a81908baa8adc6afe/) | InitialConvertibleOfferingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a34f8...cc6d7e`](./contracts/ethereum-1/0x1a34f804a5987c89a09f2e0fe02fb46c41cc6d7e/) | InitialVestingOfferingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | LockReleaseTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x193371...6e45e2`](./contracts/ethereum-1/0x19337144d223b0ca0d3d19472f4b848d2b6e45e2/) | ManualPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x069c3b...ae2ff5`](./contracts/bsc-56/0x069c3bdf1b0083bb78652b6e1e1a68c481ae2ff5/) | OFMWhitelistStrategyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14df2c...da160d`](./contracts/ethereum-1/0x14df2c6da1f0dc78b8f6c59c92d8109c9ada160d/) | OpenFundRedemptionMetadataDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08884c...8e77ca`](./contracts/base-8453/0x08884c9a13c87476cd59aafcdec82c7c2e8e77ca/) | OpenFundShareMetadataDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b430d...e2edc4`](./contracts/ethereum-1/0x7b430d4ffd1bc1f635b9375c5dc602df44e2edc4/) | PriceOracleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | PriceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ab3e...6948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | RegistryModuleOwnerCustom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/) | RMN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32bc65...617d75`](./contracts/ethereum-1/0x32bc653dbd08c70f4ddef2bab15915193a617d75/) | SolvBTCYieldTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f6f33...728f3b`](./contracts/bsc-56/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/) | SolvBTCYieldTokenV3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29935f...1b9d69`](./contracts/ethereum-1/0x29935f54a45f5955ad7bc9d5416f746c3d1b9d69/) | SolvConvertibleMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a911...087cfa`](./contracts/ethereum-1/0x73a91127ce3bd2e968925235c999840d34087cfa/) | Solver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01981d...f9f4f2`](./contracts/ethereum-1/0x01981d869d8559b0d3b807f15ab51260a1f9f4f2/) | SolvICMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37eab4...9574dd`](./contracts/ethereum-1/0x37eab492e61a3eedccbded05b55f9b9ff29574dd/) | SVGBackgroundGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfc8ffd...5affbf`](./contracts/bsc-56/0xfc8ffd33da2ba271668b899ceb74618b465affbf/) | TimelockedERC20ContainerDefaultSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e709b...f69ac5`](./contracts/bsc-56/0x3e709bf960f7bb60295f536e3ea144cf6ff69ac5/) | TimelockedERC20ContainerMetadataDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | TokenAdminRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1522de...3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/) | UpgradableMeson | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13f967...acb6d5`](./contracts/base-8453/0x13f967f4431a44b604990ad4ad27bc0616acb6d5/) | USDCTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00c392...99d97c`](./contracts/bsc-56/0x00c3923802e147f12204c7be2f5e536e8399d97c/) | VestingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=35

Zero-match audit list:

- [18103] SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf
- [18106] 20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf
- [18110] ERC3525 audit report v2 - Salus.pdf
- [18112] SOLV-token-eth_audit_report_salus_2026-05-06.pdf

Fork inheritance lineage and inherited audits are included when available.
