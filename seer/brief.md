# Agentic Audit Brief: Seer

## Project Overview

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: active (Tier 0, 23.2% below peak)
- Generated: 2026-06-14T00:26:40.315Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: ethereum, gnosis
- Contract surface: 187 unique implementations (336 raw deployments)
- DeFi Llama TVL: $828,646.84
- On-chain TVL (included contracts): $1,475,343.79
- TVL by chain: Ethereum $1,475,343.79

## Project Description

Seer is a decentralized prediction market protocol that allows users to create and trade outcome tokens on future events. It uses conditional token frameworks and automated market makers to facilitate trading and liquidity provision.

### Architecture

MarketFactory deploys individual Market contracts that interact with ConditionalTokens for outcome token minting and redemption. AlgebraFactory and FutarchyFactory provide AMM infrastructure, while MarketView offers read-only aggregation, all sharing the same conditional token framework.

## Audit Coverage Summary

- Verified implementations audited: 0/43 (0.0%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 1
- Unverified implementations: 144
- Unique implementations: 187
- Raw deployments: 336
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,475,343.79
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraFactory | registry | gnosis | [`0xa0864c...7da766`](./contracts/gnosis-100/0xa0864cca6e114013ab0e27cbd5b6f4c8947da766/) | ⚠️ Unaudited |
| CentralVault | core_logic | gnosis | 4 deployments: gnosis [`0x0ec662...c2b84d`](./contracts/gnosis-100/0x0ec66212a45f6b289e1965ac218d95b350c2b84d/); gnosis `0x4f49a8...f0f82b`; gnosis `0x7f2265...d57894`; gnosis `0xde8d8f...249995` | ⚠️ Unaudited |
| ConditionalRouter | adapter | ethereum | 2 deployments: ethereum [`0x1ba2db...44d9b5`](./contracts/ethereum-1/0x1ba2db142a69b2d0b0edbe666a9bd457e344d9b5/); gnosis `0x774284...13c29c` | ⚠️ Unaudited |
| CreditsManager | governance | gnosis | 4 deployments: gnosis [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/); gnosis `0x43bd67...43af17`; gnosis `0xb29d0c...4d2d70`; gnosis `0xfeb801...c9768b` | ⚠️ Unaudited |
| Disbursement | unknown | ethereum | [`0xff2e23...377370`](./contracts/ethereum-1/0xff2e231b3d6260937edc698da5f77b6d3d377370/) | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | ethereum | [`0xba22d7...1cfcd6`](./contracts/ethereum-1/0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6/) | ⚠️ Unaudited |
| DutchXSellerModule | unknown | ethereum | [`0xe3ebeb...0aa84d`](./contracts/ethereum-1/0xe3ebeb3a6a535131f2861f866d98d555580aa84d/) | ⚠️ Unaudited |
| Enum | unknown | ethereum | [`0xb1e1ae...2f43ee`](./contracts/ethereum-1/0xb1e1ae60607f24a6647d0339050cb69c312f43ee/) | ⚠️ Unaudited |
| Fixed192x64Math | unknown | ethereum | [`0x75a6d6...3805f3`](./contracts/ethereum-1/0x75a6d6251511af081f77f2b531c14808fb3805f3/) | ⚠️ Unaudited |
| ForesightCredits | unknown | gnosis | [`0x09e701...2c94f9`](./contracts/gnosis-100/0x09e7014d2c15eb8c5ee25853fe6842ff5e2c94f9/) | ⚠️ Unaudited |
| FPMMDeterministicFactory | registry | gnosis | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | ⚠️ Unaudited |
| FutarchyFactory | registry | gnosis | 4 deployments: ethereum `0xf9369c...9d3678`; gnosis [`0xa6cb18...30a345`](./contracts/gnosis-100/0xa6cb18fcdc17a2b44e5cad2d80a6d5942d30a345/); gnosis `0xe789e4...f6b792`; gnosis `0xecfbc2...30942f` | ⚠️ Unaudited |
| FutarchyProposal | unknown | ethereum | 4 deployments: ethereum [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/); gnosis `0xbba6c5...05be7d`; gnosis `0xd342be...5eab66`; gnosis `0xec4fb9...5b484c` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | gnosis | 4 deployments: ethereum `0xa638f2...5280dc`; gnosis [`0x03e1fc...a61cfc`](./contracts/gnosis-100/0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc/); gnosis `0xb5786f...438e7b`; gnosis `0xc64c75...025d0f` | ⚠️ Unaudited |
| FutarchyRouter | adapter | gnosis | 4 deployments: ethereum `0xac9bf8...3f98dc`; gnosis [`0x7495a5...e1228f`](./contracts/gnosis-100/0x7495a583ba85875d59407781b4958ed6e0e1228f/); gnosis `0x74c4df...c19c7c`; gnosis `0xe2996f...c9f74e` | ⚠️ Unaudited |
| GnosisRouter | adapter | gnosis | 12 deployments: gnosis [`0x1c6761...18ea9a`](./contracts/gnosis-100/0x1c676107eee61cc2b400df92ae0fe08ea818ea9a/); gnosis `0x1cc00a...d75b61`; gnosis `0x2070b8...59e140`; gnosis `0x790510...90509f`; gnosis `0x7babb8...eb281d`; gnosis `0x7e9757...d7f72a`; gnosis `0x8046a0...77fa79`; gnosis `0xacf776...9c6a70`; gnosis `0xe94d65...837389`; gnosis `0xec9048...c70fb8`; gnosis `0xf68ff4...349d07`; gnosis `0xfe8bf5...4a46b2` | ⚠️ Unaudited |
| GovernedRecipient | operational_periphery | gnosis | 7 deployments: gnosis [`0x126afb...ca2dc4`](./contracts/gnosis-100/0x126afb5e8218ce49f34317a3f3ffefde5bca2dc4/); gnosis `0x5693ca...7d6872`; gnosis `0x6beae2...558350`; gnosis `0x9e850e...667b19`; gnosis `0xa53544...32e0a6`; gnosis `0xa70f53...777a2a`; gnosis `0xceeb6a...583183` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | registry | ethereum | [`0x37186b...256c4b`](./contracts/ethereum-1/0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b/) | ⚠️ Unaudited |
| MainnetRouter | adapter | ethereum | 2 deployments: ethereum [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/); ethereum `0xfe8bf5...4a46b2` | ⚠️ Unaudited |
| Market | unknown | gnosis | 33 deployments: ethereum `0x8bdc50...d27b93`; gnosis [`0x0b5f90...59d93a`](./contracts/gnosis-100/0x0b5f90febc2fc44c43985b2a712f159ca059d93a/); gnosis `0x0d479a...a3ac09`; gnosis `0x20a3b1...1bc2d2`; gnosis `0x21a72f...d1d6a3`; gnosis `0x225030...117711`; gnosis `0x232474...fa5ca8`; gnosis `0x60eb95...c110bf`; gnosis `0x612f80...07bc1e`; gnosis `0x61cdb9...32f459`; gnosis `0x6ac12e...4ef581`; gnosis `0x829c91...88dbcb`; gnosis `0x87aabb...e0baf7`; gnosis `0x87cf5c...d0173c`; gnosis `0x8b8de5...454778`; gnosis `0x8f76bc...a9636a`; gnosis `0x9510c9...9e8aeb`; gnosis `0x9b6cca...7d8de1`; gnosis `0x9baeee...cda933`; gnosis `0x9e2272...24ad10`; gnosis `0x9ef70c...80bc7f`; gnosis `0xab903c...3f98ac`; gnosis `0xabe35c...4802f9`; gnosis `0xbbf8f7...bcc32e`; gnosis `0xc57764...088e17`; gnosis `0xc72f73...a0ca9e`; gnosis `0xe0d285...f51915`; gnosis `0xe820d0...4bb647`; gnosis `0xf27989...bb134e`; gnosis `0xf444a3...8423fd`; gnosis `0xfbebbb...cd2df0`; gnosis `0xfc5e55...cb63ce`; gnosis `0xfe414d...4b7c36` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | 21 deployments: ethereum `0x1f728c...7b7904`; ethereum `0x3124e9...c77a73`; ethereum `0x336695...38f348`; gnosis [`0x1246c7...f58e90`](./contracts/gnosis-100/0x1246c7e5ac59ba73a45a62e3081b548f02f58e90/); gnosis `0x2dbe07...582467`; gnosis `0x2e3937...ecb68e`; gnosis `0x47fc00...3a78fb`; gnosis `0x4c98aa...8e6ed0`; gnosis `0x724478...d86c09`; gnosis `0x83183d...5cdcf1`; gnosis `0x846f8f...92e6c5`; gnosis `0x8dd6fa...96e949`; gnosis `0x9498d2...c7bcc8`; gnosis `0xa99121...12ce33`; gnosis `0xaa43e7...a82ed7`; gnosis `0xab797c...7a87fc`; gnosis `0xc73323...b1131c`; gnosis `0xd1220e...821948`; gnosis `0xe619f5...14a2e6`; gnosis `0xeb0214...c20e6d`; gnosis `0xf365be...9818bf` | ⚠️ Unaudited |
| MarketView | unknown | gnosis | 17 deployments: ethereum `0x44921b...a79f00`; ethereum `0xab797c...7a87fc`; ethereum `0xb2ab74...84771a`; gnosis [`0x0427d4...916d9f`](./contracts/gnosis-100/0x0427d45906c8e1c156d8e06c1fefc4584b916d9f/); gnosis `0x3e202f...57142a`; gnosis `0x4ba0c4...dd4cc4`; gnosis `0x5f26f0...a5bbba`; gnosis `0x783b4b...2244ae`; gnosis `0x95493f...90f59c`; gnosis `0x995dc9...27626f`; gnosis `0xbb85ca...dfdf8d`; gnosis `0xd1f885...36414a`; gnosis `0xd34b07...e849e2`; gnosis `0xd45d4b...5d35e7`; gnosis `0xda834f...9d9dbf`; gnosis `0xe1834d...475172`; gnosis `0xfe6f08...a56aa0` | ⚠️ Unaudited |
| MultiDrop | unknown | gnosis | 10 deployments: gnosis [`0x0c556a...a2e795`](./contracts/gnosis-100/0x0c556afe7d7214fc9e7ab906014db695b5a2e795/); gnosis `0x129de2...c9c29e`; gnosis `0x28abd3...1810d5`; gnosis `0x39c06a...55cb6c`; gnosis `0x3c918d...8905d4`; gnosis `0x42a305...7bb10b`; gnosis `0x53dfb9...ab33c6`; gnosis `0x714615...5d1953`; gnosis `0x8eca58...c6b74e`; gnosis `0x91a495...e8d95f` | ⚠️ Unaudited |
| ParimutuelVault | core_logic | gnosis | 2 deployments: gnosis [`0x506dcc...0b6137`](./contracts/gnosis-100/0x506dcc9781b895b02559014544a83bd39f0b6137/); gnosis `0x659a90...2810c9` | ⚠️ Unaudited |
| PickemSlateFactory | registry | gnosis | 4 deployments: gnosis [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/); gnosis `0x4df41e...1612f5`; gnosis `0xa2cd7c...d9bb67`; gnosis `0xfe5754...aac3c3` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | ethereum | 2 deployments: ethereum [`0x179d8f...2d05dd`](./contracts/ethereum-1/0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd/); ethereum `0x201803...4f85ad` | ⚠️ Unaudited |
| RealitioArbitratorProxy | unknown | ethereum | [`0x12bb49...4ce346`](./contracts/ethereum-1/0x12bb49deb8f293435e27f6f4ab140184604ce346/) | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | ethereum | [`0xf5ccbf...7723b9`](./contracts/ethereum-1/0xf5ccbf74121edba492725f325d55356d517723b9/) | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | gnosis | [`0xa9fc6f...8f1d3c`](./contracts/gnosis-100/0xa9fc6f0f2a85fbad7eeec4a63c49014a0a8f1d3c/) | ⚠️ Unaudited |
| RealitioProxy | unknown | gnosis | [`0x57d020...10afca`](./contracts/gnosis-100/0x57d020f4b5517f79711a8298e2d9b4516210afca/) | ⚠️ Unaudited |
| RealityProxy | unknown | gnosis | 8 deployments: ethereum `0xc72f73...a0ca9e`; gnosis [`0x132bcf...4037dd`](./contracts/gnosis-100/0x132bcfb0003234a791deb118f8271bcfda4037dd/); gnosis `0x41ab65...6aa10c`; gnosis `0x691215...2c7d63`; gnosis `0xc260ad...0f2d6c`; gnosis `0xdec7c0...c4a210`; gnosis `0xee30cb...503490`; gnosis `0xf7e648...e6e9af` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | ethereum | [`0xb8be71...ae4316`](./contracts/ethereum-1/0xb8be713fee0b3f437be4793a23f96fec7eae4316/) | ⚠️ Unaudited |
| Seer_LP_Point | unknown | gnosis | 6 deployments: gnosis [`0x26427d...47eb4f`](./contracts/gnosis-100/0x26427dde0301388a906c77647e4bd8d1e147eb4f/); gnosis `0x270912...5659ab`; gnosis `0x85e39f...a9edb3`; gnosis `0xb477c4...7b92ad`; gnosis `0xbc9a94...174d66`; gnosis `0xef1169...42a86f` | ⚠️ Unaudited |
| SeerCredits | unknown | gnosis | 3 deployments: gnosis [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/); gnosis `0xedd48e...51acaf`; gnosis `0xf67736...cd466b` | ⚠️ Unaudited |
| SlateFactory | registry | gnosis | 2 deployments: gnosis [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/); gnosis `0xb5a01f...22f1d9` | ⚠️ Unaudited |
| SportsSlateFactory | registry | gnosis | 6 deployments: gnosis [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/); gnosis `0x6938ef...dc070a`; gnosis `0x7e53af...a732d8`; gnosis `0x8a670a...7f2999`; gnosis `0x931fc6...3fc6c4`; gnosis `0x96f61c...2a3619` | ⚠️ Unaudited |
| SwaprSavingsXDaiRouter | adapter | gnosis | [`0x4f774e...8a09aa`](./contracts/gnosis-100/0x4f774e1dbddbf03351204f1f53f160ce108a09aa/) | ⚠️ Unaudited |
| TradingCredits | unknown | gnosis | 3 deployments: gnosis [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/); gnosis `0x075b4c...decc15`; gnosis `0x122f6b...ca35a8` | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | 2 deployments: ethereum [`0x3af2ae...2157c9`](./contracts/ethereum-1/0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9/); ethereum `0x5250b9...d8ae7d` | ⚠️ Unaudited |
| Wrapped1155Factory | registry | ethereum | 2 deployments: ethereum [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/); gnosis [`0xd19431...10b79f`](./contracts/gnosis-100/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | ⚠️ Unaudited |
| WrappedERC20Factory | registry | gnosis | 5 deployments: gnosis [`0x383753...f2887a`](./contracts/gnosis-100/0x383753af6ca47e1b46b000e07ab210fd04f2887a/); gnosis `0x5bc8dd...e3b557`; gnosis `0x940b60...b3c2f1`; gnosis `0xb105c8...dcae3c`; gnosis `0xd0ee78...6d6c40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConditionalTokens | unknown | gnosis | 3 deployments: ethereum `0xc59b0e...407e0c`; gnosis [`0x34578a...449f59`](./contracts/gnosis-100/0x34578a6a464195e6ddc6e3c937ff9f52ee449f59/); gnosis `0xceafdd...43c0ce` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x00ca76...0dede3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x016e62...f7dd0b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x023652...90b191` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x02b547...1dcbcb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x03835b...3017c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x03cb70...43acf2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x03d034...d5e012` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x04cdb6...ceccde` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0791e8...497408` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0956b7...2d8a1c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x099efd...b91ff4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x09e84c...cd9ef8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0bd271...53d101` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0d3273...4015c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0db8c3...d0534f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x12bb49...4ce346` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x13ba6a...a3d070` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x14662a...4c1443` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x16a434...42e2ae` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x17181c...77b6c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x177375...ad9b1e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x19ecfa...b40065` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1b2a23...3f3ea6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1ea2e0...ad0825` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1f728c...7b7904` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1ff0e9...8596ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x204a20...2f8be7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x221456...775c7a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2342b8...496041` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x25a3e5...c9da05` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2a5961...16c241` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2b8ad6...1a4ce9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2db41e...180a4e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2e51bf...0cea37` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3038ad...6ff0e5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x336695...38f348` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x38801c...2fbb44` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3a4634...58ccab` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3dc2a2...a196e7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4115c9...59618f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x43a365...2a9ed5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x43c1a3...ab3e4f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x43f306...4f6e79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x44921b...a79f00` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4cf647...76368d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4f547e...92fb86` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x55bae1...ac426a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5759c0...099735` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5817da...561d27` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x591af1...2d2843` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x592e6d...a6b232` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5a8638...8cf9df` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5be39c...5f8965` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5eaa42...d486e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6082be...1b5f3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x615fbb...82018a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x643752...5a2d04` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x64a4f9...3b2134` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x654e8e...0fd3e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x70664c...da8900` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x73f989...dc42b5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7563c9...15eaa3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7e1acb...dfd1db` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7ece77...ed3b15` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7f4026...a3a41e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8030a0...4fe3ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x821d40...8528e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x841f32...18076e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x84c6fc...2aee5d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x85306c...ea3598` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8819f2...0cca73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x89038b...274273` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x89527d...a76910` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8a9647...eac6c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8b4ad9...3f9db3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8e81fe...3f7261` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8ffdef...32ac58` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x98a164...0b4245` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x99dd9b...4b4474` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9aea5a...88ccad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9b1f03...f49ee2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9d2166...11f7c2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9da1fd...000ddd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa1a986...beb0f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa2a7b2...e5da5d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa48b4d...904a9e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa59180...8fa1cf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa638f2...5280dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa6e428...0c6f06` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa7f711...333a56` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa834cc...a75e9d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa8457b...f61e4b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xab964d...b8ea92` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xac9bf8...3f98dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xace2c6...6ec7d2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xae3002...347dea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xafc6fd...ede6f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb0f1d2...01270b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb2ab74...84771a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb43721...1a7394` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb5330e...154573` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb89733...9450b8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xba333a...877970` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbaabc8...706fb2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbb6061...04759b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbdf422...b511f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbe0034...c8af7f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc2d432...9d063d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcbbbab...1c69fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcbec93...ed59ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcd07b0...a1550b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd1f878...215143` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd24880...02d415` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd4e7f4...b8eac9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdacc76...1fb78c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdd193f...849bd1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdeb5dc...0b3791` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe36967...71007e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe5a4df...add300` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe81c8b...162568` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe939dd...aec4ac` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe9d43d...4414e3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeb311c...9dcf5c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xefa6cb...f0f485` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf1e315...461fd9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf5ccbf...7723b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf8b24d...63ff82` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf9369c...9d3678` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfafaf0...33cd15` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfb4c45...3c16b7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfdafab...d5aad3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xff62fb...015199` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ba2db...44d9b5`](./contracts/ethereum-1/0x1ba2db142a69b2d0b0edbe666a9bd457e344d9b5/) | ConditionalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/) | CreditsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff2e23...377370`](./contracts/ethereum-1/0xff2e231b3d6260937edc698da5f77b6d3d377370/) | Disbursement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba22d7...1cfcd6`](./contracts/ethereum-1/0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6/) | DutchXCompleteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3ebeb...0aa84d`](./contracts/ethereum-1/0xe3ebeb3a6a535131f2861f866d98d555580aa84d/) | DutchXSellerModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75a6d6...3805f3`](./contracts/ethereum-1/0x75a6d6251511af081f77f2b531c14808fb3805f3/) | Fixed192x64Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | FPMMDeterministicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/) | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x03e1fc...a61cfc`](./contracts/gnosis-100/0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc/) | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x126afb...ca2dc4`](./contracts/gnosis-100/0x126afb5e8218ce49f34317a3f3ffefde5bca2dc4/) | GovernedRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37186b...256c4b`](./contracts/ethereum-1/0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b/) | LMSRMarketMakerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/) | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0427d4...916d9f`](./contracts/gnosis-100/0x0427d45906c8e1c156d8e06c1fefc4584b916d9f/) | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/) | PickemSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8be71...ae4316`](./contracts/ethereum-1/0xb8be713fee0b3f437be4793a23f96fec7eae4316/) | RewardClaimHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x26427d...47eb4f`](./contracts/gnosis-100/0x26427dde0301388a906c77647e4bd8d1e147eb4f/) | Seer_LP_Point | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/) | SeerCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/) | SlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/) | SportsSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/) | TradingCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3af2ae...2157c9`](./contracts/ethereum-1/0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x383753...f2887a`](./contracts/gnosis-100/0x383753af6ca47e1b46b000e07ab210fd04f2887a/) | WrappedERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 100 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
