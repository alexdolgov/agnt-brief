# Agentic Audit Brief: Yuzu Money

## Project Overview

- Project: Yuzu Money (`yuzu-money`)
- Website: [https://app.yuzu.money](https://app.yuzu.money)
- Lifecycle: active (Tier 0, 28.6% below peak)
- Generated: 2026-06-12T09:12:37.745Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-645a
- Chains: plasma
- Contract surface: 9 unique implementations (18 raw deployments)
- DeFi Llama TVL: $48,954,053.07
- On-chain TVL (included contracts): $41,018,081.03
- TVL by chain: Plasma $41,018,081.03

## Project Description

Yuzu Money is an overcollateralized stablecoin and yield protocol spanning Plasma and Monad, with yzUSD/YuzuUSD and staked syzUSD products plus RWA, fixed-income, and T-Bills-style yield products such as yzPP.

### Architecture

All contracts belong to a single product family deployed by the same deployer. YuzuUSDV2 serves as the base stablecoin, StakedYuzuUSDV2 is its staking derivative, and YuzuILPV2 manages the liquidity pool backing; they share upgradeable proxy infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 18
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $41,018,081.03
- Latest audit: 2026-01 (fresh)
- Staleness: 6 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedYuzuUSDV2 | token | plasma | 3 deployments: plasma [`0x926b29...130ec8`](./contracts/plasma-9745/0x926b292f3b0fa2af6e6561c2bca28f0625130ec8/); plasma `0xa39825...e5e9c8`; plasma `0xc8a8df...0a1bf6` | ⚠️ Unaudited |
| TokenizedVault | core_logic | plasma | [`0x517677...1e3eec`](./contracts/plasma-9745/0x517677a19d8ae6ff600fb86c3c7bfccd651e3eec/) | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | [`0x44f6e9...fb7e71`](./contracts/plasma-9745/0x44f6e9b5c0fef82158dc98282078068b9bfb7e71/) | ⚠️ Unaudited |
| PSM | unknown | plasma | 3 deployments: plasma [`0x2aa939...199dea`](./contracts/plasma-9745/0x2aa939b5c9cef10c170ad38c4b05a45f27199dea/); plasma `0x7000b8...957544`; plasma `0x933069...c863b2` | ⚠️ Unaudited |
| StakedYuzuUSD | token | plasma | 2 deployments: plasma [`0x3fdd8e...d9e589`](./contracts/plasma-9745/0x3fdd8e2d2e9170a00f5406089720dae39cd9e589/); plasma `0xb14e7d...32160f` | ⚠️ Unaudited |
| YuzuILP | unknown | plasma | 2 deployments: plasma [`0x7e8bc5...249281`](./contracts/plasma-9745/0x7e8bc59b4126415c86c9bf1f8cb277b9d9249281/); plasma `0xa5913f...b51531` | ⚠️ Unaudited |
| YuzuILPV2 | unknown | plasma | 2 deployments: plasma [`0x326839...9309bc`](./contracts/plasma-9745/0x326839f792ba2ccf98a3ac28bb7de551539309bc/); plasma `0xebfc8c...b50dca` | ⚠️ Unaudited |
| YuzuUSD | unknown | plasma | 2 deployments: plasma [`0x8e6026...9cc340`](./contracts/plasma-9745/0x8e6026ac788415d03f38a46008a2a75d7c9cc340/); plasma `0x90b1bc...674d85` | ⚠️ Unaudited |
| YuzuUSDV2 | unknown | plasma | 2 deployments: plasma [`0x32d7d5...bf5cfe`](./contracts/plasma-9745/0x32d7d5bf842d6ae28c9dd4fac4c6662cf9bf5cfe/); plasma `0x6695c0...7926dc` | ⚠️ Unaudited |

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
| [YuzuUSD Security Review (Pashov)](https://github.com/pashov/audits/blob/master/team/pdf/YuzuUSD-security-review_2025-08-28.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [YuzuUSD Smart Contract Security Assessment (Dedaub)](https://dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025) | Dedaub | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [YuzuUSD Security Review (Pashov) (also discovered via alternate URL)](https://github.com/pashov/audits/blob/5911d22f3575a90650b2a6c22758a8f1712b8880/team/pdf/YuzuUSD-security-review_2026-01-14.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [YuzuUSD Smart Contract Security Assessment (Dedaub)](https://dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026) | Dedaub | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [YuzuUSD-security-review_2025-08-28.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2025-08-28.md) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [YuzuUSD-security-review_2026-01-14.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2026-01-14.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11732] YuzuUSD Security Review (Pashov)
- [11733] YuzuUSD Smart Contract Security Assessment (Dedaub)
- [11734] YuzuUSD Security Review (Pashov)
- [11735] YuzuUSD Smart Contract Security Assessment (Dedaub)
- [11736] YuzuUSD-security-review_2025-08-28.md
- [11737] YuzuUSD-security-review_2026-01-14.md

Fork inheritance lineage and inherited audits are included when available.
