# Agentic Audit Brief: Deri

## Project Overview

- Project: Deri (`deri`)
- Website: [https://deri.io/#/index](https://deri.io/#/index)
- Lifecycle: active (Tier 0, 90.3% below peak)
- Generated: 2026-06-18T03:51:05.660Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, polygon-zkevm, scroll, sonic, zksync-era
- Contract surface: 197 unique implementations (268 raw deployments)
- DeFi Llama TVL: $6,074,241.00
- On-chain TVL (included contracts): $0.12
- TVL by chain: Base $0.12

## Project Description

Deri is a multi-chain decentralized derivatives protocol for trading futures, options, powers, and other on-chain risk exposures; it uses protocol liquidity, gateways, oracles, and related execution infrastructure.

### Architecture

The Deri families share a common architecture of pools and gateways, with later versions introducing modular gateways for cross-chain access. Supporting infrastructure like oracles, routers, and brokers is reused across families to manage trading, pricing, and fee collection.

## Contract Surface Quality

- Indexed contracts: 1912; live-surface contracts included: 268 (178 live, 90 unknown).
- Excluded by liveness: 1462 inactive, 182 singleton, 0 uninitialized.
- Deployment units: 4/98 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/28 (14.3%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 1
- Unverified implementations: 169
- Unique implementations: 197
- Raw deployments: 268
- Audits discovered: 8
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/deriprotocol/information))
- ASD (verified + unaudited TVL): $0.12
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 14.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Gateway | unknown | blast | n/a | 6 deployments: manta `0x28a41c...c8550f`; manta `0x3eb231...3fb4e8`; manta `0x48e33d...ce9fa6`; manta `0xa10d5e...04f39e`; manta `0xc8fa78...154ae9`; blast [`0x050542...db1055`](./contracts/blast-81457/0x050542be6b6312b6252ab40a78984c058bdb1055/) | ✅ Audited |
| GatewayImplementation | unknown | arbitrum | unit-34557 | [`0x7c4a64...a7ef81`](./contracts/arbitrum-42161/0x7c4a640461427c310a710d367c2ba8c535a7ef81/) | ✅ Audited |
| GatewayImplementation | unknown | linea | unit-34576 | [`0xe840bb...b88866`](./contracts/linea-59144/0xe840bb03fe58540841e6ebee94264d5317b88866/) | ✅ Audited |
| Swapper | adapter | manta | n/a | [`0xbca443...7664f2`](./contracts/manta-169/0xbca4439e99091afb297ecb4c5672357e467664f2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Deri | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa487bf...65d3b9`](./contracts/ethereum-1/0xa487bf43cf3b10dffc97a9a744cbb7036965d3b9/); bsc `0xe60eaf...cc6df5` | ⚠️ Unaudited |
| DToken | token | arbitrum | n/a | 11 deployments: bsc `0x28a41c...c8550f`; bsc `0x4cb0df...869170`; sonic `0x67bdd6...a2f828`; manta `0x35ee16...9940d1`; manta `0x601380...5d4605`; manta `0xc710f0...6d867f`; manta `0xc98cab...d77dc2`; base `0x55746a...573a66`; base `0xf7b181...3ffb38`; arbitrum [`0x109f2f...ed3b63`](./contracts/arbitrum-42161/0x109f2f2b8e2490ba9cd8b5ab1d1dc7fb4aed3b63/); arbitrum `0x548758...ca2a82` | ⚠️ Unaudited |
| GatewayHelper | periphery | manta | n/a | 3 deployments: manta [`0x99ba8c...e327fe`](./contracts/manta-169/0x99ba8cf147c511b20449cfd2c8152a58c8e327fe/); manta `0xf2d9db...c7d2bb`; manta `0xfabcde...2861ea` | ⚠️ Unaudited |
| GatewayImplementation | unknown | manta | n/a | 10 deployments: manta [`0x55ba66...69523d`](./contracts/manta-169/0x55ba66ff82751c7979386e23074704b92469523d/); manta `0x6395e2...9f1953`; manta `0x66f5ff...c1e0e5`; manta `0x67fe5f...b92f6b`; manta `0x6f4ad3...4d693b`; manta `0x767019...822029`; manta `0x78592e...34b9a1`; manta `0xb7f664...a569a3`; manta `0xfa6b58...74f172`; blast `0x661945...eb3abf` | ⚠️ Unaudited |
| LiqClaim | unknown | base | n/a | [`0xcba16d...1d59e3`](./contracts/base-8453/0xcba16db40aa648ddc594362b13d93bfcb71d59e3/) | ⚠️ Unaudited |
| LiqClaimImplementation | unknown | manta | n/a | [`0x76e18d...93a31f`](./contracts/manta-169/0x76e18dc70559cfc5857b7cd8c985e341e093a31f/) | ⚠️ Unaudited |
| LTokenLite | token | bsc | n/a | [`0xc246d0...5b1602`](./contracts/bsc-56/0xc246d0ad04a9029a82862be2fbd16ab1445b1602/) | ⚠️ Unaudited |
| Oracle | operational_periphery | manta | n/a | [`0xb22c5a...90d2f6`](./contracts/manta-169/0xb22c5a9e69b3e46978cecaa70c54f0063b90d2f6/) | ⚠️ Unaudited |
| Orderbook | unknown | base | n/a | 4 deployments: bsc `0x9538e4...3df4fa`; sonic `0x67fe5f...b92f6b`; manta `0x810999...7455f1`; base [`0x3eb231...3fb4e8`](./contracts/base-8453/0x3eb23183397eaa587d6d6be243b5ee67973fb4e8/) | ⚠️ Unaudited |
| OrderbookImplementation | unknown | bsc | n/a | 10 deployments: bsc [`0x12d895...eaf8cd`](./contracts/bsc-56/0x12d895ea4f79b1920bfbe26b14013c60f1eaf8cd/); bsc `0xd985aa...f590ce`; sonic `0x14200c...4d7c47`; sonic `0x6e3bd1...3c81b3`; manta `0x2b6b48...4f0250`; manta `0xe451fa...2edf1f`; base `0x99ba8c...e327fe`; base `0xa6b4ea...d47dc4`; blast `0x4d58e7...d8673f`; blast `0xe67e2f...5fa8a2` | ⚠️ Unaudited |
| PerpetualPoolLite | core_logic | bsc | n/a | [`0x1a9b1b...7e4819`](./contracts/bsc-56/0x1a9b1b83c4592b9f315e933df042f53d3e7e4819/) | ⚠️ Unaudited |
| ProtocolFeeManager | governance | manta | n/a | [`0xcbca58...0fe408`](./contracts/manta-169/0xcbca586bf9706706398164bb5eb8e48f220fe408/) | ⚠️ Unaudited |
| ProtocolFeeManagerImplementationManta | governance | manta | n/a | 2 deployments: manta [`0x05e0e6...861750`](./contracts/manta-169/0x05e0e67cb54aef4475253d36d76ac46c98861750/); manta `0xec354e...03f3bc` | ⚠️ Unaudited |
| Rebate | unknown | manta | n/a | [`0x1131e7...f2f5ea`](./contracts/manta-169/0x1131e79bcf6a6be85b8dc732bfcc412308f2f5ea/) | ⚠️ Unaudited |
| RebateImplementation | unknown | manta | n/a | 2 deployments: manta [`0x42dd51...3b1862`](./contracts/manta-169/0x42dd5168eda433d9c7523ad11ea15264343b1862/); manta `0xd9a34c...024c93` | ⚠️ Unaudited |
| RewardVault | core_logic | manta | n/a | [`0x2ae67d...3ad276`](./contracts/manta-169/0x2ae67d0107d75b2a38890d83822d7673213ad276/) | ⚠️ Unaudited |
| RewardVaultImplementation | core_logic | manta | n/a | [`0x7e98e9...c7de77`](./contracts/manta-169/0x7e98e92d545531e7966dc00d18239b3c00c7de77/) | ⚠️ Unaudited |
| SwapperImplementation | adapter | manta | n/a | 2 deployments: manta [`0x49644e...8b44fc`](./contracts/manta-169/0x49644ea1bec8075b43f212eb4cdaa272648b44fc/); manta `0x9a34b3...3f5cac` | ⚠️ Unaudited |
| SwitchOracle | operational_periphery | scroll | n/a | [`0x7b56af...be771d`](./contracts/scroll-534352/0x7b56af65da221a40b48bedccb67410d6c0be771d/) | ⚠️ Unaudited |
| SwitchOracleImplementation | operational_periphery | manta | n/a | [`0x97b58e...eeb10b`](./contracts/manta-169/0x97b58e52adfefd3252cc16668b5ad58e9ceeb10b/) | ⚠️ Unaudited |
| TradeReward | unknown | bsc | n/a | [`0x0da143...43c892`](./contracts/bsc-56/0x0da14380ac829caced1e00f4f4b57ffcf643c892/) | ⚠️ Unaudited |
| VoteImplementationArbitrum | unknown | arbitrum | unit-34562 | [`0x9fe787...298be0`](./contracts/arbitrum-42161/0x9fe7870ddec43ea86f75eee6dfce4e0337298be0/) | ⚠️ Unaudited |
| VoteImplementationLinea | unknown | linea | unit-34575 | [`0xdf64be...b932aa`](./contracts/linea-59144/0xdf64be0f92b40255457283f1ff0ce0b456b932aa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | sonic | n/a | 30 deployments: bsc `0x1f0949...72426f`; bsc `0x4a99b1...847f79`; bsc `0x4d58e7...d8673f`; bsc `0x6712de...2dd968`; bsc `0x673a37...ca320a`; bsc `0x772983...55021f`; bsc `0x7bf1fb...b151ea`; bsc `0x932c19...37fae4`; bsc `0x966d80...6cfc04`; bsc `0xcf6f8a...9cfafc`; bsc `0xd68dad...80eae3`; bsc `0xe354e7...91dcc6`; bsc `0xeacb62...d323e2`; sonic [`0x050542...db1055`](./contracts/sonic-146/0x050542be6b6312b6252ab40a78984c058bdb1055/); sonic `0x60444e...9bc536`; sonic `0x87664d...4ecd02`; sonic `0xb7f664...a569a3`; base `0x1b012c...a79d00`; base `0x27ca2a...f46c1a`; base `0x2ae67d...3ad276`; base `0x513930...c7ac76`; base `0x6350ea...a37d0d`; base `0x7b8bcf...f44683`; base `0x93e6e4...ecf56a`; base `0xcf82aa...f4770d`; arbitrum `0xc8eef1...4ac141`; blast `0x1e2192...924b90`; blast `0x4bcfc0...7666aa`; blast `0x662720...87d216`; blast `0x87bda7...7b605f` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (169)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0fa46e...6fb03a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x201ab9...2999d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x294b3f...76d0bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3742c5...323998` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x389358...01e65d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x417747...c7d578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eb0b4...127333` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ec308...fa9cc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x513e39...145139` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ca235...61e638` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64bda3...52588e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68f0f9...bc27b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d9e56...c32cb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x792c32...3cff8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x881119...fc5c09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8952d9...76ff78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8df644...4daffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f3d8b...c5f95a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9081ef...b91fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x969cc2...e101e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f23e5...9651ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa32000...a3d136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1c965...9d2ab9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb22c5a...90d2f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2a3cc...291c3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb487a7...0a48c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc57a31...fa9845` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca0264...aeaa74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc0f0c...1358e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf8d99...3fee2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5968c...c12f53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd91931...837229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe06204...84c3a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe572b0...d30299` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6aee5...6a077d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe97601...6e719b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf91f6c...82d7da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc43b7...d3303c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe8b69...1e0796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5db4...2c6e8e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f0949...72426f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2156d0...a43ea0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x222776...b1d368` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x380b00...ceca9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c7df5...95ee45` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x673a37...ca320a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7988de...2f2f93` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87b576...21e5f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x932c19...37fae4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x99ba8c...e327fe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e5b50...672912` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa56dcc...052ed8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb2dfe0...743505` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc38bcd...b704be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3e5f7...8f7dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc710f0...6d867f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc98cab...d77dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd6fe18...2f1812` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdc6393...a6bef5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdca9a7...73cc7e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfb2d9e...98a196` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x011945...2afe8b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x050542...db1055` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0ef58d...bebc8c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x144f04...52d1f7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1605ff...765984` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1b012c...a79d00` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1b7232...35f6da` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1e2192...924b90` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1fe435...820f47` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x226ea3...a67cea` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2f2f10...034884` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x31716b...fc0176` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x353d97...afeb58` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x377f96...156d4e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3ca4ba...569b70` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4b10a5...d98a2f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4e714d...eb7d4f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5c7df5...95ee45` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5d9e9e...f00432` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x67bdd6...a2f828` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x763f02...33f429` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x772983...55021f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x799fcb...aa52c7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7bf1fb...b151ea` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8551cf...a8c753` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x93f2fc...a3efc7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9b9e7b...92a30b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9e5b50...672912` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xab2070...888743` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xab43c2...d45ab9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xacc1eb...029ae2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb85927...293957` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbc94e5...0f83d6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbf151b...5f5044` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc3e5f7...8f7dc2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc67cbc...284ed1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc75c1b...9af12d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcccafb...ef1545` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcd39c1...909a1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd008f8...b64335` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd6fe18...2f1812` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd80f36...23fd82` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdac54e...d61779` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdc6393...a6bef5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xde5e3b...bda6a9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe67e2f...5fa8a2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xee602c...f003a9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf14737...e356b6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf348ff...136899` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x34fd72...1962d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc7e484...85ee98` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd4e08c...1f6032` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x095bd1...71c090` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ba55f...0db1a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x352634...4af3d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3cbadc...70ff21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cb0df...869170` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53a8a3...1e2868` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57f403...8c2827` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72d85a...3eebf2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ac481...828070` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bcdd2...fbc143` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x816976...611793` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8551cf...a8c753` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab43c2...d45ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1401b...2c6ffb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbcca5b...6e8ff1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc38bcd...b704be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc66c2f...db250b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcaa6ce...bcfcb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf6f8a...9cfafc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd81a82...a576f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde81ae...961cc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe414e2...549b13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf92291...3b929d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe28b1...8e2f33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffc843...6f958a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d5b47...f45e4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dd217...8372f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ca036...29be3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x333066...0c3a24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f13d6...d4cb3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9d55c...c84609` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd62a71...cb757b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7e975...2ea90c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf60633...8de189` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4489f4...59d672` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5a9dbb...2ea91e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x871c0f...3d564e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb5d815...708f7c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc79102...e45174` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2156d0...a43ea0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x222776...b1d368` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x45f06b...c8b379` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6395e2...9f1953` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x799fcb...aa52c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x94ba42...b1b6a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9538e4...3df4fa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa56dcc...052ed8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab6568...b8c44c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabfc82...a5c76a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd9a34c...024c93` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdac54e...d61779` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe2fc41...72dfd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfa6b58...74f172` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfb2d9e...98a196` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV3-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Deri-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/693bdb69e3e3e422b4f7e1f3130d841e631b4dab/audit_reports/PeckShield-Audit-Report-DeriV2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 0 | n/a |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/deriprotocol) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf) | PeckShield | Audit | 2025-03 | aging | Direct | contract_name | 8 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/deriprotocol/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa487bf...65d3b9`](./contracts/ethereum-1/0xa487bf43cf3b10dffc97a9a744cbb7036965d3b9/) | Deri | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc246d0...5b1602`](./contracts/bsc-56/0xc246d0ad04a9029a82862be2fbd16ab1445b1602/) | LTokenLite | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12d895...eaf8cd`](./contracts/bsc-56/0x12d895ea4f79b1920bfbe26b14013c60f1eaf8cd/) | OrderbookImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a9b1b...7e4819`](./contracts/bsc-56/0x1a9b1b83c4592b9f315e933df042f53d3e7e4819/) | PerpetualPoolLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x7b56af...be771d`](./contracts/scroll-534352/0x7b56af65da221a40b48bedccb67410d6c0be771d/) | SwitchOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0da143...43c892`](./contracts/bsc-56/0x0da14380ac829caced1e00f4f4b57ffcf643c892/) | TradeReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 156 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=280

Zero-match audit list:

- [3690] {% embed url="<>" %}
- [3692] {% embed url="<>" %}
- [3693] {% embed url="<>" %}
- [3694] {% embed url="<>" %}
- [3695] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
