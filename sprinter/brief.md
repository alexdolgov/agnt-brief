# Agentic Audit Brief: Sprinter

## Project Overview

- Project: Sprinter (`sprinter`)
- Website: [https://sprinter.tech/](https://sprinter.tech/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.563Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 16 unique implementations (24 raw deployments)
- DeFi Llama TVL: $680,662.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 10 project-authored contract(s) across 3 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (liquiditypool). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/13 (84.6%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/16
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 24
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 46.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 37.5% | 2026-03 |
| Sygma Labs | Tier 2 | 6 | 37.5% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CensoredTransferFromMulticall | periphery | base | n/a | [`0x7c472eba1945e970a23c903fc8812d469a29b6bb`](./contracts/base-8453/0x7c472eba1945e970a23c903fc8812d469a29b6bb/) | ✅ Audited |
| LiquidityPool | core_logic | optimism | n/a | 4 deployments: optimism [`0x0e16326e6921395eda2575740374e754b22810eb`](./contracts/optimism-10/0x0e16326e6921395eda2575740374e754b22810eb/); base [`0x0e16326e6921395eda2575740374e754b22810eb`](./contracts/base-8453/0x0e16326e6921395eda2575740374e754b22810eb/); base `0xb58bb9643884abbbad64fa7ebc874c5481e5c032`; arbitrum [`0x0e16326e6921395eda2575740374e754b22810eb`](./contracts/arbitrum-42161/0x0e16326e6921395eda2575740374e754b22810eb/) | ✅ Audited |
| LiquidityPoolAave | core_logic | optimism | n/a | 4 deployments: optimism [`0x2022a5600f854cc3218e636239f4dfce9e5357b5`](./contracts/optimism-10/0x2022a5600f854cc3218e636239f4dfce9e5357b5/); base [`0x2022a5600f854cc3218e636239f4dfce9e5357b5`](./contracts/base-8453/0x2022a5600f854cc3218e636239f4dfce9e5357b5/); base `0x7c255279c098fdf6c3116d2becd9978002c09f4b`; arbitrum [`0x2022a5600f854cc3218e636239f4dfce9e5357b5`](./contracts/arbitrum-42161/0x2022a5600f854cc3218e636239f4dfce9e5357b5/) | ✅ Audited |
| Processor | unknown | ethereum | n/a | [`0xffdb380c79d9bf412a61d63060388d761d16286d`](./contracts/ethereum-1/0xffdb380c79d9bf412a61d63060388d761d16286d/) | ✅ Audited |
| Rebalancer | adapter | optimism | n/a | [`0xa85cf46c150db2600b1d03e437bedd5513869888`](./contracts/optimism-10/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Rebalancer | adapter | base | n/a | [`0xa85cf46c150db2600b1d03e437bedd5513869888`](./contracts/base-8453/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Rebalancer | adapter | arbitrum | n/a | [`0xa85cf46c150db2600b1d03e437bedd5513869888`](./contracts/arbitrum-42161/0xa85cf46c150db2600b1d03e437bedd5513869888/) | ✅ Audited |
| Repayer | unknown | optimism | n/a | [`0x36364acc7b9c67692ca215af09a41cbd10439511`](./contracts/optimism-10/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| Repayer | unknown | base | n/a | [`0x36364acc7b9c67692ca215af09a41cbd10439511`](./contracts/base-8453/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| Repayer | unknown | arbitrum | n/a | [`0x36364acc7b9c67692ca215af09a41cbd10439511`](./contracts/arbitrum-42161/0x36364acc7b9c67692ca215af09a41cbd10439511/) | ✅ Audited |
| SprinterLiquidityMining | unknown | base | n/a | [`0x479d158959b59328e89f0fbf7dfebb198c313c21`](./contracts/base-8453/0x479d158959b59328e89f0fbf7dfebb198c313c21/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeProxy | governance | base | n/a | [`0x83b8d2eada788943c3e80892f37f9c102271c1d6`](./contracts/base-8453/0x83b8d2eada788943c3e80892f37f9c102271c1d6/) | ⚠️ Unaudited |
| LiquidityPoolAaveLongTerm | core_logic | ethereum | n/a | [`0x52d0ee7a870824fc683ea19c714c7bd110257788`](./contracts/ethereum-1/0x52d0ee7a870824fc683ea19c714c7bd110257788/) | ⚠️ Unaudited |
| LiquidityPoolStablecoin | core_logic | ethereum | n/a | [`0xa8d2c9c9453e61e3ca961512403d388dee0a3672`](./contracts/ethereum-1/0xa8d2c9c9453e61e3ca961512403d388dee0a3672/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 3 deployments: base [`0x2b5d04ef6b3279bcda4b219b02faf627da1664cb`](./contracts/base-8453/0x2b5d04ef6b3279bcda4b219b02faf627da1664cb/); base `0x818e818ac77112034abf79506d53ba197cac5077`; base `0x998c7392b6dd28031fed052e5ff2bf38f291d47b` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x4ea9e682ba79bc403523c9e8d98a05eaf3810636`](./contracts/base-8453/0x4ea9e682ba79bc403523c9e8d98a05eaf3810636/) | ⚠️ Unaudited |

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
| [cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58](https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01](https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Sprinter remote collateral security review Cantina - final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 1 | n/a |
| [VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) | Sygma Labs | Audit | 2025-02 | aging | Direct | contract_name | 4 | n/a |
| [VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf) | Sygma Labs | Audit | 2025-03 | aging | Direct | contract_name | 5 | n/a |
| [cantina_sprinter_may2025.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x52d0ee7a870824fc683ea19c714c7bd110257788`](./contracts/ethereum-1/0x52d0ee7a870824fc683ea19c714c7bd110257788/) | LiquidityPoolAaveLongTerm | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d2c9c9453e61e3ca961512403d388dee0a3672`](./contracts/ethereum-1/0xa8d2c9c9453e61e3ca961512403d388dee0a3672/) | LiquidityPoolStablecoin | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=15

Zero-match audit list:

- [3209] cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58
- [3210] cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01

Fork inheritance lineage and inherited audits are included when available.
