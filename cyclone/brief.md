# Agentic Audit Brief: Cyclone

## Project Overview

- Project: Cyclone (`cyclone`)
- Website: [https://cyclone.xyz](https://cyclone.xyz)
- Lifecycle: active (Tier 0, 85.8% below peak)
- Generated: 2026-06-10T22:38:39.477Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: bsc, ethereum, polygon
- Contract surface: 63 unique implementations (179 raw deployments)
- DeFi Llama TVL: $1,301,416.14
- On-chain TVL (included contracts): $165,469,302.49
- TVL by chain: Polygon $165,418,183.05 | Bsc $33,942.48 | Ethereum $17,176.97

## Project Description

Cyclone is a zkSNARK-based transaction privacy protocol that provides mixer-style private transfers across supported chains. Its contract surface should be assessed as Cyclone-owned privacy-pool/deposit-withdrawal deployments and related protocol contracts, excluding third-party tokens, bridge/system contracts, DEX infrastructure, and other external dependencies. Tornado Cash audits may be treated only as inherited/reference evidence for reused zkSNARK implementation components unless Cyclone-specific audit scope is demonstrated.

### Architecture

All families share the CycloneToken as the governance and reward token, and rely on similar vault architectures (CycloneV2, Aeolus) adapted per chain. The Cyclone family provides the core token and base vault logic, while chain-specific families deploy these vaults with local adapters (e.g., PancakeRouter on BSC, UniswapV2CycloneRouter on Polygon) to interact with native DEXs.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 63
- Raw deployments: 179
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $165,469,302.49
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UChildERC20 | token | polygon | 32 deployments: polygon [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/); polygon `0x12aa9d...38621e`; polygon `0x15e22d...fb0269`; polygon `0x1bd727...de1443`; polygon `0x1bfd67...d9bfd6`; polygon `0x1ce2aa...dba776`; polygon `0x422432...804046`; polygon `0x462d8d...7a5807`; polygon `0x55ffbe...8da5db`; polygon `0x5e81f3...0f1299`; polygon `0x74076b...86d977`; polygon `0x77d58f...86a32e`; polygon `0x7ffb3d...afc1e2`; polygon `0x8234e1...bcb209`; polygon `0x8505b9...7aef5c`; polygon `0x88a034...5ae06a`; polygon `0x9b7a8c...efe32e`; polygon `0x9cceed...622c38`; polygon `0xa1c57f...606fd4`; polygon `0xa42544...4aea96`; polygon `0xa48e39...2d180b`; polygon `0xa5b0ef...4a1f8f`; polygon `0xb2223a...fe24d8`; polygon `0xb33eaa...b5180f`; polygon `0xbfbd88...0468f7`; polygon `0xcd7f85...5752a3`; polygon `0xd77cf2...ab16cb`; polygon `0xda5371...5260b6`; polygon `0xdab529...712ab7`; polygon `0xe47efb...c4f718`; polygon `0xe6fc6c...4de7ce`; polygon `0xea0d65...685586` | ⚠️ Unaudited |
| ChildERC20 | token | polygon | 16 deployments: polygon [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/); polygon `0x46ca15...ec1871`; polygon `0x4a8766...e1f2b9`; polygon `0x4e5612...1f6db6`; polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x5fab57...c5c8d6`; polygon `0x6bfb5b...a19243`; polygon `0x71b821...085978`; polygon `0x8484ef...922b30`; polygon `0xadc0c4...69ea73`; polygon `0xb6a508...5c1326`; polygon `0xca3441...28a223`; polygon `0xeffdcb...230e3e`; polygon `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| CycloneToken | token | bsc | 3 deployments: ethereum `0x8861cf...64ef9a`; bsc [`0x810ee3...43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/); polygon `0xcfb54a...6965d8` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | 13 deployments: polygon [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/); polygon `0x313d00...5bd604`; polygon `0x5a2fdf...908d19`; polygon `0x5adf17...2e0a58`; polygon `0x6bd27b...58ea99`; polygon `0x7d836d...f09981`; polygon `0x81a9d2...5c83ca`; polygon `0xa48929...8d5c8f`; polygon `0xc10aac...113e15`; polygon `0xc576e8...1ee78a`; polygon `0xcf46c5...8f5546`; polygon `0xf316a6...676ed9`; polygon `0xfdf922...b39c4c` | ⚠️ Unaudited |
| AeolusV2 | unknown | bsc | 4 deployments: bsc [`0x1fb0e0...f9009a`](./contracts/bsc-56/0x1fb0e0a9c8afb1be54f570fee1085a3dd9f9009a/); bsc `0x567da5...bb5363`; bsc `0x74fb68...fa85fa`; bsc `0x92a737...f0d430` | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | polygon | 2 deployments: ethereum `0xdc71bc...e756fb`; polygon [`0xa8c187...39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | 3 deployments: polygon [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/); polygon `0x316c79...5548d0`; polygon `0xa6fa4f...d1c0aa` | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | polygon | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC721 | token | polygon | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | token | polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CycloneV2 | unknown | bsc | 3 deployments: bsc [`0x66b5e3...8d16c7`](./contracts/bsc-56/0x66b5e322dc31f8c7a33ffd23975163795f8d16c7/); bsc `0x794597...434541`; bsc `0xbe19d5...cc42a5` | ⚠️ Unaudited |
| CycloneV2dot1 | unknown | bsc | [`0xd90a6b...a507ec`](./contracts/bsc-56/0xd90a6bf8439ef7214cf00da83e926068b6a507ec/) | ⚠️ Unaudited |
| CycloneV2dot2 | unknown | bsc | 6 deployments: ethereum `0xd619c8...95fa1b`; ethereum `0xdff088...f95370`; ethereum `0xf12e50...2c15ee`; bsc [`0x0d0909...db031d`](./contracts/bsc-56/0x0d09090d68ae09245794028082a255b255db031d/); bsc `0x182d03...2b8215`; bsc `0xc7be35...c30317` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | ethereum | 24 deployments: ethereum [`0x09f034...11c113`](./contracts/ethereum-1/0x09f03488291063a8f3c67d2aab7002419d11c113/); ethereum `0x3e772e...5458f4`; ethereum `0x526093...9ac246`; ethereum `0x624dfa...f93e5c`; ethereum `0x9e5fd6...0cbe96`; ethereum `0xa38b67...539c3d`; ethereum `0xb6e9ea...aad376`; ethereum `0xbb95a5...34f194`; polygon `0x39fa48...071a69`; polygon `0x3e2c1b...462284`; polygon `0x438d30...8bacd6`; polygon `0x4df9a4...f92e29`; polygon `0x517cee...7a025b`; polygon `0x519493...a11f43`; polygon `0x526093...9ac246`; polygon `0x87059f...e22f16`; polygon `0x8a6e1b...958751`; polygon `0x8b144b...b6925b`; polygon `0x8e6e47...707e10`; polygon `0xb00f33...319722`; polygon `0xb5aee5...725be7`; polygon `0xb8415b...139db9`; polygon `0xd48328...6154a9`; polygon `0xe6eecd...19d155` | ⚠️ Unaudited |
| CycloneWrapper | unknown | ethereum | [`0x602b40...80dcca`](./contracts/ethereum-1/0x602b40bf327c10370483ae5ecde15a7bb480dcca/) | ⚠️ Unaudited |
| FactoryViewer | registry | bsc | 7 deployments: bsc [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/); bsc `0x467aa6...983123`; bsc `0x54ae42...809c36`; bsc `0xb322d7...7402b5`; bsc `0xd190d3...e24f91`; bsc `0xedd283...80db8c`; bsc `0xee9934...95560a` | ⚠️ Unaudited |
| FxChild | unknown | polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | 3 deployments: bsc [`0x877fe7...15edb6`](./contracts/bsc-56/0x877fe7f4e22e21be397cd9364fafd4af4e15edb6/); bsc `0xca143c...350c73`; bsc `0xe47d22...81f408` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | 4 deployments: bsc [`0x02ee06...8b689f`](./contracts/bsc-56/0x02ee06c137a106255299589b3184f5ba438b689f/); bsc `0x10ed43...56024e`; bsc `0x1f5ecb...ff1996`; bsc `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| Quick | unknown | polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| Recovery | unknown | ethereum | 7 deployments: ethereum [`0x02ee06...8b689f`](./contracts/ethereum-1/0x02ee06c137a106255299589b3184f5ba438b689f/); ethereum `0x10ed43...56024e`; ethereum `0x1f5ecb...ff1996`; ethereum `0x2ad2c5...eb2c56`; ethereum `0x877fe7...15edb6`; ethereum `0xca143c...350c73`; ethereum `0xe47d22...81f408` | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildAdministrableERC20 | token | polygon | 2 deployments: polygon [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/); polygon `0xdd9185...812226` | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | 2 deployments: polygon [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/); polygon `0x8f3cf7...c6a063` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniswapV2CycloneRouter | adapter | polygon | [`0xfcb851...9d4624`](./contracts/polygon-137/0xfcb851ad3d98bd241dbe395ca1e6080f489d4624/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x37d9c7...ae6f89`](./contracts/ethereum-1/0x37d9c7f451e5c619a7d4ca01e06761eb7dae6f89/); polygon `0x6ea885...33ba51` | ⚠️ Unaudited |
| Verifier | periphery | bsc | [`0x9286e9...b4cf14`](./contracts/bsc-56/0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x24908e...6c5abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45b39f...a9defb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x71e6a3...aea37c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x777234...8111fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c994f...4292d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x810ee3...43c168` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9286e9...b4cf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x949452...66202b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfb54a...6965d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0254a2...38d0a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c02d6...8db8e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c5b10...b2c559` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x225945...03eff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x407ee7...b12110` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x56b94e...d664d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x631f80...3b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8691ab...f51dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xafcc4c...1725fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc00a7c...d11dc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdfb43c...a5b642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe6a1ff...91708c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec05c6...4630b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3e772e...5458f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x624dfa...f93e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8f94fb...5e4126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9d1701...87de74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xacf00a...13ef36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb6e9ea...aad376` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc760de...6d7345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce7edb...366859` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbb4a1...53fdb7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x810ee3...43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/) | CycloneToken | token | $56,712.48 | Verified native implementation with $56,712.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fb0e0...f9009a`](./contracts/bsc-56/0x1fb0e0a9c8afb1be54f570fee1085a3dd9f9009a/) | AeolusV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa8c187...39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66b5e3...8d16c7`](./contracts/bsc-56/0x66b5e322dc31f8c7a33ffd23975163795f8d16c7/) | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd90a6b...a507ec`](./contracts/bsc-56/0xd90a6bf8439ef7214cf00da83e926068b6a507ec/) | CycloneV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d0909...db031d`](./contracts/bsc-56/0x0d09090d68ae09245794028082a255b255db031d/) | CycloneV2dot2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f034...11c113`](./contracts/ethereum-1/0x09f03488291063a8f3c67d2aab7002419d11c113/) | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x602b40...80dcca`](./contracts/ethereum-1/0x602b40bf327c10370483ae5ecde15a7bb480dcca/) | CycloneWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/) | FactoryViewer | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9286e9...b4cf14`](./contracts/bsc-56/0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14/) | Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 20 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
