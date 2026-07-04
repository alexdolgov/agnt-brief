# Agentic Audit Brief: Yuzu Money

## Project Overview

- Project: Yuzu Money (`yuzu-money`)
- Website: [https://app.yuzu.money](https://app.yuzu.money)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.917Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: plasma
- Contract surface: 11 unique implementations (18 raw deployments)
- DeFi Llama TVL: $55,226,801.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 8 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 14 common project-authored base contract(s) (proxy, yuzuproto, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/11 (81.8%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/11
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 18
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 6 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 9 | 81.8% | 2026-01 |
| Dedaub | Tier 2 | 7 | 63.6% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PSM | unknown | plasma | n/a | 2 deployments: plasma [`0x2aa939...199dea`](./contracts/plasma-9745/0x2aa939b5c9cef10c170ad38c4b05a45f27199dea/); plasma `0x933069...c863b2` | ✅ Audited |
| PSM | unknown | plasma | n/a | [`0x7000b8...957544`](./contracts/plasma-9745/0x7000b862257566245d8b28e905ae53cfb7957544/) | ✅ Audited |
| StakedYuzuUSD | unknown | plasma | n/a | 2 deployments: plasma [`0x3fdd8e...d9e589`](./contracts/plasma-9745/0x3fdd8e2d2e9170a00f5406089720dae39cd9e589/); plasma `0xb14e7d...32160f` | ✅ Audited |
| StakedYuzuUSDV2 | token | plasma | n/a | [`0x926b29...130ec8`](./contracts/plasma-9745/0x926b292f3b0fa2af6e6561c2bca28f0625130ec8/) | ✅ Audited |
| StakedYuzuUSDV2 | unknown | plasma | n/a | 2 deployments: plasma [`0xa39825...e5e9c8`](./contracts/plasma-9745/0xa3982582016375a0b25cb7d572379d3d49e5e9c8/); plasma `0xc8a8df...0a1bf6` | ✅ Audited |
| YuzuILP | unknown | plasma | n/a | 2 deployments: plasma [`0x7e8bc5...249281`](./contracts/plasma-9745/0x7e8bc59b4126415c86c9bf1f8cb277b9d9249281/); plasma `0xa5913f...b51531` | ✅ Audited |
| YuzuILPV2 | unknown | plasma | n/a | 2 deployments: plasma [`0x326839...9309bc`](./contracts/plasma-9745/0x326839f792ba2ccf98a3ac28bb7de551539309bc/); plasma `0xebfc8c...b50dca` | ✅ Audited |
| YuzuUSD | unknown | plasma | n/a | 2 deployments: plasma [`0x8e6026...9cc340`](./contracts/plasma-9745/0x8e6026ac788415d03f38a46008a2a75d7c9cc340/); plasma `0x90b1bc...674d85` | ✅ Audited |
| YuzuUSDV2 | unknown | plasma | n/a | 2 deployments: plasma [`0x32d7d5...bf5cfe`](./contracts/plasma-9745/0x32d7d5bf842d6ae28c9dd4fac4c6662cf9bf5cfe/); plasma `0x6695c0...7926dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | plasma | n/a | [`0x44f6e9...fb7e71`](./contracts/plasma-9745/0x44f6e9b5c0fef82158dc98282078068b9bfb7e71/) | ⚠️ Unaudited |
| TokenizedVault | core_logic | plasma | n/a | [`0x517677...1e3eec`](./contracts/plasma-9745/0x517677a19d8ae6ff600fb86c3c7bfccd651e3eec/) | ⚠️ Unaudited |

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
| [YuzuUSD-security-review_2025-08-28.pdf](https://github.com/pashov/audits/blob/master/team/pdf/YuzuUSD-security-review_2025-08-28.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | 6 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025](https://dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025) | Dedaub | Audit | 2025-08 | fresh | Direct | contract_name | 6 | high |
| [YuzuUSD-security-review_2026-01-14.pdf](https://github.com/pashov/audits/blob/5911d22f3575a90650b2a6c22758a8f1712b8880/team/pdf/YuzuUSD-security-review_2026-01-14.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | 14 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026](https://dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026) | Dedaub | Audit | 2026-01 | fresh | Direct | contract_name | 8 | high |
| [YuzuUSD-security-review_2025-08-28.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2025-08-28.md) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | 6 | high |
| [YuzuUSD-security-review_2026-01-14.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2026-01-14.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=54

Fork inheritance lineage and inherited audits are included when available.
