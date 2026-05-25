# Agentic Audit Brief: Sprinter

## Project Overview

- Project: Sprinter (`sprinter`)
- Website: [https://sprinter.tech/](https://sprinter.tech/)
- Lifecycle: active (Tier 0, 59.7% below peak)
- Generated: 2026-05-25T05:33:15.369Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,139,008.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sprinter is a yield protocol on Base that aggregates liquidity into ERC-4626 vaults and optimizes yield through strategies like Aave integration. It also includes liquidity mining incentives to reward depositors.

### Architecture

The LiquidityPool and LiquidityPoolAave contracts serve as the core vaults, while SprinterLiquidityMining distributes incentives to depositors. The TransparentUpgradeableProxy points to a LiquidityHub implementation, likely managing shared logic or access control across the system.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 3 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 50.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sygma Labs | Tier 2 | 4 | 100.0% | 2025-03 |
| Spearbit | Tier 1 | 2 | 50.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LiquidityHub | unknown | base | [`0xa593a9...539ff2`](./contracts/base-8453/0xa593a9bbbc65be342ff610a01e96da2eb8539ff2/) | ✅ Audited |
| LiquidityPool | core_logic | base | [`0xb58bb9...e5c032`](./contracts/base-8453/0xb58bb9643884abbbad64fa7ebc874c5481e5c032/) | ✅ Audited |
| LiquidityPoolAave | core_logic | base | [`0x7c2552...c09f4b`](./contracts/base-8453/0x7c255279c098fdf6c3116d2becd9978002c09f4b/) | ✅ Audited |
| SprinterLiquidityMining | unknown | base | [`0x479d15...313c21`](./contracts/base-8453/0x479d158959b59328e89f0fbf7dfebb198c313c21/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Sprinter remote collateral security review Cantina - final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) | Sygma Labs | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf) | Sygma Labs | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [cantina_sprinter_may2025.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf) | Spearbit | Audit | 2025-06 | fresh | Direct | contract_name | 2 | medium |
| [* **Secure & Credible:** MPC-secured multi-party threshold signing, risk mitigation mechanisms, and smart contract audits by [Veridise](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) and [Spearbit/Cantina]() make Sprinter Stash a secure platform. Built in partnership with [ChainSafe](https://chainsafe.io), a team with 7+ years of industry expertise across core protocol development, standardization/EIPs and security audits/council work.](https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [* [Sprinter Credit]() - Spearbit/Cantina](https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [3205] Sprinter remote collateral security review Cantina - final.pdf
- [3209] * **Secure & Credible:** MPC-secured multi-party threshold signing, risk mitigation mechanisms, and smart contract audits by [Veridise](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) and [Spearbit/Cantina]() make Sprinter Stash a secure platform. Built in partnership with [ChainSafe](https://chainsafe.io), a team with 7+ years of industry expertise across core protocol development, standardization/EIPs and security audits/council work.
- [3210] * [Sprinter Credit]() - Spearbit/Cantina

Fork inheritance lineage and inherited audits are included when available.
