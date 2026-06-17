# Agentic Audit Brief: Yuzu Money

## Project Overview

- Project: Yuzu Money (`yuzu-money`)
- Website: [https://app.yuzu.money](https://app.yuzu.money)
- Lifecycle: active (Tier 0, 28.6% below peak)
- Generated: 2026-06-17T07:00:37.449Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: plasma
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $48,954,053.07
- On-chain TVL (included contracts): $1,796.51
- TVL by chain: Plasma $1,796.51

## Project Description

Yuzu Money is an overcollateralized stablecoin and yield protocol spanning Plasma and Monad, with yzUSD/YuzuUSD and staked syzUSD products plus RWA, fixed-income, and T-Bills-style yield products such as yzPP.

### Architecture

All contracts belong to a single product family deployed by the same deployer. YuzuUSDV2 serves as the base stablecoin, StakedYuzuUSDV2 is its staking derivative, and YuzuILPV2 manages the liquidity pool backing; they share upgradeable proxy infrastructure.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 1/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,796.51
- Latest audit: 2026-01 (fresh)
- Staleness: 6 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenizedVault | core_logic | plasma | unit-23651 | [`0x517677...1e3eec`](./contracts/plasma-9745/0x517677a19d8ae6ff600fb86c3c7bfccd651e3eec/) | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | n/a | [`0x44f6e9...fb7e71`](./contracts/plasma-9745/0x44f6e9b5c0fef82158dc98282078068b9bfb7e71/) | ⚠️ Unaudited |
| PSM | unknown | plasma | n/a | [`0x7000b8...957544`](./contracts/plasma-9745/0x7000b862257566245d8b28e905ae53cfb7957544/) | ⚠️ Unaudited |
| StakedYuzuUSDV2 | token | plasma | n/a | [`0x926b29...130ec8`](./contracts/plasma-9745/0x926b292f3b0fa2af6e6561c2bca28f0625130ec8/) | ⚠️ Unaudited |

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
| needs_review | 4 |

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
