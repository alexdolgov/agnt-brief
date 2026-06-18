# Agentic Audit Brief: Sprinter

⚠️ Lifecycle status: UNKNOWN - TVL dropped 39.9% over 90 days

## Project Overview

- Project: Sprinter (`sprinter`)
- Website: [https://sprinter.tech/](https://sprinter.tech/)
- Lifecycle: unknown (Tier 0, 75% below peak)
- Generated: 2026-06-18T21:15:07.756Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5cc8
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 16 unique implementations (24 raw deployments)
- DeFi Llama TVL: $923,972.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sprinter is credit and liquidity infrastructure with Sprinter Solve/Credit and Stash/yield components. The currently matched DefiLlama-tracked contract surface covers the Base Stash/ERC-4626 vault subset, including yield-oriented vault infrastructure and integrations such as Aave strategies, rather than the full Sprinter project surface.

### Architecture

The LiquidityPool and LiquidityPoolAave contracts serve as the core vaults, while SprinterLiquidityMining distributes incentives to depositors. The TransparentUpgradeableProxy points to a LiquidityHub implementation, likely managing shared logic or access control across the system.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 24 (17 live, 7 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 4/8 live.
- Detected codebases: aave-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 11/16 (68.8%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 24
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 2 fresh, 4 aging, 0 stale, 0 unknown
- Tier 1 coverage: 37.5% (Spearbit)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 37.5% | 2026-03 |
| Sygma Labs | Tier 2 | 6 | 37.5% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CensoredTransferFromMulticall | periphery | base | n/a | [`0x7c472e...29b6bb`](./contracts/base-8453/0x7c472eba1945e970a23c903fc8812d469a29b6bb/) | ✅ Audited |
| LiquidityPool | core_logic | optimism | n/a | 4 deployments: optimism [`0x0e1632...2810eb`](./contracts/optimism-10/0x0e16326e6921395eda2575740374e754b22810eb/); base [`0x0e1632...2810eb`](./contracts/base-8453/0x0e16326e6921395eda2575740374e754b22810eb/); base `0xb58bb9...e5c032`; arbitrum [`0x0e1632...2810eb`](./contracts/arbitrum-42161/0x0e16326e6921395eda2575740374e754b22810eb/) | ✅ Audited |
| LiquidityPoolAave | core_logic | optimism | n/a | 4 deployments: optimism [`0x2022a5...5357b5`](./contracts/optimism-10/0x2022a5600f854cc3218e636239f4dfce9e5357b5/); base [`0x2022a5...5357b5`](./contracts/base-8453/0x2022a5600f854cc3218e636239f4dfce9e5357b5/); base `0x7c2552...c09f4b`; arbitrum [`0x2022a5...5357b5`](./contracts/arbitrum-42161/0x2022a5600f854cc3218e636239f4dfce9e5357b5/) | ✅ Audited |
| Processor | unknown | ethereum | unit-39124 | [`0xffdb38...16286d`](./contracts/ethereum-1/0xffdb380c79d9bf412a61d63060388d761d16286d/) | ✅ Audited |
| Rebalancer | adapter | optimism | unit-39126 | [`0xa85cf4...869888`](./contracts/optimism-10/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Rebalancer | adapter | base | unit-39129 | [`0xa85cf4...869888`](./contracts/base-8453/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Rebalancer | adapter | arbitrum | unit-39131 | [`0xa85cf4...869888`](./contracts/arbitrum-42161/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Repayer | unknown | optimism | unit-39125 | [`0x36364a...439511`](./contracts/optimism-10/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| Repayer | unknown | base | unit-39127 | [`0x36364a...439511`](./contracts/base-8453/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| Repayer | unknown | arbitrum | unit-39130 | [`0x36364a...439511`](./contracts/arbitrum-42161/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| SprinterLiquidityMining | unknown | base | n/a | [`0x479d15...313c21`](./contracts/base-8453/0x479d158959b59328e89f0fbf7dfebb198c313c21/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeProxy | governance | base | n/a | [`0x83b8d2...71c1d6`](./contracts/base-8453/0x83b8d2eada788943c3e80892f37f9c102271c1d6/) | ⚠️ Unaudited |
| LiquidityPoolAaveLongTerm | core_logic | ethereum | n/a | [`0x52d0ee...257788`](./contracts/ethereum-1/0x52d0ee7a870824fc683ea19c714c7bd110257788/) | ⚠️ Unaudited |
| LiquidityPoolStablecoin | core_logic | ethereum | n/a | [`0xa8d2c9...0a3672`](./contracts/ethereum-1/0xa8d2c9c9453e61e3ca961512403d388dee0a3672/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 3 deployments: base [`0x2b5d04...1664cb`](./contracts/base-8453/0x2b5d04ef6b3279bcda4b219b02faf627da1664cb/); base `0x818e81...ac5077`; base `0x998c73...91d47b` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x4ea9e6...810636`](./contracts/base-8453/0x4ea9e682ba79bc403523c9e8d98a05eaf3810636/) | ⚠️ Unaudited |

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
| [* **Secure & Credible:** MPC-secured multi-party threshold signing, risk mitigation mechanisms, and smart contract audits by [Veridise](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) and [Spearbit/Cantina]() make Sprinter Stash a secure platform. Built in partnership with [ChainSafe](https://chainsafe.io), a team with 7+ years of industry expertise across core protocol development, standardization/EIPs and security audits/council work.](https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [* [Sprinter Credit]() - Spearbit/Cantina](https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Sprinter remote collateral security review Cantina - final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) | Sygma Labs | Audit | 2025-02 | aging | Direct | contract_name | 4 | high |
| [VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf) | Sygma Labs | Audit | 2025-03 | aging | Direct | contract_name | 11 | high |
| [cantina_sprinter_may2025.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 5 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x52d0ee...257788`](./contracts/ethereum-1/0x52d0ee7a870824fc683ea19c714c7bd110257788/) | LiquidityPoolAaveLongTerm | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d2c9...0a3672`](./contracts/ethereum-1/0xa8d2c9c9453e61e3ca961512403d388dee0a3672/) | LiquidityPoolStablecoin | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=25

Zero-match audit list:

- [3209] * **Secure & Credible:** MPC-secured multi-party threshold signing, risk mitigation mechanisms, and smart contract audits by [Veridise](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) and [Spearbit/Cantina]() make Sprinter Stash a secure platform. Built in partnership with [ChainSafe](https://chainsafe.io), a team with 7+ years of industry expertise across core protocol development, standardization/EIPs and security audits/council work.
- [3210] * [Sprinter Credit]() - Spearbit/Cantina

Fork inheritance lineage and inherited audits are included when available.
