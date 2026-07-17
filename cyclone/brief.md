# Agentic Audit Brief: Cyclone

## Project Overview

- Project: Cyclone (`cyclone`)
- Website: [https://cyclone.xyz](https://cyclone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.735Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, ethereum, polygon
- Contract surface: 57 unique implementations (122 raw deployments)
- DeFi Llama TVL: $1,117,986.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 54 project-authored contract(s) across 3 chain(s); 15 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 18 common project-authored base contract(s) (ownable2step, merkletreewithhistory, standardtokenwithfees). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 122 (88 live, 34 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 23 of 57 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 57
- Raw deployments: 122
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeolusV2 | unknown | bsc | n/a | [`0x92a737097d711bec4c31351997254e98e5f0d430`](./contracts/bsc-56/0x92a737097d711bec4c31351997254e98e5f0d430/) | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | polygon | n/a | 2 deployments: ethereum `0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb`; polygon [`0xa8c187d8773bc9e49a10554715ff49bdcf39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | 2 deployments: polygon [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/); polygon `0x316c79f8fb55eddb4e7b0710aff920e1c05548d0` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | polygon | n/a | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 16 deployments: polygon [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/); polygon `0x46ca157573005281774be9be9a4187cce4ec1871`; polygon `0x4a8766156f3614731614bb4573a3bd245de1f2b9`; polygon `0x4e5612d10ccbe6a029b8e5258f1a191eea1f6db6`; polygon `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`; polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x5fab5764f263c5ce93424f8c45e46a742cc5c8d6`; polygon `0x6bfb5bfa7753ba1ce0f60017a16d8dd67aa19243`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978`; polygon `0x8484ef722627bf18ca5ae6bcf031c23e6e922b30`; polygon `0xadc0c4a3d39bb1107bfe86099dd855360e69ea73`; polygon `0xb6a508b418d49080ce4ae4f140e585a0f95c1326`; polygon `0xca34415601f4f050d77bfe939ba68c96e228a223`; polygon `0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`; polygon `0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a` | ⚠️ Unaudited |
| ChildERC721 | token | polygon | n/a | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | token | polygon | n/a | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CycloneToken | token | bsc | n/a | 3 deployments: ethereum `0x8861cff2366c1128fd699b68304ad99a0764ef9a`; bsc [`0x810ee35443639348adbbc467b33310d2ab43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/); polygon `0xcfb54a6d2da14abecd231174fc5735b4436965d8` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | polygon | n/a | 16 deployments: polygon [`0x39fa48bf36a65834c88ec4ecb44c867f7e071a69`](./contracts/polygon-137/0x39fa48bf36a65834c88ec4ecb44c867f7e071a69/); polygon `0x3e2c1b4dfa868a6ffd8cdc20d7bfa9abb4462284`; polygon `0x438d30b10a6404face43ee7156eef9daee8bacd6`; polygon `0x4df9a49a8fdbf7452219f1f244448156f7f92e29`; polygon `0x517ceee661b57ed7d5b615bf700cb307d87a025b`; polygon `0x5194932ad0f889b1e31041b8006a58ff70a11f43`; polygon `0x52609307f2f6c43b7df63364ef65718d299ac246`; polygon `0x87059fdff1dc655acf8652ba530d89f38de22f16`; polygon `0x8a6e1b15ac7681b13d134c0d5baaa61841958751`; polygon `0x8b144b25598dbb20dc6ad579cc5e78c077b6925b`; polygon `0x8e6e472e4a3f8b1951d2970f59b3944eff707e10`; polygon `0xb00f333894ea91523d288424e1f8947022319722`; polygon `0xb5aee5f2743a9f4abce9c964d1530e3e96725be7`; polygon `0xb8415bea2097147aa15e882f984d54adb3139db9`; polygon `0xd483280fa9ec8c9f1870567353e2ac9d446154a9`; polygon `0xe6eecdc1935115c9add30e0809aae61bc119d155` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 2 deployments: bsc [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/); bsc `0x2ad2c5314028897aecfcf37fd923c079beeb2c56` | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| Recovery | unknown | ethereum | n/a | [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/ethereum-1/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | 18 deployments: polygon [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/); polygon `0x12aa9deb3ca4b26aa71cb9589f972e5ebc38621e`; polygon `0x15e22deaeb0e04cc551c8eaf4ae2ce5836fb0269`; polygon `0x1ce2aa0137211f14835f975994ae8e9dccdba776`; polygon `0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`; polygon `0x5e81f3c3a52aa0233b3b2546a2f55ebfe90f1299`; polygon `0x77d58f5803a26c9a17f33dd6420a69d89d86a32e`; polygon `0x8234e18b466581431b4c6eb516305ae4a4bcb209`; polygon `0x9b7a8c8262d5e9bbd9ea4a079801741e8fefe32e`; polygon `0x9cceed7b651da6b9e623d7a73363511384622c38`; polygon `0xa4254439e51e196ac1f54c2ac958f928864aea96`; polygon `0xa48e39b99a7e0cf67a7d8d31dc700abfa02d180b`; polygon `0xa5b0efb02ba421422b4858870350bb5ea94a1f8f`; polygon `0xb2223ab7be81d16b98e0d1f29afc474c93fe24d8`; polygon `0xbfbd8837a4e08c396dd5e29b7ebee36b300468f7`; polygon `0xcd7f85136bfa9dec904ab81304607994705752a3`; polygon `0xe47efb7f49bd4402e0f227df14f1632a49c4f718`; polygon `0xea0d6554bcf40fbce93138266e4de324df685586` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 13 deployments: polygon [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/); polygon `0x313d009888329c9d1cf4f75ca3f32566335bd604`; polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19`; polygon `0x5adf17a97ef5db18ad4cfc4b3f05128b922e0a58`; polygon `0x6bd27b07e954d698988d5a52336e7c313e58ea99`; polygon `0x7d836da4dd2afda1d09992980569e22597f09981`; polygon `0x81a9d2eced101479fad8c9663f4a997fbe5c83ca`; polygon `0xa4892914b3eca4318abad280dbf73a8a5a8d5c8f`; polygon `0xc10aacff41af60bfcfaba3a03099c4aedb113e15`; polygon `0xc576e8bb0017affc2cb245609e304e57401ee78a`; polygon `0xcf46c5bf01deae14a272f89a7b6c9e96a48f5546`; polygon `0xf316a6cf68ed69c9b7ad9dc6d83ad974df676ed9`; polygon `0xfdf922e54b3586964688536b1b81bfce13b39c4c` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniswapV2CycloneRouter | adapter | polygon | n/a | [`0xfcb851ad3d98bd241dbe395ca1e6080f489d4624`](./contracts/polygon-137/0xfcb851ad3d98bd241dbe395ca1e6080f489d4624/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37d9c7f451e5c619a7d4ca01e06761eb7dae6f89`](./contracts/ethereum-1/0x37d9c7f451e5c619a7d4ca01e06761eb7dae6f89/); polygon `0x6ea88502bc127ef1a7f45fac6b7168fc0633ba51` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x24908e5da07d7c48f1ea6edf37e4f984246c5abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45b39fc83540dd0b20115fd46023e0252ba9defb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6264987a7392923012e94f91325437118cba2078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71e6a3b8746870ae5e21130d59d5eabbfeaea37c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7772343bebcd733497ecd1a971a56775508111fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c994fb3a8c208c1750df937d473040c604292d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x810ee35443639348adbbc467b33310d2ab43c168` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x949452e32db13a5771445cf20b304474b866202b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0254a22c18b9924c4c8b6396b51fb0605538d0a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c02d67f21ee4ae3213b91b6281ea87d578db8e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x225945a3b9e52c5e364d38e0388d2f619603eff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x407ee7e32eaaecea74c6101338746744e7b12110` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b94edf88baf45248cc103881b3d1a977d664d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6264987a7392923012e94f91325437118cba2078` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x631f80ef57954b178a8a3b2cb9c844efcd3b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8691ab4b94039338edb607596283df9a5ef51dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c485513a29c9a455e9da8eba97cb165aeea8270` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3f65ca2b7a0b1e528a4f5bbe79ea79fb3c68c41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafcc4cbe43aa0dcb82cb9b42b992210be01725fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00a7c98563c3890ef590e062065744e0ad11dc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfb43c43f2eacf81552c19827d9083cfd2a5b642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6a1ffc539feb9acc6358e2862c05cfaf791708c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec05c62ab576d4510d01d418dec989a8184630b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e772e2a0cf2c177c29afd745900b3a1475458f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x624dfa3bd13207438f00d1a9346e0879c2f93e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f94fb8f0960d4c0e24b641cad53313e475e4126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d170170fe5731bb70eeae41a353d3520087de74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xacf00a84559f536ba64064a4c73b74698013ef36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6e9ea062a7719846bc9e3e3ae8712e74faad376` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc760defb87e5194e62b282c2a76cbce4766d7345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce7edba33e2b3f4260d7110c17b8a9695b366859` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbb4a19a2a5ef4d1861b6b6e1150e1e2d453fdb7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Tornado_circuit_audit.pdf](https://tornado.cash/Tornado_circuit_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | n/a | 0 | n/a |
| [Tornado_solidity_audit.pdf](https://tornado.cash/Tornado_solidity_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | n/a | 0 | n/a |
| [chainshield.io](https://chainshield.io/) | ChainShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x92a737097d711bec4c31351997254e98e5f0d430`](./contracts/bsc-56/0x92a737097d711bec4c31351997254e98e5f0d430/) | AeolusV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa8c187d8773bc9e49a10554715ff49bdcf39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ChildERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x810ee35443639348adbbc467b33310d2ab43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/) | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39fa48bf36a65834c88ec4ecb44c867f7e071a69`](./contracts/polygon-137/0x39fa48bf36a65834c88ec4ecb44c867f7e071a69/) | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/ethereum-1/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | Recovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfcb851ad3d98bd241dbe395ca1e6080f489d4624`](./contracts/polygon-137/0xfcb851ad3d98bd241dbe395ca1e6080f489d4624/) | UniswapV2CycloneRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11566] Tornado_circuit_audit.pdf
- [11567] Tornado_solidity_audit.pdf
- [11568] chainshield.io

Fork inheritance lineage and inherited audits are included when available.
