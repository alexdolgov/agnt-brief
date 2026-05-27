# Agentic Audit Brief: Stargate Finance

## Project Overview

- Project: Stargate Finance (`stargate-finance`)
- Website: [https://stargate.finance/](https://stargate.finance/)
- Lifecycle: active (Tier 0, 97.8% below peak)
- Generated: 2026-05-27T11:40:02.750Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: arbitrum, aurora, avalanche, base, bsc, ethereum, fantom, gnosis, kava, linea, manta, mantle, metis, optimism, plasma, polygon, scroll, sei, sonic, swellchain, unichain
- Contract surface: 294 unique implementations (741 raw deployments)
- DeFi Llama TVL: $92,291,118.00
- On-chain TVL (included contracts): $203,945,013.10
- TVL by chain: Ethereum $176,572,450.95 | Arbitrum $12,914,153.82 | Base $3,955,212.13 | Optimism $3,288,182.61 | Avalanche $2,062,752.06 | Polygon $1,124,270.04 | Unichain $1,066,633.74 | Mantle $1,028,995.88 | Gnosis $1,015,530.30 | Linea $740,597.67 | Sonic $176,233.90

## Project Description

Stargate Finance is a cross-chain liquidity protocol that enables users to transfer native assets across multiple blockchains in a single transaction. It uses omnichain token pools and a unified liquidity model to provide instant guaranteed finality and deep liquidity for bridging.

### Architecture

Stargate V2 builds upon V1's cross-chain infrastructure, reusing concepts like routers and staking while introducing new pool contracts and messaging layers. Both versions share the STG token for governance and incentives, and V2 pools often interact with V1 components through migratable contracts and shared fee libraries.

## Audit Coverage Summary

- Verified implementations audited: 12/52 (23.1%)
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 10
- Unverified implementations: 242
- Unique implementations: 294
- Raw deployments: 741
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $171,876,873.65
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 12 | 23.1% | 2024-05 |
| Ottersec | Tier 2 | 4 | 7.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StargatePoolUSDC | core_logic | optimism | 20 deployments: ethereum `0xc02639...3189c7`; ethereum `0xec4e07...b66f56`; optimism [`0x0535d1...55cd31`](./contracts/optimism-10/0x0535d19ca4ef74119c31e1347d5f85232955cd31/); optimism `0xc2b638...840583`; optimism `0xce8cca...abb7d0`; gnosis `0xb1eead...2b86c3`; polygon `0x62207a...d4d247`; polygon `0x9aa02d...ac7fe4`; sonic `0xa272ff...a2d8f9`; sei `0x45d417...54ac2e`; mantle `0xac290a...c6acdc`; mantle `0xf1fcb4...bf27e6`; base `0x27a16d...4b5d26`; base `0x2a63ce...08ccfe`; arbitrum `0x6ce9bf...f50eac`; arbitrum `0xe8cdf2...e7d0d3`; avalanche `0x41a5b0...a3420b`; avalanche `0x5634c4...d86e47`; scroll `0x3fc69c...2b14e4`; aurora `0x81f613...06b075` | ✅ Audited |
| StargatePoolNative | core_logic | base | 13 deployments: ethereum `0x77b204...e57931`; ethereum `0xd41a61...9de620`; optimism `0x6ce9bf...f50eac`; optimism `0xe8cdf2...e7d0d3`; unichain `0xe9aba8...0f7de7`; manta `0x9895d8...7c32cb`; base [`0x0a6a15...f0d97c`](./contracts/base-8453/0x0a6a15964fee494a881338d65940430797f0d97c/); base `0xdc181b...b6f7c7`; arbitrum `0xa45b51...4a5f7f`; arbitrum `0xd47b03...9fd4d7`; linea `0x5871a7...37e881`; linea `0x81f613...06b075`; scroll `0xc2b638...840583` | ✅ Audited |
| StargatePool | core_logic | mantle | 15 deployments: ethereum `0x268ca2...9e931d`; ethereum `0x62f597...97ae4b`; ethereum `0x888008...2a4d90`; ethereum `0xcdafb1...feecd3`; gnosis `0xe9aba8...0f7de7`; metis `0x22bdf9...8b35b8`; metis `0x36ed19...087d08`; metis `0x8899da...e96e25`; metis `0xd9050e...6331f0`; metis `0xdfc47d...ea0b80`; metis `0xf71352...61bc57`; mantle [`0x19cfce...7007dd`](./contracts/mantle-5000/0x19cfce47ed54a88614648dc3f19a5980097007dd/); mantle `0x4c1d3f...547463`; mantle `0xce8cca...abb7d0`; mantle `0xf7628d...69f3f1` | ✅ Audited |
| TokenMessaging | token | manta | 23 deployments: ethereum `0x4aff12...4f779c`; ethereum `0x6d6620...f4a980`; optimism `0x4e422b...a94038`; optimism `0xf1fcb4...bf27e6`; gnosis `0xaf368c...bcbebf`; polygon `0x6ce9bf...f50eac`; polygon `0xdc181b...b6f7c7`; sonic `0x2086f7...849b0f`; manta [`0x0ceb23...fa4cbb`](./contracts/manta-169/0x0ceb237e109ee22374a567c6b09f373c73fa4cbb/); metis `0x10b415...392771`; metis `0x9aa02d...ac7fe4`; metis `0xcbe782...06588a`; sei `0x1502fa...275d3d`; mantle `0x41b491...0a0aef`; mantle `0x80f755...1b8161`; base `0x41a5b0...a3420b`; base `0x5634c4...d86e47`; arbitrum `0x19cfce...7007dd`; arbitrum `0x3fc69c...2b14e4`; avalanche `0x15efb7...e7b389`; avalanche `0x17e450...ef9a34`; linea `0x1041d1...606918`; linea `0x5f688f...af2fed` | ✅ Audited |
| OFTTokenERC20 | token | sei | [`0x160345...9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | ✅ Audited |
| RewardLib | unknown | sei | 11 deployments: ethereum `0xfa5475...fcdcfd`; optimism `0xb08326...a9a26e`; polygon `0x2a6c43...6db219`; sonic `0x549943...1d3241`; manta `0xca3676...3f1ef2`; metis `0xda82a3...1706f5`; sei [`0x090194...ba8c01`](./contracts/sei-1329/0x090194f1eedc134a680e3b488abb2d212dba8c01/); mantle `0xf85b57...5a11f7`; base `0x22bdf9...8b35b8`; arbitrum `0xfbb5a7...7d6443`; linea `0xdd0022...cafc31` | ✅ Audited |
| StargateOFT | unknown | sei | [`0x5c386d...b6345b`](./contracts/sei-1329/0x5c386d85b1b82fd9db681b9176c8a4248bb6345b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StargateToken | token | optimism | 9 deployments: ethereum `0xaf5191...ba2cd6`; optimism [`0x296f55...cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); optimism `0x2f6f07...6e7590`; polygon `0x2f6f07...6e7590`; base `0xe3b53a...f764df`; arbitrum `0x2f6f07...6e7590`; arbitrum `0x669434...ce1eb6`; avalanche `0x2f6f07...6e7590`; linea `0x808d7c...bc0949` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | sei | 15 deployments: ethereum `0x77b2e5...63fa51`; ethereum `0x933597...5a3973`; optimism `0x19cfce...7007dd`; optimism `0x3fc69c...2b14e4`; polygon `0xb7a05a...e3ae58`; polygon `0xd47b03...9fd4d7`; metis `0x3aa9fd...8303d3`; metis `0x4dcbfc...ff5125`; metis `0x8db623...ff8331`; sei [`0x0db9af...7ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/); mantle `0xb715b8...1c57fc`; mantle `0xda82a3...1706f5`; arbitrum `0xc2b638...840583`; arbitrum `0xce8cca...abb7d0`; avalanche `0x12dc92...e62cee` | ⚠️ Unaudited |
| StargatePoolEURC | core_logic | ethereum | 3 deployments: ethereum [`0x102d75...460282`](./contracts/ethereum-1/0x102d758f688a4c1c5a80b116bd945d4455460282/); ethereum `0x783129...9aae8c`; ethereum `0x8a2b28...2bdd0b` | ⚠️ Unaudited |
| Auction | unknown | ethereum | [`0x45a01e...2033cd`](./contracts/ethereum-1/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | ⚠️ Unaudited |
| BabyPair | unknown | bsc | [`0xd397a4...28877f`](./contracts/bsc-56/0xd397a40884ce00e662b419673e0b15cae628877f/) | ⚠️ Unaudited |
| BondingCurve | unknown | optimism | [`0x693604...562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | ⚠️ Unaudited |
| ConfluxOFT | unknown | ethereum | [`0xc16977...ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ⚠️ Unaudited |
| EnumerableSet | unknown | metis | 10 deployments: manta `0xda6087...dfdcad`; metis [`0x0eb744...50ad83`](./contracts/metis-1088/0x0eb74491493e9722cd876ada671ff8a62650ad83/); metis `0x2a6c43...6db219`; metis `0x4315ba...6ae863`; metis `0x469490...06a90d`; metis `0x80f755...1b8161`; metis `0x873cfb...dced22`; metis `0xbbb097...76e800`; sei `0x7c2fc1...5cf28c`; mantle `0xd29de5...5868d8` | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | 2 deployments: ethereum [`0xbe574b...5f1ae8`](./contracts/ethereum-1/0xbe574b6219c6d985d08712e90c21a88fd55f1ae8/); ethereum `0xf1815b...045d14` | ⚠️ Unaudited |
| Factory | registry | ethereum | 8 deployments: ethereum [`0x06d538...c2173e`](./contracts/ethereum-1/0x06d538690af257da524f25d0cd52fd85b1c2173e/); optimism `0xe3b53a...f764df`; polygon `0x808d7c...bc0949`; base `0xaf5191...ba2cd6`; arbitrum `0x55bdb4...ac9970`; arbitrum `0x808d7c...bc0949`; avalanche `0x808d7c...bc0949`; linea `0xaf54be...239398` | ⚠️ Unaudited |
| LPStaking | unknown | optimism | 7 deployments: ethereum `0xb0d502...31d62b`; optimism [`0x224d8f...277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/); optimism `0x4a364f...cf18d8`; polygon `0x8731d5...e01e98`; arbitrum `0x8731d5...e01e98`; arbitrum `0xea8dfe...4c2176`; avalanche `0x8731d5...e01e98` | ⚠️ Unaudited |
| LPStakingTime | unknown | base | 5 deployments: ethereum `0x1c3000...3122fc`; optimism `0x4dea9e...412cd2`; base [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/); arbitrum `0x977455...0594b1`; linea `0x4a364f...cf18d8` | ⚠️ Unaudited |
| MultiCallUtils | periphery | manta | 2 deployments: ethereum `0x9895d8...7c32cb`; manta [`0x0e8157...900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | [`0x41516d...88de3d`](./contracts/bsc-56/0x41516dca7efe69518ec414de35e5aa067788de3d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | 5 deployments: ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; ethereum `0xc95801...726782`; ethereum `0xd04a69...86ec39`; sonic [`0x015fd5...9c9329`](./contracts/sonic-146/0x015fd589f4f1a33ce4487e12714e1b15129c9329/) | ⚠️ Unaudited |
| RewardRegistryLib | registry | linea | 7 deployments: ethereum `0x9f22c4...9499ee`; optimism `0x957b12...ed99c7`; polygon `0x503c5c...7a06ff`; sonic `0xb0b239...0789f0`; base `0x8db623...ff8331`; arbitrum `0xb08326...a9a26e`; linea [`0x26727c...2a3098`](./contracts/linea-59144/0x26727c78b0209d9e787b2f9ac8f0238b122a3098/) | ⚠️ Unaudited |
| Router | adapter | linea | 9 deployments: ethereum `0x8731d5...e01e98`; optimism `0xaf5191...ba2cd6`; optimism `0xb0d502...31d62b`; polygon `0x45a01e...2033cd`; base `0x45f1a9...4d263b`; arbitrum `0x45a01e...2033cd`; arbitrum `0x53bf83...a41614`; avalanche `0x45a01e...2033cd`; linea [`0x2f6f07...6e7590`](./contracts/linea-59144/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | ⚠️ Unaudited |
| RouterETH | adapter | ethereum | 5 deployments: ethereum [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/); optimism `0xb49c4e...8d5f8b`; base `0x50b6eb...0d7ae4`; arbitrum `0xbf22f0...d23e40`; linea `0x8731d5...e01e98` | ⚠️ Unaudited |
| SGTERC20Token | token | bsc | [`0x141381...55d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | ⚠️ Unaudited |
| SGTStaking | unknown | bsc | [`0xb82ac3...b7a212`](./contracts/bsc-56/0xb82ac36e9df3c700f12ecf552f240bf4d7b7a212/) | ⚠️ Unaudited |
| SGTTreasury | operational_periphery | bsc | [`0xa2b48a...2877d5`](./contracts/bsc-56/0xa2b48ad28c09cc64cccf9ed73e1efced052877d5/) | ⚠️ Unaudited |
| SignatureChecker | unknown | ethereum | 2 deployments: ethereum [`0xdf7108...f86b6c`](./contracts/ethereum-1/0xdf7108f8b10f9b9ec1aba01cca057268cbf86b6c/); sonic `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| StargateFeeLibraryV03 | unknown | polygon | 5 deployments: ethereum `0xc54c25...319fa2`; optimism `0x53678e...f28f80`; polygon [`0x1ef98c...bdee81`](./contracts/polygon-137/0x1ef98c187c3940e96080fa4e8a5b858e62bdee81/); arbitrum `0xf406f7...10a655`; avalanche `0xff2eee...b25217` | ⚠️ Unaudited |
| StargateFeeLibraryV04 | unknown | arbitrum | 15 deployments: ethereum `0x33a1fa...590aaa`; ethereum `0xdbf507...fad924`; ethereum `0xe081ff...4378d5`; optimism `0x18ae6d...8c1bb0`; optimism `0x7a0451...e61275`; optimism `0xcbffca...e05f0a`; polygon `0x212efc...0c75ef`; polygon `0x2eb9ea...9b82ee`; polygon `0xd46ccf...2285ed`; arbitrum [`0x165a45...f45250`](./contracts/arbitrum-42161/0x165a45083f43bf3d0df756bd51e3855bdef45250/); arbitrum `0x47f361...717644`; arbitrum `0x9e2166...f2041d`; avalanche `0x1c32ca...646cfc`; avalanche `0x82bb12...a1beda`; avalanche `0xdbebef...798ea4` | ⚠️ Unaudited |
| StargateFeeLibraryV05 | unknown | ethereum | 5 deployments: ethereum [`0x6faf1a...34afd0`](./contracts/ethereum-1/0x6faf1ab85ffbe7b3a557f4864046ff861734afd0/); optimism `0xae8d00...4c4675`; polygon `0xa07321...614750`; arbitrum `0xb1641d...ba9089`; avalanche `0x7f0369...7149d7` | ⚠️ Unaudited |
| StargateFeeLibraryV07 | unknown | arbitrum | 7 deployments: ethereum `0x8c3085...9c1e6f`; optimism `0x505ecd...d38d7e`; polygon `0xb279b3...83494c`; base `0x9d1b16...25b944`; arbitrum [`0x1cf316...dd7de4`](./contracts/arbitrum-42161/0x1cf31666c06ac3401ed0c1c6346c4a9425dd7de4/); avalanche `0x5e8ec1...0b992d`; linea `0x45a01e...2033cd` | ⚠️ Unaudited |
| StargateMerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x108f4c...03f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/); ethereum `0x12a272...a8c2f8` | ⚠️ Unaudited |
| sVotingEscrow | operational_periphery | ethereum | [`0x9485db...4a97d9`](./contracts/ethereum-1/0x9485dbda44b279311e3eee374ced60b5364a97d9/) | ⚠️ Unaudited |
| TetherTokenV2 | token | sonic | [`0x674843...38cbc8`](./contracts/sonic-146/0x674843c06ff83502ddb4d37c2e09c01cda38cbc8/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | 5 deployments: ethereum [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/); optimism `0x43d276...88f05b`; polygon `0x3ab2da...d3a15d`; arbitrum `0xfbd849...660268`; avalanche `0xca0f57...a58fce` | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| WidgetSwap | unknown | ethereum | 10 deployments: ethereum [`0x02489a...1009df`](./contracts/ethereum-1/0x02489ac60f7f581445b7d2dd59bb0a415a1009df/); ethereum `0x76d4d6...68a5a6`; optimism `0x164190...9e3a4e`; optimism `0x46bc16...8ef6f0`; polygon `0xc2a6a1...a87f55`; polygon `0xdc2716...a9247d`; arbitrum `0x6c33a7...8f4780`; arbitrum `0x962f92...550616`; avalanche `0x0cff9a...16644c`; avalanche `0x20293e...005858` | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | 12 deployments: ethereum [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/); ethereum `0x5b58c9...2dfd2b`; ethereum `0x674843...38cbc8`; ethereum `0x69bfc7...a74d9f`; ethereum `0x74c9f2...89de67`; ethereum `0x7ac729...16beb8`; ethereum `0x880f61...89167f`; ethereum `0xb1eead...2b86c3`; ethereum `0xbab93b...7cc500`; ethereum `0xbb0d08...e31c2e`; ethereum `0xd8cf92...d6ff4d`; ethereum `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | adapter | ethereum | 14 deployments: ethereum [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/); ethereum `0x1a9dd4...41ce06`; ethereum `0x4175d9...13ebe3`; ethereum `0x5c2973...be7362`; ethereum `0x6cea30...795848`; ethereum `0x734cef...f9610a`; ethereum `0x7bcdc4...8629d6`; ethereum `0x7bf810...fac855`; ethereum `0x8ac372...8c90ef`; ethereum `0xa2d339...19ee3f`; ethereum `0xa460c9...955839`; ethereum `0xb8b21b...4e9339`; ethereum `0xfe146a...b4a337`; ethereum `0xfe634e...6e001f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CreditMessaging | unknown | metis | 34 deployments: ethereum `0x5489dd...e7f97d`; ethereum `0x5c386d...b6345b`; ethereum `0x6b8ad1...44bb9d`; ethereum `0xf5bba7...81e202`; optimism `0x469490...06a90d`; optimism `0x5eb3bb...f874b5`; optimism `0xda82a3...1706f5`; gnosis `0xe1ad84...93681e`; unichain `0xaf368c...bcbebf`; polygon `0x27a16d...4b5d26`; polygon `0x3aa9fd...8303d3`; polygon `0xc2b638...840583`; sonic `0x3a1293...1bbc0f`; manta `0x102d75...460282`; metis [`0x0535d1...55cd31`](./contracts/metis-1088/0x0535d19ca4ef74119c31e1347d5f85232955cd31/); metis `0xa45b51...4a5f7f`; metis `0xd47b03...9fd4d7`; sei `0x13379b...0d75e1`; mantle `0x1f6051...7f52fa`; mantle `0x317d8b...e90f14`; mantle `0x4141eb...183221`; base `0x12dc92...e62cee`; base `0x21e673...d92b9e`; base `0x6b73d3...c4594b`; plasma `0x43f237...36eb08`; arbitrum `0x4e422b...a94038`; arbitrum `0x585138...7e8c81`; arbitrum `0xf1fcb4...bf27e6`; avalanche `0x08bacc...ae75d3`; avalanche `0x08ed1d...44441e`; avalanche `0xa76cd3...cc6184`; linea `0x138eb3...9ebc63`; linea `0x73a755...429ece`; linea `0x794fe5...680c32` | ✅ Audited (bytecode match) |
| FeeLibV1 | unknown | ethereum | 67 deployments: ethereum [`0x0829f3...60970b`](./contracts/ethereum-1/0x0829f361a05d993d5ceb035ca6df3446b060970b/); ethereum `0x0a06ac...6381f4`; ethereum `0x0f3273...b9be39`; ethereum `0x1a6437...c0f246`; ethereum `0x31eef8...5dc477`; ethereum `0x3e368b...658a06`; ethereum `0x4eeba4...375290`; ethereum `0x52b354...f74087`; ethereum `0x564770...815b22`; ethereum `0x6d5521...0f73eb`; ethereum `0x6dd697...68a3e3`; ethereum `0x9fbbaf...2b0fb5`; ethereum `0xb8b1a9...eae455`; ethereum `0xc6a281...86fba1`; ethereum `0xd027af...d7b1d2`; ethereum `0xe171af...3db311`; ethereum `0xf8c61c...1adcc8`; optimism `0x1f6051...7f52fa`; optimism `0x2a6c43...6db219`; optimism `0x3da4f8...be7c4c`; optimism `0x503c5c...7a06ff`; optimism `0x80f755...1b8161`; optimism `0xd240a8...d72a1b`; gnosis `0x6d2053...432c35`; gnosis `0xd94926...620cb4`; unichain `0xe1ad84...93681e`; polygon `0x12dc92...e62cee`; polygon `0x3fc69c...2b14e4`; polygon `0x4e422b...a94038`; polygon `0x5634c4...d86e47`; sonic `0x88853d...908279`; manta `0x43f237...36eb08`; metis `0x13379b...0d75e1`; metis `0x1502fa...275d3d`; metis `0x17d65b...8ee0b2`; metis `0x19cfce...7007dd`; metis `0x24576f...79fb6d`; metis `0x3fc69c...2b14e4`; metis `0x585138...7e8c81`; metis `0x5eb3bb...f874b5`; metis `0x6ce9bf...f50eac`; metis `0xc2b638...840583`; metis `0xce8cca...abb7d0`; metis `0xe8cdf2...e7d0d3`; sei `0x711b5a...830d8e`; sei `0xcd4302...423311`; sei `0xde4860...abaeb2`; mantle `0x288968...3c8df7`; mantle `0x2bc314...85c0c4`; mantle `0x3da4f8...be7c4c`; mantle `0x6ec3ef...5045c9`; mantle `0x957b12...ed99c7`; mantle `0xa81274...0ccebe`; mantle `0xb08326...a9a26e`; mantle `0xfbb5a7...7d6443`; base `0x08ed1d...44441e`; base `0x15efb7...e7b389`; base `0x17e450...ef9a34`; base `0xa76cd3...cc6184`; arbitrum `0x1f6051...7f52fa`; arbitrum `0x2a6c43...6db219`; arbitrum `0x469490...06a90d`; arbitrum `0x503c5c...7a06ff`; arbitrum `0x80f755...1b8161`; arbitrum `0xda82a3...1706f5`; linea `0x1e9999...428da3`; linea `0x6e3d88...bd7e2b` | ✅ Audited (bytecode match) |
| StargateMultiRewarder | unknown | mantle | 35 deployments: ethereum `0x2088d9...486263`; ethereum `0x5871a7...37e881`; ethereum `0xbe2288...92da2b`; optimism `0x146c8e...ffbb3a`; optimism `0x17d65b...8ee0b2`; optimism `0xcbe782...06588a`; optimism `0xd4d039...55ab2e`; polygon `0x22bdf9...8b35b8`; polygon `0x362fae...483120`; polygon `0xcc3633...2fea34`; polygon `0xd240a8...d72a1b`; sonic `0x164a2d...ae557b`; manta `0x5b32c9...a6ddf5`; metis `0x09d428...d0912f`; metis `0x1f6051...7f52fa`; metis `0x362fae...483120`; metis `0x503c5c...7a06ff`; sei `0xd69a3d...20ed67`; mantle [`0x018485...6fc0c8`](./contracts/mantle-5000/0x0184857631ddb3e9e230bca303f0ab1e516fc0c8/); mantle `0x44e255...c544ad`; mantle `0x875bee...59b086`; mantle `0xc8769a...b6962e`; base `0x362fae...483120`; base `0x62207a...d4d247`; base `0x9aa02d...ac7fe4`; base `0xf71352...61bc57`; arbitrum `0x0d0506...fedad7`; arbitrum `0x4dcbfc...ff5125`; arbitrum `0x875bee...59b086`; arbitrum `0x957b12...ed99c7`; avalanche `0x362fae...483120`; linea `0x6013a9...43fd21`; linea `0x873cfb...dced22`; linea `0xe89ca5...a0b3dd`; linea `0xea2910...40ca6d` | ✅ Audited (bytecode match) |
| StargateStaking | unknown | mantle | 38 deployments: ethereum `0xb24fd5...b48ab1`; ethereum `0xcf2eaf...93b398`; ethereum `0xff551f...04a6bd`; optimism `0x09d428...d0912f`; optimism `0x362fae...483120`; optimism `0x36ed19...087d08`; optimism `0xfbb5a7...7d6443`; polygon `0x17e450...ef9a34`; polygon `0x24576f...79fb6d`; polygon `0x469490...06a90d`; polygon `0xde4860...abaeb2`; sonic `0xbba60d...453d10`; manta `0x134399...4ebce0`; metis `0x4e422b...a94038`; metis `0xcc3633...2fea34`; metis `0xde4860...abaeb2`; metis `0xf1fcb4...bf27e6`; sei `0x8c1014...5e03a0`; mantle [`0x02dc10...5d486a`](./contracts/mantle-5000/0x02dc1042e623a8677b002981164ccc05d25d486a/); mantle `0x0eb744...50ad83`; mantle `0x146c8e...ffbb3a`; mantle `0x2737d5...5396b7`; base `0x10e28b...2f1a92`; base `0x19b221...61dcb2`; base `0xde4860...abaeb2`; base `0xdfc47d...ea0b80`; arbitrum `0x0eb744...50ad83`; arbitrum `0x3da4f8...be7c4c`; arbitrum `0x4315ba...6ae863`; arbitrum `0xd240a8...d72a1b`; avalanche `0x579d29...8536d0`; avalanche `0x7eb974...cb3f72`; avalanche `0x8db623...ff8331`; avalanche `0xde4860...abaeb2`; linea `0x1502fa...275d3d`; linea `0x18d1d9...0fca65`; linea `0x25bbf5...a7b9ea`; linea `0xff4a28...db539b` | ✅ Audited (bytecode match) |
| Treasurer | unknown | ethereum | 25 deployments: ethereum [`0x1041d1...606918`](./contracts/ethereum-1/0x1041d127b2d4bc700f0f563883bc689502606918/); ethereum `0xca7867...ef0381`; optimism `0x644abb...a487e9`; optimism `0xa45b51...4a5f7f`; gnosis `0xf1815b...045d14`; unichain `0x6d2053...432c35`; polygon `0x36ed19...087d08`; polygon `0x8db623...ff8331`; sonic `0xa7f3e2...a32455`; manta `0x8a2b28...2bdd0b`; metis `0x3da4f8...be7c4c`; metis `0x749d57...1b95ab`; metis `0xd240a8...d72a1b`; sei `0x873cfb...dced22`; mantle `0x4e8c9b...5b9ce1`; mantle `0x92caa6...e3344e`; base `0xb7a05a...e3ae58`; base `0xd47b03...9fd4d7`; plasma `0xca3676...3f1ef2`; arbitrum `0x146c8e...ffbb3a`; arbitrum `0xcbe782...06588a`; avalanche `0x27a16d...4b5d26`; avalanche `0xc2b638...840583`; linea `0x933c8e...f927e0`; linea `0xf5f74d...b46152` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StargateEthVault | unknown | base | 5 deployments: ethereum `0x72e2f4...72ed9c`; optimism `0xb69c8c...3856a0`; base [`0x224d8f...277f03`](./contracts/base-8453/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/); arbitrum `0x82cbec...db6fc0`; linea [`0x224d8f...277f03`](./contracts/linea-59144/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | ⚠️ Unaudited (bytecode match) |
| BlockNumber | unknown | optimism | 7 deployments: ethereum `0x9d1b16...25b944`; optimism [`0x06d538...c2173e`](./contracts/optimism-10/0x06d538690af257da524f25d0cd52fd85b1c2173e/); optimism `0x45f1a9...4d263b`; polygon `0x45f1a9...4d263b`; arbitrum `0x45f1a9...4d263b`; arbitrum `0xe7ec68...051f25`; avalanche `0x45f1a9...4d263b` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | ethereum | 8 deployments: ethereum [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); optimism `0x701a95...360883`; polygon `0x9d1b16...25b944`; base `0xaf54be...239398`; arbitrum `0x352d82...beb3dd`; arbitrum `0x9d1b16...25b944`; avalanche `0x9d1b16...25b944`; linea `0x45f1a9...4d263b` | ⚠️ Unaudited (bytecode match) |
| OFTWrapper | unknown | ethereum | 14 deployments: ethereum [`0x1bf53b...908db4`](./contracts/ethereum-1/0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4/); optimism `0xd181c2...be6ed8`; gnosis `0x824d8f...4e4cba`; unichain `0xd94926...620cb4`; polygon `0x6ac7c7...11b35d`; sonic `0x2d93fb...6c38b3`; metis `0xfccb35...d90615`; sei `0x77c716...492a0f`; mantle `0x95bba4...573d7f`; base `0xd433ef...86f184`; plasma `0xda6087...dfdcad`; arbitrum `0x389c10...b55b9e`; avalanche `0x411c77...24ab67`; linea `0x4f579e...5246fe` | ⚠️ Unaudited (bytecode match) |
| StargateFeeLibraryV02 | unknown | optimism | 6 deployments: ethereum `0x701a95...360883`; optimism [`0x5c1a97...f30de5`](./contracts/optimism-10/0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5/); polygon `0x693604...562341`; arbitrum `0x693604...562341`; arbitrum `0xc53e6d...2804fb`; avalanche `0x693604...562341` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (242)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x091068...aeb047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ceb23...fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16e28b...1edbcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff4db...2c08e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36d6d2...7240ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d76f0...6319ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5db42c...af14ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60e59b...517082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63c2a9...942892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x667b9c...6f7da8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f0611...555b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x822b6e...488895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x824d8f...4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83c618...baaa6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9001db...d25001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b3093...8fa3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa5b75...6d1815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4292b...425f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb87588...496d2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0441d...def97f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc252b5...f7414f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc946c1...dbeed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf32c2d...145687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0d0506...fedad7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x10b415...392771` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x24576f...79fb6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x317d8b...e90f14` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4315ba...6ae863` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4839ff...76b80d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4dcbfc...ff5125` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x585138...7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x669434...ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6fd8dd...b407cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x749d57...1b95ab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x875bee...59b086` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbbb097...76e800` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc1b804...9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcc3633...2fea34` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd9050e...6331f0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xb1eead...2b86c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0412cd...901787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0535d1...55cd31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x08ed1d...44441e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x10b415...392771` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x585138...7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eb3bb...f874b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8899da...e96e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x941f7a...1b13cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbbb097...76e800` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdfc47d...ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf71352...61bc57` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x4159ed...ad5b68` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x875bee...59b086` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xaca82f...805d2e` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x8e8539...c58746` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9c2dc7...4945bd` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0x0829f3...60970b` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xcc0587...486e74` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x41a5b0...a3420b` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x88124e...341e9b` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xdd69db...3d3de9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x09d428...d0912f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0b38e8...535396` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0d0506...fedad7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x17d65b...8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x362fae...483120` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4315ba...6ae863` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4a23fe...c7adfd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x644abb...a487e9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x650333...14f5de` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x694d8d...ab58dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6eec9e...21ce1f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x749d57...1b95ab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9dda18...ffc5ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbaf882...213276` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc1b804...9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc86ff8...2d4373` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd4d039...55ab2e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xed73cf...56324c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0412cd...901787` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x08bacc...ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5177a8...61a95b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x579d29...8536d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6b25bd...088c41` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x701a95...360883` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7eb974...cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8899da...e96e25` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcdb3ad...3ed570` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd6a291...93e26e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf78ea7...33808c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x0ceb23...fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x102d75...460282` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x134399...4ebce0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x9895d8...7c32cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0535d1...55cd31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09d428...d0912f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x10b415...392771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17d65b...8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24576f...79fb6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3052a0...6dab47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x362fae...483120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x36ed19...087d08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3aa9fd...8303d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c1a97...f30de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5eb3bb...f874b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x749d57...1b95ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ed750...ed92af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8943cb...e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbb097...76e800` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc3633...2fea34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4d039...55ab2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9050e...6331f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf53ca2...cd84aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0412cd...901787` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x10e28b...2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19b221...61dcb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21e673...d92b9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22bdf9...8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3aa9fd...8303d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5177a8...61a95b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62207a...d4d247` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b25bd...088c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b73d3...c4594b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6ce9bf...f50eac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8899da...e96e25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9aa02d...ac7fe4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa73a05...150d28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb7a05a...e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd47b03...9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd6a291...93e26e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdc181b...b6f7c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdfc47d...ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf71352...61bc57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf78ea7...33808c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0cb0b8...900512` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7967d9...d47e5a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9361dd...217c58` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa2f60f...d07965` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc4c85d...31d208` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd00d14...592659` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd91d03...092cb2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe72ee4...27e905` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf6f832...c8ceaa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Stargate V2 - Zellic FINAL Audit Report.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate%20V2%20-%20Zellic%20FINAL%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 269 | high |
| [Stargate_V2_Ottersec_Final.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate_V2_Ottersec_Final.pdf) | Ottersec | Audit | 2024-04 | stale | Direct | contract_name | 117 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x296f55...cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | StargateToken | token | $165,770,511.19 | Verified native implementation with $165,770,511.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0db9af...7ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/) | StargatePoolMigratable | core_logic | $5,144,447.95 | Verified native implementation with $5,144,447.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x224d8f...277f03`](./contracts/base-8453/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | StargateEthVault | unknown | $949,093.41 | Verified native implementation with $949,093.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102d75...460282`](./contracts/ethereum-1/0x102d758f688a4c1c5a80b116bd945d4455460282/) | StargatePoolEURC | core_logic | $12,821.10 | Verified native implementation with $12,821.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45a01e...2033cd`](./contracts/ethereum-1/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x693604...562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | BondingCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc16977...ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ConfluxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d538...c2173e`](./contracts/ethereum-1/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x224d8f...277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/) | LPStakingTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0e8157...900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | MultiCallUtils | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf53b...908db4`](./contracts/ethereum-1/0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4/) | OFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x26727c...2a3098`](./contracts/linea-59144/0x26727c78b0209d9e787b2f9ac8f0238b122a3098/) | RewardRegistryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2f6f07...6e7590`](./contracts/linea-59144/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | RouterETH | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x141381...55d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | SGTERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb82ac3...b7a212`](./contracts/bsc-56/0xb82ac36e9df3c700f12ecf552f240bf4d7b7a212/) | SGTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa2b48a...2877d5`](./contracts/bsc-56/0xa2b48ad28c09cc64cccf9ed73e1efced052877d5/) | SGTTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5c1a97...f30de5`](./contracts/optimism-10/0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5/) | StargateFeeLibraryV02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ef98c...bdee81`](./contracts/polygon-137/0x1ef98c187c3940e96080fa4e8a5b858e62bdee81/) | StargateFeeLibraryV03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x165a45...f45250`](./contracts/arbitrum-42161/0x165a45083f43bf3d0df756bd51e3855bdef45250/) | StargateFeeLibraryV04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6faf1a...34afd0`](./contracts/ethereum-1/0x6faf1ab85ffbe7b3a557f4864046ff861734afd0/) | StargateFeeLibraryV05 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cf316...dd7de4`](./contracts/arbitrum-42161/0x1cf31666c06ac3401ed0c1c6346c4a9425dd7de4/) | StargateFeeLibraryV07 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x108f4c...03f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/) | StargateMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9485db...4a97d9`](./contracts/ethereum-1/0x9485dbda44b279311e3eee374ced60b5364a97d9/) | sVotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02489a...1009df`](./contracts/ethereum-1/0x02489ac60f7f581445b7d2dd59bb0a415a1009df/) | WidgetSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/) | wstETHOFTAdapterUpgradeable | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 225 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=386

Fork inheritance lineage and inherited audits are included when available.
