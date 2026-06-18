# Agentic Audit Brief: SatLayer

## Project Overview

- Project: SatLayer (`satlayer`)
- Website: [https://satlayer.xyz/](https://satlayer.xyz/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-18T01:24:11.711Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: base, berachain, bsc, ethereum
- Contract surface: 91 unique implementations (215 raw deployments)
- DeFi Llama TVL: $219,192.99
- On-chain TVL (included contracts): $66,938,222.35
- TVL by chain: Bsc $60,838,498.38 | Ethereum $4,917,306.66 | Berachain $1,182,417.30

## Project Description

SatLayer is Bitcoin's economic and restaking layer for Bitcoin Validated Services. It enables Bitcoin-backed collateral and supported Bitcoin liquid staking or wrapped assets to be restaked to help secure BVS networks and participate in reward mechanisms. Assets such as uniBTC, brBTC, stBTC, and LBTC should be treated as supported or partner collateral unless specific evidence shows SatLayer issues them directly.

### Architecture

The Deposit Contracts family mints LSTs from user BTC deposits, which are then used across the LST Assets family for liquidity and yield. The SatLayer family provides vaults and pools that accept these LSTs for restaking, distributing rewards via the SLAY token and various strategy contracts, with shared infrastructure like oracles and bridges ensuring cross-chain functionality.

## Contract Surface Quality

- Indexed contracts: 742; live-surface contracts included: 215 (213 live, 2 unknown).
- Excluded by liveness: 312 inactive, 215 singleton, 0 uninitialized.
- Deployment units: 19/123 live.
- Detected codebases: aave-v2
- Unverified dependencies: 16/105.

## Audit Coverage Summary

- Verified implementations audited: 5/67 (7.5%)
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 91
- Raw deployments: 215
- Audits discovered: 12
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $64,671,243.90
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 10 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Asymptotic | Tier 2 | 2 | 3.0% | n/a |
| unknown | Tier 2 | 2 | 3.0% | 2024-08 |
| Zellic | Tier 2 | 2 | 3.0% | 2025-01 |
| Zenith | Tier 2 | 2 | 3.0% | 2025-02 |
| Dedaub | Tier 2 | 1 | 1.5% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SLAYToken | token | ethereum | unit-33834 | [`0x51477a...ee5147`](./contracts/ethereum-1/0x51477a3002ee04b7542adfe63ccdb50c00ee5147/) | ✅ Audited |
| ReceiptToken | token | ethereum | n/a | 17 deployments: ethereum [`0x067e11...67152f`](./contracts/ethereum-1/0x067e11ac5471c853aea205b3c1933a5f6367152f/); ethereum `0x0c4dd6...3430c7`; ethereum `0x17140b...ad24ff`; ethereum `0x69223b...82c566`; ethereum `0xe2c675...a912dc`; ethereum `0xf7de2b...1e076e`; bsc [`0x067e11...67152f`](./contracts/bsc-56/0x067e11ac5471c853aea205b3c1933a5f6367152f/); bsc `0x17140b...ad24ff`; bsc `0xe2c675...a912dc`; base `0x422d6c...7f9802`; base `0x9ed4b1...165add`; berachain `0x2a5fc0...f415c9`; berachain `0x7b4dc4...85705c`; berachain `0x961395...3ab763`; berachain `0xd23557...27abc2`; berachain `0xe70419...48b126`; berachain `0xff21f4...cfdb9b` | ✅ Audited |
| SatlayerPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x42a856...102819`](./contracts/ethereum-1/0x42a856dbebb97abc1269eab32f3bb40c15102819/); bsc [`0x42a856...102819`](./contracts/bsc-56/0x42a856dbebb97abc1269eab32f3bb40c15102819/); base `0xb57752...b0b9b3`; berachain `0x50198b...9bc99d` | ✅ Audited |
| LBTC | unknown | ethereum | n/a | [`0xa1bc65...a3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | ✅ Audited |
| LBTC | unknown | berachain | unit-33924 | [`0xecac9c...5c11c1`](./contracts/berachain-80094/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SolvBTCYieldTokenV3_1 | token | bsc | unit-33915 | [`0x1346b6...d446a5`](./contracts/bsc-56/0x1346b618dc92810ec74163e4c27004c921d446a5/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | unit-33897 | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| Token | token | berachain | n/a | 3 deployments: berachain [`0x93f4d0...d21116`](./contracts/berachain-80094/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/); berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | berachain | unit-33919 (2 proxies) | 2 deployments: berachain [`0x0f6f33...728f3b`](./contracts/berachain-80094/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/); berachain `0xcc0966...169a8c` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | unit-33851 | [`0x6e3988...14fa99`](./contracts/ethereum-1/0x6e39882a340cca03419093cc44a8de641314fa99/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | unit-33875 | [`0xb3e6fc...764399`](./contracts/ethereum-1/0xb3e6fc32cd058a1dd5ac8b0246e1701737764399/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | unit-33870 | [`0x9ffe77...74b464`](./contracts/ethereum-1/0x9ffe77146cc1da3edb87af163c6c32bab474b464/) | ⚠️ Unaudited |
| VaultStETHWrapper | core_logic | ethereum | n/a | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| Automation | unknown | ethereum | n/a | [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| brBTC | unknown | berachain | unit-33920 | [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| ERC2612Verifier | periphery | ethereum | n/a | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTC | unknown | ethereum | n/a | [`0xc96de2...d6c364`](./contracts/ethereum-1/0xc96de26018a54d51c097160568752c4e3bd6c364/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| FeeBoxETH | unknown | ethereum | n/a | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | ⚠️ Unaudited |
| FeeBoxStETH | unknown | ethereum | n/a | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-33917 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| GHOEth | unknown | ethereum | n/a | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| Manager | governance | ethereum | n/a | 50 deployments: ethereum [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/); ethereum `0x0787b6...faf385`; ethereum `0x0a5414...8334df`; ethereum `0x19520c...1e507c`; ethereum `0x1c2431...23c72a`; ethereum `0x1f96e2...f4d319`; ethereum `0x20891e...5b0729`; ethereum `0x2286f5...093db9`; ethereum `0x276e54...64e58c`; ethereum `0x2dc459...e410b0`; ethereum `0x2e9fd0...c86b5f`; ethereum `0x36035d...a637be`; ethereum `0x38f8ba...5be902`; ethereum `0x45e990...218cb3`; ethereum `0x479030...b7a1c5`; ethereum `0x4c907a...53f5a0`; ethereum `0x5085b5...f0f01f`; ethereum `0x5659c8...51d7f5`; ethereum `0x64bed7...3ec07b`; ethereum `0x65e6ef...3c40ae`; ethereum `0x6d425b...07b616`; ethereum `0x6d9366...2c7143`; ethereum `0x70fed1...639bbc`; ethereum `0x727750...e49beb`; ethereum `0x731820...5d1453`; ethereum `0x870f1e...21d4ae`; ethereum `0x88001d...a60b35`; ethereum `0x89f31a...c01dd0`; ethereum `0x8b214d...eb9f9f`; ethereum `0x8c4812...8ef340`; ethereum `0x8cc155...92c768`; ethereum `0x907c63...bcf6d8`; ethereum `0x94bbf9...0b25bd`; ethereum `0x9b88fb...d27302`; ethereum `0xa2858e...1bf37c`; ethereum `0xa5a0ad...df9f20`; ethereum `0xa5d359...a221e7`; ethereum `0xab5866...31ef28`; ethereum `0xac1894...c96065`; ethereum `0xb6e482...33f24c`; ethereum `0xc3d727...9e867a`; ethereum `0xc58dfa...a94e4a`; ethereum `0xc8cbde...6aa92d`; ethereum `0xcf0bd8...e7a802`; ethereum `0xdd77fa...443eb7`; ethereum `0xdf5e9f...2ecad4`; ethereum `0xe5bd9c...43ee46`; ethereum `0xf0ba63...c04d8c`; ethereum `0xf30592...228076`; ethereum `0xf4f0a7...a87446` | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| ParaSwapHelper | periphery | ethereum | n/a | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | ethereum | unit-33830 | [`0x4509c4...f203a4`](./contracts/ethereum-1/0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4/) | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | ethereum | unit-33861 | [`0x815a3d...e4103f`](./contracts/ethereum-1/0x815a3d4a61588402babb52011a6df74aa3e4103f/) | ⚠️ Unaudited |
| ProxyAdmin | governance | berachain | n/a | [`0x17c3b6...d551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/) | ⚠️ Unaudited |
| PumpToken | token | ethereum | n/a | [`0xf469fb...0a012e`](./contracts/ethereum-1/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/); ethereum `0x72c992...5afad1`; ethereum `0x9403b7...b1eca5` | ⚠️ Unaudited |
| RedeemOperator | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0cf918...e7ad5b`](./contracts/ethereum-1/0x0cf918e5badb815aa2165f261ec0c73519e7ad5b/); ethereum `0x1198ca...8d8806`; ethereum `0x12f101...fe07f9`; ethereum `0x13be82...7e7b53`; ethereum `0x688a30...5c77a7`; ethereum `0x6c96b1...7632c1`; ethereum `0x7ad781...3ba20e`; ethereum `0x82dc32...0b89a3`; ethereum `0x8b32ad...ecced3`; ethereum `0xb03a7b...c577fa`; ethereum `0xbb0d68...c8bbd5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | berachain | n/a | [`0xf46a21...ffbbe5`](./contracts/berachain-80094/0xf46a21bb51ae1ddeab580696106cd9924cffbbe5/) | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | unit-33820 | [`0x2563b7...19c800`](./contracts/ethereum-1/0x2563b75172fabb5ec08694de55e181c00219c800/) | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | unit-33854 | [`0x78a1fd...545b39`](./contracts/ethereum-1/0x78a1fdcc5d2c49f42959c9e062b1118d00545b39/) | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | unit-33893 | [`0xd4ede7...6cb615`](./contracts/ethereum-1/0xd4ede72c9daba7a00fd8f49f79b40c9f2a6cb615/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | unit-33889 | [`0xd16796...352b16`](./contracts/ethereum-1/0xd1679602ce51d76576329ad63e8027a156352b16/) | ⚠️ Unaudited |
| StrategyAvalon | core_logic | ethereum | n/a | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/); ethereum `0x74dce5...63f752` | ⚠️ Unaudited |
| StrategyDefault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x14302c...a81786`](./contracts/ethereum-1/0x14302cb69b0a1c8b593c526dd8f399f222a81786/); ethereum `0x72c3a4...0e8714`; ethereum `0x841c46...8e0c47`; ethereum `0xc810a8...b32841`; ethereum `0xe4f81e...79a733` | ⚠️ Unaudited |
| StrategyEuler | core_logic | ethereum | n/a | [`0x869620...f683d0`](./contracts/ethereum-1/0x869620df23af863a5b0c63af8ccd540d8ff683d0/) | ⚠️ Unaudited |
| StrategyGHO | core_logic | ethereum | n/a | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/); ethereum `0x6ab69e...9959e2`; ethereum `0xc6603c...fae257`; ethereum `0xfb8b84...10a7f0` | ⚠️ Unaudited |
| StrategyMellowSteakhouse | core_logic | ethereum | n/a | [`0x67c0d2...323ff6`](./contracts/ethereum-1/0x67c0d275d5c74354892c2281b6b5494349323ff6/) | ⚠️ Unaudited |
| StrategyZero | core_logic | ethereum | n/a | [`0xf9e1a6...fffdc5`](./contracts/ethereum-1/0xf9e1a6e00c319a9713bc7e64893cfa8f26fffdc5/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0xb90a47...26c686` | ⚠️ Unaudited |
| TestBridgeWithHook | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/); ethereum `0x210a85...143865`; ethereum `0xfbf1d5...de44bd` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | unit-33802 | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTC | unknown | base | unit-33916 | [`0x939197...2b593e`](./contracts/base-8453/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ⚠️ Unaudited |
| uniBTC | unknown | berachain | unit-33922 | [`0xc3827a...db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | ethereum | n/a | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x211ad9...d9b691`](./contracts/ethereum-1/0x211ad9b8d35356eb337897b46c193b330dd9b691/); ethereum `0x2adfd4...4e5c60`; ethereum `0x2b3853...4fac0e`; ethereum `0x3f0d9c...113282`; ethereum `0x4b00a9...882da8`; ethereum `0x97832d...31eadd`; ethereum `0xb0ce0c...96c0e5`; ethereum `0xb88edc...24026e`; ethereum `0xd87ecd...5ed555`; ethereum `0xef4508...c03800` | ⚠️ Unaudited |
| VaultYieldRSETH | core_logic | ethereum | n/a | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | ⚠️ Unaudited |
| WalletFactory | registry | ethereum | n/a | [`0x8b46cb...9cc001`](./contracts/ethereum-1/0x8b46cb994218767f07c86ba62fecafdcb19cc001/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x002a37...932066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00b677...0e6a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04dddd...77c0ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x219000...6f759d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2150...62a4c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x527d01...468d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x906369...ec0ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d3d4...1aca62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96de6a...58258a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6cd2a...15507e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad311...22a949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd42b7...5c4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd67e5b...1a2d25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd780e9...cf5626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdda8cd...92660b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddd2aa...255a55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8d195...fee542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8bd3...781ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff61d1...83a4ae` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x09def5...fbe34b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8fce81...d1a388` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf6718b...28b8a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 21 | high |
| [SatLayer Pool - Zellic Audit Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | aging | Direct | contract_name | 21 | high |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) | Asymptotic | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) | Coinspect | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) | Dedaub | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) | Dedaub | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [SatLayer Pool - Zellic Audit Report (Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | 21 | high |
| [{% embed url="<>" %}](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) | Oak Security | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x93f4d0...d21116`](./contracts/berachain-80094/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | Token | token | $1,169,654.22 | Verified native implementation with $1,169,654.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | VaultStETHWrapper | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | Automation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ERC2612Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | FeeBoxETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | FeeBoxStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/) | ReceiverOnMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf918...e7ad5b`](./contracts/ethereum-1/0x0cf918e5badb815aa2165f261ec0c73519e7ad5b/) | RedeemOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf46a21...ffbbe5`](./contracts/berachain-80094/0xf46a21bb51ae1ddeab580696106cd9924cffbbe5/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | StakedLBTCOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | StrategyAvalon | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/) | StrategyBedrock18DEC2025 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14302c...a81786`](./contracts/ethereum-1/0x14302cb69b0a1c8b593c526dd8f399f222a81786/) | StrategyDefault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869620...f683d0`](./contracts/ethereum-1/0x869620df23af863a5b0c63af8ccd540d8ff683d0/) | StrategyEuler | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | StrategyGHO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/) | StrategyHyperliquidSTETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67c0d2...323ff6`](./contracts/ethereum-1/0x67c0d275d5c74354892c2281b6b5494349323ff6/) | StrategyMellowSteakhouse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9e1a6...fffdc5`](./contracts/ethereum-1/0xf9e1a6e00c319a9713bc7e64893cfa8f26fffdc5/) | StrategyZero | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/) | TestBridgeWithHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | USDS2USDC2DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211ad9...d9b691`](./contracts/ethereum-1/0x211ad9b8d35356eb337897b46c193b330dd9b691/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | VaultYieldRSETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b46cb...9cc001`](./contracts/ethereum-1/0x8b46cb994218767f07c86ba62fecafdcb19cc001/) | WalletFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 6 |
| standard_library | 19 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, low=1
- Match method counts: extraction_exact=92

Zero-match audit list:

- [3189] {% embed url="<>" %}
- [3190] {% embed url="<>" %}
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf
- [3193] satlayer-evm-dedaub-20250809.pdf
- [3196] {% embed url="<>" %}
- [3197] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
