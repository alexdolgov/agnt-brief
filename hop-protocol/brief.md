# Agentic Audit Brief: Hop Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 0.7% over 90 days

## Project Overview

- Project: Hop Protocol (`hop-protocol`)
- Website: [https://hop.exchange](https://hop.exchange)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T07:52:36.547Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, ethereum, gnosis, linea, optimism, polygon
- Contract surface: 64 unique implementations (147 raw deployments)
- DeFi Llama TVL: $3,116,830.02
- On-chain TVL (included contracts): $54,778,076.49
- TVL by chain: Optimism $25,808,957.73 | Gnosis $16,786,608.43 | Polygon $11,970,144.20 | Arbitrum $212,366.13

## Project Description

Hop Protocol is a cross-chain bridge that enables fast transfers of tokens between Ethereum and supported Layer 2 networks using bonders/liquidity providers and AMM pools to provide liquidity and swap assets across chains.

### Architecture

The Cross-Chain Bridge family relies on the Liquidity Pools family to facilitate swaps between canonical tokens and Hop Bridge Tokens during transfers. Both families share the HopBridgeToken contract, which is minted and burned by the bridge contracts and traded in the AMM pools.

## Contract Surface Quality

- Indexed contracts: 878; live-surface contracts included: 147 (146 live, 1 unknown).
- Excluded by liveness: 699 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 9/20 live.
- Detected codebases: none
- Unverified dependencies: 6/65.

## Audit Coverage Summary

- Verified implementations audited: 9/45 (20.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 64
- Raw deployments: 147
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $54,778,076.49
- Latest audit: 2021-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 20.0% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $54,778,076.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MonocerosAlpha | Tier 2 | 9 | 20.0% | 2021-04 |
| Trail of Bits | Tier 1 | 9 | 20.0% | 2021-05 |
| Solidified | Tier 2 | 7 | 15.6% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumMessengerWrapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x41bf5f...a6a35c`](./contracts/ethereum-1/0x41bf5fd5d1c85f00fd1f23c77740f1a7eba6a35c/); ethereum `0x967f8e...dc60dc`; ethereum `0xdd378a...da5434` | ✅ Audited |
| HopBridgeToken | operational_periphery | arbitrum | n/a | 13 deployments: optimism `0x25d803...2e6ae8`; optimism `0x3666f6...c5f18a`; gnosis `0x91f849...7355fb`; gnosis `0x9ec955...b3b09d`; gnosis `0xb1ea9f...ef45c4`; gnosis `0xc46f20...7dfd1c`; gnosis `0xe38faf...2c5156`; arbitrum [`0x0ce6c8...dd444d`](./contracts/arbitrum-42161/0x0ce6c85cf43553de10fc56ceca0aef6ff0dd444d/); arbitrum `0x12e59c...e2b5c7`; arbitrum `0x46ae9b...6b5c61`; arbitrum `0x588bae...69423b`; arbitrum `0xb76e67...0f5c4c`; arbitrum `0xda7c0d...8a77eb` | ✅ Audited |
| L1_ERC20_Bridge | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x22b1cb...eb1cc2`](./contracts/ethereum-1/0x22b1cbb8d98a01a3b71d034bb899775a76eb1cc2/); ethereum `0x36443f...697d62`; ethereum `0x3666f6...c5f18a`; ethereum `0x3d4cc8...48edd1`; ethereum `0x3e4a3a...6420b6`; ethereum `0x87269b...d0dbec`; ethereum `0x893246...988b96`; ethereum `0xf07454...28e57d` | ✅ Audited |
| L1_ETH_Bridge | operational_periphery | ethereum | n/a | [`0xb8901a...19727f`](./contracts/ethereum-1/0xb8901acb165ed027e32754e0ffe830802919727f/) | ✅ Audited |
| L2_AmmWrapper | unknown | arbitrum | n/a | 5 deployments: gnosis `0x76b22b...a635a7`; arbitrum [`0x33ceb2...020417`](./contracts/arbitrum-42161/0x33ceb27b39d2bb7d2e61f7564d3df29344020417/); arbitrum `0x50a3a6...a912dd`; arbitrum `0xcb0a41...d30283`; arbitrum `0xe22d2b...a26f52` | ✅ Audited |
| L2_ArbitrumBridge | operational_periphery | arbitrum | n/a | 7 deployments: arbitrum [`0x0e0e3d...abf8dd`](./contracts/arbitrum-42161/0x0e0e3d2c5c292161999474247956ef542cabf8dd/); arbitrum `0x25fb92...384266`; arbitrum `0x3749c4...8caccc`; arbitrum `0x72209f...42491f`; arbitrum `0x7ac115...a58ba6`; arbitrum `0xc31523...4c57f0`; arbitrum `0xea5abf...a6ce98` | ✅ Audited |
| L2_OptimismBridge | unknown | optimism | n/a | 2 deployments: optimism [`0x83f624...14b30e`](./contracts/optimism-10/0x83f6244bd87662118d96d9a6d44f09dfff14b30e/); optimism `0xa81d24...77a8fc` | ✅ Audited |
| L2_XDaiBridge | operational_periphery | gnosis | n/a | 5 deployments: gnosis [`0x046035...ef2238`](./contracts/gnosis-100/0x0460352b91d7cf42b0e1c1c30f06b602d9ef2238/); gnosis `0x6f0305...4eb632`; gnosis `0x7ac71c...885ccc`; gnosis `0xd8926c...af491b`; gnosis `0xfd5a18...0acac2` | ✅ Audited |
| OptimismMessengerWrapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9d3a7f...4f5638`](./contracts/ethereum-1/0x9d3a7fb18ca7f1237f977dc5572883f8b24f5638/); ethereum `0x9fc22e...982501`; ethereum `0xa45df1...7aebd1` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-35972 | [`0xddafbb...fb7a83`](./contracts/gnosis-100/0xddafbb505ad214d7b80b1f830fccc89b60fb7a83/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| LPToken | token | optimism | n/a | 3 deployments: optimism [`0x2e17b8...d2d5a8`](./contracts/optimism-10/0x2e17b8193566345a2dd467183526dedc42d2d5a8/); gnosis `0x9d373d...fb1a0a`; arbitrum `0xb67c01...6bff71` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-35989 (2 proxies) | 2 deployments: arbitrum [`0xae6aab...aba689`](./contracts/arbitrum-42161/0xae6aab43c4f3e0cea4ab83752c278f8debaba689/); arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| Vault | core_logic | polygon | n/a | 2 deployments: polygon [`0xbc31ec...153a25`](./contracts/polygon-137/0xbc31ec84bd7bc2c97b9413f6e473ce96be153a25/); polygon `0xc0acbb...91546c` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | unit-35988 | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| BaseMessengerWrapper | unknown | ethereum | n/a | [`0x86ed3b...d3d1ae`](./contracts/ethereum-1/0x86ed3b8ad6b721fd3a2fa73c227987fb9ad3d1ae/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-35979 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | polygon | n/a | [`0xc46304...10d617`](./contracts/polygon-137/0xc46304a0b2accc4462d9bdcaa0f6bf632510d617/) | ⚠️ Unaudited |
| Dispatcher | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2ede3d...f6a1f6`](./contracts/ethereum-1/0x2ede3d89877d0015a44f5c927890c95f2ef6a1f6/); ethereum `0x87b850...c4405a`; ethereum `0xa91405...e8728d`; ethereum `0xe2b303...a31fd3` | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | 3 deployments: ethereum [`0xcbd8c3...0ef3c3`](./contracts/ethereum-1/0xcbd8c34759706545b0f3092ee4399831080ef3c3/); ethereum `0xd17b1d...34baf2`; ethereum `0xeb5306...cf8079` | ⚠️ Unaudited |
| FeeManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x430738...ef9fff`](./contracts/ethereum-1/0x430738595230271764a21c5336ef975deeef9fff/); ethereum `0xb3d14d...b84c31`; ethereum `0xb640c9...a15c76`; ethereum `0xb927ad...0b4cc6` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GasMovr | unknown | polygon | n/a | [`0xac313d...072d91`](./contracts/polygon-137/0xac313d7491910516e06fbfc2a0b5bb49bb072d91/) | ⚠️ Unaudited |
| HubTransporter | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1e31fe...83396d`](./contracts/ethereum-1/0x1e31feaa55d9777aa26554c0702e312c8783396d/); ethereum `0x3e3203...0b7d22`; ethereum `0x85ccf5...069bcd`; ethereum `0xba6cf2...9c1c18` | ⚠️ Unaudited |
| L1_HOP_Bridge | operational_periphery | ethereum | n/a | [`0x914f98...be4273`](./contracts/ethereum-1/0x914f986a44acb623a277d6bd17368171fcbe4273/) | ⚠️ Unaudited |
| L1_HopCCTPImplementation | unknown | ethereum | n/a | [`0x7e7746...a45747`](./contracts/ethereum-1/0x7e77461ca2a9d82d26fd5e0da2243bf72ea45747/) | ⚠️ Unaudited |
| L2_HopCCTPImplementation | unknown | arbitrum | n/a | [`0x6504bf...0bf982`](./contracts/arbitrum-42161/0x6504bfcab789c35325ca4329f1f41fac340bf982/) | ⚠️ Unaudited |
| L2_LineaBridge | unknown | linea | n/a | [`0xcbb852...f27a11`](./contracts/linea-59144/0xcbb852a6274e03fa00fb4895de0463f66df27a11/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | unit-35984 | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | unit-35985 | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | unit-35987 | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| LineaMessengerWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29cfb5...465850`](./contracts/ethereum-1/0x29cfb537c004f5852f5a7ded08be1fc3ba465850/); ethereum `0x789ac9...f26d23` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| PolygonMessengerWrapper | unknown | ethereum | n/a | 4 deployments: ethereum [`0x172cab...bf0da3`](./contracts/ethereum-1/0x172cabe34c757472249ad4bd97560373fbbf0da3/); ethereum `0x1cd391...0e4cd6`; ethereum `0x26a1fd...e6c069`; ethereum `0xaa1603...d8b4dc` | ⚠️ Unaudited |
| StakingRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x1dd61d...8cd61e`](./contracts/ethereum-1/0x1dd61d4c51cc0af8aca9a25201e1b4b8fe8cd61e/); ethereum `0xe5cdea...1889cf`; ethereum `0xeb0a86...fc3356` | ⚠️ Unaudited |
| StakingRewards | unknown | arbitrum | n/a | 12 deployments: gnosis `0x3d4cc8...48edd1`; gnosis `0x636a7e...d440a7`; gnosis `0x712f0c...c1c24c`; gnosis `0xbf7a02...ee5a92`; arbitrum [`0x00001f...d727f5`](./contracts/arbitrum-42161/0x00001fcf29c5fd7846e4332afbfaa48701d727f5/); arbitrum `0x3d4cad...449b32`; arbitrum `0x4e9840...7e1898`; arbitrum `0x755569...56d3dd`; arbitrum `0x9dd868...6173c8`; arbitrum `0xb0cabf...7ebc70`; arbitrum `0xbb9d66...015364`; arbitrum `0xd4d285...789d1e` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | 10 deployments: gnosis `0x24afdc...f6eb24`; gnosis `0x3aa637...b237e7`; gnosis `0x4014dc...d936d8`; gnosis `0x5c3214...24ac26`; gnosis `0xaa30d6...f68864`; arbitrum [`0x0ded0d...3ee7ca`](./contracts/arbitrum-42161/0x0ded0d521ac7b0d312871d18ea4fde79f03ee7ca/); arbitrum `0x10541b...ade261`; arbitrum `0x652d27...ac6d97`; arbitrum `0xa5a33a...7b5742`; arbitrum `0xffe42d...3f0b82` | ⚠️ Unaudited |
| SwapUtils | unknown | optimism | unit-35971 | [`0x3c0ffa...795963`](./contracts/optimism-10/0x3c0ffaca566fccfd9cc95139fef6cba143795963/) | ⚠️ Unaudited |
| SwapUtils | unknown | arbitrum | n/a | [`0x3666f6...c5f18a`](./contracts/arbitrum-42161/0x3666f603cc164936c1b87e207f36beba4ac5f18a/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-35982 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x149d25...bfe5e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17cacf...03fbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22aabb...688432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2649c0...6230cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52f454...b9c1ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536384...9f8e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57fc14...e78a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x590075...df5713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a6587...f096a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98b9bc...6eab8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabdb14...e79d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0bda0...addfa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3a6e3...3cb3d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb52299...a07cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb88f86...fd9809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3d6ea...b0a52d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcdd23...3e3a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8dfb8...9d8d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8901a...19727f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [Solidified Report (PDF)]()](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/Audit_Report_-_Hop_05.05.2021.pdf) | Solidified | Audit | 2021-05 | stale | Direct | contract_name | 36 | high |
| [* [MonocerosAlpha (PDF)]()](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/MonocerosAlpha_-_Hop_Audit.pdf) | MonocerosAlpha | Audit | 2021-04 | stale | Direct | contract_name | 46 | high |
| [Moreover, Hop has undergone audits by [Solidified]() and [Monoceros Alpha](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf). A third audit by Trail of Bits is planned for September.\](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | contract_name | 37 | high |
| [Moreover, Hop has undergone audits by [Solidified](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) and [Monoceros Alpha](). A third audit by Trail of Bits is planned for September.\](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | 47 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xddafbb...fb7a83`](./contracts/gnosis-100/0xddafbb505ad214d7b80b1f830fccc89b60fb7a83/) | PermittableToken | token | $16,769,318.63 | Verified native implementation with $16,769,318.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2e17b8...d2d5a8`](./contracts/optimism-10/0x2e17b8193566345a2dd467183526dedc42d2d5a8/) | LPToken | token | $487,469.01 | Verified native implementation with $487,469.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbc31ec...153a25`](./contracts/polygon-137/0xbc31ec84bd7bc2c97b9413f6e473ce96be153a25/) | Vault | core_logic | $5.53 | Verified native implementation with $5.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86ed3b...d3d1ae`](./contracts/ethereum-1/0x86ed3b8ad6b721fd3a2fa73c227987fb9ad3d1ae/) | BaseMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ede3d...f6a1f6`](./contracts/ethereum-1/0x2ede3d89877d0015a44f5c927890c95f2ef6a1f6/) | Dispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbd8c3...0ef3c3`](./contracts/ethereum-1/0xcbd8c34759706545b0f3092ee4399831080ef3c3/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430738...ef9fff`](./contracts/ethereum-1/0x430738595230271764a21c5336ef975deeef9fff/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e31fe...83396d`](./contracts/ethereum-1/0x1e31feaa55d9777aa26554c0702e312c8783396d/) | HubTransporter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x914f98...be4273`](./contracts/ethereum-1/0x914f986a44acb623a277d6bd17368171fcbe4273/) | L1_HOP_Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7746...a45747`](./contracts/ethereum-1/0x7e77461ca2a9d82d26fd5e0da2243bf72ea45747/) | L1_HopCCTPImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6504bf...0bf982`](./contracts/arbitrum-42161/0x6504bfcab789c35325ca4329f1f41fac340bf982/) | L2_HopCCTPImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xcbb852...f27a11`](./contracts/linea-59144/0xcbb852a6274e03fa00fb4895de0463f66df27a11/) | L2_LineaBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29cfb5...465850`](./contracts/ethereum-1/0x29cfb537c004f5852f5a7ded08be1fc3ba465850/) | LineaMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x172cab...bf0da3`](./contracts/ethereum-1/0x172cabe34c757472249ad4bd97560373fbbf0da3/) | PolygonMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dd61d...8cd61e`](./contracts/ethereum-1/0x1dd61d4c51cc0af8aca9a25201e1b4b8fe8cd61e/) | StakingRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00001f...d727f5`](./contracts/arbitrum-42161/0x00001fcf29c5fd7846e4332afbfaa48701d727f5/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ded0d...3ee7ca`](./contracts/arbitrum-42161/0x0ded0d521ac7b0d312871d18ea4fde79f03ee7ca/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c0ffa...795963`](./contracts/optimism-10/0x3c0ffaca566fccfd9cc95139fef6cba143795963/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3666f6...c5f18a`](./contracts/arbitrum-42161/0x3666f603cc164936c1b87e207f36beba4ac5f18a/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 5 |
| standard_library | 7 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=608

Fork inheritance lineage and inherited audits are included when available.
