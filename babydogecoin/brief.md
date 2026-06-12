# Agentic Audit Brief: BabyDogeCoin

⚠️ Lifecycle status: DECLINING - TVL dropped 4.5% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T05:31:52.353Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: bsc, ethereum, polygon
- Contract surface: 17 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,971,120.00
- On-chain TVL (included contracts): $164,864,498.52
- TVL by chain: Bsc $164,864,498.52

## Project Description

BabyDogeCoin is primarily a BSC-based BabyDoge token project with associated DEX, swap, farms, and staking-related interfaces. The verified contract surface for this evidence package is limited to the BSC CoinToken contract; native multi-chain vaults, reward systems, bridges, and perpetual trading contracts should not be treated as part of the verified protocol contract surface without separate ownership and deployment evidence.

### Architecture

BabyDoge Perps and BabyDogeSwap share the CoinToken as the ecosystem's primary token, which is used across farming, staking, and liquidity pools. The Perps family relies on a network of vaults, pools, and reward contracts that interact with external DEX pairs and cross-chain bridges to enable multi-chain yield and trading.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 19
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $164,864,498.52
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $164,864,498.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CoinToken | token | bsc | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | ⚠️ Unaudited |
| BabyDogeFactory | registry | bsc | [`0x4693b6...f43137`](./contracts/bsc-56/0x4693b62e5fc9c0a45f89d62e6300a03c85f43137/) | ⚠️ Unaudited |
| BabyDogeLocker | unknown | bsc | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | ⚠️ Unaudited |
| BabyDogePair | unknown | bsc | [`0x6e0d52...10652d`](./contracts/bsc-56/0x6e0d5230637d50dbe58e674e746614fc8210652d/) | ⚠️ Unaudited |
| BabyDogeRouter | adapter | bsc | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | ⚠️ Unaudited |
| BbdNftStaking | token | ethereum | [`0xee1f84...75c9f8`](./contracts/ethereum-1/0xee1f8496e48ac25061bdc6f4512faa443475c9f8/) | ⚠️ Unaudited |
| BNBWrapper | unknown | bsc | [`0xc7ac77...8c29c8`](./contracts/bsc-56/0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8/) | ⚠️ Unaudited |
| BurnPortal | unknown | bsc | [`0xbb667d...4e0396`](./contracts/bsc-56/0xbb667d8f8a1fd68ded52c616a314a294294e0396/) | ⚠️ Unaudited |
| BuyBackFeeManager | governance | bsc | [`0x218c4c...f7882c`](./contracts/bsc-56/0x218c4c326a5bc505acb1a8a60fabb5f382f7882c/) | ⚠️ Unaudited |
| FarmDeployer | unknown | bsc | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | ⚠️ Unaudited |
| FarmDeployer20FixEnd | unknown | bsc | 2 deployments: bsc [`0x44cc0e...1eeadb`](./contracts/bsc-56/0x44cc0ef02c6e43a6bbf65ab643736a24f81eeadb/); bsc `0x6aec35...d57cf6` | ⚠️ Unaudited |
| FarmZAP | adapter | bsc | [`0x451583...06f762`](./contracts/bsc-56/0x451583b6da479eaa04366443262848e27706f762/) | ⚠️ Unaudited |
| LPZap | adapter | bsc | [`0xff5737...1226ba`](./contracts/bsc-56/0xff57372f16147117520d40fe777feda51b1226ba/) | ⚠️ Unaudited |
| RouterFeeSetter | adapter | bsc | [`0x6b2ce3...a4c967`](./contracts/bsc-56/0x6b2ce3f0af1dec26a3ae15125c771616bda4c967/) | ⚠️ Unaudited |
| SmartChefFactory | registry | bsc | [`0x78d5ef...55c61e`](./contracts/bsc-56/0x78d5efd49d18654226ae0ca3178bd21f2955c61e/) | ⚠️ Unaudited |
| TokenLocker | token | polygon | 2 deployments: ethereum `0xa03527...fc7b2b`; polygon [`0x9bb5bd...7134d6`](./contracts/polygon-137/0x9bb5bd890d7820b2a2ab7741899e5bfb1c7134d6/) | ⚠️ Unaudited |
| TreasuryFeeManager | operational_periphery | bsc | [`0x1551ea...2b5209`](./contracts/bsc-56/0x1551eac5d2edaa634f713a526866ad83b82b5209/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2926] DL audit link

Fork inheritance lineage and inherited audits are included when available.
