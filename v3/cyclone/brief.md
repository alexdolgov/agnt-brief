# Agentic Audit Brief: Cyclone

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cyclone (`cyclone`)
- Website: [https://cyclone.xyz](https://cyclone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 87 unique implementations (158 raw deployments)
- Coverage basis: 4/20 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,117,986.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cyclone. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across bsc, ethereum, polygon. Structural roles: 13 core, 4 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (13), unclassified (4), supporting (3)
- Contract kinds: contract (20)
- Detected standards: erc20 (3)
- Frameworks: openzeppelin (15)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7c994f...4292d6`, chain 1)
- UnnamedContract (`0x949452...66202b`, chain 1)
- UnnamedContract (`0xb6e9ea...aad376`, chain 137)
- AeolusV2 (`0x92a737...f0d430`, chain 56)
- AeolusV2dot1 (`0xdc71bc...e756fb`, chain 1)
- AeolusV2dot1 (`0xa8c187...39d55d`, chain 137)
- CycloneToken (`0x8861cf...64ef9a`, chain 1)
- CycloneToken (`0x810ee3...43c168`, chain 56)
- CycloneToken (`0xcfb54a...6965d8`, chain 137)
- CycloneV2 (`0x66b5e3...8d16c7`, chain 56)
- CycloneV2 (`0x794597...434541`, chain 56)
- CycloneV2 (`0xbe19d5...cc42a5`, chain 56)
- CycloneV2dot1 (`0xd90a6b...a507ec`, chain 56)
- CycloneV2dot2 (`0xd619c8...95fa1b`, chain 1)
- CycloneV2dot3 (`0x09f034...11c113`, chain 1)
- CycloneV2dot3 (`0xa38b67...539c3d`, chain 1)
- CycloneV2dot3 (`0x517cee...7a025b`, chain 137)
- CycloneV2dot3 (`0x519493...a11f43`, chain 137)
- CycloneV2dot3 (`0x8e6e47...707e10`, chain 137)
- PancakeRouter (`0x10ed43...56024e`, chain 56)
- UniswapV2CycloneRouter (`0xfcb851...9d4624`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/20 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 64 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 23 of 87 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/41
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 87
- Raw deployments: 158
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 10.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 3 | 7.3% | 2021-04 |
| Slowmist | Tier 1 | 2 | 4.9% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeolusV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234796 | `0x92a737...f0d430` | ✅ Audited |
| CycloneToken | token | project_anchor | own_supporting | 0 | bsc | unit-234794 | `0x810ee3...43c168` | ✅ Audited |
| CycloneV2dot1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234798 | `0xd90a6b...a507ec` | ✅ Audited |
| UniswapV2CycloneRouter | adapter | project_anchor | own_supporting | 0 | polygon | unit-234790 | `0xfcb851...9d4624` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeolusV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1fb0e0...f9009a`; bsc `0x567da5...bb5363`; bsc `0x74fb68...fa85fa` | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234783 | `0xdc71bc...e756fb` | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234787 | `0xa8c187...39d55d` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x195fe6...5dfa0b`; polygon `0x316c79...5548d0` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa6fa4f...d1c0aa` | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x0b9020...6eb88f`; polygon `0x46ca15...ec1871`; polygon `0x4a8766...e1f2b9`; polygon `0x4e5612...1f6db6`; polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x5fab57...c5c8d6`; polygon `0x6bfb5b...a19243`; polygon `0x71b821...085978`; polygon `0x8484ef...922b30`; polygon `0xadc0c4...69ea73`; polygon `0xb6a508...5c1326`; polygon `0xca3441...28a223`; polygon `0xeffdcb...230e3e`; polygon `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| ChildERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| CycloneToken | token | project_anchor | own_supporting | 0 | ethereum | unit-234779 | `0x8861cf...64ef9a` | ⚠️ Unaudited |
| CycloneToken | token | project_anchor | own_supporting | 0 | polygon | unit-234789 | `0xcfb54a...6965d8` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234792 | `0x66b5e3...8d16c7` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234793 | `0x794597...434541` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234797 | `0xbe19d5...cc42a5` | ⚠️ Unaudited |
| CycloneV2dot2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234782 | `0xd619c8...95fa1b` | ⚠️ Unaudited |
| CycloneV2dot2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xdff088...f95370`; ethereum `0xf12e50...2c15ee`; bsc `0x0d0909...db031d`; bsc `0x182d03...2b8215`; bsc `0xc7be35...c30317` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234776 | `0x09f034...11c113` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234781 | `0xa38b67...539c3d` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 14 deployments: ethereum `0xbb95a5...34f194`; polygon `0x39fa48...071a69`; polygon `0x3e2c1b...462284`; polygon `0x438d30...8bacd6`; polygon `0x4df9a4...f92e29`; polygon `0x526093...9ac246`; polygon `0x87059f...e22f16`; polygon `0x8a6e1b...958751`; polygon `0x8b144b...b6925b`; polygon `0xb00f33...319722`; polygon `0xb5aee5...725be7`; polygon `0xb8415b...139db9`; polygon `0xd48328...6154a9`; polygon `0xe6eecd...19d155` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234784 | `0x517cee...7a025b` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234785 | `0x519493...a11f43` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234786 | `0x8e6e47...707e10` | ⚠️ Unaudited |
| CycloneWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234777 | `0x602b40...80dcca` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| MaticWETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca143c...350c73` | ⚠️ Unaudited |
| PancakeRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-234791 | `0x10ed43...56024e` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| Recovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x02ee06...8b689f`; ethereum `0x10ed43...56024e`; ethereum `0x1f5ecb...ff1996`; ethereum `0x2ad2c5...eb2c56`; ethereum `0x877fe7...15edb6`; ethereum `0xca143c...350c73`; ethereum `0xe47d22...81f408` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 18 deployments: polygon `0x0735a6...6f0e12`; polygon `0x12aa9d...38621e`; polygon `0x15e22d...fb0269`; polygon `0x1ce2aa...dba776`; polygon `0x422432...804046`; polygon `0x5e81f3...0f1299`; polygon `0x77d58f...86a32e`; polygon `0x8234e1...bcb209`; polygon `0x9b7a8c...efe32e`; polygon `0x9cceed...622c38`; polygon `0xa42544...4aea96`; polygon `0xa48e39...2d180b`; polygon `0xa5b0ef...4a1f8f`; polygon `0xb2223a...fe24d8`; polygon `0xbfbd88...0468f7`; polygon `0xcd7f85...5752a3`; polygon `0xe47efb...c4f718`; polygon `0xea0d65...685586` | ⚠️ Unaudited |
| UChildERC20Proxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: polygon `0x02daef...057966`; polygon `0x313d00...5bd604`; polygon `0x5a2fdf...908d19`; polygon `0x5adf17...2e0a58`; polygon `0x6bd27b...58ea99`; polygon `0x7d836d...f09981`; polygon `0x81a9d2...5c83ca`; polygon `0xa48929...8d5c8f`; polygon `0xc10aac...113e15`; polygon `0xc576e8...1ee78a`; polygon `0xcf46c5...8f5546`; polygon `0xf316a6...676ed9`; polygon `0xfdf922...b39c4c` | ⚠️ Unaudited |
| UChildUSDT0 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37d9c7...ae6f89`; polygon `0x6ea885...33ba51` | ⚠️ Unaudited |
| Verifier | unknown | project_anchor | own_supporting | 0 | bsc | unit-234795 | `0x9286e9...b4cf14` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24908e...6c5abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b39f...a9defb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x517cee...7a025b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519493...a11f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b5e3...8d16c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71e6a3...aea37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777234...8111fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794597...434541` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234778 | `0x7c994f...4292d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x810ee3...43c168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6e47...707e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9286e9...b4cf14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a737...f0d430` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234780 | `0x949452...66202b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c187...39d55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6e9ea...aad376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe19d5...cc42a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb54a...6965d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90a6b...a507ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb851...9d4624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0254a2...38d0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c02d6...8db8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x225945...03eff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x407ee7...b12110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b94e...d664d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x626498...ba2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x631f80...3b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8691ab...f51dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c4855...ea8270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3f65c...c68c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafcc4c...1725fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc00a7c...d11dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc71bc...e756fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfb43c...a5b642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a1ff...91708c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec05c6...4630b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e772e...5458f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x624dfa...f93e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f94fb...5e4126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d1701...87de74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacf00a...13ef36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234788 | `0xb6e9ea...aad376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc760de...6d7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce7edb...366859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbb4a1...53fdb7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Tornado_circuit_audit.pdf](https://tornado.cash/Tornado_circuit_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Tornado_solidity_audit.pdf](https://tornado.cash/Tornado_solidity_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [chainshield.io](https://chainshield.io/) | ChainShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart Contract Audit Report - Cyclone Protocol v2.pdf](https://4040024839-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MNeAQGL5skC11vu82Sy%2F-MVwM2h1RmXM94Ik7NAO%2F-MVwMB3sAAKGp9zma217%2FSmart%20Contract%20Audit%20Report%20-%20Cyclone%20Protocol%20v2.pdf) | Slowmist | Audit | 2021-03 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [Smart Contract Security Audit Report - Cyclone.pdf](https://4040024839-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MNeAQGL5skC11vu82Sy%2F-MY3RBSlDMhVlkrMsx5Y%2F-MY3RKd1R4T7nq41E4hA%2FSmart%20Contract%20Security%20Audit%20Report%20-%20Cyclone.pdf) | yAudit | Audit | 2021-04 | stale | Direct | address | matched | 4 | 0 | 0 | 33 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11566] Tornado_circuit_audit.pdf — no match: Audit report does not have a formal scope section; contract names extracted from templates discussed in findings.
- [11567] Tornado_solidity_audit.pdf — no match: Contracts are explicitly listed in section headers of the audit report. No formal scope table, but each section corresponds to a contract file.
- [11568] chainshield.io — no match: The document is a marketing page for ChainShield's audit services, not an actual audit report. No contracts, scope, or audit date are present.
- [26669] Smart Contract Audit Report - Cyclone Protocol v2.pdf — matched: The report explicitly lists three contracts in scope: CycloneV2.sol, AeolusV2.sol, UniswapV2CycloneRouter.sol. Standard and zkSNARK contracts are mentioned but not audited in detail. Date found on cover page: '12th March, 2021'.
- [26670] Smart Contract Security Audit Report - Cyclone.pdf — matched: All contracts listed in the project structure section (pages 4-6) are considered in scope. The audit report also mentions main contract addresses and analyzes specific contracts like AeolusV2, CycloneV2, CycloneV2dot1, and CycloneToken.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Tornado_circuit_audit.pdf | Selector | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | MerkleTreeChecker | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | Withdraw | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | HashLeftRight | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | MiMCSponge | unmatched — not counted | — | mentioned as template from circomlib | no |
| Tornado_circuit_audit.pdf | MerkleTree | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_solidity_audit.pdf | ERC20Mixer | unmatched — not counted | — | Section 2 header | no |
| Tornado_solidity_audit.pdf | ETHMixer | unmatched — not counted | — | Section 3 header | no |
| Tornado_solidity_audit.pdf | Mixer | unmatched — not counted | — | Section 4 header | no |
| Tornado_solidity_audit.pdf | MerkleTreeWithHistory | unmatched — not counted | — | Section 5 header | no |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | CycloneV2.sol | ambiguous — not counted | CycloneV2 (alternative) `0xbe19d5...cc42a5` — deployed 2021-03-12 08:58:56+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x794597...434541` — deployed 2021-03-12 09:17:29+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x66b5e3...8d16c7` — deployed 2021-03-12 09:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | AeolusV2.sol | own contract | AeolusV2 (selected) `0x92a737...f0d430` — deployed 2021-04-26 20:45:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | UniswapV2CycloneRouter.sol | own contract | UniswapV2CycloneRouter (selected) `0xfcb851...9d4624` — deployed 2021-06-21 18:02:52+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | Aeolus | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | AeolusV2 | unmatched — not counted | — | listed in project structure and main contract addresses | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Cyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneV2 | ambiguous — not counted | CycloneV2 (alternative) `0xbe19d5...cc42a5` — deployed 2021-03-12 08:58:56+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x794597...434541` — deployed 2021-03-12 09:17:29+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x66b5e3...8d16c7` — deployed 2021-03-12 09:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneV2dot1 | own contract | CycloneV2dot1 (selected) `0xd90a6b...a507ec` — deployed 2021-03-19 19:43:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | ICycloneV2 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Migrations | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | GovernorAlpha | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ITimelock | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Timelock | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Pausable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | SafeMath | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CoinCyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ERC20Cyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMimoExchange | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMimoFactory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MimoExchange | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MimoFactory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MockUniswapV2Router | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | TestCycloneDelegate | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Ownable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Whitelist | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | BasicToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneToken | own contract | CycloneToken (selected) `0x810ee3...43c168` — deployed 2021-03-11 23:16:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | IERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IERC20Basic | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMintableToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | SafeERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ShadowToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | StandardToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IRouter | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | UniswapV2CycloneRouter | own contract | UniswapV2CycloneRouter (selected) `0xfcb851...9d4624` — deployed 2021-06-21 18:02:52+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | Address | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IVerifier | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MerkleTreeWithHistory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Verifier | own contract | 0xb6e9ea… (alternative) `0xb6e9ea...aad376` — deployed 2021-06-21 14:31:11+03 — liveness: live (current_address_book_code)<br>Verifier (alternative) `0x9286e9...b4cf14` — deployed 2021-03-12 02:41:02+03 — liveness: live (code_present_context)<br>0x7c994f… (selected) `0x7c994f...4292d6` — deployed 2021-04-14 02:11:02+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-14 was 8d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdc71bc...e756fb` | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa8c187...39d55d` | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8861cf...64ef9a` | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcfb54a...6965d8` | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66b5e3...8d16c7` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x794597...434541` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbe19d5...cc42a5` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd619c8...95fa1b` | CycloneV2dot2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09f034...11c113` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa38b67...539c3d` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x517cee...7a025b` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x519493...a11f43` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8e6e47...707e10` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x602b40...80dcca` | CycloneWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10ed43...56024e` | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9286e9...b4cf14` | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 42 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: address=2, temporal_name=1, unique_name=3

Zero-match audit list:

- [11566] Tornado_circuit_audit.pdf
- [11567] Tornado_solidity_audit.pdf
- [11568] chainshield.io

Fork inheritance lineage and inherited audits are included when available.
