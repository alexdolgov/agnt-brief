# Agentic Audit Brief: BabyDogeCoin

⚠️ Lifecycle status: DECLINING - TVL dropped 4.5% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.396Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,971,120.00
- On-chain TVL (included contracts): $164,864,498.52
- TVL by chain: Bsc $164,864,498.52

## Project Description

BabyDogeCoin is primarily a BSC-based BabyDoge token project with associated DEX, swap, farms, and staking-related interfaces. The verified contract surface for this evidence package is limited to the BSC CoinToken contract; native multi-chain vaults, reward systems, bridges, and perpetual trading contracts should not be treated as part of the verified protocol contract surface without separate ownership and deployment evidence.

### Architecture

BabyDoge Perps and BabyDogeSwap share the CoinToken as the ecosystem's primary token, which is used across farming, staking, and liquidity pools. The Perps family relies on a network of vaults, pools, and reward contracts that interact with external DEX pairs and cross-chain bridges to enable multi-chain yield and trading.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 7 (6 live, 1 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/21.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoinToken | token | bsc | n/a | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | ⚠️ Unaudited |
| BabyDogeLocker | unknown | bsc | n/a | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | ⚠️ Unaudited |
| BabyDogePair | unknown | bsc | n/a | [`0x6e0d52...10652d`](./contracts/bsc-56/0x6e0d5230637d50dbe58e674e746614fc8210652d/) | ⚠️ Unaudited |
| BabyDogeRouter | adapter | bsc | n/a | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | ⚠️ Unaudited |
| BbdNftStaking | token | ethereum | n/a | [`0xee1f84...75c9f8`](./contracts/ethereum-1/0xee1f8496e48ac25061bdc6f4512faa443475c9f8/) | ⚠️ Unaudited |
| BurnPortal | unknown | bsc | n/a | [`0xbb667d...4e0396`](./contracts/bsc-56/0xbb667d8f8a1fd68ded52c616a314a294294e0396/) | ⚠️ Unaudited |
| FarmDeployer | unknown | bsc | n/a | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | ⚠️ Unaudited |

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
| needs_review | 7 |

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
