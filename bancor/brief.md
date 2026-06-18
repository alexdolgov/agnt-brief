# Agentic Audit Brief: Bancor

⚠️ Lifecycle status: DECLINING - TVL changed 5.5% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T07:43:22.360Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: ethereum
- Contract surface: 96 unique implementations (287 raw deployments)
- DeFi Llama TVL: $24,315,271.00
- On-chain TVL (included contracts): $43,785,920.36
- TVL by chain: Ethereum $43,785,920.36

## Project Description

Bancor is a decentralized exchange protocol historically associated with automated token swaps and single-sided liquidity provision using BNT as an intermediary across Bancor V2.1 and Bancor V3. Current public access to the Bancor homepage/app should be treated as restricted or not independently verified; claims about current impermanent loss protection or liquidity provider rewards should be made only when supported by current documentation or data sources such as DefiLlama.

### Architecture

The Bancor V2.1 family relies on the Tokens family for BNT and pool tokens, while the Bancor V3 family upgrades the core infrastructure with a new MasterVault and BancorNetwork. Both V2.1 and V3 share governance and reward mechanisms, with V3 contracts proxied through TransparentUpgradeableProxyImmutable instances.

## Contract Surface Quality

- Indexed contracts: 421; live-surface contracts included: 287 (5 live, 282 unknown).
- Excluded by liveness: 98 inactive, 36 singleton, 0 uninitialized.
- Deployment units: 1/20 live.
- Detected codebases: none
- Unverified dependencies: 5/7.

## Audit Coverage Summary

- Verified implementations audited: 18/72 (25.0%)
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 96
- Raw deployments: 287
- Audits discovered: 11
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $2,180,561.56
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 5 unknown
- Tier 1 coverage: 23.6% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $2,180,561.56 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 15.3% | 2022-09 |
| OpenZeppelin | Tier 1 | 11 | 15.3% | 2022-08 |
| Consensys Diligence | Tier 1 | 5 | 6.9% | 2017-05 |
| PeckShield | Tier 2 | 5 | 6.9% | 2022-04 |
| Halborn | Tier 2 | 1 | 1.4% | 2020-08 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartToken | token | ethereum | n/a | 14 deployments: ethereum [`0x1f573d...a7ff1c`](./contracts/ethereum-1/0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c/); ethereum `0x6e7c0c...8c117f`; ethereum `0x6fe08a...17fe52`; ethereum `0x718618...09119a`; ethereum `0x970d48...c0c4dd`; ethereum `0x99ebd3...67b340`; ethereum `0xb1c62b...668c96`; ethereum `0xb1cd6e...4a5533`; ethereum `0xcba34b...5239c0`; ethereum `0xdde116...f32ae7`; ethereum `0xea45c7...a10cb0`; ethereum `0xee01b3...8e6e72`; ethereum `0xf132d2...cfc8dc`; ethereum `0xf4ef10...1e0668` | ✅ Audited |
| TokenHolder | token | ethereum | n/a | 2 deployments: ethereum [`0xd1d846...6b9b55`](./contracts/ethereum-1/0xd1d846312b819743974786050848d9b3d06b9b55/); ethereum `0xebcc95...63f491` | ✅ Audited |
| BancorChanger | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/); ethereum `0xca83bd...629ff4` | ✅ Audited |
| BancorNetwork | unknown | ethereum | n/a | 14 deployments: ethereum [`0x2f9ec3...23ccb0`](./contracts/ethereum-1/0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0/); ethereum `0x568e7c...3e5e07`; ethereum `0x5f5805...3f667f`; ethereum `0x751a3e...a10255`; ethereum `0x7a84b0...07b19e`; ethereum `0x835ebb...fc45c1`; ethereum `0x8dfeb8...fea9f7`; ethereum `0x923cab...7d3a5f`; ethereum `0x955a85...59e1e6`; ethereum `0xa21e1c...d8f4ea`; ethereum `0xe0cb1b...ffa4fb`; ethereum `0xe2a277...dcd1f7`; ethereum `0xeee90e...14bfc0`; ethereum `0xf20b9e...39126a` | ✅ Audited |
| BancorNetworkInfo | periphery | ethereum | n/a | [`0xc6e7e7...7cac13`](./contracts/ethereum-1/0xc6e7e708f46a23ee9590b503f03ba3e2c67cac13/) | ✅ Audited |
| BancorPortal | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe18bd2...1f88e2`](./contracts/ethereum-1/0xe18bd28677ec53c67d765521c8a586bc611f88e2/); ethereum `0xf5de92...3d2b0f` | ✅ Audited |
| BancorV1Migration | operational_periphery | ethereum | n/a | [`0xd761d5...c3cc96`](./contracts/ethereum-1/0xd761d538240e23b465c9c08236d781029dc3cc96/) | ✅ Audited |
| BNTPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x9810e2...c07bd8`](./contracts/ethereum-1/0x9810e2949de1e2c12d576c0d6d7af0f925c07bd8/); ethereum `0xcc06b5...22af65` | ✅ Audited |
| CrowdsaleController | governance | ethereum | n/a | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ✅ Audited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ✅ Audited |
| LiquidityPoolV2Converter | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x58fe3e...801fa6`](./contracts/ethereum-1/0x58fe3e6c17064ed362825f4aa6718c9210801fa6/); ethereum `0x61bbc2...40a0f3`; ethereum `0x802c95...ca3c20`; ethereum `0x992321...396361`; ethereum `0x9deee3...bb8b94`; ethereum `0xeb771c...927758` | ✅ Audited |
| NetworkSettings | unknown | ethereum | n/a | 2 deployments: ethereum [`0x68e4f8...4ecd96`](./contracts/ethereum-1/0x68e4f8421dc6c3b49de130b792d711027a4ecd96/); ethereum `0x88d031...1e48ca` | ✅ Audited |
| PendingWithdrawals | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5f8347...bb6acb`](./contracts/ethereum-1/0x5f8347629f7259e2aa048ff0c9f3b36334bb6acb/); ethereum `0xf59fd6...96958f` | ✅ Audited |
| PoolCollection | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x5ce512...13a3d0`](./contracts/ethereum-1/0x5ce51256651aa90eee24259a56529affcf13a3d0/); ethereum `0x6f9124...9cb714`; ethereum `0xad3339...b813a7`; ethereum `0xb67d56...564c6c`; ethereum `0xb8d803...61da69`; ethereum `0xd2a572...d51558`; ethereum `0xd982e0...f642b4`; ethereum `0xde1b3c...d883e4`; ethereum `0xec9596...f261b3`; ethereum `0xf506b9...8f7ec7` | ✅ Audited |
| PoolMigrator | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x59340f...8a017d`](./contracts/ethereum-1/0x59340ff90b0ca58492c26a4124f484c0358a017d/); ethereum `0x85aa62...1d951d`; ethereum `0xc1c7ca...846219` | ✅ Audited |
| PoolToken | core_logic | ethereum | n/a | [`0xab05cf...68e344`](./contracts/ethereum-1/0xab05cf7c6c3a288cd36326e4f7b8600e7268e344/) | ✅ Audited |
| StandardRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9c0b29...78320d`](./contracts/ethereum-1/0x9c0b2923db14b8625e84e8ad04764f992b78320d/); ethereum `0xa2647a...8a1947`; ethereum `0xe9f3bb...7a4b53` | ✅ Audited |
| Vault | core_logic | ethereum | n/a | [`0x60917e...2dadc4`](./contracts/ethereum-1/0x60917e542addd13bfd1a7f81cd654758052dadc4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSToken | token | ethereum | n/a | 3 deployments: ethereum [`0x48fb25...387f94`](./contracts/ethereum-1/0x48fb253446873234f2febbf9bdeaa72d9d387f94/); ethereum `0xdbd62d...a54e20`; ethereum `0xdce156...fbaf17` | ⚠️ Unaudited |
| AirDropper | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x69532f...3f20bf`](./contracts/ethereum-1/0x69532f0b00157866933cda7c1bb8bb0c373f20bf/); ethereum `0xbe8ea1...5c9499` | ⚠️ Unaudited |
| BancorArbitrage | unknown | ethereum | n/a | 9 deployments: ethereum [`0x577552...ed5df7`](./contracts/ethereum-1/0x577552436ef8fd918df2819eadf80105fded5df7/); ethereum `0x68cd59...3fb810`; ethereum `0x6dbe10...74e912`; ethereum `0x770abf...d3c343`; ethereum `0xb04e45...1a1ee2`; ethereum `0xbd19f6...5d7e51`; ethereum `0xd80a40...1b0ada`; ethereum `0xdbcb8a...9af34a`; ethereum `0xe9a8e0...a0902d` | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | n/a | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | n/a | 23 deployments: ethereum [`0x56af6b...d2f913`](./contracts/ethereum-1/0x56af6b2b87f2d560ff0d991923476653a8d2f913/); ethereum `0x578f3c...b3e2d8`; ethereum `0x62c37c...caa769`; ethereum `0x6427b5...df5f28`; ethereum `0x665f41...256f0e`; ethereum `0x674391...b5e692`; ethereum `0x78c212...098840`; ethereum `0x803530...a42c59`; ethereum `0x866e79...3d5b91`; ethereum `0xa3a89d...ff5bad`; ethereum `0xabf66d...83f5e8`; ethereum `0xb626a5...1d1c78`; ethereum `0xc2a34d...bdc3b6`; ethereum `0xc4628a...144ade`; ethereum `0xc6725a...b9db29`; ethereum `0xd3ec78...c743ba`; ethereum `0xd8132c...d7c495`; ethereum `0xd8c2ca...fbdde9`; ethereum `0xdc0aeb...c356c0`; ethereum `0xdc2f2b...d30109`; ethereum `0xe21940...b3ea77`; ethereum `0xec041f...7af8b7`; ethereum `0xf8b211...58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | ethereum | n/a | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | registry | ethereum | n/a | 10 deployments: ethereum [`0x52d7c7...f1ffa2`](./contracts/ethereum-1/0x52d7c77cd866a535e16d57b9d542cf0526f1ffa2/); ethereum `0x5ed8c0...bb802b`; ethereum `0x7d3f86...c9d3dc`; ethereum `0x99d8fb...208232`; ethereum `0xa75f62...511abe`; ethereum `0xa96a30...1f7448`; ethereum `0xbef6a4...04d259`; ethereum `0xbf1ad2...2f0851`; ethereum `0xce0305...995fa5`; ethereum `0xda96de...8409a0` | ⚠️ Unaudited |
| BancorConverterRegistry | registry | ethereum | n/a | 6 deployments: ethereum [`0x85e27a...8ab847`](./contracts/ethereum-1/0x85e27a5718382f32238497e78b4a40dd778ab847/); ethereum `0x9876b4...58c3d8`; ethereum `0x9b44f7...c41a81`; ethereum `0xce0247...1f12ea`; ethereum `0xf6e2d7...a4c518`; ethereum `0xf84b33...74495d` | ⚠️ Unaudited |
| BancorConverterRegistryData | registry | ethereum | n/a | [`0xe500ad...39b56f`](./contracts/ethereum-1/0xe500ad20fab2eaa3d9da5f6bdbc639662239b56f/) | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/); ethereum `0xc724bc...a6268f`; ethereum `0xe727b1...a3429f`; ethereum `0xfae75b...984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | 12 deployments: ethereum [`0x55f09a...4f7398`](./contracts/ethereum-1/0x55f09ab2f8c6ad171f086abdb14e1ed8544f7398/); ethereum `0x63bc9a...2af385`; ethereum `0x6f7df4...da4fc7`; ethereum `0x71fbcf...748759`; ethereum `0x8b5db7...be62e2`; ethereum `0x8d10c0...395b98`; ethereum `0xa04989...4ae73a`; ethereum `0xd288fb...1a9603`; ethereum `0xdeecd5...e791d0`; ethereum `0xe39b6f...34bc1c`; ethereum `0xe6095e...96c58e`; ethereum `0xffd2de...454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | n/a | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/); ethereum `0xafb06c...b99590` | ⚠️ Unaudited |
| BancorGovernance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/); ethereum `0xebfafc...f82eb2` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | ethereum | n/a | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/); ethereum `0xf87a7e...dd38b1` | ⚠️ Unaudited |
| BancorX | unknown | ethereum | n/a | 4 deployments: ethereum [`0x57928a...8f1f73`](./contracts/ethereum-1/0x57928a05c91c1a5f38eb6788914acc05538f1f73/); ethereum `0xc326d5...754816`; ethereum `0xe7abef...da1bde`; ethereum `0xeddf6e...eda30b` | ⚠️ Unaudited |
| BancorXHelper | periphery | ethereum | n/a | [`0x984384...b5ba4b`](./contracts/ethereum-1/0x984384e2bc5ee14260c7dbbe77fa788da4b5ba4b/) | ⚠️ Unaudited |
| CarbonController | governance | ethereum | n/a | 3 deployments: ethereum [`0x5ec3b3...4e5b20`](./contracts/ethereum-1/0x5ec3b3748a2af4e14977949c76c44d0ca54e5b20/); ethereum `0x6db6ee...8b12c1`; ethereum `0xd59bca...063ff8` | ⚠️ Unaudited |
| CarbonPOL | unknown | ethereum | n/a | [`0x945ac6...287105`](./contracts/ethereum-1/0x945ac60e655a84b6638216521b391ae984287105/) | ⚠️ Unaudited |
| CarbonVortex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x55effb...f472ad`](./contracts/ethereum-1/0x55effb50729c049ab8c87977d324246996f472ad/); ethereum `0x676b91...ce95c0`; ethereum `0x727170...f0fb9e` | ⚠️ Unaudited |
| CarbonVortex | unknown | ethereum | unit-35913 | [`0xd053dc...d79801`](./contracts/ethereum-1/0xd053dcd7037af7204cece544ea9f227824d79801/) | ⚠️ Unaudited |
| CheckpointStore | unknown | ethereum | n/a | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | n/a | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | registry | ethereum | n/a | 5 deployments: ethereum [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/); ethereum `0x95fee9...91553b`; ethereum `0xa3bf8e...718e6a`; ethereum `0xc74be0...49d0a4`; ethereum `0xd19970...8738b3` | ⚠️ Unaudited |
| ConversionPathFinder | unknown | ethereum | n/a | [`0xa48e64...bbe489`](./contracts/ethereum-1/0xa48e64a3a60594e893bbbba28f8e0ea576bbe489/) | ⚠️ Unaudited |
| ConverterFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x5c58ac...0a03e0`](./contracts/ethereum-1/0x5c58ac8f88a344bf02323b8d405d5092170a03e0/); ethereum `0x9afb9d...4dcb25`; ethereum `0xc9cd0b...2eb348` | ⚠️ Unaudited |
| ConverterRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0xc0205e...a60f19`](./contracts/ethereum-1/0xc0205e203f423bcd8b2a4d6f8c8a154b0aa60f19/); ethereum `0xdbe6a3...a245c9`; ethereum `0xeb5378...296ca9` | ⚠️ Unaudited |
| ConverterUpgrader | unknown | ethereum | n/a | 3 deployments: ethereum [`0x92f18a...67d724`](./contracts/ethereum-1/0x92f18a07808b4e05dd4786955f3a69957a67d724/); ethereum `0x9eed81...3ac742`; ethereum `0xcff01c...8be486` | ⚠️ Unaudited |
| DADBridgeWrapper | operational_periphery | ethereum | n/a | [`0x62a65d...444557`](./contracts/ethereum-1/0x62a65d8d5803c825096c76509d9442819e444557/) | ⚠️ Unaudited |
| FixedSupplyUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x808991...aaa58d`](./contracts/ethereum-1/0x808991993c105dd7472b568500fee9ddd3aaa58d/); ethereum `0x92c79b...8acc08` | ⚠️ Unaudited |
| LiquidityPoolV1Converter | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x7026dd...32ce78`](./contracts/ethereum-1/0x7026dd2bb5a69f5d1257915dd7d05296a632ce78/); ethereum `0x74bc8f...b65efc`; ethereum `0x841a5c...3f5998`; ethereum `0x8e2491...635143`; ethereum `0xac621a...0f6b08`; ethereum `0xb59382...ea125c`; ethereum `0xc3a2fa...2104e5` | ⚠️ Unaudited |
| LiquidityPoolV1ConverterFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x554e32...b07d15`](./contracts/ethereum-1/0x554e3226c32d6fd9c71ccd744c1daa1689b07d15/); ethereum `0xb09e8c...f4a042`; ethereum `0xc7b626...75d679`; ethereum `0xc85c58...0f3d4e`; ethereum `0xd282fe...46d0dc` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterAnchorFactory | registry | ethereum | n/a | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | ⚠️ Unaudited |
| LiquidityPoolV2ConverterCustomFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/); ethereum `0xe88a9a...42ef5e` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x6a41ce...80e7be`](./contracts/ethereum-1/0x6a41cede956593fb07118f14ecf0847ac880e7be/); ethereum `0x6cd352...a6f3dd`; ethereum `0x8164f8...4f6ed3`; ethereum `0xacff89...bf00a5`; ethereum `0xb68c5d...fa3bfe` | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | 11 deployments: ethereum [`0x53f36c...4ace88`](./contracts/ethereum-1/0x53f36c56ecd4fb145989710fa3e3cc28ae4ace88/); ethereum `0x54c75f...b84f65`; ethereum `0x633088...2b311a`; ethereum `0x64f21d...97f176`; ethereum `0x843bd7...65d8e6`; ethereum `0x85cbbb...9001e5`; ethereum `0x9ab934...601bcf`; ethereum `0xc9d9dc...93c298`; ethereum `0xddc05a...e4f5fb`; ethereum `0xeead39...8f3c0c`; ethereum `0xfa6711...5cb220` | ⚠️ Unaudited |
| LiquidityProtectionSettings | unknown | ethereum | n/a | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | ⚠️ Unaudited |
| LiquidityProtectionStore | unknown | ethereum | n/a | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | ⚠️ Unaudited |
| LiquidityProtectionSystemStore | unknown | ethereum | n/a | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | ⚠️ Unaudited |
| LiquidTokenConverter | token | ethereum | n/a | 7 deployments: ethereum [`0x5936a8...42402b`](./contracts/ethereum-1/0x5936a891d9cc7f72fbfee320952140281742402b/); ethereum `0x7fa080...c77cf7`; ethereum `0x8f535c...ee822f`; ethereum `0xddfcee...0b82b3`; ethereum `0xe0f510...67c281`; ethereum `0xe24b63...b5bc72`; ethereum `0xf51fa5...57f2cf` | ⚠️ Unaudited |
| LiquidTokenConverterFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x9f7206...15993b`](./contracts/ethereum-1/0x9f7206db5348fed14849984291272c71be15993b/); ethereum `0xa0005a...5a80f8`; ethereum `0xbb18cd...438172`; ethereum `0xcd9c22...921c83`; ethereum `0xce0ed5...d18edb`; ethereum `0xde11d6...259552`; ethereum `0xf68f0e...2778a5` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | 17 deployments: ethereum [`0x589411...4e4658`](./contracts/ethereum-1/0x5894110995b8c8401bd38262ba0c8ee41d4e4658/); ethereum `0x6d3bf5...4c8146`; ethereum `0x79e7cc...10dd26`; ethereum `0x7af136...0393ee`; ethereum `0x84af4a...55df19`; ethereum `0x8c4b31...3aecfb`; ethereum `0x9d0357...7f3010`; ethereum `0xad0483...d24036`; ethereum `0xb43c50...737a88`; ethereum `0xb7f230...cf341c`; ethereum `0xc39e56...86051d`; ethereum `0xc7a965...070acc`; ethereum `0xc9eaa9...dc0f31`; ethereum `0xcc1aac...f9db75`; ethereum `0xd046ee...36e177`; ethereum `0xd498c8...06f5b8`; ethereum `0xe2b1b8...d329cd` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/); ethereum `0xea6f6d...50c826` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x642879...2f0034` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0xb443de...90dfce`](./contracts/ethereum-1/0xb443dea978b39178cb05ae005074227a4390dfce/) | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| StakingRewardsStore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/); ethereum `0x891aff...fb5693` | ⚠️ Unaudited |
| StandardPoolConverter | core_logic | ethereum | n/a | [`0x55069d...27f6e6`](./contracts/ethereum-1/0x55069dd523b39933eb872f6a34307e71ae27f6e6/) | ⚠️ Unaudited |
| StandardPoolConverterFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/); ethereum `0xdbc3c6...8fa9f2` | ⚠️ Unaudited |
| TokenGovernance | token | ethereum | n/a | 2 deployments: ethereum [`0xa489c2...afc244`](./contracts/ethereum-1/0xa489c2b5b36835a327851ab917a80562b5afc244/); ethereum `0xce1462...07ef94` | ⚠️ Unaudited |
| VortexBurner | unknown | ethereum | n/a | [`0x8843f6...976748`](./contracts/ethereum-1/0x8843f65f11b2367bb05a6e120c44780088976748/) | ⚠️ Unaudited |
| Voucher | unknown | ethereum | n/a | [`0xc6b2f9...953997`](./contracts/ethereum-1/0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63b95a...9baa68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69b1d7...1bbe82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4e11...b988f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ed9a1...404010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7d6f...90e3db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6cf31...a28c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafe57d...a19cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc972d0...b651fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38b75...453a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf240ea...168c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ae8d...707252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf87714...c2bece` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeda93...a64ef1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Peckshield](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 30 | high |
| [OpenZeppelin](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | 39 | high |
| [OpenZepplin (Auto Compounding Rewards)](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | contract_name | 12 | high |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 41 | high |
| [**here**](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**here**](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**here**](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**here**](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**here**](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Direct | contract_name | 6 | high |
| [**here**](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**here**](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x69532f...3f20bf`](./contracts/ethereum-1/0x69532f0b00157866933cda7c1bb8bb0c373f20bf/) | AirDropper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x577552...ed5df7`](./contracts/ethereum-1/0x577552436ef8fd918df2819eadf80105fded5df7/) | BancorArbitrage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | BancorBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56af6b...d2f913`](./contracts/ethereum-1/0x56af6b2b87f2d560ff0d991923476653a8d2f913/) | BancorConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | BancorConverterExtensions | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d7c7...f1ffa2`](./contracts/ethereum-1/0x52d7c77cd866a535e16d57b9d542cf0526f1ffa2/) | BancorConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85e27a...8ab847`](./contracts/ethereum-1/0x85e27a5718382f32238497e78b4a40dd778ab847/) | BancorConverterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe500ad...39b56f`](./contracts/ethereum-1/0xe500ad20fab2eaa3d9da5f6bdbc639662239b56f/) | BancorConverterRegistryData | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/) | BancorConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55f09a...4f7398`](./contracts/ethereum-1/0x55f09ab2f8c6ad171f086abdb14e1ed8544f7398/) | BancorFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | BancorFormulaProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/) | BancorGasPriceLimit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/) | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | BancorPriceFloor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/) | BancorQuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57928a...8f1f73`](./contracts/ethereum-1/0x57928a05c91c1a5f38eb6788914acc05538f1f73/) | BancorX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x984384...b5ba4b`](./contracts/ethereum-1/0x984384e2bc5ee14260c7dbbe77fa788da4b5ba4b/) | BancorXHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec3b3...4e5b20`](./contracts/ethereum-1/0x5ec3b3748a2af4e14977949c76c44d0ca54e5b20/) | CarbonController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945ac6...287105`](./contracts/ethereum-1/0x945ac60e655a84b6638216521b391ae984287105/) | CarbonPOL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55effb...f472ad`](./contracts/ethereum-1/0x55effb50729c049ab8c87977d324246996f472ad/) | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | CheckpointStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ContractFeatures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/) | ContractRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa48e64...bbe489`](./contracts/ethereum-1/0xa48e64a3a60594e893bbbba28f8e0ea576bbe489/) | ConversionPathFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c58ac...0a03e0`](./contracts/ethereum-1/0x5c58ac8f88a344bf02323b8d405d5092170a03e0/) | ConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0205e...a60f19`](./contracts/ethereum-1/0xc0205e203f423bcd8b2a4d6f8c8a154b0aa60f19/) | ConverterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92f18a...67d724`](./contracts/ethereum-1/0x92f18a07808b4e05dd4786955f3a69957a67d724/) | ConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62a65d...444557`](./contracts/ethereum-1/0x62a65d8d5803c825096c76509d9442819e444557/) | DADBridgeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x808991...aaa58d`](./contracts/ethereum-1/0x808991993c105dd7472b568500fee9ddd3aaa58d/) | FixedSupplyUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7026dd...32ce78`](./contracts/ethereum-1/0x7026dd2bb5a69f5d1257915dd7d05296a632ce78/) | LiquidityPoolV1Converter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x554e32...b07d15`](./contracts/ethereum-1/0x554e3226c32d6fd9c71ccd744c1daa1689b07d15/) | LiquidityPoolV1ConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | LiquidityPoolV2ConverterAnchorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/) | LiquidityPoolV2ConverterCustomFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a41ce...80e7be`](./contracts/ethereum-1/0x6a41cede956593fb07118f14ecf0847ac880e7be/) | LiquidityPoolV2ConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f36c...4ace88`](./contracts/ethereum-1/0x53f36c56ecd4fb145989710fa3e3cc28ae4ace88/) | LiquidityProtection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | LiquidityProtectionSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | LiquidityProtectionStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | LiquidityProtectionSystemStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5936a8...42402b`](./contracts/ethereum-1/0x5936a891d9cc7f72fbfee320952140281742402b/) | LiquidTokenConverter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f7206...15993b`](./contracts/ethereum-1/0x9f7206db5348fed14849984291272c71be15993b/) | LiquidTokenConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb443de...90dfce`](./contracts/ethereum-1/0xb443dea978b39178cb05ae005074227a4390dfce/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/) | StakingRewardsStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55069d...27f6e6`](./contracts/ethereum-1/0x55069dd523b39933eb872f6a34307e71ae27f6e6/) | StandardPoolConverter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/) | StandardPoolConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa489c2...afc244`](./contracts/ethereum-1/0xa489c2b5b36835a327851ab917a80562b5afc244/) | TokenGovernance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8843f6...976748`](./contracts/ethereum-1/0x8843f65f11b2367bb05a6e120c44780088976748/) | VortexBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6b2f9...953997`](./contracts/ethereum-1/0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997/) | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=240

Zero-match audit list:

- [15068] **here**
- [15069] **here**
- [15070] **here**
- [15071] **here**
- [15073] **here**

Fork inheritance lineage and inherited audits are included when available.
