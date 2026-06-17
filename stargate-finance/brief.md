# Agentic Audit Brief: Stargate Finance

## Project Overview

- Project: Stargate Finance (`stargate-finance`)
- Website: [https://stargate.finance/](https://stargate.finance/)
- Lifecycle: active (Tier 0, 97.8% below peak)
- Generated: 2026-06-17T07:00:40.649Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, aurora, avalanche, base, bsc, ethereum, fantom, gnosis, kava, linea, manta, mantle, metis, optimism, plasma, polygon, scroll, sei, sonic, swellchain, unichain
- Contract surface: 72 unique implementations (254 raw deployments)
- DeFi Llama TVL: $84,168,885.00
- On-chain TVL (included contracts): $203,945,005.15
- TVL by chain: Ethereum $176,572,443.00 | Arbitrum $12,914,153.82 | Base $3,955,212.13 | Optimism $3,288,182.61 | Avalanche $2,062,752.06 | Polygon $1,124,270.04 | Unichain $1,066,633.74 | Mantle $1,028,995.88 | Gnosis $1,015,530.30 | Linea $740,597.67 | Sonic $176,233.90

## Project Description

Stargate Finance is a cross-chain liquidity protocol that enables users to transfer native assets across multiple blockchains in a single transaction. It uses omnichain token pools and a unified liquidity model to provide instant guaranteed finality and deep liquidity for bridging.

### Architecture

Stargate V2 builds upon V1's cross-chain infrastructure, reusing concepts like routers and staking while introducing new pool contracts and messaging layers. Both versions share the STG token for governance and incentives, and V2 pools often interact with V1 components through migratable contracts and shared fee libraries.

## Contract Surface Quality

- Indexed contracts: 741; live-surface contracts included: 254 (180 live, 74 unknown).
- Excluded by liveness: 471 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 30; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 21/35 (60.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 4
- Unverified implementations: 37
- Unique implementations: 72
- Raw deployments: 254
- Audits discovered: 17
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): $5,157,261.09
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 17 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 15 | 42.9% | 2024-05 |
| Quantstamp | Tier 2 | 5 | 14.3% | 2022-03 |
| unknown | Tier 2 | 5 | 14.3% | 2022-03 |
| Ackee Blockchain | Tier 2 | 4 | 11.4% | 2022-07 |
| Ottersec | Tier 2 | 4 | 11.4% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StargateToken | token | optimism | n/a | 9 deployments: ethereum `0xaf5191...ba2cd6`; optimism [`0x296f55...cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); optimism `0x2f6f07...6e7590`; polygon `0x2f6f07...6e7590`; base `0xe3b53a...f764df`; arbitrum `0x2f6f07...6e7590`; arbitrum `0x669434...ce1eb6`; avalanche `0x2f6f07...6e7590`; linea `0x808d7c...bc0949` | ✅ Audited |
| StargatePoolUSDC | core_logic | base | n/a | 12 deployments: ethereum `0xc02639...3189c7`; optimism `0xce8cca...abb7d0`; gnosis `0xb1eead...2b86c3`; polygon `0x9aa02d...ac7fe4`; sonic `0xa272ff...a2d8f9`; sei `0x45d417...54ac2e`; mantle `0xac290a...c6acdc`; base [`0x27a16d...4b5d26`](./contracts/base-8453/0x27a16dc786820b16e5c9028b75b99f6f604b5d26/); arbitrum `0xe8cdf2...e7d0d3`; avalanche `0x5634c4...d86e47`; scroll `0x3fc69c...2b14e4`; aurora `0x81f613...06b075` | ✅ Audited |
| StargatePoolNative | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x77b204...e57931`](./contracts/ethereum-1/0x77b2043768d28e9c9ab44e1abfc95944bce57931/); optimism `0xe8cdf2...e7d0d3`; unichain `0xe9aba8...0f7de7`; manta `0x9895d8...7c32cb`; base `0xdc181b...b6f7c7`; arbitrum `0xa45b51...4a5f7f`; linea `0x81f613...06b075`; scroll `0xc2b638...840583` | ✅ Audited |
| StargatePool | core_logic | metis | n/a | 11 deployments: ethereum `0x268ca2...9e931d`; ethereum `0xcdafb1...feecd3`; gnosis `0xe9aba8...0f7de7`; metis [`0x22bdf9...8b35b8`](./contracts/metis-1088/0x22bdf9633f3e679785638db690b85dc0dc8b35b8/); metis `0x36ed19...087d08`; metis `0x8899da...e96e25`; metis `0xd9050e...6331f0`; metis `0xdfc47d...ea0b80`; metis `0xf71352...61bc57`; mantle `0x4c1d3f...547463`; mantle `0xf7628d...69f3f1` | ✅ Audited |
| TokenMessaging | token | manta | n/a | 16 deployments: ethereum `0x6d6620...f4a980`; optimism `0xf1fcb4...bf27e6`; gnosis `0xaf368c...bcbebf`; polygon `0x6ce9bf...f50eac`; sonic `0x2086f7...849b0f`; manta [`0x0ceb23...fa4cbb`](./contracts/manta-169/0x0ceb237e109ee22374a567c6b09f373c73fa4cbb/); metis `0x10b415...392771`; metis `0x9aa02d...ac7fe4`; metis `0xcbe782...06588a`; sei `0x1502fa...275d3d`; mantle `0x41b491...0a0aef`; base `0x5634c4...d86e47`; arbitrum `0x19cfce...7007dd`; arbitrum `0x3fc69c...2b14e4`; avalanche `0x17e450...ef9a34`; linea `0x5f688f...af2fed` | ✅ Audited |
| Bridge | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); polygon `0x9d1b16...25b944`; arbitrum `0x352d82...beb3dd` | ✅ Audited |
| Factory | registry | base | n/a | [`0xaf5191...ba2cd6`](./contracts/base-8453/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ✅ Audited |
| LPStaking | unknown | optimism | n/a | 6 deployments: ethereum `0xb0d502...31d62b`; optimism [`0x4a364f...cf18d8`](./contracts/optimism-10/0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8/); polygon `0x8731d5...e01e98`; arbitrum `0x8731d5...e01e98`; arbitrum `0xea8dfe...4c2176`; avalanche `0x8731d5...e01e98` | ✅ Audited |
| LPStakingTime | unknown | base | n/a | 5 deployments: ethereum `0x1c3000...3122fc`; optimism `0x4dea9e...412cd2`; base [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/); arbitrum `0x977455...0594b1`; linea `0x4a364f...cf18d8` | ✅ Audited |
| OFTTokenERC20 | token | sei | n/a | [`0x160345...9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | ✅ Audited |
| RewardLib | unknown | manta | n/a | 2 deployments: manta [`0xca3676...3f1ef2`](./contracts/manta-169/0xca367694cdac8f152e33683bb36cc9d6a73f1ef2/); metis `0xda82a3...1706f5` | ✅ Audited |
| Router | adapter | linea | n/a | 7 deployments: ethereum `0x8731d5...e01e98`; optimism `0xb0d502...31d62b`; polygon `0x45a01e...2033cd`; base `0x45f1a9...4d263b`; arbitrum `0x53bf83...a41614`; avalanche `0x45a01e...2033cd`; linea [`0x2f6f07...6e7590`](./contracts/linea-59144/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | ✅ Audited |
| RouterETH | adapter | ethereum | n/a | 5 deployments: ethereum [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/); optimism `0xb49c4e...8d5f8b`; base `0x50b6eb...0d7ae4`; arbitrum `0xbf22f0...d23e40`; linea `0x8731d5...e01e98` | ✅ Audited |
| StargateMultiRewarder | unknown | metis | n/a | 5 deployments: manta `0x5b32c9...a6ddf5`; metis [`0x09d428...d0912f`](./contracts/metis-1088/0x09d428a066e77806f9de48fe3a57e837ccd0912f/); metis `0x1f6051...7f52fa`; metis `0x362fae...483120`; metis `0x503c5c...7a06ff` | ✅ Audited |
| StargateOFT | unknown | sei | n/a | [`0x5c386d...b6345b`](./contracts/sei-1329/0x5c386d85b1b82fd9db681b9176c8a4248bb6345b/) | ✅ Audited |
| Treasurer | unknown | metis | n/a | 4 deployments: manta `0x8a2b28...2bdd0b`; metis [`0x3da4f8...be7c4c`](./contracts/metis-1088/0x3da4f8e456ac648c489c286b99ca37b666be7c4c/); metis `0x749d57...1b95ab`; metis `0xd240a8...d72a1b` | ✅ Audited |
| VotingEscrow | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/); optimism `0x43d276...88f05b`; polygon `0x3ab2da...d3a15d`; arbitrum `0xfbd849...660268`; avalanche `0xca0f57...a58fce` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StargatePoolMigratable | core_logic | sei | n/a | 10 deployments: ethereum `0x933597...5a3973`; optimism `0x19cfce...7007dd`; polygon `0xd47b03...9fd4d7`; metis `0x3aa9fd...8303d3`; metis `0x4dcbfc...ff5125`; metis `0x8db623...ff8331`; sei [`0x0db9af...7ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/); mantle `0xb715b8...1c57fc`; arbitrum `0xce8cca...abb7d0`; avalanche `0x12dc92...e62cee` | ⚠️ Unaudited |
| StargatePoolEURC | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x783129...9aae8c`](./contracts/ethereum-1/0x783129e4d7ba0af0c896c239e57c06df379aae8c/); ethereum `0x8a2b28...2bdd0b` | ⚠️ Unaudited |
| BabyPair | unknown | bsc | n/a | [`0xd397a4...28877f`](./contracts/bsc-56/0xd397a40884ce00e662b419673e0b15cae628877f/) | ⚠️ Unaudited |
| ConfluxOFT | unknown | ethereum | n/a | [`0xc16977...ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ⚠️ Unaudited |
| EnumerableSet | unknown | metis | n/a | 8 deployments: manta `0xda6087...dfdcad`; metis [`0x0eb744...50ad83`](./contracts/metis-1088/0x0eb74491493e9722cd876ada671ff8a62650ad83/); metis `0x2a6c43...6db219`; metis `0x4315ba...6ae863`; metis `0x469490...06a90d`; metis `0x80f755...1b8161`; metis `0x873cfb...dced22`; metis `0xbbb097...76e800` | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ⚠️ Unaudited |
| MultiCallUtils | periphery | manta | n/a | [`0x0e8157...900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | ⚠️ Unaudited |
| OFTWrapper | unknown | metis | n/a | [`0xfccb35...d90615`](./contracts/metis-1088/0xfccb355647cd13051eda808da7e524d5bad90615/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ad82b...0778d4`](./contracts/ethereum-1/0x8ad82b29261a9657a89a299dac3bfe01880778d4/); ethereum `0x943ed4...1ca66e` | ⚠️ Unaudited |
| SGTERC20Token | token | bsc | n/a | [`0x141381...55d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | ⚠️ Unaudited |
| StargateMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x108f4c...03f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/); ethereum `0x12a272...a8c2f8` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StargateEthVault | unknown | base | n/a | 5 deployments: ethereum `0x72e2f4...72ed9c`; optimism `0xb69c8c...3856a0`; base [`0x224d8f...277f03`](./contracts/base-8453/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/); arbitrum `0x82cbec...db6fc0`; linea [`0x224d8f...277f03`](./contracts/linea-59144/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | ✅ Audited (bytecode match) |
| CreditMessaging | unknown | metis | n/a | 17 deployments: ethereum `0x6b8ad1...44bb9d`; optimism `0xda82a3...1706f5`; gnosis `0xe1ad84...93681e`; unichain `0xaf368c...bcbebf`; polygon `0xc2b638...840583`; sonic `0x3a1293...1bbc0f`; manta `0x102d75...460282`; metis [`0x0535d1...55cd31`](./contracts/metis-1088/0x0535d19ca4ef74119c31e1347d5f85232955cd31/); metis `0xa45b51...4a5f7f`; metis `0xd47b03...9fd4d7`; sei `0x13379b...0d75e1`; mantle `0x4141eb...183221`; base `0x12dc92...e62cee`; plasma `0x43f237...36eb08`; arbitrum `0xf1fcb4...bf27e6`; avalanche `0x08ed1d...44441e`; linea `0x138eb3...9ebc63` | ✅ Audited (bytecode match) |
| FeeLibV1 | unknown | ethereum | n/a | 47 deployments: ethereum [`0x0829f3...60970b`](./contracts/ethereum-1/0x0829f361a05d993d5ceb035ca6df3446b060970b/); ethereum `0x0a06ac...6381f4`; ethereum `0x0f3273...b9be39`; ethereum `0x31eef8...5dc477`; ethereum `0x3e368b...658a06`; ethereum `0x52b354...f74087`; ethereum `0x564770...815b22`; ethereum `0x6d5521...0f73eb`; ethereum `0x6dd697...68a3e3`; ethereum `0x9fbbaf...2b0fb5`; ethereum `0xd027af...d7b1d2`; ethereum `0xe171af...3db311`; optimism `0x1f6051...7f52fa`; optimism `0x3da4f8...be7c4c`; optimism `0x80f755...1b8161`; gnosis `0x6d2053...432c35`; gnosis `0xd94926...620cb4`; unichain `0xe1ad84...93681e`; polygon `0x3fc69c...2b14e4`; polygon `0x4e422b...a94038`; sonic `0x88853d...908279`; manta `0x43f237...36eb08`; metis `0x13379b...0d75e1`; metis `0x1502fa...275d3d`; metis `0x17d65b...8ee0b2`; metis `0x19cfce...7007dd`; metis `0x24576f...79fb6d`; metis `0x3fc69c...2b14e4`; metis `0x585138...7e8c81`; metis `0x5eb3bb...f874b5`; metis `0x6ce9bf...f50eac`; metis `0xc2b638...840583`; metis `0xce8cca...abb7d0`; metis `0xe8cdf2...e7d0d3`; sei `0x711b5a...830d8e`; sei `0xcd4302...423311`; sei `0xde4860...abaeb2`; mantle `0x288968...3c8df7`; mantle `0x2bc314...85c0c4`; mantle `0x6ec3ef...5045c9`; mantle `0xa81274...0ccebe`; base `0x08ed1d...44441e`; base `0x17e450...ef9a34`; arbitrum `0x1f6051...7f52fa`; arbitrum `0x80f755...1b8161`; arbitrum `0xda82a3...1706f5`; linea `0x6e3d88...bd7e2b` | ✅ Audited (bytecode match) |
| StargateStaking | unknown | mantle | n/a | 14 deployments: ethereum `0xff551f...04a6bd`; optimism `0xfbb5a7...7d6443`; polygon `0x469490...06a90d`; manta `0x134399...4ebce0`; metis `0x4e422b...a94038`; metis `0xcc3633...2fea34`; metis `0xde4860...abaeb2`; metis `0xf1fcb4...bf27e6`; sei `0x8c1014...5e03a0`; mantle [`0x02dc10...5d486a`](./contracts/mantle-5000/0x02dc1042e623a8677b002981164ccc05d25d486a/); base `0xdfc47d...ea0b80`; arbitrum `0x3da4f8...be7c4c`; avalanche `0x8db623...ff8331`; linea `0x25bbf5...a7b9ea` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0ceb23...fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb1eead...2b86c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4159ed...ad5b68` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x875bee...59b086` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaca82f...805d2e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0x0829f3...60970b` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0xcc0587...486e74` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x41a5b0...a3420b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x88124e...341e9b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xdd69db...3d3de9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0ceb23...fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x102d75...460282` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x134399...4ebce0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9895d8...7c32cb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xca3676...3f1ef2` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xda6087...dfdcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22bdf9...8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc47d...ea0b80` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Stargate V2 - Zellic FINAL Audit Report.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate%20V2%20-%20Zellic%20FINAL%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 134 | high |
| [Stargate_V2_Ottersec_Final.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate_V2_Ottersec_Final.pdf) | Ottersec | Audit | 2024-04 | stale | Direct | contract_name | 81 | high |
| [Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.0%20(December%2022nd%202021)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2021-12 | stale | Direct | contract_name | 26 | high |
| [Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.1%20(March%2021st%202022)%20-%20Zokyo.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 26 | high |
| [Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%202.0%20(February%2024th%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-02 | stale | Direct | contract_name | 26 | high |
| [Stargate Audit Report (16th March 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(16th%20March%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-03 | stale | Direct | contract_name | 26 | high |
| [Stargate Audit Report (March 6th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(March%206th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-03 | stale | Direct | contract_name | 16 | high |
| [Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26%20RouterETH%20Audit%201.1%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 9 | high |
| [Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26RouterETH%20Audit%201.0%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 9 | high |
| [Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.0%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 0 | n/a |
| [Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.1%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 0 | n/a |
| [Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.0%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.1%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Router%20%26%20FeeLibraryV5.1%20Audit%20(December%2014th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-12 | stale | Direct | contract_name | 7 | high |
| [Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.0%20(March%2029th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-03 | stale | Direct | contract_name | 5 | high |
| [Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.1%20(April%2013th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | contract_name | 5 | high |
| [Paladin_StargateFeeDistributor_Final_Report.pdf](https://github.com/stargate-protocol/stargate-dao/blob/main/audit/Paladin_StargateFeeDistributor_Final_Report.pdf) | Paladin | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x0db9af...7ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/) | StargatePoolMigratable | core_logic | $5,144,447.95 | Verified native implementation with $5,144,447.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x783129...9aae8c`](./contracts/ethereum-1/0x783129e4d7ba0af0c896c239e57c06df379aae8c/) | StargatePoolEURC | core_logic | $12,813.14 | Verified native implementation with $12,813.14 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc16977...ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ConfluxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0e8157...900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | MultiCallUtils | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x141381...55d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | SGTERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x108f4c...03f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/) | StargateMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14
- Match method counts: extraction_exact=683

Zero-match audit list:

- [10489] Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf
- [10490] Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf
- [10498] Paladin_StargateFeeDistributor_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
