# Agentic Audit Brief: Deri

## Project Overview

- Project: Deri (`deri`)
- Website: [https://deri.io/#/index](https://deri.io/#/index)
- Lifecycle: active (Tier 0, 90.3% below peak)
- Generated: 2026-05-26T05:22:18.980Z
- Pipeline run: v2-pipeline-2026-05-26-eff36e-a3ce
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, polygon, polygon-zkevm, scroll, sonic, zksync-era
- Contract surface: 868 unique implementations (1904 raw deployments)
- DeFi Llama TVL: $7,440,548.00
- On-chain TVL (included contracts): $2,426.94
- TVL by chain: Polygon $2,401.91 | Bsc $23.84 | Arbitrum $1.07 | Base $0.12

## Project Description

Deri Protocol is a decentralized derivatives platform that enables users to trade perpetual futures, options, and other derivatives on-chain. It uses liquidity pools and automated market-making to facilitate trading without traditional order books.

### Architecture

The Deri families share a common architecture of pools and gateways, with later versions introducing modular gateways for cross-chain access. Supporting infrastructure like oracles, routers, and brokers is reused across families to manage trading, pricing, and fee collection.

## Audit Coverage Summary

- Verified implementations audited: 14/101 (13.9%)
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 7
- Unverified implementations: 767
- Unique implementations: 868
- Raw deployments: 1904
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/deriprotocol/information))
- ASD (verified + unaudited TVL): $2,403.10
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 14 | 13.9% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolImplementation | core_logic | bsc | 47 deployments: bsc [`0x17682d...15bb88`](./contracts/bsc-56/0x17682d2c16203e6e6115977f28905d877215bb88/); bsc `0x1c71bb...679799`; bsc `0x243681...292c1e`; bsc `0x2a9234...ca9d03`; bsc `0x3624fc...02fc60`; bsc `0x3686f9...574067`; bsc `0x4ad5cb...ffab04`; bsc `0x59c5be...c6a2a4`; bsc `0x5af42b...a8e646`; bsc `0x5f13a5...1fdb02`; bsc `0x604912...fbe449`; bsc `0x636c0a...f6988d`; bsc `0x71df71...62d286`; bsc `0x80cb5f...d76cf4`; bsc `0x8b321f...c9f716`; bsc `0x8e0c48...1d7d49`; bsc `0x94a6de...a37674`; bsc `0x9949e8...f9f1c6`; bsc `0x9b4191...57137b`; bsc `0x9e2ac8...67648e`; bsc `0x9f34ee...4c434e`; bsc `0xa8cd56...22f7e5`; bsc `0xb2795b...703471`; bsc `0xb56192...289087`; bsc `0xc7e484...85ee98`; bsc `0xca7619...48158f`; bsc `0xcaf093...b72e44`; bsc `0xcbb776...38b179`; bsc `0xce21dd...52fb76`; bsc `0xceeb06...bf8354`; bsc `0xd2d950...fcac40`; bsc `0xd89219...388b4c`; bsc `0xd9715a...1556f8`; bsc `0xdf876e...5002f6`; bsc `0xeb880a...3469d9`; arbitrum `0x3149d7...050f62`; arbitrum `0x380f5d...4bf9a6`; arbitrum `0x7f3ba4...74775f`; arbitrum `0x8321ed...0cb25f`; arbitrum `0xb83290...f1d23b`; arbitrum `0xba8a92...fa672b`; arbitrum `0xbdcf81...b23476`; arbitrum `0xc1b818...79037c`; arbitrum `0xcb0ea9...0b7ee1`; arbitrum `0xde3447...16cee8`; arbitrum `0xde57c5...b1c0b4`; arbitrum `0xef5483...5b54bd` | ✅ Audited |
| BTokenOracle1 | operational_periphery | polygon | 3 deployments: bsc `0xd84977...61cdb1`; bsc `0xeece90...145d5e`; polygon [`0x92953e...52f71a`](./contracts/polygon-137/0x92953ed52c491388d27ee1719bd18114fc52f71a/) | ✅ Audited |
| BTokenSwapper1 | adapter | polygon | 4 deployments: bsc `0x33538b...e65d40`; bsc `0xd273a2...b91860`; polygon [`0x08b7aa...e53e08`](./contracts/polygon-137/0x08b7aa3ae6652bb710e11b93243407cae1e53e08/); polygon `0x843570...31a099` | ✅ Audited |
| EverlastingOption | unknown | bsc | 10 deployments: bsc [`0x08ad0e...5fb780`](./contracts/bsc-56/0x08ad0e0b4458183758fc5b9b6d27c372965fb780/); bsc `0x21ff5f...62e9e7`; bsc `0x28caf8...789650`; bsc `0x4b6f63...46d144`; bsc `0x567480...decc80`; bsc `0x6fefdd...3f8ab8`; bsc `0x776f28...6ebdbd`; bsc `0x7e2a38...cce537`; bsc `0xd5147d...834de4`; bsc `0xf95aac...6d35b2` | ✅ Audited |
| Gateway | unknown | blast | 6 deployments: manta `0x28a41c...c8550f`; manta `0x3eb231...3fb4e8`; manta `0x48e33d...ce9fa6`; manta `0xa10d5e...04f39e`; manta `0xc8fa78...154ae9`; blast [`0x050542...db1055`](./contracts/blast-81457/0x050542be6b6312b6252ab40a78984c058bdb1055/) | ✅ Audited |
| GatewayImplementation | unknown | bsc | 48 deployments: bsc [`0x0473fb...c42dec`](./contracts/bsc-56/0x0473fbefda3d39f13ff6d911928e3bcfeec42dec/); bsc `0x27d117...02ab86`; bsc `0x2c2e1e...4939ac`; bsc `0x3ca4ba...569b70`; bsc `0x68ba56...8039bb`; bsc `0xa93e61...124425`; bsc `0xab43c2...d45ab9`; bsc `0xaf5a13...1785cd`; bsc `0xb41a1d...2dd149`; bsc `0xde5e3b...bda6a9`; bsc `0xfb2d9e...98a196`; sonic `0x1131e7...f2f5ea`; sonic `0x35ee16...9940d1`; sonic `0x4bc4ad...e075b9`; sonic `0xd91cea...c2d8b3`; sonic `0xd9ba26...4eae9f`; sonic `0xdb828a...039cc7`; manta `0x55ba66...69523d`; manta `0x6395e2...9f1953`; manta `0x66f5ff...c1e0e5`; manta `0x67fe5f...b92f6b`; manta `0x6f4ad3...4d693b`; manta `0x767019...822029`; manta `0x78592e...34b9a1`; manta `0xb7f664...a569a3`; manta `0xfa6b58...74f172`; base `0x0d6244...115a3c`; base `0x235834...ac3ba2`; base `0x408bbf...fa6c3b`; base `0x422ef7...6ed376`; base `0xabcb37...ff3174`; base `0xd4e08c...1f6032`; arbitrum `0x0e61d4...cd9e57`; arbitrum `0x15446a...1bf019`; arbitrum `0x7c4a64...a7ef81`; arbitrum `0xccacf0...c5e26b`; linea `0xe105b4...1e87f2`; linea `0xe840bb...b88866`; blast `0x27ca2a...f46c1a`; blast `0x2f2f10...034884`; blast `0x37afdc...0a5d2f`; blast `0x473f62...8db375`; blast `0x485ae4...4045c2`; blast `0x601380...5d4605`; blast `0x661945...eb3abf`; blast `0x7e3276...1e893b`; blast `0x812563...6cb8fa`; blast `0xe451fa...2edf1f` | ✅ Audited |
| LiquidatorQualifier | operational_periphery | ethereum | [`0xa0df32...2a3968`](./contracts/ethereum-1/0xa0df32251b8f428fcd3a2aefad698b377a2a3968/) | ✅ Audited |
| LToken | token | ethereum | 13 deployments: ethereum [`0x0069b4...cfb465`](./contracts/ethereum-1/0x0069b4fb48e5b8e9cb6960f4c2468b625acfb465/); ethereum `0x18e145...8004e1`; ethereum `0x3b5088...313d46`; ethereum `0x43ca6d...5a92da`; ethereum `0xec27d4...83c1f1`; ethereum `0xffcfb3...8f55fd`; bsc `0x167704...f86aaa`; bsc `0x610b39...431cd7`; bsc `0x6f8f1c...d87cb2`; bsc `0x83b31a...14156e`; bsc `0xd8f78c...dd2f98`; polygon `0xadea18...3cdce0`; polygon `0xd3ba0d...4b9325` | ✅ Audited |
| PerpetualPool | core_logic | bsc | 19 deployments: ethereum `0x1a1c60...686ee9`; ethereum `0x23779a...993118`; ethereum `0x810f08...d797de`; ethereum `0x96a1f1...ac6346`; ethereum `0xb89ee8...d6de5c`; bsc [`0x19c265...419d92`](./contracts/bsc-56/0x19c2655a0e1639b189fb0cf06e02dc0254419d92/); bsc `0x271c95...aafd86`; bsc `0x4b439a...650e15`; bsc `0x66f501...702f05`; bsc `0x8eab61...385d42`; bsc `0xa2d731...990507`; bsc `0xaf081e...679de5`; bsc `0xd3f5e6...eb623c`; polygon `0x43b4df...699252`; polygon `0x4db087...2623d9`; polygon `0x64195d...e1dd13`; polygon `0x6be39f...2dc0ac`; polygon `0x709206...505408`; polygon `0x9d6fe2...4b802c` | ✅ Audited |
| PerpetualPoolRouter | adapter | bsc | 9 deployments: bsc [`0x0bdf05...196e5d`](./contracts/bsc-56/0x0bdf05c678b23f01a07a90f01f6e40760f196e5d/); bsc `0x5b2bbc...5210c6`; bsc `0x896ea3...797cfd`; bsc `0xc9c234...5b07e4`; polygon `0x3d514a...ecac22`; polygon `0x6d1b82...980b49`; polygon `0x7e4123...708eab`; polygon `0x8b0340...591e93`; polygon `0xa06095...1c8dcb` | ✅ Audited |
| PToken | token | polygon | 9 deployments: ethereum `0x15ad9b...c4ad05`; ethereum `0x7288ce...8da5a7`; ethereum `0x9c6134...15fd33`; bsc `0x29be63...81f989`; bsc `0x2aa586...34df05`; bsc `0x3c11c4...848a15`; bsc `0xae6429...2da410`; polygon [`0x0757bc...a13ba1`](./contracts/polygon-137/0x0757bc621a32b1134ecf2843955b0bbc8ca13ba1/); polygon `0xf6adcb...24c698` | ✅ Audited |
| SymbolManagerImplementation | governance | bsc | 15 deployments: bsc [`0x05eaad...d4bc04`](./contracts/bsc-56/0x05eaad6bf9b91cceb32f256ad2d171790dd4bc04/); bsc `0x1e3e02...925b60`; bsc `0x28ed1d...6f61f7`; bsc `0x543a9f...6988fa`; bsc `0x6e3c29...06dae6`; bsc `0x77a7e3...d3056b`; bsc `0x7a3399...4db416`; bsc `0x8bb7ec...ac7a91`; bsc `0xc86f88...cd80c3`; bsc `0xe9768b...c7bba4`; bsc `0xe9a4e0...7e4f5e`; arbitrum `0x741c8e...15c084`; arbitrum `0xe1d016...903e34`; arbitrum `0xe3a33f...d3f530`; arbitrum `0xfdb8e8...26449b` | ✅ Audited |
| SymbolOracleOffChain | operational_periphery | bsc | 14 deployments: bsc [`0x27cf22...b654fe`](./contracts/bsc-56/0x27cf22dd313723781d3c28664363187e6eb654fe/); bsc `0x3e0843...e6e238`; bsc `0x46198f...086b53`; bsc `0x8e3113...08e3be`; bsc `0x98c5c7...e05af1`; bsc `0xb08d43...bb64de`; bsc `0xdd677a...814bcb`; bsc `0xec8df8...0dff1a`; polygon `0x57a99b...26af39`; polygon `0x656c09...2924d8`; polygon `0x6e0faa...a1f4db`; polygon `0x9eb033...409157`; polygon `0xcbd7ea...ad63dc`; polygon `0xcfbf14...927867` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UChildERC20Proxy | token | polygon | [`0x3d1d2a...fb0e5e`](./contracts/polygon-137/0x3d1d2afd191b165d140e3e8329e634665ffb0e5e/) | ⚠️ Unaudited |
| RewardVault | core_logic | arbitrum | 3 deployments: bsc `0x6395e2...9f1953`; manta `0x2ae67d...3ad276`; arbitrum [`0x0a79e0...5cfc08`](./contracts/arbitrum-42161/0x0a79e067cec0da906d01463e9cc6d0f96e5cfc08/) | ⚠️ Unaudited |
| ArbitrumDeriBurnerImplementation | unknown | arbitrum | 3 deployments: arbitrum [`0x81b34a...a02d96`](./contracts/arbitrum-42161/0x81b34ae171489e6dac9fbe20defd3a8852a02d96/); arbitrum `0xafbb55...af3add`; arbitrum `0xdb3c80...5333f5` | ⚠️ Unaudited |
| Broker | unknown | arbitrum | [`0xf059d3...2db27d`](./contracts/arbitrum-42161/0xf059d3d7111810bacc834fb6f429652b792db27d/) | ⚠️ Unaudited |
| BrokerImplementation | unknown | bsc | 12 deployments: bsc [`0x07637d...a42d4e`](./contracts/bsc-56/0x07637d9bd47090e6e3a87f230ba53520d2a42d4e/); bsc `0x16d9de...da2f5e`; bsc `0x560b6c...0c1823`; bsc `0xb195c5...d36f57`; bsc `0xf56713...7b6238`; bsc `0xf97c2d...eef559`; arbitrum `0x33e3d5...b13ffc`; arbitrum `0x500e67...3f3c9c`; arbitrum `0x5476cd...0c8d08`; arbitrum `0x7e6f33...4e2fce`; arbitrum `0xdd2902...00cd66`; arbitrum `0xf8b948...5f8b7c` | ⚠️ Unaudited |
| BrokerManager | governance | polygon | 2 deployments: bsc `0xe9e9b8...a81650`; polygon [`0x2d3aa0...94a86f`](./contracts/polygon-137/0x2d3aa0e1aaece2e3a8b90b042821f02e9d94a86f/) | ⚠️ Unaudited |
| BTokenSwapperAMUSDC | adapter | polygon | [`0xe2caf4...d8cfd9`](./contracts/polygon-137/0xe2caf44ad82bb9bf292e2c99bf2f14e992d8cfd9/) | ⚠️ Unaudited |
| Client | unknown | bsc | 6 deployments: bsc [`0x474d59...6681a4`](./contracts/bsc-56/0x474d598972b9c1b1b863a3c1aac1717b206681a4/); bsc `0x59659c...1d1136`; bsc `0xdebabd...14b7c9`; arbitrum `0x6d40dd...f0b5ae`; arbitrum `0x8290cf...aad932`; arbitrum `0xe27d40...efff0a` | ⚠️ Unaudited |
| ClientImplementation | unknown | arbitrum | 6 deployments: bsc `0x0fe94d...42669e`; bsc `0x87040c...595647`; bsc `0xc34083...c87c3b`; arbitrum [`0x041bf7...12fccc`](./contracts/arbitrum-42161/0x041bf7155f2cc84a842ad196357842895612fccc/); arbitrum `0xae66f7...5fc9e5`; arbitrum `0xe5b76f...16f5ff` | ⚠️ Unaudited |
| CloneFactory | registry | ethereum | 2 deployments: ethereum [`0x290d0b...52c33d`](./contracts/ethereum-1/0x290d0b924ebc9719fe52e540d4feaedc1b52c33d/); bsc `0x330ab5...c79ab8` | ⚠️ Unaudited |
| Deployer2 | unknown | bsc | [`0x9a34b3...3f5cac`](./contracts/bsc-56/0x9a34b3810d422373ba5128ffee880235003f5cac/) | ⚠️ Unaudited |
| Deri | unknown | ethereum | 2 deployments: ethereum [`0xa487bf...65d3b9`](./contracts/ethereum-1/0xa487bf43cf3b10dffc97a9a744cbb7036965d3b9/); bsc `0xe60eaf...cc6df5` | ⚠️ Unaudited |
| DeriVote | unknown | polygon | 10 deployments: ethereum `0xb2b690...4a7424`; bsc `0x27c116...71f891`; polygon [`0x08bce4...4870a4`](./contracts/polygon-137/0x08bce4df2b44987dead876abe2b24d3bd74870a4/); polygon `0x37e693...630cbd`; polygon `0x3b6b58...69a953`; polygon `0x56b370...27d073`; polygon `0x6d05fd...f80b85`; polygon `0x984d54...178167`; polygon `0xaf26ee...c377a5`; polygon `0xb3622f...7e5de2` | ⚠️ Unaudited |
| DeriVoteWithPayment | unknown | ethereum | 2 deployments: ethereum [`0x7ed34a...df3ac3`](./contracts/ethereum-1/0x7ed34aaaeb9b6c61e4fe8e00ab585e8c4adf3ac3/); bsc `0x818642...50d7f4` | ⚠️ Unaudited |
| DToken | token | bsc | 32 deployments: bsc [`0x0339c5...bef3e0`](./contracts/bsc-56/0x0339c58f1f1d49d0a1772fce821a83d01ebef3e0/); bsc `0x053e95...038a45`; bsc `0x249aa7...821a56`; bsc `0x25d5ad...3acb64`; bsc `0x28a41c...c8550f`; bsc `0x4cb0df...869170`; bsc `0x5b6041...8ee391`; bsc `0x68c84a...3af2a5`; bsc `0xa7620b...31ead3`; bsc `0xabfc82...a5c76a`; bsc `0xb26d1d...0dbded`; bsc `0xc5b1de...3440c0`; sonic `0x5fe2c4...c56c33`; sonic `0x601380...5d4605`; sonic `0x67bdd6...a2f828`; sonic `0x84eeb1...a65a8b`; manta `0x35ee16...9940d1`; manta `0x601380...5d4605`; manta `0xc710f0...6d867f`; manta `0xc98cab...d77dc2`; base `0x18f2cb...9f44c6`; base `0x55746a...573a66`; base `0xf30ba4...426827`; base `0xf7b181...3ffb38`; arbitrum `0x109f2f...ed3b63`; arbitrum `0x16afc1...aad370`; arbitrum `0x548758...ca2a82`; arbitrum `0x6004ae...c2aff4`; blast `0x235834...ac3ba2`; blast `0x67bdd6...a2f828`; blast `0x763f02...33f429`; blast `0xc55fff...6306c5` | ⚠️ Unaudited |
| EverlastingOptionPricing | unknown | bsc | 2 deployments: bsc [`0xac59e6...463fc2`](./contracts/bsc-56/0xac59e68af8db86a10d228bed8b09437db2463fc2/); bsc `0xe3b744...c8eb7b` | ⚠️ Unaudited |
| FundImplementation | unknown | bsc | 3 deployments: bsc [`0x032dc1...491c28`](./contracts/bsc-56/0x032dc128abe6e8cb7e2b0ab57336178ae0491c28/); bsc `0x20541e...91a93f`; bsc `0xeb47f8...96a552` | ⚠️ Unaudited |
| GatewayHelper | periphery | bsc | 10 deployments: bsc [`0x2bfc3a...25d8c1`](./contracts/bsc-56/0x2bfc3a75a8444db9a446c9b49ef2240fb125d8c1/); bsc `0x2ddf01...59bc00`; sonic `0xcbca58...0fe408`; manta `0x99ba8c...e327fe`; manta `0xf2d9db...c7d2bb`; manta `0xfabcde...2861ea`; base `0xdb828a...039cc7`; blast `0x66caa9...edc50c`; blast `0x810999...7455f1`; blast `0xb7f664...a569a3` | ⚠️ Unaudited |
| IOU | unknown | bsc | 8 deployments: bsc [`0x1e617f...323b74`](./contracts/bsc-56/0x1e617f6a9c423aef25a382741e7b055725323b74/); bsc `0x76e18d...93a31f`; sonic `0x763f02...33f429`; sonic `0xb22c5a...90d2f6`; base `0xaa00cb...921a04`; base `0xb5284e...1c920c`; blast `0x60444e...9bc536`; blast `0xbf151b...5f5044` | ⚠️ Unaudited |
| LiqClaim | unknown | blast | 3 deployments: sonic `0xd4e08c...1f6032`; base `0xcba16d...1d59e3`; blast [`0xbc94e5...0f83d6`](./contracts/blast-81457/0xbc94e52394dc1a4d0ea27aad027981fc970f83d6/) | ⚠️ Unaudited |
| LiqClaimImplementation | unknown | sonic | 6 deployments: bsc `0x226ea3...a67cea`; bsc `0x405c8d...481290`; sonic [`0x18f2cb...9f44c6`](./contracts/sonic-146/0x18f2cba9254d0b8854180cacad7b0567b39f44c6/); manta `0x76e18d...93a31f`; base `0x48f37d...5e3330`; blast `0x1b7232...35f6da` | ⚠️ Unaudited |
| LTokenLite | token | polygon | 4 deployments: bsc `0x992974...855fa7`; bsc `0xc246d0...5b1602`; polygon [`0x35c8b3...247d07`](./contracts/polygon-137/0x35c8b3bb6ce67d9bf6b14a5ffc121a79d6247d07/); polygon `0x7b0a54...4c590a` | ⚠️ Unaudited |
| LTokenOption | token | bsc | 6 deployments: bsc [`0x05ed78...c74cef`](./contracts/bsc-56/0x05ed78e8d9a5fd09d0cbcbd90abb71017dc74cef/); bsc `0xd22273...3ae10e`; bsc `0xdff50b...d6464d`; bsc `0xe07a22...fa93d9`; bsc `0xeb9dc0...6803f5`; bsc `0xed1b6e...8a474c` | ⚠️ Unaudited |
| Manager | governance | base | 3 deployments: bsc `0x508f0d...658399`; sonic `0x3965e1...061885`; base [`0x1f0949...72426f`](./contracts/base-8453/0x1f09493ea5350ca970df07b096946400a472426f/) | ⚠️ Unaudited |
| ManagerImplementation | governance | base | 3 deployments: bsc `0x5897fb...c68ecf`; sonic `0x66caa9...edc50c`; base [`0x4d58e7...d8673f`](./contracts/base-8453/0x4d58e77dfbd15ffa5398435f3fd6bd8667d8673f/) | ⚠️ Unaudited |
| MiningVaultRouter | adapter | bsc | [`0x8d5613...61936e`](./contracts/bsc-56/0x8d5613451dc0592388f98d7ab1ce5a732561936e/) | ⚠️ Unaudited |
| OffChainOracle | operational_periphery | polygon | 6 deployments: polygon [`0x74aad5...386ff2`](./contracts/polygon-137/0x74aad58e8d29a513df5a3accb6c2554efc386ff2/); polygon `0x780798...16cee6`; polygon `0x94906d...ab04e8`; polygon `0x9b934b...1dba9f`; polygon `0xc6bdfa...ec2a88`; polygon `0xf16f44...3f9cb3` | ⚠️ Unaudited |
| OracleManagerPyth | operational_periphery | arbitrum | [`0x11e918...8e3a7c`](./contracts/arbitrum-42161/0x11e91820c9a37ee971fcdf49a060953a028e3a7c/) | ⚠️ Unaudited |
| OracleOffChainPyth | operational_periphery | arbitrum | 28 deployments: arbitrum [`0x142225...9f241a`](./contracts/arbitrum-42161/0x1422253361d8d13786904f4f7b83804e029f241a/); arbitrum `0x1b9270...6cf00a`; arbitrum `0x20cf25...0fccb8`; arbitrum `0x21c20c...b6bfdb`; arbitrum `0x2ec029...8ab333`; arbitrum `0x3528e0...e47c31`; arbitrum `0x3bc573...1e30c9`; arbitrum `0x3f253d...a7426e`; arbitrum `0x4777b8...c395a0`; arbitrum `0x48825d...2851c5`; arbitrum `0x49da8a...7702b4`; arbitrum `0x677c6a...3b9646`; arbitrum `0x68fe62...a6e359`; arbitrum `0x71f9f6...3eae0d`; arbitrum `0x72524e...2efe18`; arbitrum `0x775e7c...eaeee7`; arbitrum `0x83cc27...862104`; arbitrum `0x8cd94a...0ca082`; arbitrum `0x9841af...bbbf1c`; arbitrum `0xa1b7df...063162`; arbitrum `0xa47f1c...defcba`; arbitrum `0xa80ada...2b97bf`; arbitrum `0xcf61c2...7e8079`; arbitrum `0xdc7117...089d9b`; arbitrum `0xe4c778...9c3333`; arbitrum `0xebb0a9...a1d7cf`; arbitrum `0xfc5a21...7e8d73`; arbitrum `0xfce4dc...db9a5c` | ⚠️ Unaudited |
| OracleRouter | operational_periphery | bsc | 5 deployments: bsc [`0x1e4eca...a4d96b`](./contracts/bsc-56/0x1e4ecaa70afdeff937bab70f142889bd6ba4d96b/); bsc `0x237904...3e455e`; bsc `0x40fd3c...2a8d2d`; polygon `0x236923...7a165c`; polygon `0x58852b...b2c55b` | ⚠️ Unaudited |
| OracleWoo | operational_periphery | bsc | 6 deployments: bsc [`0x092492...12d5ff`](./contracts/bsc-56/0x092492496bf024b0ca707e3690db07270812d5ff/); bsc `0x1cb595...e13891`; bsc `0x3e83c5...1d4e9a`; bsc `0x41794f...01243c`; bsc `0x593658...b4a434`; bsc `0xb9ec9d...8b60f7` | ⚠️ Unaudited |
| Orderbook | unknown | base | 5 deployments: bsc `0x9538e4...3df4fa`; sonic `0x67fe5f...b92f6b`; manta `0x810999...7455f1`; base [`0x3eb231...3fb4e8`](./contracts/base-8453/0x3eb23183397eaa587d6d6be243b5ee67973fb4e8/); blast `0xc7bb4f...4c3915` | ⚠️ Unaudited |
| OrderbookImplementation | unknown | bsc | 18 deployments: bsc [`0x12d895...eaf8cd`](./contracts/bsc-56/0x12d895ea4f79b1920bfbe26b14013c60f1eaf8cd/); bsc `0x377200...7c5421`; bsc `0x8551cf...a8c753`; bsc `0xd985aa...f590ce`; bsc `0xdae749...1473e3`; sonic `0x14200c...4d7c47`; sonic `0x6e3bd1...3c81b3`; sonic `0xc75c1b...9af12d`; manta `0x2b6b48...4f0250`; manta `0xe451fa...2edf1f`; base `0x99ba8c...e327fe`; base `0xa6b4ea...d47dc4`; base `0xc98cab...d77dc2`; arbitrum `0x759c77...feb15a`; arbitrum `0x7bac74...c62e3b`; blast `0x13076a...e427ae`; blast `0x4d58e7...d8673f`; blast `0xe67e2f...5fa8a2` | ⚠️ Unaudited |
| PerpetualPoolLite | core_logic | bsc | 12 deployments: bsc [`0x1a9b1b...7e4819`](./contracts/bsc-56/0x1a9b1b83c4592b9f315e933df042f53d3e7e4819/); bsc `0x26be73...aa09cf`; bsc `0x3465a2...2753e0`; bsc `0x574022...6e5831`; bsc `0x9e2f5e...cc1e41`; bsc `0xbc259d...81785a`; polygon `0x29e9dc...f5d17f`; polygon `0x9c0033...c5960e`; polygon `0xa4ede2...688cd0`; polygon `0xa8769a...798b69`; polygon `0xb144cc...a11984`; polygon `0xddfca1...94cc9c` | ⚠️ Unaudited |
| PerpetualPoolLiteClonable | core_logic | bsc | [`0xc1b427...5dfa87`](./contracts/bsc-56/0xc1b427e149f5eff6178ea19ca61075376a5dfa87/) | ⚠️ Unaudited |
| PerpetualPoolLiteManager | core_logic | bsc | [`0x5e3318...4702dc`](./contracts/bsc-56/0x5e3318aeaa226dc11571f19b96240d88b64702dc/) | ⚠️ Unaudited |
| PMMPricing | unknown | bsc | [`0xc4b5cf...bf5631`](./contracts/bsc-56/0xc4b5cf0d0d592be32ac64f22c0bf210adfbf5631/) | ⚠️ Unaudited |
| Pool | core_logic | bsc | [`0x1ef520...17b749`](./contracts/bsc-56/0x1ef520cc175ba4947e94d67e0cd39ab17b17b749/) | ⚠️ Unaudited |
| PoolImplementationLite | core_logic | bsc | 4 deployments: bsc [`0x073e38...53908e`](./contracts/bsc-56/0x073e38afce94e5338917957dc5bb73230453908e/); bsc `0x1ef92e...3f29ba`; bsc `0x31d38d...f0e5a1`; bsc `0x5995af...8178e0` | ⚠️ Unaudited |
| PreMiningPool | core_logic | bsc | 12 deployments: ethereum `0x3f9842...092ccb`; ethereum `0x4847f7...be4a7d`; ethereum `0x851805...56fd2b`; ethereum `0xc77310...0371e2`; ethereum `0xe519dc...360cb7`; ethereum `0xe91cb8...2f2736`; bsc [`0x03da5c...78fe2a`](./contracts/bsc-56/0x03da5cb10d868c5f979b277eb6df17d50e78fe2a/); bsc `0x447a9b...8f5b35`; bsc `0x4de2ac...83df98`; bsc `0xa51e3d...abd9ad`; bsc `0xb00197...90a8d3`; bsc `0xffbd55...f30bf2` | ⚠️ Unaudited |
| PrivilegerImplementation | unknown | arbitrum | 2 deployments: arbitrum [`0x3c1c38...bf81df`](./contracts/arbitrum-42161/0x3c1c38ff015784b558f0bf10cab6e0a6c5bf81df/); arbitrum `0xf803b2...3741d1` | ⚠️ Unaudited |
| ProtocolFeeBurner | unknown | bsc | [`0xd85960...2c1ff3`](./contracts/bsc-56/0xd85960e1c28f7740b50e6848bfdc7b8f432c1ff3/) | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | bsc | 7 deployments: bsc [`0x5559ea...4eecc4`](./contracts/bsc-56/0x5559eac15d38708d08d95146c63a90a5d84eecc4/); bsc `0xcd2cde...adef4b`; bsc `0xeaae42...ea91ff`; bsc `0xebcbc6...8b2a8d`; polygon `0x9099a8...2334c3`; polygon `0xc255eb...7f9b6d`; polygon `0xdcca8b...74da29` | ⚠️ Unaudited |
| ProtocolFeeCollectorImplementation | unknown | bsc | 4 deployments: bsc [`0x3fe590...8fa723`](./contracts/bsc-56/0x3fe5904431ff26a25ac12d322fa8e406508fa723/); bsc `0x6b49ac...7eee96`; bsc `0xa830ea...a55a64`; bsc `0xf7ebd0...b4d4e7` | ⚠️ Unaudited |
| ProtocolFeeCollectorImplementationBridgeBUSD | operational_periphery | bsc | 4 deployments: bsc [`0x0e3d74...169a06`](./contracts/bsc-56/0x0e3d745dcc255c8593af12464e8413d2d9169a06/); bsc `0x4bc4ad...e075b9`; bsc `0xc75c1b...9af12d`; bsc `0xf5a17a...f0094c` | ⚠️ Unaudited |
| ProtocolFeeManager | governance | base | 5 deployments: bsc `0x8bc90a...12796e`; sonic `0xb5284e...1c920c`; manta `0xcbca58...0fe408`; base [`0x0dd04f...a28063`](./contracts/base-8453/0x0dd04f3e4225682a122e282b63066e000aa28063/); blast `0x2d1b20...e77c48` | ⚠️ Unaudited |
| ProtocolFeeManagerImplementationBase | governance | base | [`0xc15259...df6589`](./contracts/base-8453/0xc15259474390dd31dfb854f0684d642df1df6589/) | ⚠️ Unaudited |
| ProtocolFeeManagerImplementationBsc | governance | bsc | 2 deployments: bsc [`0xa6ccc1...e280f1`](./contracts/bsc-56/0xa6ccc17de048a9845ac06c2d4d390b4face280f1/); bsc `0xf05785...1f0c64` | ⚠️ Unaudited |
| ProtocolFeeManagerImplementationManta | governance | manta | 2 deployments: manta [`0x05e0e6...861750`](./contracts/manta-169/0x05e0e67cb54aef4475253d36d76ac46c98861750/); manta `0xec354e...03f3bc` | ⚠️ Unaudited |
| ProtocolFeeManagerImplementationSonic | governance | sonic | [`0x93e6e4...ecf56a`](./contracts/sonic-146/0x93e6e4d43f34c1bf9385ecbb0fce912537ecf56a/) | ⚠️ Unaudited |
| PTokenLite | token | polygon | 6 deployments: bsc `0x6c4907...1d9ee0`; bsc `0xef4c81...eb497c`; polygon [`0x074f37...52ea28`](./contracts/polygon-137/0x074f37be1c9818b192acdb3b268baa52d052ea28/); polygon `0x4c956d...85a8c6`; polygon `0xdc3ed8...e22059`; polygon `0xde8915...5eda1c` | ⚠️ Unaudited |
| PTokenOption | token | bsc | 6 deployments: bsc [`0x02ba01...be5735`](./contracts/bsc-56/0x02ba0190edae7e78c1bcc4649a1ee059c3be5735/); bsc `0x306296...fbd73a`; bsc `0x4a50b5...8316e2`; bsc `0x89c25a...a1dbac`; bsc `0xcf3c34...c0aee5`; bsc `0xefeaff...49b17a` | ⚠️ Unaudited |
| Rebate | unknown | manta | [`0x1131e7...f2f5ea`](./contracts/manta-169/0x1131e79bcf6a6be85b8dc732bfcc412308f2f5ea/) | ⚠️ Unaudited |
| RebateImplementation | unknown | bsc | 19 deployments: bsc [`0x01230f...f288ef`](./contracts/bsc-56/0x01230f266a4683de1d6e3f581becfbe19ff288ef/); bsc `0x0ba55f...0db1a8`; bsc `0x5f07c0...b9f7d4`; bsc `0x8f14ba...af6a84`; bsc `0x9a4f11...4dff5f`; bsc `0xbb497b...6e8d3a`; bsc `0xffc843...6f958a`; manta `0x42dd51...3b1862`; manta `0xd9a34c...024c93`; arbitrum `0x1198e1...158942`; arbitrum `0x3ec52c...77a97e`; arbitrum `0x65d6e4...182307`; arbitrum `0x772fc7...091d2c`; arbitrum `0xea765d...136b6c`; linea `0x0f5ddc...895020`; linea `0x71984e...af085b`; blast `0x513930...c7ac76`; blast `0x672a14...07e107`; blast `0xcbca58...0fe408` | ⚠️ Unaudited |
| RewardVaultImplementation | core_logic | linea | 9 deployments: bsc `0x57b2cf...297740`; bsc `0x7bcdd2...fbc143`; bsc `0xee68f3...13d1e2`; manta `0x7e98e9...c7de77`; arbitrum `0x64c358...2d31df`; arbitrum `0xa5abfa...7cb2a3`; arbitrum `0xae77aa...dff4e7`; linea [`0x1640be...bdbf2f`](./contracts/linea-59144/0x1640bead2163cf8d7cc52662768992a1febdbf2f/); linea `0x3b1810...4fb9e7` | ⚠️ Unaudited |
| RouterImplementation | adapter | arbitrum | 22 deployments: bsc `0x1ab8a0...2f7437`; bsc `0x219993...c788f9`; bsc `0x41a1ea...cdb961`; bsc `0x4a83f1...8012ae`; bsc `0x73e827...9ed81c`; bsc `0x7d5b16...587b21`; bsc `0x8602c5...621209`; bsc `0xa2bd89...c7ed8f`; bsc `0xb42ee4...785625`; bsc `0xf0eec7...1f1059`; bsc `0xf2abea...107ba2`; bsc `0xf7585d...6c0f7d`; bsc `0xfd7e8a...46f7e0`; arbitrum [`0x05ef21...5a6116`](./contracts/arbitrum-42161/0x05ef2170c2ec937e5c786ff66653b47df35a6116/); arbitrum `0x111ab5...effb8f`; arbitrum `0x37db4f...8aeda1`; arbitrum `0x7ef7ec...c3e00a`; arbitrum `0x8b381e...7d8c0c`; arbitrum `0x97aba8...d75ca8`; arbitrum `0x9e8321...e93ed9`; arbitrum `0xe6b3f9...c3e8f1`; arbitrum `0xf4d458...84a2f5` | ⚠️ Unaudited |
| SmartAccount | core_logic | bsc | 3 deployments: bsc [`0x43f907...02b59c`](./contracts/bsc-56/0x43f9070faded771aaaa54192b8c9cab32f02b59c/); sonic `0x798d08...c8040d`; base `0xe67e2f...5fa8a2` | ⚠️ Unaudited |
| SmartAccountImplementation | unknown | bsc | 3 deployments: bsc [`0x59b8f5...99deb1`](./contracts/bsc-56/0x59b8f591f82e5eab81034770b2e678c92a99deb1/); sonic `0xc8d6bd...2e44a8`; base `0xd6fe18...2f1812` | ⚠️ Unaudited |
| StakerImplementation | core_logic | arbitrum | 3 deployments: arbitrum [`0x01fb47...f13904`](./contracts/arbitrum-42161/0x01fb47225db4a0fdcd407c9f6806944f87f13904/); arbitrum `0x175fe9...2a355a`; arbitrum `0x832150...e65ec0` | ⚠️ Unaudited |
| StakeStaderImplementation | unknown | bsc | 2 deployments: bsc [`0x5cb879...db63e4`](./contracts/bsc-56/0x5cb87996bf3ba84e01b25787904a72f424db63e4/); bsc `0x5e9caa...f99061` | ⚠️ Unaudited |
| SwapperImplementation | adapter | base | 5 deployments: bsc `0xb87070...f7b0e8`; sonic `0x72afda...9f5937`; manta `0x49644e...8b44fc`; manta `0x9a34b3...3f5cac`; base [`0x1e2192...924b90`](./contracts/base-8453/0x1e2192f3f4a9ec283d74661a7db6a81d37924b90/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | [`0xbca443...7664f2`](./contracts/base-8453/0xbca4439e99091afb297ecb4c5672357e467664f2/) | ⚠️ Unaudited |
| SwitchOracle | operational_periphery | scroll | 3 deployments: sonic `0xcf82aa...f4770d`; base `0x84eeb1...a65a8b`; scroll [`0x7b56af...be771d`](./contracts/scroll-534352/0x7b56af65da221a40b48bedccb67410d6c0be771d/) | ⚠️ Unaudited |
| SwitchOracleImplementation | operational_periphery | sonic | 5 deployments: bsc `0x694bd0...8a2236`; sonic [`0x497e8b...775867`](./contracts/sonic-146/0x497e8b8357c62ec0688e5e2872ec3002be775867/); manta `0x97b58e...eeb10b`; base `0x5fe2c4...c56c33`; blast `0x512925...2bfc34` | ⚠️ Unaudited |
| SymbolImplementationFutures | unknown | bsc | 127 deployments: bsc [`0x059a14...176449`](./contracts/bsc-56/0x059a14b4422c7b4f45a417eca18aaea27a176449/); bsc `0x06c411...4bbfc3`; bsc `0x0755e0...10b30a`; bsc `0x081788...84e952`; bsc `0x0b439b...51f3fa`; bsc `0x0f668f...2f7e69`; bsc `0x0f9135...eb4f90`; bsc `0x126c41...4fe7fa`; bsc `0x21a2f2...7a7930`; bsc `0x26d923...17b2ac`; bsc `0x28b3bc...4d795d`; bsc `0x3555b4...559540`; bsc `0x360095...575244`; bsc `0x365ed5...e53b86`; bsc `0x39550c...74e275`; bsc `0x3f50bf...2e9bb8`; bsc `0x404482...46bcfc`; bsc `0x4142f7...cabd10`; bsc `0x416468...da0e44`; bsc `0x494499...f2159f`; bsc `0x496a4d...caf950`; bsc `0x4b9f3c...43226d`; bsc `0x4be33a...5f42ee`; bsc `0x5001c7...05d942`; bsc `0x50d9f0...98c00d`; bsc `0x55ff2e...be00c8`; bsc `0x57a17b...6a7c33`; bsc `0x58dd4b...bdd856`; bsc `0x59f900...fbe723`; bsc `0x5c9432...131846`; bsc `0x5dfbac...9daca5`; bsc `0x622645...68124d`; bsc `0x659594...9f1510`; bsc `0x65e168...dd1664`; bsc `0x690612...832a1f`; bsc `0x6e506a...bd8700`; bsc `0x73519b...0ffb63`; bsc `0x743ba1...0f7155`; bsc `0x7440cf...ffd7d0`; bsc `0x77f215...3900eb`; bsc `0x79e324...6df627`; bsc `0x7c3591...4a22b9`; bsc `0x7cba1f...394c18`; bsc `0x7f0de5...48ad1c`; bsc `0x8259ab...26b7a3`; bsc `0x83f385...624e32`; bsc `0x848a9e...f732d2`; bsc `0x86a9dc...9cc625`; bsc `0x895228...f983f8`; bsc `0x8b153c...9f14b6`; bsc `0x8c0c9d...f25a35`; bsc `0x8d6f8b...8d7f9c`; bsc `0x8fe009...a2b05a`; bsc `0x8fefb4...e5b866`; bsc `0x9325ed...fcd3f6`; bsc `0x95a57a...964673`; bsc `0x985a89...355e7e`; bsc `0x9b2602...e5f3cc`; bsc `0xac861e...be62c0`; bsc `0xb01ad8...6f106f`; bsc `0xb2c9c9...7b5a70`; bsc `0xb3b23e...080102`; bsc `0xb5c331...c3fd23`; bsc `0xbf2313...87e38a`; bsc `0xc79b57...273cf2`; bsc `0xc8dc48...aabefa`; bsc `0xc9b9f0...0b4a4b`; bsc `0xca040b...049d4d`; bsc `0xca89d7...1a47ef`; bsc `0xcee7ff...a83ddc`; bsc `0xd18bfa...d5be57`; bsc `0xd58a1b...a7bb75`; bsc `0xdb2ab3...ed6dcd`; bsc `0xde217e...2b19f0`; bsc `0xde428d...7c16d1`; bsc `0xe113c8...1e097c`; bsc `0xe5c72a...321e8a`; bsc `0xec9794...305499`; bsc `0xef1ff7...3c597d`; bsc `0xef7003...ed3765`; bsc `0xf5aa23...63a726`; bsc `0xf5efbe...6ae983`; bsc `0xf87337...5d9c46`; bsc `0xf9f94b...1b4093`; bsc `0xfa2312...8073a9`; bsc `0xfa4b9f...df044f`; bsc `0xfc3a1d...b87bb9`; bsc `0xff6d39...94cdb9`; arbitrum `0x08a1a1...784fde`; arbitrum `0x14055d...0d43fa`; arbitrum `0x159858...a9cff3`; arbitrum `0x1a32d0...94c175`; arbitrum `0x1fc1ae...66a3af`; arbitrum `0x25e5a0...851daa`; arbitrum `0x2da252...79575a`; arbitrum `0x319b27...603f25`; arbitrum `0x3282e1...6cc795`; arbitrum `0x4d12ce...408cdd`; arbitrum `0x559955...c6c290`; arbitrum `0x5f2b34...8708d7`; arbitrum `0x62535b...d42b13`; arbitrum `0x66c1d5...903be8`; arbitrum `0x6e90a4...fa7337`; arbitrum `0x6fcd95...a55c54`; arbitrum `0x82c7d2...e8464b`; arbitrum `0x84c3d7...8a151a`; arbitrum `0x8626e4...268d8f`; arbitrum `0x87fd80...6b6813`; arbitrum `0x95d1c4...528d92`; arbitrum `0x96f6bf...9b74c4`; arbitrum `0x9f6b9a...2fa78a`; arbitrum `0xa05fb5...c8fb2c`; arbitrum `0xa4ffe7...7b5c62`; arbitrum `0xb925d6...88c509`; arbitrum `0xbb4d66...531f17`; arbitrum `0xbf7bea...9f7297`; arbitrum `0xc1f5cb...b22264`; arbitrum `0xc44f49...294493`; arbitrum `0xca5794...0ad19a`; arbitrum `0xcc565a...4ca881`; arbitrum `0xd347cd...b5c408`; arbitrum `0xdf6291...1e7a47`; arbitrum `0xe5dae0...96afda`; arbitrum `0xef9255...8c50fc`; arbitrum `0xfa645e...dd4801`; arbitrum `0xfc90bf...94a933`; arbitrum `0xfcd1dd...8b3111` | ⚠️ Unaudited |
| SymbolImplementationOption | unknown | bsc | 165 deployments: bsc [`0x003d3e...d2ea14`](./contracts/bsc-56/0x003d3ebf6363fa6d7bbcdecb2d318389cbd2ea14/); bsc `0x00d316...92f0ca`; bsc `0x0516c2...5e2ddd`; bsc `0x068538...f5327e`; bsc `0x0aeea3...a42550`; bsc `0x0b28b2...3df3bf`; bsc `0x0cafe1...4e9bc5`; bsc `0x0fea82...1f5add`; bsc `0x104bf8...ba022e`; bsc `0x13e280...ff7e37`; bsc `0x13f3a4...6172af`; bsc `0x14525c...a7d311`; bsc `0x16fa94...0aa16d`; bsc `0x174565...1a95ac`; bsc `0x17458a...ccbc26`; bsc `0x1c1cff...ddf62e`; bsc `0x1d899f...4f4d26`; bsc `0x1df424...e0c805`; bsc `0x1ea7b6...72cf27`; bsc `0x21b264...fb15f3`; bsc `0x2790cb...c51e9c`; bsc `0x292635...f4630e`; bsc `0x295bf9...088746`; bsc `0x2963cd...3690aa`; bsc `0x2a406c...0b6890`; bsc `0x2ddb15...b44764`; bsc `0x2e7b1a...ee0351`; bsc `0x2f5460...b0cea6`; bsc `0x33a4e3...a504f0`; bsc `0x35c2e8...46a1a9`; bsc `0x36615c...9ee3ec`; bsc `0x3a6ac8...a880f3`; bsc `0x3df211...b4b3d5`; bsc `0x407b83...8c96c3`; bsc `0x46ce98...86297b`; bsc `0x4b699a...b290c5`; bsc `0x4c87ea...01e5ea`; bsc `0x4da949...fdb4c8`; bsc `0x52cb5c...2fe6a7`; bsc `0x52fb82...9e3cc8`; bsc `0x541e31...2788bd`; bsc `0x570dfb...7c97da`; bsc `0x5c7ac1...5b3909`; bsc `0x5d4983...dc1bc7`; bsc `0x5f6b8e...1513f7`; bsc `0x5fff7f...d9ae30`; bsc `0x62de5a...c4e923`; bsc `0x667d4a...5b9acd`; bsc `0x67ad50...9876d3`; bsc `0x67bc0b...5c818c`; bsc `0x6800e4...2f5295`; bsc `0x6a12c7...8b6f3a`; bsc `0x6ad54b...2c1f1a`; bsc `0x6c95ad...4ae6cd`; bsc `0x6d5e5a...648371`; bsc `0x704023...94cf8a`; bsc `0x74ed49...7e173c`; bsc `0x76ca12...8c7454`; bsc `0x78416d...ac2341`; bsc `0x78a4c3...8ac445`; bsc `0x7a9a4f...c3d52f`; bsc `0x808fbe...081ab6`; bsc `0x809bf3...909c38`; bsc `0x852ff2...6324c6`; bsc `0x86e915...33b4c4`; bsc `0x8a9a03...c75ce1`; bsc `0x8bd3d0...846131`; bsc `0x8bd921...a56ce2`; bsc `0x8d26e2...41f541`; bsc `0x8f7cbc...454b7d`; bsc `0x91628b...1cde16`; bsc `0x9190d4...39213e`; bsc `0x9243ad...3bb77f`; bsc `0x9d17d5...a40314`; bsc `0x9d5580...3c9383`; bsc `0x9d6d55...b1f865`; bsc `0xa0145e...5411ea`; bsc `0xa5d744...b57245`; bsc `0xa6906d...6378e2`; bsc `0xa9e280...79676f`; bsc `0xac0406...4a1b09`; bsc `0xb132d1...ef4a91`; bsc `0xb1bf34...7c6269`; bsc `0xb28bd2...8dbcd0`; bsc `0xb45578...67296b`; bsc `0xb46722...c8dfc3`; bsc `0xb4afc8...7249c1`; bsc `0xb510f2...b3ae0d`; bsc `0xb51f18...40d82c`; bsc `0xb7ac61...b89c1e`; bsc `0xb8119e...b629e4`; bsc `0xb85f8c...64dc0a`; bsc `0xbaa1c8...ebdb36`; bsc `0xbae49c...a18c30`; bsc `0xbc46c1...6f3314`; bsc `0xbe28cb...080c76`; bsc `0xc086d3...4c5deb`; bsc `0xc33d2f...a9d046`; bsc `0xc4c1c7...cf07fd`; bsc `0xc5b1a4...49b9ff`; bsc `0xc7c679...886101`; bsc `0xc80cd4...5db150`; bsc `0xca16fa...bde505`; bsc `0xca2d66...6acdba`; bsc `0xca72b2...561d15`; bsc `0xca7f2a...e8cf96`; bsc `0xd29192...8a2789`; bsc `0xd3852f...0b0b1c`; bsc `0xd3e48e...015ba2`; bsc `0xd49aca...31b809`; bsc `0xd4fe30...b4f04d`; bsc `0xd5b6ad...3029d7`; bsc `0xd700e9...9e8edf`; bsc `0xd7ece2...393a56`; bsc `0xdf9155...d291a3`; bsc `0xe03950...b0ecd0`; bsc `0xe5c6a3...5f9950`; bsc `0xe6c0ef...e4cb93`; bsc `0xe7aa4a...3083ae`; bsc `0xed1413...74af16`; bsc `0xf1fce7...ee04e2`; bsc `0xf452f4...7cf3fa`; bsc `0xf4f45f...bf6423`; bsc `0xf888d2...5dfe3c`; bsc `0xf90009...2ebc95`; bsc `0xf9617c...60214c`; bsc `0xfc15b0...2a7a3d`; bsc `0xfcf3f3...c1dbaf`; bsc `0xfda360...4a3ad1`; bsc `0xfdf26a...e829c4`; arbitrum `0x0141a2...8fa225`; arbitrum `0x070b72...c18c1e`; arbitrum `0x1b99ed...3a09f6`; arbitrum `0x29ff1c...1ae98b`; arbitrum `0x30852f...3b0324`; arbitrum `0x3977e7...fd8bb1`; arbitrum `0x48426b...b2e90e`; arbitrum `0x4be262...e5030e`; arbitrum `0x505717...79c3eb`; arbitrum `0x556ca1...521c60`; arbitrum `0x625bb3...fb2b52`; arbitrum `0x6633e4...dd68c0`; arbitrum `0x6d4eb8...9e1f38`; arbitrum `0x7d63a3...907109`; arbitrum `0x7e573b...82755e`; arbitrum `0x81a8be...3e368c`; arbitrum `0x867093...fcb2e9`; arbitrum `0x87c8ba...0cfc8e`; arbitrum `0x8b7c97...4c1800`; arbitrum `0x8d9f69...6c9415`; arbitrum `0x9d39d4...1c93f5`; arbitrum `0x9f717f...99858d`; arbitrum `0xa36b48...67e868`; arbitrum `0xb79ecb...5e0107`; arbitrum `0xbccfa3...20d3d4`; arbitrum `0xbf9db4...53e3f2`; arbitrum `0xc7eb25...adbeb2`; arbitrum `0xd61e86...8e7f88`; arbitrum `0xe52e3e...31aec8`; arbitrum `0xee70a3...0e0b79`; arbitrum `0xf0d21d...c648db`; arbitrum `0xf1d4e4...14eb5b`; arbitrum `0xf6b93b...0f4c61`; arbitrum `0xfc6cd8...1fe6f7`; arbitrum `0xfcab4f...bd6c43` | ⚠️ Unaudited |
| SymbolImplementationPower | unknown | bsc | 17 deployments: bsc [`0x01182d...e84778`](./contracts/bsc-56/0x01182d7e8b2cd7576b83520c36c16b125de84778/); bsc `0x1f043f...c933c6`; bsc `0x444bf3...d00547`; bsc `0x49e38b...3385b9`; bsc `0x59eee7...0d379d`; bsc `0x6d81a0...d30f42`; bsc `0x71e192...ad9d79`; bsc `0x7e6a1e...3cc031`; bsc `0x9d24ec...fd1397`; bsc `0xc7ccde...855b64`; bsc `0xd18776...89b6b9`; bsc `0xdfc6d9...fc2d62`; bsc `0xff1bf8...460291`; arbitrum `0x1a03b2...76da2a`; arbitrum `0x447482...ad982a`; arbitrum `0x7d3aec...8102e1`; arbitrum `0xc4f380...0da211` | ⚠️ Unaudited |
| SymbolOracleWooOld | operational_periphery | bsc | 7 deployments: bsc [`0x25c928...01310b`](./contracts/bsc-56/0x25c92823bdeee15c43c8e74d8ad6ec1afe01310b/); bsc `0x69453b...7aee77`; bsc `0xa0f51e...5bd39b`; bsc `0xa356c0...a84fa4`; bsc `0xc8e3a8...5050f0`; bsc `0xe5709f...a55857`; bsc `0xfb395c...6147bb` | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 4 deployments: bsc `0x482876...49bfe1`; bsc `0xd2450d...f83261`; arbitrum [`0x150465...6ce98a`](./contracts/arbitrum-42161/0x150465f2239f4f6aaf0a50ad2e8b8a3fcb6ce98a/); arbitrum `0xfb0bc0...24245c` | ⚠️ Unaudited |
| TokenAirdrop | operational_periphery | arbitrum | [`0x04fc84...f29372`](./contracts/arbitrum-42161/0x04fc8424e78f5cadeafdf4ec67b267e73cf29372/) | ⚠️ Unaudited |
| TradeReward | unknown | bsc | 4 deployments: bsc [`0x0da143...43c892`](./contracts/bsc-56/0x0da14380ac829caced1e00f4f4b57ffcf643c892/); sonic `0xaa00cb...921a04`; base `0x28a41c...c8550f`; base `0x76e18d...93a31f` | ⚠️ Unaudited |
| TradeRewardImplementation | unknown | sonic | 3 deployments: bsc `0xe89394...2f9fc6`; sonic [`0x2ae67d...3ad276`](./contracts/sonic-146/0x2ae67d0107d75b2a38890d83822d7673213ad276/); base `0x932c19...37fae4` | ⚠️ Unaudited |
| VaultImplementation | core_logic | bsc | 6 deployments: bsc [`0x1b53ff...54b2bd`](./contracts/bsc-56/0x1b53ff59d6278bf32a77f020367f3e88f554b2bd/); bsc `0x9f9a5c...9fe54c`; bsc `0xb0c67b...d6ac20`; arbitrum `0x2373da...ffbee0`; arbitrum `0xfb83d5...3c5673`; arbitrum `0xfc6688...ae7f66` | ⚠️ Unaudited |
| VestingVault | operational_periphery | ethereum | 26 deployments: ethereum [`0x05aff2...e54966`](./contracts/ethereum-1/0x05aff24f7f653d2f067917c0b157f84971e54966/); ethereum `0x1383a7...8f17bc`; ethereum `0x2371d9...9fc835`; ethereum `0x2c47a5...ef3114`; ethereum `0x3209b2...1cbf38`; ethereum `0x32976c...fd92cc`; ethereum `0x3a558c...32d817`; ethereum `0x49e1e1...892404`; ethereum `0x5d3912...b19004`; ethereum `0x5d9739...352de3`; ethereum `0x626df3...10e8f0`; ethereum `0x67ddf7...8bbe51`; ethereum `0x764514...d3eb98`; ethereum `0x7afd3d...59b16a`; ethereum `0x90fe97...94a997`; ethereum `0x914261...669657`; ethereum `0x917f84...957119`; ethereum `0xa58b6a...5cf19e`; ethereum `0xb50c42...493933`; ethereum `0xb6d551...df1ed1`; ethereum `0xd8b999...902fa5`; ethereum `0xda9369...43c70e`; ethereum `0xe416fb...2ef380`; ethereum `0xf74ef1...341535`; bsc `0x20bd69...697d7c`; bsc `0xab9306...e48bea` | ⚠️ Unaudited |
| VolatilityOracleOffChain | operational_periphery | bsc | 2 deployments: bsc [`0x0d99a2...b11da1`](./contracts/bsc-56/0x0d99a20e9ef71ab554f5a79494e330f930b11da1/); bsc `0xe6e48a...9d0299` | ⚠️ Unaudited |
| VoteImplementation | unknown | linea | 8 deployments: ethereum `0x9f5089...07f592`; ethereum `0xb1d2e2...509042`; bsc `0x29b463...3234d4`; bsc `0x2daac8...0e409e`; bsc `0x8ff560...b8b782`; arbitrum `0x56f9c5...1ba0a8`; arbitrum `0x952814...df79bc`; linea [`0x0aa61d...51c19f`](./contracts/linea-59144/0x0aa61d3e68aeaa8f2f1ca7a498b917584e51c19f/) | ⚠️ Unaudited |
| VoteImplementationArbitrum | unknown | arbitrum | [`0x9fe787...298be0`](./contracts/arbitrum-42161/0x9fe7870ddec43ea86f75eee6dfce4e0337298be0/) | ⚠️ Unaudited |
| VoteImplementationBnb | unknown | bsc | [`0xc24dbe...5915e4`](./contracts/bsc-56/0xc24dbe91022a6ae0fabf66f3b3f3b280465915e4/) | ⚠️ Unaudited |
| VoteImplementationEthereum | unknown | ethereum | [`0x1798cf...4023c2`](./contracts/ethereum-1/0x1798cf111d7ff51e9f61b88ca68b97dde34023c2/) | ⚠️ Unaudited |
| VoteImplementationLinea | unknown | linea | [`0xdf64be...b932aa`](./contracts/linea-59144/0xdf64be0f92b40255457283f1ff0ce0b456b932aa/) | ⚠️ Unaudited |
| WooOracleOld | operational_periphery | polygon | 4 deployments: bsc `0x60dda0...a95206`; bsc `0xc686b6...687302`; polygon [`0x1b531b...52d954`](./contracts/polygon-137/0x1b531b26f1844c3479c6a5a518c2f3317f52d954/); polygon `0x55fb31...ef2e4d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Swapper | adapter | bsc | 9 deployments: bsc [`0x14200c...4d7c47`](./contracts/bsc-56/0x14200cc7446d9fb32f75dff1526699cd164d7c47/); bsc `0x4ef3d1...df7c49`; bsc `0xe2f57d...bf1323`; bsc `0xff63a2...f3a09b`; sonic `0x9a34b3...3f5cac`; manta `0xbca443...7664f2`; base `0x47826c...41c420`; arbitrum `0x168445...e9d16e`; blast `0x9a34b3...3f5cac` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (6)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | unknown | sonic | 39 deployments: ethereum `0x7826ef...042fd8`; bsc `0x1f0949...72426f`; bsc `0x2156d0...a43ea0`; bsc `0x35b3ed...59afd1`; bsc `0x4a99b1...847f79`; bsc `0x4d58e7...d8673f`; bsc `0x6712de...2dd968`; bsc `0x673a37...ca320a`; bsc `0x6c8d3f...3c6e17`; bsc `0x772983...55021f`; bsc `0x7bf1fb...b151ea`; bsc `0x932c19...37fae4`; bsc `0x966d80...6cfc04`; bsc `0xaf1bf1...f474a7`; bsc `0xcf6f8a...9cfafc`; bsc `0xd68dad...80eae3`; bsc `0xe354e7...91dcc6`; bsc `0xeacb62...d323e2`; bsc `0xfd7324...4efd70`; polygon `0x83e8f4...a66844`; sonic [`0x050542...db1055`](./contracts/sonic-146/0x050542be6b6312b6252ab40a78984c058bdb1055/); sonic `0x60444e...9bc536`; sonic `0x87664d...4ecd02`; sonic `0xb7f664...a569a3`; base `0x1b012c...a79d00`; base `0x27ca2a...f46c1a`; base `0x2ae67d...3ad276`; base `0x513930...c7ac76`; base `0x6350ea...a37d0d`; base `0x7b8bcf...f44683`; base `0x93e6e4...ecf56a`; base `0xcf82aa...f4770d`; arbitrum `0x34fccd...82a714`; arbitrum `0x66e44d...60bbc7`; arbitrum `0xc8eef1...4ac141`; blast `0x1e2192...924b90`; blast `0x4bcfc0...7666aa`; blast `0x662720...87d216`; blast `0x87bda7...7b605f` | ⚠️ Unaudited (bytecode match) |
| Oracle | operational_periphery | arbitrum | 8 deployments: bsc `0xb7f803...29e9d5`; sonic `0xbca443...7664f2`; manta `0xb22c5a...90d2f6`; base `0x9a34b3...3f5cac`; arbitrum [`0x0dacaa...46b75d`](./contracts/arbitrum-42161/0x0dacaa722de47584f17caa7b7b0db3763c46b75d/); arbitrum `0xd3d89a...9f730e`; linea `0x3b823d...3a0941`; blast `0xbca443...7664f2` | ⚠️ Unaudited (bytecode match) |
| OracleImplementation | unknown | linea | 5 deployments: bsc `0x473f62...8db375`; sonic `0xbf151b...5f5044`; base `0x72afda...9f5937`; arbitrum `0xce1edf...9d1082`; linea [`0x2b71fe...e5dfb9`](./contracts/linea-59144/0x2b71fedd1d404bfa713b9582c6926d4732e5dfb9/) | ⚠️ Unaudited (bytecode match) |
| OracleManager | unknown | arbitrum | 9 deployments: bsc `0x1f8e10...f4c27a`; bsc `0x338d67...77db5d`; bsc `0xa23964...a39250`; bsc `0xab4a33...5a0316`; bsc `0xb6e4f6...49affe`; arbitrum [`0x0c9cd6...7c5499`](./contracts/arbitrum-42161/0x0c9cd6188b2b8fdf7d22b9789f77396e967c5499/); arbitrum `0x8e959a...9abeca`; arbitrum `0xa7d4c3...2da617`; arbitrum `0xcda602...4c4e5b` | ⚠️ Unaudited (bytecode match) |
| OracleOffChain | unknown | arbitrum | 72 deployments: bsc `0x06b293...1fbb92`; bsc `0x0e35fa...d4016b`; bsc `0x11f6a7...b5fb8a`; bsc `0x15b4d6...18d2f1`; bsc `0x18f2cb...9f44c6`; bsc `0x1e2192...924b90`; bsc `0x252bf1...5973e5`; bsc `0x263191...f23d32`; bsc `0x2d1b20...e77c48`; bsc `0x37afdc...0a5d2f`; bsc `0x3a342d...3a545c`; bsc `0x3d655d...d747af`; bsc `0x3ddf13...6ad4ea`; bsc `0x3eb861...7d3e7a`; bsc `0x41c600...a6fbfa`; bsc `0x4210b9...c8aaf1`; bsc `0x4451a4...d49693`; bsc `0x47826c...41c420`; bsc `0x481022...e482fc`; bsc `0x528980...cf16f9`; bsc `0x52b24f...65962b`; bsc `0x55746a...573a66`; bsc `0x568483...2b0fd2`; bsc `0x57c477...9836c3`; bsc `0x5a33b6...0f4c0a`; bsc `0x5ced26...1d4d70`; bsc `0x5f8b57...c983df`; bsc `0x65c676...e07b00`; bsc `0x662720...87d216`; bsc `0x67bdd6...a2f828`; bsc `0x73ce30...ec1d1f`; bsc `0x763f02...33f429`; bsc `0x7c2290...f2a7c3`; bsc `0x7e401c...b59748`; bsc `0x80f004...e73f00`; bsc `0x87664d...4ecd02`; bsc `0x88c72e...e088d9`; bsc `0xaef768...2818aa`; bsc `0xb0c95b...c99992`; bsc `0xb5284e...1c920c`; bsc `0xb78f73...b4f292`; bsc `0xb7f664...a569a3`; bsc `0xb856f1...ee89be`; bsc `0xbb136f...59426f`; bsc `0xbbe429...72ac3a`; bsc `0xbe0c3d...4f4a76`; bsc `0xbf151b...5f5044`; bsc `0xc26293...718a30`; bsc `0xc5fb76...ea39d6`; bsc `0xc6b826...8da45c`; bsc `0xd008f8...b64335`; bsc `0xd30dbe...04ea66`; bsc `0xd4e08c...1f6032`; bsc `0xd79c39...d576a5`; bsc `0xd7ec94...d46c2e`; bsc `0xda1120...eea278`; bsc `0xde33b9...c7a5d3`; bsc `0xdf8588...84fc6f`; bsc `0xe49b25...5b7dbf`; bsc `0xefe119...b0dba1`; bsc `0xf964b6...8aaca1`; arbitrum [`0x039738...bf7872`](./contracts/arbitrum-42161/0x0397384d371f898c25a8062ba041434560bf7872/); arbitrum `0x0e35f3...ea5826`; arbitrum `0x5aad6c...89088d`; arbitrum `0x7a9f15...286aba`; arbitrum `0x9a5135...9a27d5`; arbitrum `0xba0f6f...53cf93`; arbitrum `0xbc92b4...838f19`; arbitrum `0xc5f5a8...0ac086`; arbitrum `0xce60da...2b85d8`; arbitrum `0xd54aae...6a6bba`; arbitrum `0xd679bb...2f5c8d` | ⚠️ Unaudited (bytecode match) |
| Symbol | unknown | bsc | 68 deployments: bsc [`0x0daa6d...3017f2`](./contracts/bsc-56/0x0daa6d5ec128cfb3f3d0436db9246d95eb3017f2/); bsc `0x0ddde9...aa2b09`; bsc `0x1ad766...e83935`; bsc `0x263967...ba0b1b`; bsc `0x35edb7...9b09d4`; bsc `0x3ff8c3...a7d26e`; bsc `0x56ccf2...b45e1a`; bsc `0x575876...c1d99e`; bsc `0x675cab...62320a`; bsc `0x6f257c...b5d6d7`; bsc `0x766f7a...7ce407`; bsc `0x7bca97...99edbf`; bsc `0x7cf8a5...cc0399`; bsc `0x8677d2...848bab`; bsc `0x8957dc...50d853`; bsc `0x9ad89a...325f09`; bsc `0x9faa2c...31c18c`; bsc `0xb35485...9f873f`; bsc `0xba200d...7c6af5`; bsc `0xbd419b...c3523f`; bsc `0xcb6eb1...445f0b`; bsc `0xec146c...76bcbc`; arbitrum `0x13589a...35db01`; arbitrum `0x14f051...3993f0`; arbitrum `0x17ed51...d407ec`; arbitrum `0x1ced82...fc147f`; arbitrum `0x218d91...b9ef45`; arbitrum `0x27e616...a99053`; arbitrum `0x29485d...5dea36`; arbitrum `0x2e45f7...fe894f`; arbitrum `0x462846...47d1dc`; arbitrum `0x4ca772...046727`; arbitrum `0x53f9d8...353143`; arbitrum `0x568a2e...106621`; arbitrum `0x596c92...7bb3d8`; arbitrum `0x5a20d3...4b9c77`; arbitrum `0x5d16d3...959b65`; arbitrum `0x635bcb...0a214e`; arbitrum `0x733b80...f91a8d`; arbitrum `0x74079a...adf991`; arbitrum `0x837731...68bf36`; arbitrum `0x8619b6...08062a`; arbitrum `0x874739...b31692`; arbitrum `0x8a5fd0...ff8ae7`; arbitrum `0x8c415e...df183e`; arbitrum `0x9d3c4f...bf486b`; arbitrum `0xa4b6db...0b5cd8`; arbitrum `0xa66d10...055a03`; arbitrum `0xaea207...3afb4c`; arbitrum `0xb54160...a2938d`; arbitrum `0xb54c04...c38a2a`; arbitrum `0xb5768c...b0ae08`; arbitrum `0xb6783f...940901`; arbitrum `0xba7c80...914513`; arbitrum `0xbb4d8d...1dc365`; arbitrum `0xbd67f8...15185e`; arbitrum `0xbe5fa9...fe7b1c`; arbitrum `0xc4854a...ff3b63`; arbitrum `0xc5540b...18f0e3`; arbitrum `0xc8dccf...d3b060`; arbitrum `0xd4147d...db5333`; arbitrum `0xd8c15d...1bca8e`; arbitrum `0xdb5210...c9a328`; arbitrum `0xecd6f1...97aed1`; arbitrum `0xeda025...e764ce`; arbitrum `0xef6de3...18192c`; arbitrum `0xf16863...1f237b`; arbitrum `0xf9915f...b88da2` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (767)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x5b2a2ed151e89035dd1e362b137bb8b71e391481) | proxy | linea | `0x5231d2...383298` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57a20f...b6dcea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x009770...f37847` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x00995b...a9537d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x014864...7ef9bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x035e28...bb4178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03c110...49c205` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03ee1b...1660c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03fb0e...855e01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x05f7ca...9f0e69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x065f76...d6fa89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x073f99...4ba368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0751ea...7eb43a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0758f3...0f3c6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x078623...ab8aa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x081ffc...f228e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x089bbb...ce85b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08aa47...246520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x095bd1...71c090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b11dd...81d0e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b28c9...7626b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b4c5d...8981af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0c63b6...a6465c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ced19...df784d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0d0437...24f990` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0d4521...959113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f5af2...428ad4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0fa46e...6fb03a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x102f3c...498175` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x10ef56...113a76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x111e8b...e6605c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1262a4...61df28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x138f51...2d1a64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x13ad00...e46dc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x147073...190604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15e209...a3abc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x164de3...ef8739` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16673d...075553` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x168308...de2ba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16de81...736c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17d70e...b65676` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17dd77...f6ffeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18f5a8...149836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1916d7...09f7d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x198d53...5b1400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x198d92...720f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1adfe1...1ae220` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b007e...f6de73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b616b...c9b194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b87ce...89de6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1bceb8...578925` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c7b15...9a0c86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c818a...765ea1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1cd121...c86813` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d972e...f690a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e2adf...27e113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e92e2...ef17db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e9ba2...31bd3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f85c0...4043cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x201ab9...2999d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x20576f...1b8338` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x20a333...8a6c92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x220c40...c93200` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x226145...cddd80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2442bc...9f8c72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x257a6c...86368d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2753d7...4dd18d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x282a7e...d1972b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28d46d...e4dbe6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x294b3f...76d0bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2a57d9...141249` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2a81b3...f61173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2aebb2...85ee42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d0b14...ac0499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2df9d7...22ed16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e0070...e34806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e2ff5...04710f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e964f...4771fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f2f10...034884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x309a37...c3a713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3159ce...7082d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31b336...6a503e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32548c...19e591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x335239...f09de7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x346a3c...d1910a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x34aa81...40941c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x34f310...5ad7e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x353cc1...00afc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3608c0...cd8e3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36a9e4...f8a35b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3742c5...323998` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x383635...97d2eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x38901c...8ca147` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x389358...01e65d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x393de3...4aecac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39603d...01c9fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b93ce...92f32d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3baf0c...8bca79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3bec61...b56595` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d866d...c7eaa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3edcf4...c56c46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ff948...d23087` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x40008e...152e26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x402f33...3ea137` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x408bbf...fa6c3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x417747...c7d578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42ae17...049d4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x449b20...1121b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x455e2a...d4916f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x466efa...5f497a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4712a4...53c69b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4758e4...aea673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47dcee...5b60d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47f3d9...0aa1f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47f9e4...802068` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x486121...8a8fb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x487120...4e1422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49e0bf...578ad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b50da...cd5418` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4cd9d0...a01fe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4eb0b4...127333` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ec308...fa9cc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4f73b2...39f14e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x509e27...7825f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x50fb8f...5b9fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x513e39...145139` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x51ad8b...771660` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x535dec...ebd5a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x53e0d0...dfc09c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57a694...2ae884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5968bc...6c82d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5998d3...438282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x59f6c4...84cd5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a4e50...c26aba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a6084...5db827` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a67c5...d867bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5b26b0...4c7a69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5bb7c4...378b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5bedb7...7db278` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c71c0...17dcba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ca235...61e638` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5d494f...397f72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5d9e9e...f00432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ea911...24b3ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f0a8c...38a1aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x602afd...71bf56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60444e...9bc536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61ef4d...60ade6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x62be1a...bb7ced` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x62f0fc...312832` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63715c...e76d9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64bda3...52588e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64f1ae...8041fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x651b48...2833fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x65baa4...2e8e3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6606da...9ba6ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x66caa9...edc50c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x672c0c...ee509b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6763f8...3b55e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6820d9...cda915` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68f047...ffa4a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68f0f9...bc27b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68f8fa...0e025e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69681d...6f7279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69a1be...f7b6ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69f881...5f4827` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ba8c6...422ddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6bfadc...dc2461` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d9e56...c32cb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f9df4...259e88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x71c60c...267565` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7254af...7c73be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x72e950...acf91e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x75349a...4758e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x78b842...377336` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x791e6b...8fdb68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a1cef...6afeb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b11c1...e87f79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b88e4...cafbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bc99f...bf398b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c0219...3f0bdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c12cd...a89cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c756b...bb7459` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7daaec...576a3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f05c1...348f05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f7f1e...e97f82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7fdce7...351109` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7fe0f6...edb4ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x803a6e...cbeb12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x812563...6cb8fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x820f34...bca800` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x824b1f...facdeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x825dac...1a4bb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8289ac...d3f21f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x841899...573f61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x844627...825069` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x84c504...f1982a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x858409...4f8219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x859840...8a2efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86933e...79af13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x869f86...d16de5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x87672a...bb5879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x87f213...cc5e48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x881119...fc5c09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x890ff8...b741c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8952d9...76ff78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x897e4e...b563e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cc00f...7359db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cc8fa...201032` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8daae3...fa4848` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8df644...4daffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f3d8b...c5f95a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x906d1e...5c4bc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9081ef...b91fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90897b...d08097` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90cb65...7ada45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90f1a7...29294e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x918755...fe76f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x91a87a...68d8f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x922101...36e9e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92a247...1a5a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92e684...c4da70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x936132...437019` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9453aa...f76d1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x947052...263880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95ede4...c2c723` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x96835f...32fbe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97bf23...37f6dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97c58b...c35985` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9836a3...8c616a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x985a85...6192fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x98e912...2b04db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x99b4e4...011f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x99f06a...79203c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9a341c...b118c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9d2ae8...dcb811` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9f23e5...9651ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa10f15...1f82de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa16770...228b3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa32000...a3d136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa36209...d32c34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa38fc1...b4457c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3d0c7...bbb09b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa59f52...24380c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa625f5...df5e95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa6868e...ad3994` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa6bdcb...d10832` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7fdca...88bfb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa80597...9dabb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa80a84...943f5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa819d0...0896af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa894fc...90d18d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa9684b...81eba9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa99ba9...c8f296` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaa3927...bc3c52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaadb29...bf56e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab17e4...2d1811` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad1c9b...9c8c27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xae96a8...ea9e36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb15420...9edc36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1ba7a...7a20ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1c70d...dc328c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1c965...9d2ab9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb22c5a...90d2f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2a3cc...291c3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb31b07...0c2f66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb32341...0c3ab0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb36281...3554d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb399d3...c7f5e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb487a7...0a48c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb52230...352d83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb63246...d79f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb77c26...b1d2d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb805e6...c247e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb80dc3...6e23fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb85b94...696201` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8a985...39ba4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8c625...ad0af0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8f8a5...348e0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8fe39...39d49a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb90b24...06f437` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb92088...9122c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb92be5...7f623f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9fbd1...5f91d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba77ce...f6b366` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbbdb1c...e1fc6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc4480...957db6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc5c30...1a3e8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc6a4f...e0e22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc94e5...0f83d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbf6bd6...b972db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbf9ecf...1b5730` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc0b527...ea3ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc157b7...4f1dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1abe2...4c6195` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc228ba...6f0871` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2ae3b...9d74bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2e592...d958ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2f248...1b0b74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc493d3...290726` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc4d4e5...403da3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc57a31...fa9845` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5fb03...7dfd3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc699a1...9cb7c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc81b3b...526e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8332d...0c40a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc90e29...f9b1c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc94cc6...5a4f9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc97675...048de0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9b86c...71bd40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xca0264...aeaa74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcade50...fa1ce9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb70f4...e30b72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb9646...28af8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc0f0c...1358e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd1604...bd1a37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd520b...fa212a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcdc1e6...d1a157` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcdcdff...82d2a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcdf2af...5097d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcdf80a...325daa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf12d1...745887` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf8d99...3fee2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfb80a...3c8cbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfb9a1...133405` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcff03f...d4f934` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcff408...533474` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd07ea9...5af657` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd092ca...530409` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd18a7d...4c1748` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1bbb5...a029df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd2480a...f58a00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd2d8e7...cff6e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd30210...b452cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd34c58...105f37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd369d8...57dab2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4d5ca...1acb15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4f82b...ad4935` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd58dca...943c20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5968c...c12f53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5abd4...e04ac9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd67556...d96c03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd728f5...738e73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7dee9...0b7d9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8fdb9...7213c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd91931...837229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9d106...cb09bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda3908...dd558b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdcf33a...eec92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde0363...8ec3e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde2fec...791204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe02920...72f710` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe035d8...1330e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe06204...84c3a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0c959...34fb30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe190cb...1cddc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe27391...ffccd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe2fc41...72dfd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe31047...7deefc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe32a81...2381a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe35df4...b101a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe360f7...5ff74f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe37dfb...331e49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe38970...67e7d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe3b42c...2c5423` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe3d9bd...3a829d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe45b3d...564bde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe48c16...9ba827` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe51383...26cd6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe54a6e...55983c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe568e1...491fad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe572b0...d30299` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe58ab0...3257dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5bfc9...6c939b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe6a26f...323160` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe6aee5...6a077d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe78bc5...c4e1d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe79991...91b895` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7ea7b...fe3591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe8abac...4bcf3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe914f8...d25853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe92099...3dbd42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe97601...6e719b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9948c...414c36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea0d44...b2265c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea3c7b...4b0235` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea46ae...ef748e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xedfbe7...17f27f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee3046...c4f91a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee45af...4a7e77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee779a...3681db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef2482...c9b81a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef27a9...8735cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefbe0b...ab7a99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf28517...f4c2ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf2c996...54b6e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf348ff...136899` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf3a7a2...e00f3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf4672f...963f86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf487f9...e6dbc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf601ed...80a2d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf606a0...216d30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf91f6c...82d7da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf92291...3b929d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfabcde...2861ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb6635...e05467` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc0338...04fcc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc43b7...d3303c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfca3ea...ab4fdd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd404b...606a19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfe4b03...b18185` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfe8b69...1e0796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff1647...91c8c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff5db4...2c6e8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x758735...4c2d86` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x05e0e6...861750` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1f0949...72426f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2156d0...a43ea0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x222776...b1d368` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2d1b20...e77c48` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3a342d...3a545c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4bcfc0...7666aa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x52b24f...65962b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5c7df5...95ee45` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5d9e9e...f00432` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6350ea...a37d0d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x673a37...ca320a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7988de...2f2f93` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7b8bcf...f44683` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x810999...7455f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x87b576...21e5f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x932c19...37fae4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x99ba8c...e327fe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9e5b50...672912` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa56dcc...052ed8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb2dfe0...743505` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc38bcd...b704be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc3e5f7...8f7dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc55fff...6306c5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc710f0...6d867f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc98cab...d77dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd6fe18...2f1812` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xdc6393...a6bef5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfb2d9e...98a196` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x011945...2afe8b` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x050542...db1055` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x0ef58d...bebc8c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x144f04...52d1f7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1605ff...765984` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1b012c...a79d00` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1b7232...35f6da` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1e2192...924b90` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1fe435...820f47` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x226ea3...a67cea` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2f2f10...034884` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x31716b...fc0176` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x353d97...afeb58` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x377f96...156d4e` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x3ca4ba...569b70` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4b10a5...d98a2f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4e714d...eb7d4f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x5c7df5...95ee45` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x5d9e9e...f00432` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x67bdd6...a2f828` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x763f02...33f429` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x772983...55021f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x799fcb...aa52c7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x7bf1fb...b151ea` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x8551cf...a8c753` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x93f2fc...a3efc7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9b9e7b...92a30b` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9e5b50...672912` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xab2070...888743` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xab43c2...d45ab9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xacc1eb...029ae2` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb85927...293957` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbc94e5...0f83d6` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbf151b...5f5044` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc3e5f7...8f7dc2` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc67cbc...284ed1` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc75c1b...9af12d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcccafb...ef1545` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcd39c1...909a1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xd008f8...b64335` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xd6fe18...2f1812` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xd80f36...23fd82` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xdac54e...d61779` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xdc6393...a6bef5` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xde5e3b...bda6a9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xe67e2f...5fa8a2` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xee602c...f003a9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf14737...e356b6` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf348ff...136899` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x34fd72...1962d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc7e484...85ee98` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xd4e08c...1f6032` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ba55f...0db1a8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x352634...4af3d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3cbadc...70ff21` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4bcfc0...7666aa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4cb0df...869170` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x53a8a3...1e2868` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57f403...8c2827` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72d85a...3eebf2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7ac481...828070` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7bcdd2...fbc143` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x816976...611793` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8551cf...a8c753` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xab43c2...d45ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb1401b...2c6ffb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb7f803...29e9d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc38bcd...b704be` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc66c2f...db250b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc67cbc...284ed1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcaa6ce...bcfcb2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf6f8a...9cfafc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd81a82...a576f0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xde81ae...961cc9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe414e2...549b13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf92291...3b929d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe28b1...8e2f33` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xffc843...6f958a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x001fc7...a4144b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00fba4...b10e5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x014806...8461c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01f778...ea540a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02a543...69ec93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x042902...216a8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05557e...37ac45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x06b5ec...ba4d5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x073600...e22775` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x07668d...fc3292` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x090eb0...4077f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0b796f...f31be5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0c08e0...13e197` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0d5b47...f45e4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0d9390...e9f2d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0dd217...8372f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0eb321...e5dbc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11e1bd...207959` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x13d9ec...fcb29e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x154065...1449c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x15f088...9853f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x161b2f...70e17e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x166cad...e0f02f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x16ad64...fa7427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17d1b3...abb293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x187848...674562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b261a...09ff68` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ca036...29be3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dd9f6...f77d16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x206b00...f67b50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2134ab...07e728` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x216315...87c9be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24a35a...8f6aaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25360f...6fdfa0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x28c99e...c004ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x293247...d904ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2a6f6e...22f83d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b1925...f5bfb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c415a...647753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e27c2...deac86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x333066...0c3a24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3373a7...acdb37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x34cb39...c48fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3884bc...c68e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ab9ab...b4d9d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3acd52...81462b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3bd473...d9a42a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e4d2b...16a10b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e9202...b44e80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x411142...358c52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x438140...67097c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4612dc...213e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x46bea6...73e908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x474758...c70801` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x482363...5ba0d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x496650...d44c28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4ad6f5...ca56c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4c84d1...10fc08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cc386...546d5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d4926...ccc9a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x51020b...0c163c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x51dac2...f490c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x51ec04...59fb1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x526237...2bebe5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x52fac3...fb6822` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x53b604...c6fcf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x54a7e9...be4ad8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x557428...ccb29c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x55c9b1...c20890` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x55d8ef...2c9225` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x568c6a...4f92c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x571c4f...31d8b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x574bf2...e953fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58a725...7a458e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x597e67...787019` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59ecbc...e149fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e5aa4...da6eac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5fb017...2d1c0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x601a47...feeec5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6022ae...fcca80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60e6ff...3d23b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6263f0...34e56b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x651c01...712709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6cdcac...2fe7c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6e6194...16d9a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f13d6...d4cb3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7057ba...8f12c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7488f7...0a2e8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x748f7f...d68d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x74f8ac...3ef100` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cdfd0...74f324` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7de75a...53bb07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f1cce...da224d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x818e60...d0a2f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x838c35...d1f7a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85c49b...1b3849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x886963...b69f56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x886c7c...e67d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8adebe...1fd8b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c465c...9e61ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cb261...58c24c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cbd7d...a4d2bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cbf6f...7547db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8e4cec...03c68f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f53cf...1aaa90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f7309...18cc0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x906b0c...e34d93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x919201...99d57b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92ce25...1215fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92d35d...236d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94926a...82244d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x954cf1...a20b97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95768a...2d7a40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95dce8...01ad91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x963cdd...87b3d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x96a313...b5852f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x971a39...68c0ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x974fae...f7db95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x982fc1...f293c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x983001...6830a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9c870c...13c3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d99ef...09fca8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e6fc9...3172db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9fffc7...0ed425` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa39a34...a71e07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa3b2f7...3c5442` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4ae52...0eca63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa60b42...5cfba4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa70621...da66cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa77b6e...39f983` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa77f3c...0586bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa86e3f...e10554` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa9c802...2876b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xab8979...49ef0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad4be0...e397e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae9184...a1ee76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf1712...aebd73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb049f1...1dad1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb1cd02...b95e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb30482...8fb18e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb39c21...0ccd4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5fd3c...289a6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8bb05...c693f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8d801...b115de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb93ed0...3ed57f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbaf001...41ab4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd0479...d3fbc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc01761...5a542f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc02696...b03b99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc222a9...f41602` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2acf3...b11af1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5dc74...644964` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc9d55c...c84609` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcb5398...4d70fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcb5ae7...79af6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc0144...71ca86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc6332...84031a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd6b42...dc8145` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdf0d3...7b42e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdf3a1...ecba3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce7f2d...005328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd0b7b3...e67dda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1c8e7...aca268` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd27223...ef2d82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd445d9...4ddab2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd47ce1...6e92d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd495d9...a72c1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd51f1b...a0b363` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd54af1...232e86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd56131...f093f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd62a71...cb757b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd849c2...e2c2ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc1f3b...c8b6fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd55a2...61fe29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd9ada...4846c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xddaf6f...b74abf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfa9f1...4baffb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdff4f9...e03c83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe177f7...9663e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe17f4c...0db32e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe30cfa...288fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3e3d2...ace320` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe42d82...ea4d4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe65b0c...0fe001` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe67a98...c079ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe7e975...2ea90c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe836d8...7acbf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9ec4e...009fd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb3596...94513e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xef7618...19712d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf05745...28844d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1974a...8dd75b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf2ad05...e1071e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3a042...7b79b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3edf9...9dd7ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf60633...8de189` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7c6e5...395d90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7fdde...38ed7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa6ac5...0c060b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa97c7...3dc5d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb0fae...6a68ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd5f5f...31e454` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd91a4...34b1b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfde071...f9a115` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x215385...9b3ea5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x363450...b15eb3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4489f4...59d672` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5a9dbb...2ea91e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5b2a2e...391481` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x79e5c8...140bc5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x837299...c852d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x871c0f...3d564e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8fea9d...c570f0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb5d815...708f7c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc79102...e45174` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0dd04f...a28063` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2156d0...a43ea0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x222776...b1d368` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x377f96...156d4e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3a342d...3a545c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x45f06b...c8b379` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x49644e...8b44fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4bc4ad...e075b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x589537...9c7348` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6395e2...9f1953` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7130cb...ea474a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x72afda...9f5937` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x799fcb...aa52c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x94ba42...b1b6a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9538e4...3df4fa` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa56dcc...052ed8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaa00cb...921a04` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xab6568...b8c44c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xabfc82...a5c76a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd91cea...c2d8b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd9a34c...024c93` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd9ba26...4eae9f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdac54e...d61779` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe2fc41...72dfd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf7b181...3ffb38` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfa6b58...74f172` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfb2d9e...98a196` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 15 | medium |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV3-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 55 | high |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Deri-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 42 | high |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/693bdb69e3e3e422b4f7e1f3130d841e631b4dab/audit_reports/PeckShield-Audit-Report-DeriV2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 71 | high |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/deriprotocol) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 10 | high |
| [PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf) | PeckShield | Audit | 2025-03 | aging | Direct | contract_name | 16 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/deriprotocol/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0a79e0...5cfc08`](./contracts/arbitrum-42161/0x0a79e067cec0da906d01463e9cc6d0f96e5cfc08/) | RewardVault | core_logic | $1.07 | Verified native implementation with $1.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x050542...db1055`](./contracts/sonic-146/0x050542be6b6312b6252ab40a78984c058bdb1055/) | Vault | unknown | $0.12 | Verified native implementation with $0.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x81b34a...a02d96`](./contracts/arbitrum-42161/0x81b34ae171489e6dac9fbe20defd3a8852a02d96/) | ArbitrumDeriBurnerImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf059d3...2db27d`](./contracts/arbitrum-42161/0xf059d3d7111810bacc834fb6f429652b792db27d/) | Broker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07637d...a42d4e`](./contracts/bsc-56/0x07637d9bd47090e6e3a87f230ba53520d2a42d4e/) | BrokerImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d3aa0...94a86f`](./contracts/polygon-137/0x2d3aa0e1aaece2e3a8b90b042821f02e9d94a86f/) | BrokerManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe2caf4...d8cfd9`](./contracts/polygon-137/0xe2caf44ad82bb9bf292e2c99bf2f14e992d8cfd9/) | BTokenSwapperAMUSDC | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x474d59...6681a4`](./contracts/bsc-56/0x474d598972b9c1b1b863a3c1aac1717b206681a4/) | Client | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x041bf7...12fccc`](./contracts/arbitrum-42161/0x041bf7155f2cc84a842ad196357842895612fccc/) | ClientImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d0b...52c33d`](./contracts/ethereum-1/0x290d0b924ebc9719fe52e540d4feaedc1b52c33d/) | CloneFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a34b3...3f5cac`](./contracts/bsc-56/0x9a34b3810d422373ba5128ffee880235003f5cac/) | Deployer2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa487bf...65d3b9`](./contracts/ethereum-1/0xa487bf43cf3b10dffc97a9a744cbb7036965d3b9/) | Deri | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08bce4...4870a4`](./contracts/polygon-137/0x08bce4df2b44987dead876abe2b24d3bd74870a4/) | DeriVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ed34a...df3ac3`](./contracts/ethereum-1/0x7ed34aaaeb9b6c61e4fe8e00ab585e8c4adf3ac3/) | DeriVoteWithPayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0339c5...bef3e0`](./contracts/bsc-56/0x0339c58f1f1d49d0a1772fce821a83d01ebef3e0/) | DToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xac59e6...463fc2`](./contracts/bsc-56/0xac59e68af8db86a10d228bed8b09437db2463fc2/) | EverlastingOptionPricing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032dc1...491c28`](./contracts/bsc-56/0x032dc128abe6e8cb7e2b0ab57336178ae0491c28/) | FundImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2bfc3a...25d8c1`](./contracts/bsc-56/0x2bfc3a75a8444db9a446c9b49ef2240fb125d8c1/) | GatewayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e617f...323b74`](./contracts/bsc-56/0x1e617f6a9c423aef25a382741e7b055725323b74/) | IOU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18f2cb...9f44c6`](./contracts/sonic-146/0x18f2cba9254d0b8854180cacad7b0567b39f44c6/) | LiqClaimImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35c8b3...247d07`](./contracts/polygon-137/0x35c8b3bb6ce67d9bf6b14a5ffc121a79d6247d07/) | LTokenLite | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f0949...72426f`](./contracts/base-8453/0x1f09493ea5350ca970df07b096946400a472426f/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4d58e7...d8673f`](./contracts/base-8453/0x4d58e77dfbd15ffa5398435f3fd6bd8667d8673f/) | ManagerImplementation | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d5613...61936e`](./contracts/bsc-56/0x8d5613451dc0592388f98d7ab1ce5a732561936e/) | MiningVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x74aad5...386ff2`](./contracts/polygon-137/0x74aad58e8d29a513df5a3accb6c2554efc386ff2/) | OffChainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0dacaa...46b75d`](./contracts/arbitrum-42161/0x0dacaa722de47584f17caa7b7b0db3763c46b75d/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2b71fe...e5dfb9`](./contracts/linea-59144/0x2b71fedd1d404bfa713b9582c6926d4732e5dfb9/) | OracleImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c9cd6...7c5499`](./contracts/arbitrum-42161/0x0c9cd6188b2b8fdf7d22b9789f77396e967c5499/) | OracleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3eb231...3fb4e8`](./contracts/base-8453/0x3eb23183397eaa587d6d6be243b5ee67973fb4e8/) | Orderbook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12d895...eaf8cd`](./contracts/bsc-56/0x12d895ea4f79b1920bfbe26b14013c60f1eaf8cd/) | OrderbookImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a9b1b...7e4819`](./contracts/bsc-56/0x1a9b1b83c4592b9f315e933df042f53d3e7e4819/) | PerpetualPoolLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc1b427...5dfa87`](./contracts/bsc-56/0xc1b427e149f5eff6178ea19ca61075376a5dfa87/) | PerpetualPoolLiteClonable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e3318...4702dc`](./contracts/bsc-56/0x5e3318aeaa226dc11571f19b96240d88b64702dc/) | PerpetualPoolLiteManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4b5cf...bf5631`](./contracts/bsc-56/0xc4b5cf0d0d592be32ac64f22c0bf210adfbf5631/) | PMMPricing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ef520...17b749`](./contracts/bsc-56/0x1ef520cc175ba4947e94d67e0cd39ab17b17b749/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x073e38...53908e`](./contracts/bsc-56/0x073e38afce94e5338917957dc5bb73230453908e/) | PoolImplementationLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03da5c...78fe2a`](./contracts/bsc-56/0x03da5cb10d868c5f979b277eb6df17d50e78fe2a/) | PreMiningPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c1c38...bf81df`](./contracts/arbitrum-42161/0x3c1c38ff015784b558f0bf10cab6e0a6c5bf81df/) | PrivilegerImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd85960...2c1ff3`](./contracts/bsc-56/0xd85960e1c28f7740b50e6848bfdc7b8f432c1ff3/) | ProtocolFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5559ea...4eecc4`](./contracts/bsc-56/0x5559eac15d38708d08d95146c63a90a5d84eecc4/) | ProtocolFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3fe590...8fa723`](./contracts/bsc-56/0x3fe5904431ff26a25ac12d322fa8e406508fa723/) | ProtocolFeeCollectorImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e3d74...169a06`](./contracts/bsc-56/0x0e3d745dcc255c8593af12464e8413d2d9169a06/) | ProtocolFeeCollectorImplementationBridgeBUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0dd04f...a28063`](./contracts/base-8453/0x0dd04f3e4225682a122e282b63066e000aa28063/) | ProtocolFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc15259...df6589`](./contracts/base-8453/0xc15259474390dd31dfb854f0684d642df1df6589/) | ProtocolFeeManagerImplementationBase | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6ccc1...e280f1`](./contracts/bsc-56/0xa6ccc17de048a9845ac06c2d4d390b4face280f1/) | ProtocolFeeManagerImplementationBsc | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x05e0e6...861750`](./contracts/manta-169/0x05e0e67cb54aef4475253d36d76ac46c98861750/) | ProtocolFeeManagerImplementationManta | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93e6e4...ecf56a`](./contracts/sonic-146/0x93e6e4d43f34c1bf9385ecbb0fce912537ecf56a/) | ProtocolFeeManagerImplementationSonic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x074f37...52ea28`](./contracts/polygon-137/0x074f37be1c9818b192acdb3b268baa52d052ea28/) | PTokenLite | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02ba01...be5735`](./contracts/bsc-56/0x02ba0190edae7e78c1bcc4649a1ee059c3be5735/) | PTokenOption | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1131e7...f2f5ea`](./contracts/manta-169/0x1131e79bcf6a6be85b8dc732bfcc412308f2f5ea/) | Rebate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01230f...f288ef`](./contracts/bsc-56/0x01230f266a4683de1d6e3f581becfbe19ff288ef/) | RebateImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1640be...bdbf2f`](./contracts/linea-59144/0x1640bead2163cf8d7cc52662768992a1febdbf2f/) | RewardVaultImplementation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05ef21...5a6116`](./contracts/arbitrum-42161/0x05ef2170c2ec937e5c786ff66653b47df35a6116/) | RouterImplementation | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43f907...02b59c`](./contracts/bsc-56/0x43f9070faded771aaaa54192b8c9cab32f02b59c/) | SmartAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x59b8f5...99deb1`](./contracts/bsc-56/0x59b8f591f82e5eab81034770b2e678c92a99deb1/) | SmartAccountImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01fb47...f13904`](./contracts/arbitrum-42161/0x01fb47225db4a0fdcd407c9f6806944f87f13904/) | StakerImplementation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cb879...db63e4`](./contracts/bsc-56/0x5cb87996bf3ba84e01b25787904a72f424db63e4/) | StakeStaderImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e2192...924b90`](./contracts/base-8453/0x1e2192f3f4a9ec283d74661a7db6a81d37924b90/) | SwapperImplementation | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x7b56af...be771d`](./contracts/scroll-534352/0x7b56af65da221a40b48bedccb67410d6c0be771d/) | SwitchOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x497e8b...775867`](./contracts/sonic-146/0x497e8b8357c62ec0688e5e2872ec3002be775867/) | SwitchOracleImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0daa6d...3017f2`](./contracts/bsc-56/0x0daa6d5ec128cfb3f3d0436db9246d95eb3017f2/) | Symbol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x059a14...176449`](./contracts/bsc-56/0x059a14b4422c7b4f45a417eca18aaea27a176449/) | SymbolImplementationFutures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x003d3e...d2ea14`](./contracts/bsc-56/0x003d3ebf6363fa6d7bbcdecb2d318389cbd2ea14/) | SymbolImplementationOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01182d...e84778`](./contracts/bsc-56/0x01182d7e8b2cd7576b83520c36c16b125de84778/) | SymbolImplementationPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04fc84...f29372`](./contracts/arbitrum-42161/0x04fc8424e78f5cadeafdf4ec67b267e73cf29372/) | TokenAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0da143...43c892`](./contracts/bsc-56/0x0da14380ac829caced1e00f4f4b57ffcf643c892/) | TradeReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2ae67d...3ad276`](./contracts/sonic-146/0x2ae67d0107d75b2a38890d83822d7673213ad276/) | TradeRewardImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b53ff...54b2bd`](./contracts/bsc-56/0x1b53ff59d6278bf32a77f020367f3e88f554b2bd/) | VaultImplementation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05aff2...e54966`](./contracts/ethereum-1/0x05aff24f7f653d2f067917c0b157f84971e54966/) | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d99a2...b11da1`](./contracts/bsc-56/0x0d99a20e9ef71ab554f5a79494e330f930b11da1/) | VolatilityOracleOffChain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0aa61d...51c19f`](./contracts/linea-59144/0x0aa61d3e68aeaa8f2f1ca7a498b917584e51c19f/) | VoteImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9fe787...298be0`](./contracts/arbitrum-42161/0x9fe7870ddec43ea86f75eee6dfce4e0337298be0/) | VoteImplementationArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc24dbe...5915e4`](./contracts/bsc-56/0xc24dbe91022a6ae0fabf66f3b3f3b280465915e4/) | VoteImplementationBnb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1798cf...4023c2`](./contracts/ethereum-1/0x1798cf111d7ff51e9f61b88ca68b97dde34023c2/) | VoteImplementationEthereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 618 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 246 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=280

Zero-match audit list:

- [3694] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
