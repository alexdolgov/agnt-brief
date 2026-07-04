# Agentic Audit Brief: ZyFAI

## Project Overview

- Project: ZyFAI (`zyfai`)
- Website: [https://zyf.ai](https://zyf.ai)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:47.830Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: arbitrum, base, ethereum, plasma, sonic
- Contract surface: 123 unique implementations (342 raw deployments)
- DeFi Llama TVL: $6,315,888.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 184 project-authored contract(s) across 5 chain(s); 35 ERC4626 vaults, 39 ERC20 tokens, 1 ERC721 NFT, 13 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 34 common project-authored base contract(s) (basewasabipool, abstractwasabipool, cometextinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 447; live-surface contracts included: 335 (316 live, 19 unknown).
- Excluded by liveness: 112 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/104 (1.0%)
- Deployed-live implementations: 104 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/104
- Verified + Unaudited implementations: 103
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 123
- Raw deployments: 342
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cecuro | Tier 2 | 1 | 1.0% | 2026-03 |
| Sherlock | Tier 1 | 1 | 1.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartAccountWrapper | unknown | base | n/a | [`0xd58007...9bec5d`](./contracts/base-8453/0xd580071c47d4a667858b5fafab85bc9c609bec5d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (103)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1c1efa...fcd548`](./contracts/ethereum-1/0x1c1efa17081cde0c8ee816075369741d89fcd548/); ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AddressProvider | registry | ethereum | n/a | 2 deployments: ethereum [`0x2b0434...15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/); ethereum `0x409fb5...d075c4` | ⚠️ Unaudited |
| ALMProxy | unknown | arbitrum | n/a | [`0x92afd6...1d8709`](./contracts/arbitrum-42161/0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709/) | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x212871...ed8474`](./contracts/arbitrum-42161/0x212871a1c235892f86cab30e937e18c94aed8474/); arbitrum `0x567214...305cbc` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | 4 deployments: ethereum [`0x0b925e...9e9371`](./contracts/ethereum-1/0x0b925ed163218f6662a35e0f0371ac234f9e9371/); ethereum `0x4d5f47...c514e8`; ethereum `0x5c647c...efd1dd`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | sonic | n/a | [`0x578ee1...cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/) | ⚠️ Unaudited |
| ATokenInstance | token | base | n/a | [`0x4e65fe...f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| ATokenInstance | token | plasma | n/a | [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ⚠️ Unaudited |
| ATokenInstance | token | arbitrum | n/a | [`0x724dc8...b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ⚠️ Unaudited |
| BaseBulker | unknown | arbitrum | n/a | [`0xbde8f3...7b372d`](./contracts/arbitrum-42161/0xbde8f31d2ddda895264e27dd990fab3dc87b372d/) | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | ethereum | n/a | [`0x327fe5...38550e`](./contracts/ethereum-1/0x327fe52e44a1fc68e8596df8769a4b5dc538550e/) | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| Comet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f4eaf...ef4ed0`](./contracts/ethereum-1/0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0/); ethereum `0x4b5dee...0c8118` | ⚠️ Unaudited |
| Comet | unknown | base | n/a | 2 deployments: base [`0x2f9b94...01d3a1`](./contracts/base-8453/0x2f9b94069788f7c71e9daa84314062609501d3a1/); base `0x7bef48...1c1065` | ⚠️ Unaudited |
| CometExt | unknown | arbitrum | n/a | 11 deployments: ethereum `0x1f7190...676856`; ethereum `0x285617...8d45b0`; ethereum `0x5c58d4...79a36e`; ethereum `0x95dedd...b116e7`; ethereum `0x995e39...62b214`; ethereum `0xe16515...af7e3e`; ethereum `0xe2c1f5...09f030`; base `0x3bac64...694e2a`; base `0x44a32e...de7d15`; arbitrum [`0x1b2e88...8437e9`](./contracts/arbitrum-42161/0x1b2e88cc7365d90e7e81392432482925bd8437e9/); arbitrum `0x27c348...8df4ae` | ⚠️ Unaudited |
| CometExtAssetList | unknown | ethereum | n/a | 7 deployments: ethereum [`0x055e53...091e1f`](./contracts/ethereum-1/0x055e53f50b84fd91c4be367220efd36c3d091e1f/); ethereum `0x16f353...9cf3b3`; ethereum `0x4f4d5a...d9bdd5`; ethereum `0x53cead...936587`; ethereum `0xa70a02...3aaedc`; ethereum `0xd4ec91...3f68ed`; ethereum `0xe3458a...a14dd1` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ec63b...2e8779`](./contracts/ethereum-1/0x1ec63b5883c3481134fd50d5daebc83ecd2e8779/); arbitrum `0xd10b40...4d715e` | ⚠️ Unaudited |
| CometRewards | unknown | ethereum | n/a | [`0x1b0e76...885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x3afdc9...ab0840`](./contracts/ethereum-1/0x3afdc9bca9213a35503b077a6072f3d0d5ab0840/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x3d0bb1...8fafe3`](./contracts/ethereum-1/0x3d0bb1ccab520a66e607822fc55bc921738fafe3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x5d409e...897b56`](./contracts/ethereum-1/0x5d409e56d886231adaf00c8775665ad0f9897b56/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xa17581...93ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xc3d688...84cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xe85dc5...6a9293`](./contracts/ethereum-1/0xe85dc543813b8c2cfeaac371517b925a166a9293/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | n/a | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316f97...d336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/); ethereum `0xcfc1fa...80df4f` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | arbitrum | n/a | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ⚠️ Unaudited |
| DebtController | governance | ethereum | n/a | 2 deployments: ethereum [`0xfbc94e...1246d1`](./contracts/ethereum-1/0xfbc94e5fc406509c9a6d0635c047e1cd601246d1/); ethereum `0xfe7b8f...ee60c2` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | ethereum | n/a | [`0xf7b512...d489af`](./contracts/ethereum-1/0xf7b5127b510e568fdc39e6bb54e2081bfad489af/) | ⚠️ Unaudited |
| DSRAuthOracle | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0xe206ae...7c32f3`](./contracts/arbitrum-42161/0xe206aebca7b28e3e8d6787df00b010d4a77c32f3/); arbitrum `0xec0c14...cc14d0`; arbitrum `0xed5668...606709` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0d2bfc...252b17`](./contracts/arbitrum-42161/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/); arbitrum `0x3a60e6...495fe1`; arbitrum `0xca6154...ecb91b` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | n/a | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x8e0edf...d5afc0`](./contracts/ethereum-1/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0/) | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | ethereum | n/a | [`0x3fbf4f...d93eed`](./contracts/ethereum-1/0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed/) | ⚠️ Unaudited |
| ETHWasabiPool | unknown | ethereum | n/a | [`0x046299...1ed355`](./contracts/ethereum-1/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ⚠️ Unaudited |
| EulerEarn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b4802...f9a4af`](./contracts/ethereum-1/0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af/); plasma `0xe818ad...14dec4`; arbitrum `0xe47838...c62de0` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | [`0xd8b27c...4984c2`](./contracts/ethereum-1/0xd8b27cf359b7d15710a5be299af6e7bf904984c2/) | ⚠️ Unaudited |
| EVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x196f3c...0349d9`](./contracts/sonic-146/0x196f3c7443e940911ee2bb88e019fd71400349d9/); sonic `0x3d9e54...cd13bc` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x972e33...e8dd2c`](./contracts/ethereum-1/0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c/); ethereum `0x9f2781...f3e1ac` | ⚠️ Unaudited |
| Executor | unknown | arbitrum | n/a | [`0x65d946...88f7a1`](./contracts/arbitrum-42161/0x65d946e533748a998b1f0e430803e39a6388f7a1/) | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | n/a | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| ForeignController | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x77e114...61ba6c`](./contracts/arbitrum-42161/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/); arbitrum `0x98f567...f79ee1` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 6 deployments: ethereum `0x241180...06b29c`; ethereum `0x5c20b5...cedd18`; ethereum `0x9fb7b4...251b33`; base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| fTokenNativeUnderlying | token | ethereum | n/a | [`0x90551c...faa260`](./contracts/ethereum-1/0x90551c1795392094fe6d29b758eccd233cfaa260/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | ethereum | n/a | [`0x2c7760...eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0x4881ef...ce0658`; ethereum `0x4f460b...eea8b6`; ethereum `0xbeef01...2a64cb`; ethereum `0xbeef05...4b8cd4`; ethereum `0xbeefff...86f5bc`; base `0xb7890c...6ab863` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0c6aec...398dc1`](./contracts/ethereum-1/0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1/); ethereum `0x1e2aaa...9f5741`; ethereum `0x2ed106...98aefb`; ethereum `0x31a568...a024f9`; ethereum `0x6c2679...f0bc8e`; ethereum `0x7204b7...8d6330`; ethereum `0xa8875a...dd6c45`; ethereum `0xb0f05e...504ba9`; ethereum `0xc582f0...7b754e`; ethereum `0xc88eff...8e982a`; arbitrum `0x7c5741...a8b3ed` | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xc902f6...566af2`](./contracts/ethereum-1/0xc902f6840699abf5b8d6a787a7943d4783566af2/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xcac101...934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | sonic | n/a | [`0xc4a9d8...372fa3`](./contracts/sonic-146/0xc4a9d8b486f388cc0e4168d2904277e8c8372fa3/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | sonic | n/a | 3 deployments: sonic [`0x004f76...c8a212`](./contracts/sonic-146/0x004f76045b42ef3e89814b12b37e69da19c8a212/); sonic `0x3f5ea5...182418`; sonic `0x84ecc6...ed3b60` | ⚠️ Unaudited |
| PendlePrincipalToken | token | sonic | n/a | 3 deployments: sonic [`0x0fb682...d54fa3`](./contracts/sonic-146/0x0fb682c9692addcc1769f4d4d938c54420d54fa3/); sonic `0x930441...7e6643`; sonic `0x973184...12a8c8` | ⚠️ Unaudited |
| PendleSiloV2SY_deprecated | unknown | sonic | n/a | [`0x068def...188ea3`](./contracts/sonic-146/0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3/) | ⚠️ Unaudited |
| PendleYieldToken | token | sonic | n/a | 2 deployments: sonic [`0x18d2d5...9e6027`](./contracts/sonic-146/0x18d2d54f42ba720851bae861b98a0f4b079e6027/); sonic `0x3ab072...078920` | ⚠️ Unaudited |
| PerpManager | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2eb99d...55910b`](./contracts/ethereum-1/0x2eb99d429bebbbc5910bbad5f34d909a5f55910b/); ethereum `0x3461ae...56eee2`; ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc` | ⚠️ Unaudited |
| PerpManager | governance | ethereum | n/a | [`0xc0b01a...010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | ⚠️ Unaudited |
| PoolAskVerifier | unknown | ethereum | n/a | [`0xe3f3dc...cce0ac`](./contracts/ethereum-1/0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac/) | ⚠️ Unaudited |
| PoolBidVerifier | unknown | ethereum | n/a | [`0x668736...933cca`](./contracts/ethereum-1/0x66873693e8b125dbea46274173b0d6dcd1933cca/) | ⚠️ Unaudited |
| PSM3 | unknown | arbitrum | n/a | [`0x2b05f8...d27266`](./contracts/arbitrum-42161/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/) | ⚠️ Unaudited |
| RateLimits | unknown | arbitrum | n/a | [`0x19d088...ad6838`](./contracts/arbitrum-42161/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | ⚠️ Unaudited |
| RegistryProxy | registry | ethereum | n/a | [`0x444868...2c4d14`](./contracts/ethereum-1/0x444868b6e8079ac2c55eea115250f92c2b2c4d14/) | ⚠️ Unaudited |
| Signing | unknown | ethereum | n/a | [`0xd3bb84...6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | n/a | [`0xf6bc16...47a581`](./contracts/sonic-146/0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | n/a | [`0xf6f870...f89885`](./contracts/sonic-146/0xf6f87073cf8929c206a77b0694619dc776f89885/) | ⚠️ Unaudited |
| SiloVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x592d1e...47b2a7`](./contracts/sonic-146/0x592d1e187729c76efacc6dffb9355bd7bf47b2a7/); sonic `0xcca902...9745ed` | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | arbitrum | n/a | [`0x1d54a0...34b3d5`](./contracts/arbitrum-42161/0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5/) | ⚠️ Unaudited |
| SparkVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x15f4a4...741211`](./contracts/ethereum-1/0x15f4a4b19baaa168ac0b6092d310ae9725741211/); ethereum `0xc2c058...547f12`; ethereum `0xe742c8...0fa929` | ⚠️ Unaudited |
| SparkVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x28b3a8...96a43d`](./contracts/ethereum-1/0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d/); ethereum `0xe2e7a1...e3c372`; ethereum `0xfe6eb3...209b8f` | ⚠️ Unaudited |
| SSRAuthOracle | operational_periphery | arbitrum | n/a | [`0xee2816...033a36`](./contracts/arbitrum-42161/0xee2816c1e1eed14d444552654ed3027abc033a36/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f`; ethereum `0xe0a709...e14fe0` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | [`0xd9ba99...82ec4f`](./contracts/ethereum-1/0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xa5edbd...905dca`](./contracts/arbitrum-42161/0xa5edbdd9646f8dff606d7448e414884c7d905dca/) | ⚠️ Unaudited |
| UsdcVaultL2 | core_logic | base | n/a | 2 deployments: base [`0x3128a0...28e858`](./contracts/base-8453/0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858/); base `0x6acc02...9c7723` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | base | n/a | 2 deployments: base [`0x4cb851...1fbe90`](./contracts/base-8453/0x4cb851d28ae5c24f839e45e4f07e3888641fbe90/); base `0xb979b7...870bb4` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | base | n/a | 2 deployments: base [`0x62da45...fa7df3`](./contracts/base-8453/0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3/); base `0xe13942...0fda0a` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x940098...464609`](./contracts/arbitrum-42161/0x940098b108fb7d0a7e374f6eded7760787464609/); arbitrum `0xdc8df2...a092d6` | ⚠️ Unaudited |
| VaultBoostManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x028edb...9c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/); ethereum `0x0424c6...7728b3`; ethereum `0xb33c89...1e7524`; ethereum `0xcc174f...e36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | n/a | [`0x382a45...cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | ⚠️ Unaudited |
| VaultDummyImplementation | core_logic | ethereum | n/a | [`0xa0d370...98be78`](./contracts/ethereum-1/0xa0d3707c569ff8c87fa923d3823ec5d81c98be78/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x23f5e9...8e1e11`](./contracts/ethereum-1/0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11/); ethereum `0x2bd3a4...df0e3d`; ethereum `0xa877d5...1a275f`; ethereum `0xbeef00...83ec58`; ethereum `0xbeef00...4108e3`; ethereum `0xbeeff0...fedeb7`; ethereum `0xbeeff2...fca757`; ethereum `0xcdbe4a...7d034d`; ethereum `0xd1e924...a94a7e`; ethereum `0xd5cce2...aeaa13`; ethereum `0xebbae8...24ddcd`; ethereum `0xfa17f7...7df853` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | [`0xbeef00...ab2bf9`](./contracts/ethereum-1/0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9/) | ⚠️ Unaudited |
| WasabiBNPL | unknown | ethereum | n/a | [`0xead3dd...2af12d`](./contracts/ethereum-1/0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d/) | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | ethereum | n/a | [`0xdaf28d...8aeb89`](./contracts/ethereum-1/0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89/) | ⚠️ Unaudited |
| WasabiConduit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e31ef...c57209`](./contracts/ethereum-1/0x9e31ef400c74630ab50066dd64c29c1f4fc57209/); ethereum `0xf29a66...fff856` | ⚠️ Unaudited |
| WasabiLongPool | core_logic | ethereum | n/a | 18 deployments: ethereum [`0x023afc...6a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/); ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x3a2774...e4fd97`; ethereum `0x45a933...aac7cd`; ethereum `0x7041ce...7f3e95`; ethereum `0x7f5451...e6cbc8`; ethereum `0x8d9040...b41b59`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xab1644...5df9cb`; ethereum `0xc24f58...656b51`; ethereum `0xcda7ce...c8c0ca`; ethereum `0xcf41e5...b075dd`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d` | ⚠️ Unaudited |
| WasabiOption | unknown | ethereum | n/a | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | ethereum | n/a | [`0x8b5cd3...bbd8f3`](./contracts/ethereum-1/0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3/) | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | ethereum | n/a | [`0x8e2b50...961e40`](./contracts/ethereum-1/0x8e2b50413a53f50e2a059142a9be060294961e40/) | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cb...5f437e`; ethereum `0x1b362e...e046b7`; ethereum `0x33d2ac...77ee9a`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9` | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | n/a | [`0xee5c45...aac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | ⚠️ Unaudited |
| WasabiShortPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fdc7b...30d8ff`](./contracts/ethereum-1/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff/); ethereum `0x61d0df...5ebe12` | ⚠️ Unaudited |
| WasabiShortPool | core_logic | ethereum | n/a | 19 deployments: ethereum [`0x1536f7...a3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/); ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x5bb9e0...088c60`; ethereum `0x62d254...9bf842`; ethereum `0x774835...bf8b32`; ethereum `0x8826d2...3cbc96`; ethereum `0x8ea384...b13277`; ethereum `0x96ce21...137f78`; ethereum `0xbc07db...69cbbe`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xcc2a29...e26bee`; ethereum `0xd5a09a...33ae95`; ethereum `0xea9a83...ca647c`; ethereum `0xf22b8d...64aafa`; ethereum `0xfb71f0...490c4a`; ethereum `0xfc55a2...28006b` | ⚠️ Unaudited |
| WasabiStructs | unknown | ethereum | n/a | [`0x8f2885...99dcd3`](./contracts/ethereum-1/0x8f2885e85a59782197024306483cceae7b99dcd3/) | ⚠️ Unaudited |
| WasabiVault | unknown | ethereum | n/a | 13 deployments: ethereum [`0x0db381...747e12`](./contracts/ethereum-1/0x0db381cfcafee909e66e5244ec5d7d933a747e12/); ethereum `0x3f631b...5caa8d`; ethereum `0x65aa8f...59991e`; ethereum `0x7d8c76...67ac53`; ethereum `0x7f1cec...d1681a`; ethereum `0x9720f7...a84fa4`; ethereum `0xa6354e...55dadf`; ethereum `0xa9d119...9771d7`; ethereum `0xb6463f...39f113`; ethereum `0xc883de...141c1a`; ethereum `0xcd1953...5f7d53`; ethereum `0xd46c77...563a1d`; ethereum `0xf7855f...ae8153` | ⚠️ Unaudited |
| WasabiVault | core_logic | ethereum | n/a | 54 deployments: ethereum [`0x1831f6...a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/); ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x551618...5b23ca`](./contracts/ethereum-1/0x55161896bf9e5867851de6d063b7284a195b23ca/); ethereum `0xc7d3fa...23652b` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x10432b...7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/); ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x310b7e...efafaa`](./contracts/ethereum-1/0x310b7ea7475a0b449cfd73be81522f1b88efafaa/); ethereum `0xac3772...ca7571` | ⚠️ Unaudited |
| YoVault | core_logic | ethereum | n/a | [`0xda92d2...2dc169`](./contracts/ethereum-1/0xda92d2172cd402d222131cc95a66ec7bd82dc169/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3a43ae...0e9de7`](./contracts/ethereum-1/0x3a43aec53490cb9fa922847385d82fe25d0e9de7/); ethereum `0x50c749...c871e9` | ⚠️ Unaudited |
| ZhartaLending | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0466b9...6fa09b`](./contracts/ethereum-1/0x0466b94a37b9037b6416ca5b1c17de00356fa09b/); ethereum `0x0d08ea...b2e4d5`; ethereum `0x2cfe1c...dea90b`; ethereum `0x6209a1...009788`; ethereum `0xb06e99...9cf383`; ethereum `0xb2a557...88afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x082481...1b595f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4b8c...c83b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e74e...8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabe435...566efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2664a...e7734f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d7413...f9c229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x205216...9d576d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2627d5...a73e00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c258b...1ffa06` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61baf0...aa4ea3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76b3d3...d35e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3091d...27e00f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa72e01...e96f0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae20f9...8498c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1e495...9acd6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe28680...c411e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe81a5b...d6219d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1202d...48905a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Report - 20.12.2025](https://zyf.ai/sherlock-audit-november-2025.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [audited by Sherlock](https://zyf.ai/zyfai_erc7540_sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Report - 03.03.2025](https://zyf.ai/zyfai_audit_cecuro.pdf) | Cecuro | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Report - 06.07.2025](https://www.zyf.ai/rzfi-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Supremacy IRMLinearKinky.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [18732] Report - 20.12.2025
- [18739] Report - 06.07.2025
- [18761] Supremacy IRMLinearKinky.pdf

Fork inheritance lineage and inherited audits are included when available.
