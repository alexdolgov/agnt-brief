# Agentic Audit Brief: Zircuit Finance

## Project Overview

- Project: Zircuit Finance (`zircuit-finance`)
- Website: [https://finance.zircuit.com/](https://finance.zircuit.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:44.945Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 9 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,519,958.99
- On-chain TVL (included contracts): $1,512,516.60
- TVL by chain: Base $1,512,468.29 | Ethereum $48.32

## Project Description

Zircuit Finance is an institutional-grade onchain yield/vault platform for stablecoin deposits, currently showing USDC/USDT strategies such as Monarq and Morpho on Ethereum and Base.

### Architecture

All contracts belong to a single product family sharing the TokenizedStrategy implementation for lenders and ATokenInstance for yield-bearing tokens. StrategyManager contracts coordinate across lenders, while proxies provide upgradeability.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 3 singleton, 0 uninitialized.
- Deployment units: 9/10 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 19
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,512,516.60
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenizedStrategy | core_logic | base | unit-27262 (3 proxies) | 3 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xc91e44...e1aca7`; base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-27257 (2 proxies) | 2 deployments: ethereum [`0x28966c...332c49`](./contracts/ethereum-1/0x28966ce36d0f25858dc5d10dfc2829f05c332c49/); ethereum `0x6424c7...2b6e38` | ⚠️ Unaudited |
| AccountingReceiver | unknown | base | unit-27264 (2 proxies) | 2 deployments: base [`0x43c4a9...e66c9c`](./contracts/base-8453/0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c/); base `0x7fceb5...affd68` | ⚠️ Unaudited |
| StrategyManager | unknown | ethereum | unit-27255 (2 proxies) | 2 deployments: ethereum [`0x075193...a04d94`](./contracts/ethereum-1/0x075193d36693da7ba3bb709cf63bef070ba04d94/); ethereum `0xf7e745...cd3374` | ⚠️ Unaudited |
| UnderlyingOFT | unknown | base | unit-27263 (2 proxies) | 2 deployments: base [`0x264d64...3c5330`](./contracts/base-8453/0x264d6474802ef8bc1bc05f89f7d640d1e93c5330/); base `0xd7abc3...1c1c8b` | ⚠️ Unaudited |
| UnderlyingOFTAdapter | adapter | ethereum | unit-27258 (2 proxies) | 2 deployments: ethereum [`0x2d342d...835865`](./contracts/ethereum-1/0x2d342de4c58a871b3525740c58a1c112d5835865/); ethereum `0xd58e8c...85d190` | ⚠️ Unaudited |
| Vault | core_logic | base | unit-27259 (2 proxies) | 2 deployments: base [`0x03067b...da4cae`](./contracts/base-8453/0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae/); base `0x25d90a...fc832d` | ⚠️ Unaudited |
| VaultComposer | core_logic | base | unit-27261 (2 proxies) | 2 deployments: base [`0x16ce6d...7ad96b`](./contracts/base-8453/0x16ce6d9576a411911e62b6073f1cc9d1347ad96b/); base `0xbb801e...030923` | ⚠️ Unaudited |
| VaultToken | core_logic | ethereum | unit-27256 (2 proxies) | 2 deployments: ethereum [`0x07c898...a1c1a9`](./contracts/ethereum-1/0x07c898e77310870770f88d18a01009cb65a1c1a9/); ethereum `0x8adbea...cf470a` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | $1,512,468.29 | Verified native implementation with $1,512,468.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
