# Agentic Audit Brief: Azuro

## Project Overview

- Project: Azuro (`azuro`)
- Website: [https://azuro.org](https://azuro.org)
- Lifecycle: active (Tier 0, 89.5% below peak)
- Generated: 2026-06-18T04:30:01.657Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, base, bsc, gnosis, linea, polygon
- Contract surface: 129 unique implementations (386 raw deployments)
- DeFi Llama TVL: $1,638,884.71
- On-chain TVL (included contracts): $9,783,429.12
- TVL by chain: Polygon $9,783,429.12

## Project Description

Azuro is infrastructure for on-chain betting and prediction markets, providing liquidity, market, oracle/resolution, and payout tooling for applications built on the protocol. It should not be characterized primarily as project-owned cross-chain asset movement infrastructure unless supported by Azuro-specific documentation or audited code.

### Architecture

The Core Betting Engine relies on Liquidity and Vaults for funds and Oracles for outcomes, while Token Infrastructure enables cross-chain asset movement. Rewards and Incentives are distributed based on user activity within the betting ecosystem, all managed through shared Factory and Access control contracts.

## Contract Surface Quality

- Indexed contracts: 1958; live-surface contracts included: 386 (69 live, 317 unknown).
- Excluded by liveness: 721 inactive, 851 singleton, 0 uninitialized.
- Deployment units: 4/291 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/44 (9.1%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 1
- Unverified implementations: 85
- Unique implementations: 129
- Raw deployments: 386
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $9,783,429.12
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 9.1% | 2025-04 |
| Pessimistic | Tier 2 | 3 | 6.8% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AzuroBet | unknown | bsc | n/a | 3 deployments: bsc [`0x92baea...ee9e17`](./contracts/bsc-56/0x92baea8bcd5b10d1a76e154d23cf63f918ee9e17/); gnosis `0xb912a9...0e14df`; gnosis `0xe57125...995002` | ✅ Audited |
| Core | unknown | gnosis | n/a | 7 deployments: gnosis [`0x99cff7...41bc6f`](./contracts/gnosis-100/0x99cff71da8fb4af922f94874d76dad24f741bc6f/); gnosis `0x9a8e86...0cfe6a`; gnosis `0xad31c1...668eff`; gnosis `0xbc6243...9198ba`; gnosis `0xcfd106...fb522d`; gnosis `0xe234d1...cb2c8c`; gnosis `0xfb5680...e1422f` | ✅ Audited |
| LP | unknown | base | n/a | 18 deployments: bsc `0x934097...2a8d17`; bsc `0xd10258...b918c3`; gnosis `0x98c98b...1eff6c`; gnosis `0x9e6be4...edcd5a`; gnosis `0xb495ca...567018`; gnosis `0xc2810e...0577f5`; gnosis `0xc58d44...00f166`; gnosis `0xc9a714...1032f0`; gnosis `0xcafa17...49a436`; gnosis `0xccefea...a81ae5`; gnosis `0xdf794a...322e84`; gnosis `0xe7a0f0...7baf83`; gnosis `0xfde055...507293`; gnosis `0xfe199c...09622b`; polygon `0x2f2f55...b40d72`; polygon `0x53d0b4...504fdf`; base [`0x14375f...0c8224`](./contracts/base-8453/0x14375f13a9f8d91d46f14b30345387f5f90c8224/); base `0xf7c7e2...f56cd1` | ✅ Audited |
| PayMaster | unknown | polygon | n/a | 3 deployments: gnosis `0xbd11bc...c3d1b6`; polygon [`0x33fd37...676ac5`](./contracts/polygon-137/0x33fd3757c2b2df912898713bb9319bf615676ac5/); base `0x43f309...ea47e1` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| Access | unknown | bsc | n/a | 2 deployments: bsc [`0x9e6be4...edcd5a`](./contracts/bsc-56/0x9e6be44cc1236eef7e1f197418592d363bedcd5a/); polygon `0xebbb12...771ef8` | ⚠️ Unaudited |
| AffiliateHelper | periphery | gnosis | n/a | 6 deployments: gnosis [`0x987e31...d7bb82`](./contracts/gnosis-100/0x987e319843ecf809d55a812b0d2d5ee654d7bb82/); gnosis `0xac7c16...555703`; gnosis `0xb769c3...0d5365`; gnosis `0xbc2ea1...1a7a7b`; gnosis `0xbd6408...7cf9bf`; gnosis `0xeebfe3...357009` | ⚠️ Unaudited |
| AirDropRuleBased | operational_periphery | gnosis | n/a | 2 deployments: gnosis [`0xd88bf5...a04e36`](./contracts/gnosis-100/0xd88bf5d499939f6925d4de3192ae752dfba04e36/); gnosis `0xe33d89...1354ac` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-35126 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Azuro | unknown | polygon | n/a | [`0x9f9659...ce9dc0`](./contracts/polygon-137/0x9f96597b08788791870b6a8e461cf2b619ce9dc0/) | ⚠️ Unaudited |
| BetExpress | unknown | gnosis | n/a | 10 deployments: gnosis [`0xb757ce...0634ea`](./contracts/gnosis-100/0xb757ce395a62a9472efb791bba2f1e110c0634ea/); gnosis `0xc3eae9...699102`; gnosis `0xc93acf...572966`; gnosis `0xcc2685...11c34a`; gnosis `0xcfc1a0...16d3d5`; gnosis `0xdac2b8...b7145f`; gnosis `0xdf52f5...05aa79`; gnosis `0xe34f5f...9e994c`; gnosis `0xef05a0...b7517b`; gnosis `0xfe42dd...b7c669` | ⚠️ Unaudited |
| CashOut | unknown | gnosis | n/a | [`0xf8edaf...5b89f9`](./contracts/gnosis-100/0xf8edaf6771af2ca9a328366e95e12502fd5b89f9/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-35057 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| CoreTools | unknown | gnosis | n/a | 3 deployments: gnosis [`0xcbdf12...0ed34a`](./contracts/gnosis-100/0xcbdf12f87d1e1a7725a644c5afe85365730ed34a/); gnosis `0xd70810...242db1`; gnosis `0xe656de...3885a4` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | unit-35141 | [`0xa21943...e12b93`](./contracts/linea-59144/0xa219439258ca9da29e9cc4ce5596924745e12b93/) | ⚠️ Unaudited |
| DepositPaymaster | unknown | gnosis | n/a | [`0xabad2f...d22214`](./contracts/gnosis-100/0xabad2f5cb4ae44e158405292b43338ebf0d22214/) | ⚠️ Unaudited |
| DevOpsTools | unknown | gnosis | n/a | [`0xa8dc1d...a34188`](./contracts/gnosis-100/0xa8dc1d4bb0e2e8c0327783cc174e7d88fea34188/) | ⚠️ Unaudited |
| EntryPoint | unknown | gnosis | n/a | [`0xf5bf2a...c5ffc1`](./contracts/gnosis-100/0xf5bf2a0441e28034b03b642c19787bb505c5ffc1/) | ⚠️ Unaudited |
| Factory | registry | gnosis | n/a | [`0xffaa64...9577e8`](./contracts/gnosis-100/0xffaa642c576965e7e2d789ac397ac88b809577e8/) | ⚠️ Unaudited |
| FreeBet | unknown | gnosis | n/a | 5 deployments: gnosis [`0x9ba72d...cfb839`](./contracts/gnosis-100/0x9ba72de67d6a44b3a63ee5fb3c56b240cdcfb839/); gnosis `0xe28f5a...cc2f69`; gnosis `0xe58b47...41b3d1`; gnosis `0xecab77...6b0234`; gnosis `0xefae91...b49abb` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | 2 deployments: base [`0x01e538...5d09e7`](./contracts/base-8453/0x01e5389ad8e0ddd857969982090309eaa95d09e7/); base `0x172fb4...74abbd` | ⚠️ Unaudited |
| PrematchCore | unknown | gnosis | n/a | 9 deployments: gnosis [`0x9a0510...2f737a`](./contracts/gnosis-100/0x9a05109e74bc7bc90e5bba04cd05f3a1c52f737a/); gnosis `0x9bde38...61926b`; gnosis `0xa05730...00e50d`; gnosis `0xa15de2...17ad71`; gnosis `0xc65d8c...df46df`; gnosis `0xcaf536...52e1ce`; gnosis `0xcbc63d...9a5404`; gnosis `0xd7d31e...5db61c`; gnosis `0xfc1785...76c5ad` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | base | n/a | 3 deployments: base [`0x3471a4...081c02`](./contracts/base-8453/0x3471a4067c1925ce879fe2e0c1d2a84eef081c02/); base `0x8d6e55...c4c008`; base `0xf412a6...7362b6` | ⚠️ Unaudited |
| ProxyAdmin | governance | gnosis | n/a | 5 deployments: gnosis [`0xd1bb0c...74683b`](./contracts/gnosis-100/0xd1bb0ceb1047c853f8337c0c3b1e1c7bd774683b/); gnosis `0xe6dba7...5469ec`; gnosis `0xea8bf4...f6732d`; gnosis `0xf3be56...e62ab5`; gnosis `0xfc7b2b...20098c` | ⚠️ Unaudited |
| ProxyFront | unknown | gnosis | n/a | 2 deployments: gnosis [`0xaaac47...458d6d`](./contracts/gnosis-100/0xaaac47bb9b16bcf89fdb54b1326327a223458d6d/); gnosis `0xc63c4c...c479d7` | ⚠️ Unaudited |
| ProxyOracle | operational_periphery | gnosis | n/a | [`0xdd68fd...bb922c`](./contracts/gnosis-100/0xdd68fda294d1bbad85e5d00c960e4a2fcdbb922c/) | ⚠️ Unaudited |
| Relayer | unknown | base | n/a | 4 deployments: bsc `0x8da05c...abba9d`; bsc `0xe48500...013126`; polygon `0xa49b0c...33b627`; base [`0x5dc8cd...9a6045`](./contracts/base-8453/0x5dc8cd04f0c3529a113c693efc08b95c2d9a6045/) | ⚠️ Unaudited |
| SimpleAccount | core_logic | gnosis | n/a | [`0xdaae5c...7b3474`](./contracts/gnosis-100/0xdaae5c80cb578b084fcbe0e959d98f57997b3474/) | ⚠️ Unaudited |
| SimpleAccountFactory | registry | gnosis | n/a | [`0xc51bd4...be649f`](./contracts/gnosis-100/0xc51bd464939c4309e54ec185ad0c54b951be649f/) | ⚠️ Unaudited |
| TestERC20 | token | gnosis | n/a | 4 deployments: gnosis [`0x98949e...b927ec`](./contracts/gnosis-100/0x98949e3cb6511f75f3f0d53c838695f280b927ec/); gnosis `0xaf2842...2d5377`; gnosis `0xbdba7c...01b513`; base `0xb8836a...659627` | ⚠️ Unaudited |
| Trading | unknown | base | n/a | 13 deployments: base [`0x276f29...d00294`](./contracts/base-8453/0x276f297ded7767c93768b08448fa82b986d00294/); base `0x397253...430ecb`; base `0x4dab4a...454111`; base `0x5d510e...a98e39`; base `0x5e99e0...0b814f`; base `0x72fcb1...9b515b`; base `0x8f91df...eb3c74`; base `0xac40b1...7f4283`; base `0xae0830...f385fe`; base `0xceb4f2...e9936c`; base `0xdb8210...1d291a`; base `0xf26be6...ba47c9`; base `0xfdb493...ff880b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | gnosis | n/a | 7 deployments: gnosis [`0x999179...02f60e`](./contracts/gnosis-100/0x9991795eb636e437945edc49f4d876f72c02f60e/); gnosis `0xa18acd...f09284`; gnosis `0xafc35c...b84d4b`; gnosis `0xb14cde...0138f9`; gnosis `0xd5790b...15d4f7`; gnosis `0xef8ea5...276859`; gnosis `0xf2b29e...b5cc08` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-35062 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | bsc | n/a | 163 deployments: bsc [`0x21b532...cb42ea`](./contracts/bsc-56/0x21b53257505b12159eb5eb3ffb4a587928cb42ea/); bsc `0x583cc3...95e50d`; bsc `0x5da21b...55f369`; bsc `0x7f18d7...674914`; bsc `0xdd180c...8cc35f`; gnosis `0x5da21b...55f369`; gnosis `0x5e16e9...7b209d`; gnosis `0x99827f...62b07c`; gnosis `0x99d2d8...e4a83f`; gnosis `0x9a030a...3d3920`; gnosis `0x9aea08...1a67d3`; gnosis `0x9b4237...b2d295`; gnosis `0x9c794f...1b70a0`; gnosis `0x9cbd37...36ab12`; gnosis `0x9da8f1...708f74`; gnosis `0x9e3b91...62b642`; gnosis `0x9f79b0...a2bb11`; gnosis `0x9fa773...9feb23`; gnosis `0xa06bfc...f875f9`; gnosis `0xa106d6...8e59d8`; gnosis `0xa114f4...dbd400`; gnosis `0xa13e45...8351e7`; gnosis `0xa1b78d...4c675a`; gnosis `0xa287fa...fb2992`; gnosis `0xa3e484...f205bd`; gnosis `0xa411b9...adef9a`; gnosis `0xa45cae...2d572d`; gnosis `0xa4d0b2...81a15c`; gnosis `0xa72117...df8a4c`; gnosis `0xa8b187...f1fb1e`; gnosis `0xa93796...1f16c0`; gnosis `0xa9b3dd...f64a71`; gnosis `0xaaddc9...5d376b`; gnosis `0xac285f...8be3ae`; gnosis `0xacce10...9542c6`; gnosis `0xae0f21...e6053d`; gnosis `0xae38d2...ecb28e`; gnosis `0xaf4f2d...eb450b`; gnosis `0xafda85...d82bc0`; gnosis `0xb1b9cb...7b7b7e`; gnosis `0xb1e542...a1921e`; gnosis `0xb30020...5c8e5d`; gnosis `0xb341be...f77f39`; gnosis `0xb3a3ef...cf547c`; gnosis `0xb4b743...16add7`; gnosis `0xb4e7ad...d5d809`; gnosis `0xb511ba...d4e700`; gnosis `0xb65ce0...c5223a`; gnosis `0xb6f2b3...959e07`; gnosis `0xb7040a...f7633d`; gnosis `0xb9cb9c...4749a2`; gnosis `0xba0a1e...6bd1d0`; gnosis `0xba7c5a...53d074`; gnosis `0xbbb550...fd8299`; gnosis `0xbc2213...e034e4`; gnosis `0xbcaecd...cc9140`; gnosis `0xbdc577...099ef1`; gnosis `0xbe2348...5136c9`; gnosis `0xbe2a3d...242072`; gnosis `0xbef126...9b4994`; gnosis `0xbefd98...e79a3b`; gnosis `0xc050d3...2eac6b`; gnosis `0xc06a9c...9e5579`; gnosis `0xc24503...3ccf1a`; gnosis `0xc34e00...d7fe9d`; gnosis `0xc35dae...f8cbc1`; gnosis `0xc38a10...2463c3`; gnosis `0xc4e2a8...2541ef`; gnosis `0xc6593f...5af530`; gnosis `0xc6b018...c7a041`; gnosis `0xc75508...a650d0`; gnosis `0xc837ff...0e3f09`; gnosis `0xc91534...60b9c4`; gnosis `0xcae171...13ef80`; gnosis `0xcae994...3ddbef`; gnosis `0xcc0233...6ac487`; gnosis `0xcc7633...b2b936`; gnosis `0xcc9f32...0d26f4`; gnosis `0xcd64f0...d81d67`; gnosis `0xcf1b86...38073c`; gnosis `0xcfe327...5b760b`; gnosis `0xd01d23...c4fecc`; gnosis `0xd12b16...7c1edd`; gnosis `0xd1a724...bf1e57`; gnosis `0xd24609...77a321`; gnosis `0xd27878...106c9b`; gnosis `0xd3eefe...cfd292`; gnosis `0xd46b81...8ec1e7`; gnosis `0xd4e7da...bd1e7a`; gnosis `0xd5cc63...45aeb7`; gnosis `0xd6db01...bf6369`; gnosis `0xd70d30...99d8f4`; gnosis `0xd70fbc...b2812c`; gnosis `0xd76ff8...806c32`; gnosis `0xd7fc0d...5c1750`; gnosis `0xd908da...fc8d55`; gnosis `0xd99e3a...fde13a`; gnosis `0xda1180...38e8cd`; gnosis `0xdacc38...066a47`; gnosis `0xdb7316...56d4d4`; gnosis `0xdbe92f...f754ff`; gnosis `0xdc97c2...0f42b0`; gnosis `0xdd004f...9e5d18`; gnosis `0xdd180c...8cc35f`; gnosis `0xdd4698...b40a99`; gnosis `0xde92e3...4b7387`; gnosis `0xdec4d8...df704a`; gnosis `0xe0be67...18a879`; gnosis `0xe0d972...6c4fd7`; gnosis `0xe0db23...edb403`; gnosis `0xe1714a...913938`; gnosis `0xe1b310...1d40d5`; gnosis `0xe24636...d878a0`; gnosis `0xe256a4...20751f`; gnosis `0xe29c2e...a02a6f`; gnosis `0xe2dbc8...93723d`; gnosis `0xe3de05...305fc8`; gnosis `0xe42089...de9fc5`; gnosis `0xe4d11a...fc4892`; gnosis `0xe4d6ac...6fc5d4`; gnosis `0xe567d0...290faa`; gnosis `0xe5733f...36e761`; gnosis `0xe5d857...676ebf`; gnosis `0xe5e30e...e78443`; gnosis `0xe632aa...32e456`; gnosis `0xe707dd...1ba981`; gnosis `0xe738f0...bedf47`; gnosis `0xe817a8...b2b0c2`; gnosis `0xe82633...e8c868`; gnosis `0xe830d5...3f224d`; gnosis `0xe87214...12d73e`; gnosis `0xe8c027...fa849e`; gnosis `0xe96153...4d1b6b`; gnosis `0xead1f7...3049d1`; gnosis `0xead59a...9e24b1`; gnosis `0xeb11f3...fb2896`; gnosis `0xeb8c02...1bb8fb`; gnosis `0xedd2c3...c37972`; gnosis `0xee63bb...23d182`; gnosis `0xf028b2...ee46cd`; gnosis `0xf03f34...b10129`; gnosis `0xf0e98c...5b6d15`; gnosis `0xf174b1...dfa570`; gnosis `0xf1786b...591fdf`; gnosis `0xf3ccbf...41a7aa`; gnosis `0xf3f3f9...d3d1d2`; gnosis `0xf4851d...2e0f24`; gnosis `0xf6391d...d99c48`; gnosis `0xf6ddc7...a54cbb`; gnosis `0xf73029...388674`; gnosis `0xf76db7...9f4c95`; gnosis `0xf7c7e2...f56cd1`; gnosis `0xf84003...466632`; gnosis `0xfb24b6...fc357c`; gnosis `0xfbc35c...729dd7`; gnosis `0xfc43a9...9efc45`; gnosis `0xfcb0bf...807187`; gnosis `0xfd2099...b9be4b`; gnosis `0xfd41a3...ede46b`; gnosis `0xfd68af...ca17c3`; gnosis `0xff1aa9...22d4d6`; gnosis `0xff53b7...d31be5`; gnosis `0xff975a...0fb6c4` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0x5e16e9...7b209d`](./contracts/bsc-56/0x5e16e947772f7c0d5e52c700a2493f47ba7b209d/) | ⚠️ Unaudited |
| VRFCoordinator | unknown | gnosis | n/a | [`0xfa3804...02d124`](./contracts/gnosis-100/0xfa3804bcdfe6097d1f06677f467e295a9802d124/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiveCore | unknown | base | n/a | 3 deployments: bsc `0xed5760...a877e1`; gnosis `0xb26fed...2009bf`; base [`0x66900e...5b1e87`](./contracts/base-8453/0x66900efd3ccb329f83b4820877efeb70135b1e87/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (85)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x2d6a5a...1ed0c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x12d5e6...f5a1ef` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9407b5...b11413` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x99f635...991259` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9ad797...e85d80` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9b2c80...8921f9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9bc93f...367fb1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9fd7f4...774df3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9ff246...a429b5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa18ebc...dc5e1b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa7b95f...084206` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa7c771...268f44` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xaac958...834a92` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xaae235...ecaa02` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xad5d9c...007a31` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb02a5b...0e7e1a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb08a85...9089fe` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb08d02...cc813e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb17efa...f7d490` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb20ce5...cc7c90` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb39c27...15dc4c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb4774d...9a1ff0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb6508b...34df69` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb7c25e...dde86b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb7da1c...fbd24e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb8836a...659627` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb95465...506fc8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbbe485...46c080` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe364d...56a2fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbeaa11...54b8d1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbef773...e4a4c5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc0aa2e...34243f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc15036...34baba` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc2dc0a...de1b7b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc4e6ea...f2ed3e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc50b42...587451` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc57dc3...9d347a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc7fa69...52ae60` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc99477...809f14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcc25da...b0b514` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcc41e2...b309da` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd128a8...4e56ea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd354c9...d5c4ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd83e0a...a5b138` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd9991b...a09e71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xdb9876...8750db` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe0a508...3ce128` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe2e04b...83e65c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe571a9...105123` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe779e0...540882` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe7f41c...a92da8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe86b83...6bfb5b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe8cb52...bbc5e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe9ecd3...933a7a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xebbb12...771ef8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xec88d9...49d4f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xec9ce7...edea85` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xed248f...7babea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeee000...65acda` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf0057c...51d775` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf03dbe...67cafb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf1d55e...a6a089` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf412a6...7362b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf4cfe9...d1f629` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf5c1b9...f4ba45` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf70aa8...88dfc5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf79c5a...03b51e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf8502b...723099` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf88747...263627` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf8d768...d5f0f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf91add...b1c577` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfb263b...93b10f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfc4c23...e77f6b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfc8749...e1102c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfcd204...4ef21b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfd4a8f...0098bd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xffc0b0...2dee42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x118ea8...ba125f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21ffbf...62eedf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x48ce57...29f421` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ba911...81c2da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0af324...772716` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34e816...8179c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x868e63...0a29d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa97259...8997df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits](https://gem.azuro.org/hub/blockchains/audits) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | medium |
| [Azuro Security Analysis by Pessimistic (3).pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/Azuro%20Security%20Analysis%20by%20Pessimistic%20(3).pdf) | Pessimistic | Audit | 2022-04 | stale | Direct | contract_name | 28 | high |
| [azuro-v1-audit-report-prelim.pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/azuro-v1-audit-report-prelim.pdf) | Unknown | Audit | n/a | unknown | Direct | contract_name | 28 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9e6be4...edcd5a`](./contracts/bsc-56/0x9e6be44cc1236eef7e1f197418592d363bedcd5a/) | Access | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x987e31...d7bb82`](./contracts/gnosis-100/0x987e319843ecf809d55a812b0d2d5ee654d7bb82/) | AffiliateHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xb757ce...0634ea`](./contracts/gnosis-100/0xb757ce395a62a9472efb791bba2f1e110c0634ea/) | BetExpress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9ba72d...cfb839`](./contracts/gnosis-100/0x9ba72de67d6a44b3a63ee5fb3c56b240cdcfb839/) | FreeBet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x66900e...5b1e87`](./contracts/base-8453/0x66900efd3ccb329f83b4820877efeb70135b1e87/) | LiveCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9a0510...2f737a`](./contracts/gnosis-100/0x9a05109e74bc7bc90e5bba04cd05f3a1c52f737a/) | PrematchCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xaaac47...458d6d`](./contracts/gnosis-100/0xaaac47bb9b16bcf89fdb54b1326327a223458d6d/) | ProxyFront | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x98949e...b927ec`](./contracts/gnosis-100/0x98949e3cb6511f75f3f0d53c838695f280b927ec/) | TestERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e16e9...7b209d`](./contracts/bsc-56/0x5e16e947772f7c0d5e52c700a2493f47ba7b209d/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=421

Fork inheritance lineage and inherited audits are included when available.
