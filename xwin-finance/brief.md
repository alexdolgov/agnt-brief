# Agentic Audit Brief: xWin Finance

## Project Overview

- Project: xWin Finance (`xwin-finance`)
- Website: [https://xwin.finance](https://xwin.finance)
- Lifecycle: active (Tier 0, 64.9% below peak)
- Generated: 2026-06-12T05:32:01.835Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: arbitrum, bsc, polygon
- Contract surface: 19 unique implementations (43 raw deployments)
- DeFi Llama TVL: $4,941,184.60
- On-chain TVL (included contracts): $1,844,863.40
- TVL by chain: Bsc $1,844,863.40

## Project Description

xWIN Finance is a multi-chain DeFi wealth-management platform offering robo-advisor, portfolio, index, and automated strategy products across multiple networks. The XWIN token is only the protocol token and should not be treated as containing all portfolio, index, or investment-management functionality; the protocol’s TVL-bearing product and strategy contracts are separate from the token contract and require independent inventory and coverage assessment.

### Architecture

The project currently consists of a single token contract, with no additional infrastructure or product families identified. All functionality is encapsulated within the XWINToken contract.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 43
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,844,863.40
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| XWINToken | token | bsc | [`0xd88ca0...bb5d28`](./contracts/bsc-56/0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28/) | ⚠️ Unaudited |
| FundV2Factory | registry | arbitrum | 3 deployments: bsc `0x9ab3c5...bc60a0`; polygon `0x9ebc52...628a68`; arbitrum [`0x6cc1ca...1dfc03`](./contracts/arbitrum-42161/0x6cc1cad8b330731e6ff469eaebf19961ea1dfc03/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | [`0xd4a3dc...0e5fb4`](./contracts/bsc-56/0xd4a3dcf47887636b19ed1b54aab722bd620e5fb4/) | ⚠️ Unaudited |
| UniSwapV2TWAPOracle | unknown | bsc | [`0x7a8aa0...1299ac`](./contracts/bsc-56/0x7a8aa080eada0b670fb719d7e53f87898a1299ac/) | ⚠️ Unaudited |
| xWinAllocations | unknown | polygon | 3 deployments: polygon [`0x75dab5...252a5a`](./contracts/polygon-137/0x75dab5000af15e7a9dd9c2365ae69e394c252a5a/); polygon `0xb4319e...440f69`; polygon `0xc1c53b...d422ac` | ⚠️ Unaudited |
| xWinDCA | unknown | bsc | [`0x482ae9...b8602a`](./contracts/bsc-56/0x482ae949e4a70953fca090717b68359b73b8602a/) | ⚠️ Unaudited |
| xWinDefi | unknown | bsc | [`0x1bf7fe...fe8092`](./contracts/bsc-56/0x1bf7fe7568211ecff68b6bc7ccad31ecd8fe8092/) | ⚠️ Unaudited |
| xWinEmitEvent | unknown | polygon | 3 deployments: bsc `0xc4c017...703cc6`; polygon [`0x3f2bef...25c062`](./contracts/polygon-137/0x3f2bef656821fac3a969d6a1f831e5f3ce25c062/); arbitrum `0x87b340...7b8e5a` | ⚠️ Unaudited |
| xWinERC20Alpha | token | bsc | [`0x0a6527...5c5b24`](./contracts/bsc-56/0x0a652784df3f8abde85daeeee77d1ea97f5c5b24/) | ⚠️ Unaudited |
| xWinFarm | unknown | bsc | 3 deployments: bsc [`0x4fdca7...d0bc18`](./contracts/bsc-56/0x4fdca7b4c19c70ad1f275934160400f9ded0bc18/); bsc `0x8f52e0...e56088`; bsc `0x9236a0...269b22` | ⚠️ Unaudited |
| xWinFund | unknown | bsc | 2 deployments: bsc [`0x548c42...3c7488`](./contracts/bsc-56/0x548c42fe3d1a44496491d09db2457d671f3c7488/); bsc `0x963039...4b9dc5` | ⚠️ Unaudited |
| xWinLockedStake | unknown | bsc | [`0xa4ae0d...25a9fc`](./contracts/bsc-56/0xa4ae0dcc89af9855946c0b2ad4a10ff27125a9fc/) | ⚠️ Unaudited |
| xWinMasterChef | unknown | bsc | [`0xd09774...900a60`](./contracts/bsc-56/0xd09774e3d5dc02fa969896c53d3cbb5bc8900a60/) | ⚠️ Unaudited |
| xWinPriceMaster | unknown | polygon | 3 deployments: bsc `0xb12337...5e48e2`; polygon [`0x4259ed...e3feed`](./contracts/polygon-137/0x4259ed91681159e455629a35d81c0b0020e3feed/); arbitrum `0x8a3c24...83c667` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | bsc | [`0x8b7fca...77bdb2`](./contracts/bsc-56/0x8b7fcacb99124f009c8470fda6f5fcf60277bdb2/) | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | polygon | 3 deployments: polygon [`0x1db49d...34af2c`](./contracts/polygon-137/0x1db49d9871a61101275ea72d9b9498948434af2c/); arbitrum `0x6ae475...aebda6`; arbitrum `0x8a0fa3...90ff62` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | polygon | 2 deployments: polygon [`0x549388...800707`](./contracts/polygon-137/0x5493881d5fc68be3519cb25f2a4717d192800707/); arbitrum `0x800b49...70406a` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | bsc | [`0x9ce3fc...93d8d1`](./contracts/bsc-56/0x9ce3fcffaeb4b7fbdf39e9313f845d977393d8d1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FundV2 | unknown | arbitrum | 11 deployments: bsc `0x0a0817...f495e5`; bsc `0x284b4a...5d0b48`; bsc `0x4d4f94...c64e4a`; bsc `0x61d572...837f37`; bsc `0xaaff5e...22aabe`; bsc `0xe949d2...b63f02`; bsc `0xfa4d4b...70635c`; arbitrum `0x03d6fe...9a6988`; arbitrum `0x5b0d58...ac47d2`; arbitrum `0xc9f555...3a0221`; arbitrum `0xed83fd...eeeed7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/xwinfinance) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2340] DL audit link

Fork inheritance lineage and inherited audits are included when available.
