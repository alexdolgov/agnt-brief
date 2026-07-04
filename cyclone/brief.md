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
| AeolusV2 | unknown | bsc | n/a | [`0x92a737...f0d430`](./contracts/bsc-56/0x92a737097d711bec4c31351997254e98e5f0d430/) | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | polygon | n/a | 2 deployments: ethereum `0xdc71bc...e756fb`; polygon [`0xa8c187...39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | 2 deployments: polygon [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/); polygon `0x316c79...5548d0` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 16 deployments: polygon [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/); polygon `0x46ca15...ec1871`; polygon `0x4a8766...e1f2b9`; polygon `0x4e5612...1f6db6`; polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x5fab57...c5c8d6`; polygon `0x6bfb5b...a19243`; polygon `0x71b821...085978`; polygon `0x8484ef...922b30`; polygon `0xadc0c4...69ea73`; polygon `0xb6a508...5c1326`; polygon `0xca3441...28a223`; polygon `0xeffdcb...230e3e`; polygon `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| ChildERC721 | token | polygon | n/a | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | token | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CycloneToken | token | bsc | n/a | 3 deployments: ethereum `0x8861cf...64ef9a`; bsc [`0x810ee3...43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/); polygon `0xcfb54a...6965d8` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | polygon | n/a | 16 deployments: polygon [`0x39fa48...071a69`](./contracts/polygon-137/0x39fa48bf36a65834c88ec4ecb44c867f7e071a69/); polygon `0x3e2c1b...462284`; polygon `0x438d30...8bacd6`; polygon `0x4df9a4...f92e29`; polygon `0x517cee...7a025b`; polygon `0x519493...a11f43`; polygon `0x526093...9ac246`; polygon `0x87059f...e22f16`; polygon `0x8a6e1b...958751`; polygon `0x8b144b...b6925b`; polygon `0x8e6e47...707e10`; polygon `0xb00f33...319722`; polygon `0xb5aee5...725be7`; polygon `0xb8415b...139db9`; polygon `0xd48328...6154a9`; polygon `0xe6eecd...19d155` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 2 deployments: bsc [`0x10ed43...56024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/); bsc `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| Recovery | unknown | ethereum | n/a | [`0x10ed43...56024e`](./contracts/ethereum-1/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | 18 deployments: polygon [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/); polygon `0x12aa9d...38621e`; polygon `0x15e22d...fb0269`; polygon `0x1ce2aa...dba776`; polygon `0x422432...804046`; polygon `0x5e81f3...0f1299`; polygon `0x77d58f...86a32e`; polygon `0x8234e1...bcb209`; polygon `0x9b7a8c...efe32e`; polygon `0x9cceed...622c38`; polygon `0xa42544...4aea96`; polygon `0xa48e39...2d180b`; polygon `0xa5b0ef...4a1f8f`; polygon `0xb2223a...fe24d8`; polygon `0xbfbd88...0468f7`; polygon `0xcd7f85...5752a3`; polygon `0xe47efb...c4f718`; polygon `0xea0d65...685586` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 13 deployments: polygon [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/); polygon `0x313d00...5bd604`; polygon `0x5a2fdf...908d19`; polygon `0x5adf17...2e0a58`; polygon `0x6bd27b...58ea99`; polygon `0x7d836d...f09981`; polygon `0x81a9d2...5c83ca`; polygon `0xa48929...8d5c8f`; polygon `0xc10aac...113e15`; polygon `0xc576e8...1ee78a`; polygon `0xcf46c5...8f5546`; polygon `0xf316a6...676ed9`; polygon `0xfdf922...b39c4c` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniswapV2CycloneRouter | adapter | polygon | n/a | [`0xfcb851...9d4624`](./contracts/polygon-137/0xfcb851ad3d98bd241dbe395ca1e6080f489d4624/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37d9c7...ae6f89`](./contracts/ethereum-1/0x37d9c7f451e5c619a7d4ca01e06761eb7dae6f89/); polygon `0x6ea885...33ba51` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x24908e...6c5abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45b39f...a9defb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71e6a3...aea37c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777234...8111fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c994f...4292d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x810ee3...43c168` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9286e9...b4cf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x949452...66202b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0254a2...38d0a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c02d6...8db8e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x225945...03eff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x407ee7...b12110` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b94e...d664d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x631f80...3b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8691ab...f51dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c4855...ea8270` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3f65c...c68c41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafcc4c...1725fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00a7c...d11dc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc71bc...e756fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfb43c...a5b642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6a1ff...91708c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec05c6...4630b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e772e...5458f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x624dfa...f93e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f94fb...5e4126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d1701...87de74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xacf00a...13ef36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6e9ea...aad376` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc760de...6d7345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce7edb...366859` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbb4a1...53fdb7` | ❓ Unverified |

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
| bsc | [`0x92a737...f0d430`](./contracts/bsc-56/0x92a737097d711bec4c31351997254e98e5f0d430/) | AeolusV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa8c187...39d55d`](./contracts/polygon-137/0xa8c187d8773bc9e49a10554715ff49bdcf39d55d/) | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ChildERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x810ee3...43c168`](./contracts/bsc-56/0x810ee35443639348adbbc467b33310d2ab43c168/) | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39fa48...071a69`](./contracts/polygon-137/0x39fa48bf36a65834c88ec4ecb44c867f7e071a69/) | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10ed43...56024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10ed43...56024e`](./contracts/ethereum-1/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | Recovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfcb851...9d4624`](./contracts/polygon-137/0xfcb851ad3d98bd241dbe395ca1e6080f489d4624/) | UniswapV2CycloneRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
