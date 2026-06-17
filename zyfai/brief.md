# Agentic Audit Brief: ZyFAI

## Project Overview

- Project: ZyFAI (`zyfai`)
- Website: [https://zyf.ai](https://zyf.ai)
- Lifecycle: active (Tier 0, 44.8% below peak)
- Generated: 2026-06-17T07:00:44.993Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, plasma, sonic
- Contract surface: 77 unique implementations (233 raw deployments)
- DeFi Llama TVL: $4,737,320.44
- On-chain TVL (included contracts): $1,696,245,576.08
- TVL by chain: Ethereum $1,188,668,971.55 | Arbitrum $230,292,205.46 | Base $194,888,115.13 | Plasma $65,550,839.55 | Sonic $16,845,444.39

## Project Description

ZyFAI is a self-custodial DeFi yield agent that uses autonomous and rule-based agents to monitor positions and automate on-chain actions such as rebalancing. Third-party protocols should be treated as external dependencies unless their integration is confirmed by ZyFAI documentation or verified project-owned contracts.

### Architecture

All contracts belong to a single product family that aggregates yield from multiple DeFi protocols. Shared infrastructure includes proxy patterns (ERC1967, TransparentUpgradeable, Beacon) and registry contracts that connect vaults, tokens, and strategies.

## Contract Surface Quality

- Indexed contracts: 407; live-surface contracts included: 233 (211 live, 22 unknown).
- Excluded by liveness: 158 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 34/45 live.
- Detected codebases: compound-v3, uniswap-v3
- Unverified dependencies: 5/42.

## Audit Coverage Summary

- Verified implementations audited: 0/76 (0.0%)
- Verified + Unaudited implementations: 76
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 77
- Raw deployments: 233
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,696,245,576.08
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (76)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SparkVault | core_logic | ethereum | unit-27283 (3 proxies) | 3 deployments: ethereum [`0x28b3a8...96a43d`](./contracts/ethereum-1/0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d/); ethereum `0xe2e7a1...e3c372`; ethereum `0xfe6eb3...209b8f` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 6 deployments: ethereum `0x241180...06b29c`; ethereum `0x5c20b5...cedd18`; ethereum `0x9fb7b4...251b33`; base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| ATokenInstance | token | arbitrum | unit-27317 | [`0x724dc8...b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ⚠️ Unaudited |
| ATokenInstance | token | base | unit-27313 | [`0x4e65fe...f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x23f5e9...8e1e11`](./contracts/ethereum-1/0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11/); ethereum `0x2bd3a4...df0e3d`; ethereum `0xa877d5...1a275f`; ethereum `0xbeef00...83ec58`; ethereum `0xbeef00...4108e3`; ethereum `0xbeeff0...fedeb7`; ethereum `0xbeeff2...fca757`; ethereum `0xcdbe4a...7d034d`; ethereum `0xd1e924...a94a7e`; ethereum `0xd5cce2...aeaa13`; ethereum `0xebbae8...24ddcd`; ethereum `0xfa17f7...7df853` | ⚠️ Unaudited |
| VaultDummyImplementation | core_logic | ethereum | unit-27295 | [`0xa0d370...98be78`](./contracts/ethereum-1/0xa0d3707c569ff8c87fa923d3823ec5d81c98be78/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | unit-27297 | [`0xbeef00...ab2bf9`](./contracts/ethereum-1/0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x310b7e...efafaa`](./contracts/ethereum-1/0x310b7ea7475a0b449cfd73be81522f1b88efafaa/); ethereum `0xac3772...ca7571` | ⚠️ Unaudited |
| SiloVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x592d1e...47b2a7`](./contracts/sonic-146/0x592d1e187729c76efacc6dffb9355bd7bf47b2a7/); sonic `0xcca902...9745ed` | ⚠️ Unaudited |
| fTokenNativeUnderlying | token | ethereum | n/a | [`0x90551c...faa260`](./contracts/ethereum-1/0x90551c1795392094fe6d29b758eccd233cfaa260/) | ⚠️ Unaudited |
| UsdcVaultL2 | core_logic | base | unit-27312 | [`0x3128a0...28e858`](./contracts/base-8453/0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858/) | ⚠️ Unaudited |
| EVault | core_logic | sonic | unit-27307 (2 proxies) | 2 deployments: sonic [`0x196f3c...0349d9`](./contracts/sonic-146/0x196f3c7443e940911ee2bb88e019fd71400349d9/); sonic `0x3d9e54...cd13bc` | ⚠️ Unaudited |
| ATokenInstance | token | sonic | unit-27308 | [`0x578ee1...cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | unit-27288 (2 proxies) | 2 deployments: ethereum [`0x3a43ae...0e9de7`](./contracts/ethereum-1/0x3a43aec53490cb9fa922847385d82fe25d0e9de7/); ethereum `0x50c749...c871e9` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | ethereum | unit-27279 (8 proxies) | 8 deployments: ethereum [`0x10432b...7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/); ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-27301 | [`0xd8b27c...4984c2`](./contracts/ethereum-1/0xd8b27cf359b7d15710a5be299af6e7bf904984c2/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | sonic | n/a | 3 deployments: sonic [`0x0fb682...d54fa3`](./contracts/sonic-146/0x0fb682c9692addcc1769f4d4d938c54420d54fa3/); sonic `0x930441...7e6643`; sonic `0x973184...12a8c8` | ⚠️ Unaudited |
| WasabiVault | core_logic | ethereum | unit-27281 (54 proxies) | 54 deployments: ethereum [`0x1831f6...a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/); ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-27302 | [`0xd9ba99...82ec4f`](./contracts/ethereum-1/0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f/) | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | ethereum | unit-27282 (3 proxies) | 3 deployments: ethereum [`0x1c1efa...fcd548`](./contracts/ethereum-1/0x1c1efa17081cde0c8ee816075369741d89fcd548/); ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AddressProvider | registry | ethereum | n/a | 2 deployments: ethereum [`0x2b0434...15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/); ethereum `0x409fb5...d075c4` | ⚠️ Unaudited |
| ALMProxy | unknown | arbitrum | n/a | [`0x92afd6...1d8709`](./contracts/arbitrum-42161/0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709/) | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x212871...ed8474`](./contracts/arbitrum-42161/0x212871a1c235892f86cab30e937e18c94aed8474/); arbitrum `0x567214...305cbc` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-27276 (4 proxies) | 4 deployments: ethereum [`0x0b925e...9e9371`](./contracts/ethereum-1/0x0b925ed163218f6662a35e0f0371ac234f9e9371/); ethereum `0x4d5f47...c514e8`; ethereum `0x5c647c...efd1dd`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | plasma | unit-27316 | [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| CometExtAssetList | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa70a02...3aaedc`](./contracts/ethereum-1/0xa70a0227028ad005f4fc9376a82cd1462e3aaedc/); ethereum `0xe3458a...a14dd1` | ⚠️ Unaudited |
| CometRewards | unknown | ethereum | n/a | [`0x1b0e76...885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27289 | [`0x3afdc9...ab0840`](./contracts/ethereum-1/0x3afdc9bca9213a35503b077a6072f3d0d5ab0840/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27290 | [`0x3d0bb1...8fafe3`](./contracts/ethereum-1/0x3d0bb1ccab520a66e607822fc55bc921738fafe3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27292 | [`0x5d409e...897b56`](./contracts/ethereum-1/0x5d409e56d886231adaf00c8775665ad0f9897b56/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27296 | [`0xa17581...93ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27299 | [`0xc3d688...84cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-27303 | [`0xe85dc5...6a9293`](./contracts/ethereum-1/0xe85dc543813b8c2cfeaac371517b925a166a9293/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | unit-27314 | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | unit-27319 | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| DebtController | governance | ethereum | n/a | 2 deployments: ethereum [`0xfbc94e...1246d1`](./contracts/ethereum-1/0xfbc94e5fc406509c9a6d0635c047e1cd601246d1/); ethereum `0xfe7b8f...ee60c2` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | ethereum | unit-27305 | [`0xf7b512...d489af`](./contracts/ethereum-1/0xf7b5127b510e568fdc39e6bb54e2081bfad489af/) | ⚠️ Unaudited |
| DSRAuthOracle | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0xe206ae...7c32f3`](./contracts/arbitrum-42161/0xe206aebca7b28e3e8d6787df00b010d4a77c32f3/); arbitrum `0xec0c14...cc14d0`; arbitrum `0xed5668...606709` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0d2bfc...252b17`](./contracts/arbitrum-42161/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/); arbitrum `0x3a60e6...495fe1`; arbitrum `0xca6154...ecb91b` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | unit-27284 | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-27293 | [`0x8e0edf...d5afc0`](./contracts/ethereum-1/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0/) | ⚠️ Unaudited |
| EulerEarn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b4802...f9a4af`](./contracts/ethereum-1/0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af/); plasma `0xe818ad...14dec4`; arbitrum `0xe47838...c62de0` | ⚠️ Unaudited |
| Executor | unknown | arbitrum | n/a | [`0x65d946...88f7a1`](./contracts/arbitrum-42161/0x65d946e533748a998b1f0e430803e39a6388f7a1/) | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | n/a | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| ForeignController | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x77e114...61ba6c`](./contracts/arbitrum-42161/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/); arbitrum `0x98f567...f79ee1` | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | ethereum | n/a | [`0x2c7760...eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0x4881ef...ce0658`; ethereum `0x4f460b...eea8b6`; ethereum `0xbeef01...2a64cb`; ethereum `0xbeef05...4b8cd4`; ethereum `0xbeefff...86f5bc`; base `0xb7890c...6ab863` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0c6aec...398dc1`](./contracts/ethereum-1/0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1/); ethereum `0x1e2aaa...9f5741`; ethereum `0x2ed106...98aefb`; ethereum `0x31a568...a024f9`; ethereum `0x6c2679...f0bc8e`; ethereum `0x7204b7...8d6330`; ethereum `0xa8875a...dd6c45`; ethereum `0xb0f05e...504ba9`; ethereum `0xc582f0...7b754e`; ethereum `0xc88eff...8e982a`; arbitrum `0x7c5741...a8b3ed` | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xc902f6...566af2`](./contracts/ethereum-1/0xc902f6840699abf5b8d6a787a7943d4783566af2/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | unit-27300 | [`0xcac101...934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | sonic | unit-27309 | [`0xc4a9d8...372fa3`](./contracts/sonic-146/0xc4a9d8b486f388cc0e4168d2904277e8c8372fa3/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | sonic | n/a | 3 deployments: sonic [`0x004f76...c8a212`](./contracts/sonic-146/0x004f76045b42ef3e89814b12b37e69da19c8a212/); sonic `0x3f5ea5...182418`; sonic `0x84ecc6...ed3b60` | ⚠️ Unaudited |
| PendleSiloV2SY_deprecated | unknown | sonic | unit-27306 | [`0x068def...188ea3`](./contracts/sonic-146/0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3/) | ⚠️ Unaudited |
| PendleYieldToken | token | sonic | n/a | 2 deployments: sonic [`0x18d2d5...9e6027`](./contracts/sonic-146/0x18d2d54f42ba720851bae861b98a0f4b079e6027/); sonic `0x3ab072...078920` | ⚠️ Unaudited |
| PerpManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x3461ae...56eee2`](./contracts/ethereum-1/0x3461ae4336a55952d7ce451a9dec3a0d3856eee2/); ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc` | ⚠️ Unaudited |
| PerpManager | governance | ethereum | unit-27298 | [`0xc0b01a...010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | ⚠️ Unaudited |
| PSM3 | unknown | arbitrum | n/a | [`0x2b05f8...d27266`](./contracts/arbitrum-42161/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/) | ⚠️ Unaudited |
| RateLimits | unknown | arbitrum | n/a | [`0x19d088...ad6838`](./contracts/arbitrum-42161/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | ⚠️ Unaudited |
| RegistryProxy | registry | ethereum | n/a | [`0x444868...2c4d14`](./contracts/ethereum-1/0x444868b6e8079ac2c55eea115250f92c2b2c4d14/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | unit-27310 | [`0xf6bc16...47a581`](./contracts/sonic-146/0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | unit-27311 | [`0xf6f870...f89885`](./contracts/sonic-146/0xf6f87073cf8929c206a77b0694619dc776f89885/) | ⚠️ Unaudited |
| SmartAccountWrapper | unknown | base | unit-27315 | [`0xd58007...9bec5d`](./contracts/base-8453/0xd580071c47d4a667858b5fafab85bc9c609bec5d/) | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | arbitrum | n/a | [`0x1d54a0...34b3d5`](./contracts/arbitrum-42161/0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5/) | ⚠️ Unaudited |
| SparkVault | core_logic | ethereum | unit-27280 (3 proxies) | 3 deployments: ethereum [`0x15f4a4...741211`](./contracts/ethereum-1/0x15f4a4b19baaa168ac0b6092d310ae9725741211/); ethereum `0xc2c058...547f12`; ethereum `0xe742c8...0fa929` | ⚠️ Unaudited |
| SSRAuthOracle | operational_periphery | arbitrum | n/a | [`0xee2816...033a36`](./contracts/arbitrum-42161/0xee2816c1e1eed14d444552654ed3027abc033a36/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | unit-27287 | [`0x382a45...cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | ⚠️ Unaudited |
| WasabiLongPool | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x023afc...6a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/); ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x7041ce...7f3e95`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xab1644...5df9cb`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d` | ⚠️ Unaudited |
| WasabiOption | unknown | ethereum | n/a | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cb...5f437e`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9` | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | unit-27304 | [`0xee5c45...aac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | ⚠️ Unaudited |
| WasabiShortPool | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x1536f7...a3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/); ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x62d254...9bf842`; ethereum `0x8826d2...3cbc96`; ethereum `0x96ce21...137f78`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xd5a09a...33ae95`; ethereum `0xf22b8d...64aafa`; ethereum `0xfc55a2...28006b` | ⚠️ Unaudited |
| WasabiVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x7f1cec...d1681a`](./contracts/ethereum-1/0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a/); ethereum `0xa9d119...9771d7`; ethereum `0xf7855f...ae8153` | ⚠️ Unaudited |
| YoVault | core_logic | ethereum | n/a | [`0xda92d2...2dc169`](./contracts/ethereum-1/0xda92d2172cd402d222131cc95a66ec7bd82dc169/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | fToken | token | $464,045,427.12 | Verified native implementation with $464,045,427.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f5e9...8e1e11`](./contracts/ethereum-1/0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11/) | VaultV2 | core_logic | $154,292,282.28 | Verified native implementation with $154,292,282.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeef00...ab2bf9`](./contracts/ethereum-1/0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9/) | VaultV2 | core_logic | $21,962,010.64 | Verified native implementation with $21,962,010.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90551c...faa260`](./contracts/ethereum-1/0x90551c1795392094fe6d29b758eccd233cfaa260/) | fTokenNativeUnderlying | token | $6,846,999.90 | Verified native implementation with $6,846,999.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b0434...15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | Bulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbc94e...1246d1`](./contracts/ethereum-1/0xfbc94e5fc406509c9a6d0635c047e1cd601246d1/) | DebtController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7b512...d489af`](./contracts/ethereum-1/0xf7b5127b510e568fdc39e6bb54e2081bfad489af/) | DolomiteERC4626WithPayable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | Flashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c7760...eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | MainnetBulkerWithWstETHSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc902f6...566af2`](./contracts/ethereum-1/0xc902f6840699abf5b8d6a787a7943d4783566af2/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3461ae...56eee2`](./contracts/ethereum-1/0x3461ae4336a55952d7ce451a9dec3a0d3856eee2/) | PerpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x444868...2c4d14`](./contracts/ethereum-1/0x444868b6e8079ac2c55eea115250f92c2b2c4d14/) | RegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/) | TimelockWasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023afc...6a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/) | WasabiLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | WasabiOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/) | WasabiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1536f7...a3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/) | WasabiShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f1cec...d1681a`](./contracts/ethereum-1/0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a/) | WasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda92d2...2dc169`](./contracts/ethereum-1/0xda92d2172cd402d222131cc95a66ec7bd82dc169/) | YoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 25 |
| standard_library | 24 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
