# Agentic Audit Brief: SatLayer

## Project Overview

- Project: SatLayer (`satlayer`)
- Website: [https://satlayer.xyz/](https://satlayer.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.592Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: base, berachain, bsc, ethereum
- Contract surface: 625 unique implementations (750 raw deployments)
- DeFi Llama TVL: $176,493.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Anchor BTC. Structurally: 54 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 12 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (proxy, erc1967upgrade, verifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 750; live-surface contracts included: 750 (191 live, 559 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/66 (7.6%)
- Deployed-live implementations: 67 of 625 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/67
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 558
- Unique implementations: 625
- Raw deployments: 750
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
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
| LBTC | unknown | ethereum | n/a | [`0xa1bc65...a3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | ✅ Audited |
| LBTC | unknown | berachain | n/a | [`0xecac9c...5c11c1`](./contracts/berachain-80094/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ✅ Audited |
| ReceiptToken | token | ethereum | n/a | 17 deployments: ethereum [`0x067e11...67152f`](./contracts/ethereum-1/0x067e11ac5471c853aea205b3c1933a5f6367152f/); ethereum `0x0c4dd6...3430c7`; ethereum `0x17140b...ad24ff`; ethereum `0x69223b...82c566`; ethereum `0xe2c675...a912dc`; ethereum `0xf7de2b...1e076e`; bsc [`0x067e11...67152f`](./contracts/bsc-56/0x067e11ac5471c853aea205b3c1933a5f6367152f/); bsc `0x17140b...ad24ff`; bsc `0xe2c675...a912dc`; base `0x422d6c...7f9802`; base `0x9ed4b1...165add`; berachain `0x2a5fc0...f415c9`; berachain `0x7b4dc4...85705c`; berachain `0x961395...3ab763`; berachain `0xd23557...27abc2`; berachain `0xe70419...48b126`; berachain `0xff21f4...cfdb9b` | ✅ Audited |
| SatlayerPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x42a856...102819`](./contracts/ethereum-1/0x42a856dbebb97abc1269eab32f3bb40c15102819/); bsc [`0x42a856...102819`](./contracts/bsc-56/0x42a856dbebb97abc1269eab32f3bb40c15102819/); base `0xb57752...b0b9b3`; berachain `0x50198b...9bc99d` | ✅ Audited |
| SLAYToken | token | ethereum | n/a | [`0x51477a...ee5147`](./contracts/ethereum-1/0x51477a3002ee04b7542adfe63ccdb50c00ee5147/) | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| Automation | unknown | ethereum | n/a | [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| brBTC | unknown | berachain | n/a | [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| ERC2612Verifier | periphery | ethereum | n/a | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTC | unknown | ethereum | n/a | [`0xc96de2...d6c364`](./contracts/ethereum-1/0xc96de26018a54d51c097160568752c4e3bd6c364/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| FeeBoxETH | unknown | ethereum | n/a | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | ⚠️ Unaudited |
| FeeBoxStETH | unknown | ethereum | n/a | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| GHOEth | unknown | ethereum | n/a | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| Manager | governance | ethereum | n/a | 50 deployments: ethereum [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/); ethereum `0x0787b6...faf385`; ethereum `0x0a5414...8334df`; ethereum `0x19520c...1e507c`; ethereum `0x1c2431...23c72a`; ethereum `0x1f96e2...f4d319`; ethereum `0x20891e...5b0729`; ethereum `0x2286f5...093db9`; ethereum `0x276e54...64e58c`; ethereum `0x2dc459...e410b0`; ethereum `0x2e9fd0...c86b5f`; ethereum `0x36035d...a637be`; ethereum `0x38f8ba...5be902`; ethereum `0x45e990...218cb3`; ethereum `0x479030...b7a1c5`; ethereum `0x4c907a...53f5a0`; ethereum `0x5085b5...f0f01f`; ethereum `0x5659c8...51d7f5`; ethereum `0x64bed7...3ec07b`; ethereum `0x65e6ef...3c40ae`; ethereum `0x6d425b...07b616`; ethereum `0x6d9366...2c7143`; ethereum `0x70fed1...639bbc`; ethereum `0x727750...e49beb`; ethereum `0x731820...5d1453`; ethereum `0x870f1e...21d4ae`; ethereum `0x88001d...a60b35`; ethereum `0x89f31a...c01dd0`; ethereum `0x8b214d...eb9f9f`; ethereum `0x8c4812...8ef340`; ethereum `0x8cc155...92c768`; ethereum `0x907c63...bcf6d8`; ethereum `0x94bbf9...0b25bd`; ethereum `0x9b88fb...d27302`; ethereum `0xa2858e...1bf37c`; ethereum `0xa5a0ad...df9f20`; ethereum `0xa5d359...a221e7`; ethereum `0xab5866...31ef28`; ethereum `0xac1894...c96065`; ethereum `0xb6e482...33f24c`; ethereum `0xc3d727...9e867a`; ethereum `0xc58dfa...a94e4a`; ethereum `0xc8cbde...6aa92d`; ethereum `0xcf0bd8...e7a802`; ethereum `0xdd77fa...443eb7`; ethereum `0xdf5e9f...2ecad4`; ethereum `0xe5bd9c...43ee46`; ethereum `0xf0ba63...c04d8c`; ethereum `0xf30592...228076`; ethereum `0xf4f0a7...a87446` | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| ParaSwapHelper | periphery | ethereum | n/a | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | ethereum | n/a | [`0x4509c4...f203a4`](./contracts/ethereum-1/0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4/) | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | ethereum | n/a | [`0x815a3d...e4103f`](./contracts/ethereum-1/0x815a3d4a61588402babb52011a6df74aa3e4103f/) | ⚠️ Unaudited |
| ProxyAdmin | governance | berachain | n/a | [`0x17c3b6...d551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/) | ⚠️ Unaudited |
| PumpToken | token | ethereum | n/a | [`0xf469fb...0a012e`](./contracts/ethereum-1/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/); ethereum `0x72c992...5afad1`; ethereum `0x9403b7...b1eca5` | ⚠️ Unaudited |
| RedeemOperator | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0cf918...e7ad5b`](./contracts/ethereum-1/0x0cf918e5badb815aa2165f261ec0c73519e7ad5b/); ethereum `0x1198ca...8d8806`; ethereum `0x12f101...fe07f9`; ethereum `0x13be82...7e7b53`; ethereum `0x688a30...5c77a7`; ethereum `0x6c96b1...7632c1`; ethereum `0x7ad781...3ba20e`; ethereum `0x82dc32...0b89a3`; ethereum `0x8b32ad...ecced3`; ethereum `0xb03a7b...c577fa`; ethereum `0xbb0d68...c8bbd5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | berachain | n/a | [`0xf46a21...ffbbe5`](./contracts/berachain-80094/0xf46a21bb51ae1ddeab580696106cd9924cffbbe5/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | n/a | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | bsc | n/a | [`0x1346b6...d446a5`](./contracts/bsc-56/0x1346b618dc92810ec74163e4c27004c921d446a5/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | berachain | n/a | 2 deployments: berachain [`0x0f6f33...728f3b`](./contracts/berachain-80094/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/); berachain `0xcc0966...169a8c` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | n/a | [`0x2563b7...19c800`](./contracts/ethereum-1/0x2563b75172fabb5ec08694de55e181c00219c800/) | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | n/a | [`0x6e3988...14fa99`](./contracts/ethereum-1/0x6e39882a340cca03419093cc44a8de641314fa99/) | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | n/a | [`0x78a1fd...545b39`](./contracts/ethereum-1/0x78a1fdcc5d2c49f42959c9e062b1118d00545b39/) | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | n/a | [`0xd4ede7...6cb615`](./contracts/ethereum-1/0xd4ede72c9daba7a00fd8f49f79b40c9f2a6cb615/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | n/a | [`0x9ffe77...74b464`](./contracts/ethereum-1/0x9ffe77146cc1da3edb87af163c6c32bab474b464/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | n/a | [`0xb3e6fc...764399`](./contracts/ethereum-1/0xb3e6fc32cd058a1dd5ac8b0246e1701737764399/) | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | n/a | [`0xd16796...352b16`](./contracts/ethereum-1/0xd1679602ce51d76576329ad63e8027a156352b16/) | ⚠️ Unaudited |
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
| Token | token | berachain | n/a | 3 deployments: berachain [`0x93f4d0...d21116`](./contracts/berachain-80094/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/); berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTC | unknown | base | n/a | 2 deployments: base [`0x552b0c...42fa05`](./contracts/base-8453/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); base `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | berachain | n/a | [`0xc3827a...db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | ethereum | n/a | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x211ad9...d9b691`](./contracts/ethereum-1/0x211ad9b8d35356eb337897b46c193b330dd9b691/); ethereum `0x2adfd4...4e5c60`; ethereum `0x2b3853...4fac0e`; ethereum `0x3f0d9c...113282`; ethereum `0x4b00a9...882da8`; ethereum `0x97832d...31eadd`; ethereum `0xb0ce0c...96c0e5`; ethereum `0xb88edc...24026e`; ethereum `0xd87ecd...5ed555`; ethereum `0xef4508...c03800` | ⚠️ Unaudited |
| VaultStETHWrapper | core_logic | ethereum | n/a | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | ⚠️ Unaudited |
| VaultYieldRSETH | core_logic | ethereum | n/a | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | ⚠️ Unaudited |
| WalletFactory | registry | ethereum | n/a | [`0x8b46cb...9cc001`](./contracts/ethereum-1/0x8b46cb994218767f07c86ba62fecafdcb19cc001/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (558)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x002a37...932066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x005854...4e0e76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00b677...0e6a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0186b0...d149c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x019aa9...4d5b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b1af...2f7c04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x032a09...e81a86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03a16e...5fa108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03c1fa...80de08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03c320...c7f8f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0415a2...44d67f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0415d1...f923a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x047815...7339b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04dddd...77c0ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04e3d1...4d01c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0695ea...ea3862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x069e54...d4e77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07b2f5...4dbc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09511b...8cab3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x096f1b...fcf672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09826f...6fe392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0982eb...b9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a9ea3...c03bb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab4b6...dd5fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b2166...3fdbe9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cbee8...b4c54f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d1862...6f3a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d4974...ae71c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6830...10aa51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e9378...1222d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ed540...4b079c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x108400...bc5d5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x108a0c...5fc749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b8d2...5f0745` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140b58...480a7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144f69...0f779b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14b816...02347d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16c6b8...518187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16d2ca...3a4a76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x170853...346187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17f453...ce22ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183d90...d67223` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x189c0a...7246e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x195abf...011c73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19af8a...d309ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ab34b...27a773` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b6be5...b0cb4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cb9cf...076a9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d4dd4...a77ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e448b...85d3da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ea243...916cf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ec109...f467d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1eccf9...309582` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f13d5...dce326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6cdc...cd5f6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x201121...1c8a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21479f...4608ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x219000...6f759d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x237978...0f48ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x237eff...24912f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23eb92...8466d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d333...997800` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d5a9...943f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24f86a...72b71e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x250d72...5ef8f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25e152...7b5327` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x260d55...c8b3d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x269daf...7f433b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26bb8e...a77c7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2778ae...81cb4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27a891...2aa8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x281b4c...f35dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28b668...162ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28c24f...506157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2907bc...f845a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2927d6...6dd459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a20f2...59bec8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a53f9...44b0a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b1152...2f7e73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b832e...eace48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bff7c...9f4bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cd264...d49cfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dbadd...bffd02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e54a6...e21782` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2efde9...20e0e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2150...62a4c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fc72e...dd190d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fdc50...c632ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x300d5b...95b3b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x302822...9f8107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x302d70...23a755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312855...3a2b3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31c3c3...7c20a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x330245...c1233f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336046...e1c310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x339201...83545d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3498fd...8e613b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34d16e...bf22c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34dff7...2c2d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35e612...84cd51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361205...d00c74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f513...3bbb31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x370cea...7d9ba9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37c314...3701a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37cb97...fe030d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38b4e0...ede466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e248...15ef15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3974d9...201dab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a4599...b7d5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a9d4b...989d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bfc2d...5325ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c003d...27e777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c0edb...201597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d086b...2c4a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d09c8...9af680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d74e5...afe292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9bcc...5e6083` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dcb5c...07a891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e6598...b92222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ed294...0f69f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f5d80...947eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f66e3...36a2c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fd49a...8f1532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40846b...43c316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40c684...2a7b30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41076d...4b840d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x418ba1...f46ea3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x419e66...63aa6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41cd17...0501b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42d14e...59fe0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42d73c...0c3b8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x441a28...5ca651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44fffb...0efd8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45bed9...35d4a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47dbd7...ed239e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47f6f2...4e7637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x481dc5...f4a893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x485fd9...03c12e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4957a3...217c73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49af17...ac9698` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3946...55fc4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a522e...2a1c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b32ee...3bb5b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c3790...e30f35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c380d...4c769e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7df2...c93254` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd11d...b2246f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e1fe5...71c19a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e8e60...f9a427` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5018ca...93e7e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502928...83a338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508339...9ca0ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50fd70...04c10c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51d9a3...ff2d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x520081...000af4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x527d01...468d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e5ce...3a01de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55957e...2fa5f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55ad78...1ed0cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x573b73...203828` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5764d4...a93329` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57e0a4...756bd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57e849...4d113f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580445...6cd54f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59d169...2d5ede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a11de...0b4de7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ad672...8bd561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b46d4...564176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b6f47...ea36be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b9558...ffa2e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2d91...44fa14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e1005...61c3e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f9e9e...35848d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fa330...11c64a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fbceb...733000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x601396...2e96e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x601954...ee5374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e97d...b469ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f898...86a36e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61420b...4cf51c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616a41...0cf942` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616fb2...4b1f97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x619b3e...4f2b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b982...5d55fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61f85c...d2fbdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x624907...e41aaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63cd34...0c9355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640a7a...4d6633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x641064...572f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64213b...805bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64a53b...9b0bec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64c5a4...d1dec0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64d772...531cb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655e9f...b63662` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65931b...963c99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x659397...e2d8a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d9e9...edde84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67362b...906cec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x676927...3ac3c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x677af8...14526a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67a919...694dd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67eb8c...9ef717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680417...7b19c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6945f5...eb5566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x699f69...c01a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a44c7...13014a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a66bb...3f90d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ad91f...acafb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c12a6...2e9022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c77bd...c895d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c87ac...77e5f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c90c7...d44044` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cdcf1...69ee7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d52ed...4dec0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dd173...c59cb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e055d...5574df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e3066...8f800a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e4b93...47f70b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f26b0...8404ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x700eed...282e14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x705214...7c022a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x708ea4...d7e397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71913b...4aa290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71ea0e...e8b3d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7223d0...b09bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x728860...df50d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72b65f...cf6fd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7331c9...e56027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x736d99...d625f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7462bc...a4f5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74d2be...54cdbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x751512...bf8504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a32b...022a32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75bd1d...a9edf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75e889...f3f342` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x760e92...aaf5b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x769225...7575b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76ba7f...6509ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76f318...4f4364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x775218...3169b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77d22a...04eaad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79da44...fb3bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dd84...e660e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a116f...99edc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a9ca8...d18e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7acd10...e10064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7afd64...f5da43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4334...b37264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ba7c4...60e15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7be572...b208ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf41e...1ab3e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bfc0e...d9004a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c5868...3257dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c9b07...4a2144` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cb6bb...5f8797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cbc0a...50d5b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d713d...2a4c54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dc8a3...cf240e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dec17...f4fc48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e8ba2...888445` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f2d63...879703` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ff670...66a7f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807358...03c3e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80d0c5...e8c02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x813376...053101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x813d2a...9c2784` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81c6e8...7ff0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x825a56...33b488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8359b1...98b41c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836a40...dd042b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83b15a...45ec17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83b5ab...af36f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x852a51...96b01e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x855bfd...4a75f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85a7e1...55441c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8688dd...c678a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x868e97...cb88c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86b104...584c82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x873ec2...ddc238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x885083...523f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x886f50...b6dc04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89ad20...c9758c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89cc77...6490f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a95f2...60d500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bb3dc...d266f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce174...15e8ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d34ae...09e37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d76e7...3560a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ded14...5d526e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ebc9d...97b34d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8efdb3...427e3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fd923...3c8751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x906369...ec0ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x906396...5dfc01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x907883...14e60e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x910b3c...6b7baf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9152e9...5658b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d3d4...1aca62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x949f85...4d7391` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95bba6...7a22ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9633d6...864caa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966ed7...5f392d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96b6d0...27d080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96de6a...58258a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97c07d...75b361` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98a5c6...e55491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98d578...c86137` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9931e2...acefa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99ac30...41aab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a81c5...ddc321` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aa8b1...d8e544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9adba7...59dbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ae1ca...976151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b2316...921137` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c12f9...f561a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c3439...f1f715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ca9b0...d7ad6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cc7c0...6bc1e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d0a02...44df70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1301...b8b949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5eb7...c071d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dc020...006262` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9dc4...9c4365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f8a4b...23902b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fddad...f0a019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa04a26...522398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0ad94...7792c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa11eba...1a1bea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1dc0b...7e0842` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa22772...4c6465` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23075...738361` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b333...6619bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b94c...91945d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa34ecb...1c0d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa351e2...12b45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3542f...792c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa47f02...cddd8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa53cd3...f759c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5815b...bbf023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60b87...83cdea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa79d00...b81895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85c89...593a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa91355...0ca1bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa91476...14c2ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa99491...0de97c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b89d...fcb7b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9c55c...b56ff2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabc15d...1b9f77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7eaa...536bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacf519...f7e25b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad47b2...dad8e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadc9c9...f4f9a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaec1fb...039a3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef755...9216bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf4c09...9e49b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafb6a7...012b7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafc13b...4aafdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08fbe...1f061e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13177...b45ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13aa2...08775d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2afdd...595363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb32950...2090c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb37690...748856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb38bf7...d2eb56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb39e6f...2019b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb40db6...aef403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb44be8...6b3d7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb713a6...f9d7c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7a444...f4552f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8c0c5...1a5d34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba8f17...dd6bcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbad5e0...f635a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae6c9...f34eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbff1b...88013d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc3a00...3eb6f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc8adf...e2ac51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd2a1d...d47e18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd64ce...a78618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd8f3b...5f37b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe1501...da1d1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf8f3f...61d23a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc2d1...93c1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0069f...ef2294` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc091a0...678ff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0c687...622f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc11111...2022ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc170b0...8d8183` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc397df...6a2aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc39e03...1d26fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3c02d...5b23e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc40573...828f2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc41d5f...ef6ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc49e8f...82d0ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4f60c...46cddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc56da3...225b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc57cb3...ff86be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c995...a6351c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5d7cd...2234f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc657a0...9e283e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc663f4...2c2e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6cd2a...15507e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc71fb1...d745b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc74fd7...5a49ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc84a1e...74e842` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8c3ab...3e8b0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc93616...d493c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9d04e...bac360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9ecc7...02b02f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca696a...e0258c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad311...22a949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcae91d...8af5f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb1b27...ef3a52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb742c...0563ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbcd13...7537dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc287c...147b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc7e6d...56e20a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd42b7...5c4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd9dff...058875` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdd374...005137` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce672d...5af2ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcedeec...15bf00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1216d...6a7186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1693b...9ffa3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1828c...f92138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1d73b...359113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1e177...c3c9a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2adb1...6851d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd34f59...399d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3bdd5...5fdc03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d547...b747c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4040a...d9f568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41985...3f116a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4cc9b...e0993b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4e08f...3a6a79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd52c28...611a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57aaa...58ea35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a1d7...a6898a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd67e5b...1a2d25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6ba69...810f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6bc74...b57b98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6f481...c46956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6f66c...dbb266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd72c3a...c58f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd780e9...cf5626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7ad8e...2c335f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87a19...4ade4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8f81c...5d1d56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda66c3...dee2e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdac674...f012db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb0aef...db043d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb9476...f8eebf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdba4c3...a86bed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc02f1...662eff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc314a...05d5dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc77ba...a317a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdca3ab...66ed84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcb3d9...5be940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce3d4...8e95eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5507...a0a0fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdda8cd...92660b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddd2aa...255a55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7480...f84352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1913...e31edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf41d8...739f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe13b6c...db26e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe170ee...f7f1cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18196...7464fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe39658...2f92cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe457e5...13234f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4794e...3575d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe52b42...5d2ebd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5dfce...cd9c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f5a0...5b0bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7f878...5b4b8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe83dd7...0243f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84082...99a1e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9a659...891740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9d6d1...943cf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9da84...a59fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9ebd6...f6235d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea5f10...d19a17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeacb97...4dc358` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeae0e3...d698a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb863b...6a55a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebc540...59c4ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec5364...66856e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec55e7...c3197d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed75d6...82f7c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed8143...60d827` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec53f...bfe7ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3fd1...822aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe4c9...adc1df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf07f58...f3b72a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0e48d...c89498` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf12da6...8e82ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf12e22...26b491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf151ff...1f5d48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1cc9e...f7924e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2cc04...ab655b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2cf49...870dfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2e57e...ff7cdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f5fd...6aa27f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf30c70...8da565` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf31584...a39b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37491...b2e43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf39e78...112057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf405fc...20731b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60cb7...345b85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf619f3...3790c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf646c1...aae918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c57a...798e7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf703e4...df6681` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7cb66...12df95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7ead3...0c998e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7eb36...0738d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84a84...0ee466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8d195...fee542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf928f6...a0286e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9dba6...26cc7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa0671...a3f7ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa78ea...9b7d02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb06bc...b708ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2d95...580196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb41f3...4696fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc3a51...17de71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1f7d...ae09e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe5ca0...713969` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8bd3...781ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff4da5...a7a710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff61d1...83a4ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff6771...8bcad0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffe98b...3d2e23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3376eb...61514a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89b2c7...740aeb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa16113...2059be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfc7d2...2b511e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf97750...31ab18` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x095957...766d71` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x09def5...fbe34b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x50fa14...1b8190` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x552b0c...42fa05` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x563a27...731fe5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x76b0d2...b0a155` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8fce81...d1a388` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9203ce...718031` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa93322...4ffadd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb290be...69ec47` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd4dfb0...f97782` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf1925...756e59` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe0240d...88dea3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe1061f...838a8c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf97750...31ab18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [SatLayer Pool - Zellic Audit Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | 2 | n/a |
| [satlayer-sui-asymptotic-20250314.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) | Asymptotic | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |
| [satlayer-core-phase-1-coinspect-20250404.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) | Coinspect | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [satlayer-core-phase-1-dedaub-20250325.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) | Dedaub | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [satlayer-sui-zenith-20250313.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 2 | n/a |
| [satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) | Dedaub | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [SatLayer Pool - Zellic Audit Report (Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | 2 | n/a |
| [cube-by-satlayer-oak-security-20250410.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) | Oak Security | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [cube-by-satlayer-hashlock-20250408.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | Automation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | brBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ERC2612Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc96de2...d6c364`](./contracts/ethereum-1/0xc96de26018a54d51c097160568752c4e3bd6c364/) | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | FeeBoxETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | FeeBoxStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | GHOEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/) | LBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | LombardTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/) | NativeLBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ParaSwapHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4509c4...f203a4`](./contracts/ethereum-1/0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4/) | PositionManagementAAVEV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x815a3d...e4103f`](./contracts/ethereum-1/0x815a3d4a61588402babb52011a6df74aa3e4103f/) | PositionManagementAAVEV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf469fb...0a012e`](./contracts/ethereum-1/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | PumpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/) | ReceiverOnMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf918...e7ad5b`](./contracts/ethereum-1/0x0cf918e5badb815aa2165f261ec0c73519e7ad5b/) | RedeemOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf46a21...ffbbe5`](./contracts/berachain-80094/0xf46a21bb51ae1ddeab580696106cd9924cffbbe5/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1346b6...d446a5`](./contracts/bsc-56/0x1346b618dc92810ec74163e4c27004c921d446a5/) | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0f6f33...728f3b`](./contracts/berachain-80094/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/) | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | StakedLBTCOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2563b7...19c800`](./contracts/ethereum-1/0x2563b75172fabb5ec08694de55e181c00219c800/) | StrategyAAVEV3Core | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e3988...14fa99`](./contracts/ethereum-1/0x6e39882a340cca03419093cc44a8de641314fa99/) | StrategyAAVEV3Core | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78a1fd...545b39`](./contracts/ethereum-1/0x78a1fdcc5d2c49f42959c9e062b1118d00545b39/) | StrategyAAVEV3Core | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4ede7...6cb615`](./contracts/ethereum-1/0xd4ede72c9daba7a00fd8f49f79b40c9f2a6cb615/) | StrategyAAVEV3Core | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ffe77...74b464`](./contracts/ethereum-1/0x9ffe77146cc1da3edb87af163c6c32bab474b464/) | StrategyAAVEV3CoreUSDe | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3e6fc...764399`](./contracts/ethereum-1/0xb3e6fc32cd058a1dd5ac8b0246e1701737764399/) | StrategyAAVEV3CoreUSDe | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd16796...352b16`](./contracts/ethereum-1/0xd1679602ce51d76576329ad63e8027a156352b16/) | StrategyAAVEV3CoreUSDe | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| berachain | [`0x93f4d0...d21116`](./contracts/berachain-80094/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xc3827a...db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | USDS2USDC2DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211ad9...d9b691`](./contracts/ethereum-1/0x211ad9b8d35356eb337897b46c193b330dd9b691/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | VaultStETHWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | VaultYieldRSETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b46cb...9cc001`](./contracts/ethereum-1/0x8b46cb994218767f07c86ba62fecafdcb19cc001/) | WalletFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 559 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [3189] satlayer-core-phase-1-coinspect-20250404.pdf
- [3190] satlayer-core-phase-1-dedaub-20250325.pdf
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf
- [3193] satlayer-evm-dedaub-20250809.pdf
- [3196] cube-by-satlayer-oak-security-20250410.pdf
- [3197] cube-by-satlayer-hashlock-20250408.pdf

Fork inheritance lineage and inherited audits are included when available.
