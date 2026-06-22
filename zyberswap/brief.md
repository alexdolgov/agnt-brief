# Agentic Audit Brief: ZyberSwap

⚠️ Lifecycle status: DEAD - TVL dropped 8.0% over 90 days

## Project Overview

- Project: ZyberSwap (`zyberswap`)
- Website: [https://www.zyberswap.io](https://www.zyberswap.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:27:45.106Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $65,560.00
- On-chain TVL (included contracts): $5,397.70
- TVL by chain: Arbitrum $5,397.70

## Project Description

ZyberSwap is a decentralized exchange (DEX) on Arbitrum One that enables users to swap tokens, provide liquidity, and earn yield. It includes an automated market maker (AMM) with a native token (ZyberToken) for incentives, a vault for yield optimization, and a stableswap module for efficient stablecoin trading.

### Architecture

The ZyberSwap family relies on ZyberFactory to deploy and register AMM pools, while ZyberToken serves as the incentive token distributed by ZyberChef to liquidity providers. ZyberVault likely aggregates liquidity from pools to optimize yield, and the Stableswap family operates independently with its own SwapDeployer, though it may share the ZyberToken for incentives.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 37.5% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZyberToken | token | arbitrum | n/a | [`0x3b475f...a2724c`](./contracts/arbitrum-42161/0x3b475f6f2f41853706afc9fa6a6b8c5df1a2724c/) | ✅ Audited |
| ZyberChef | unknown | arbitrum | n/a | [`0x9ba666...2fbddd`](./contracts/arbitrum-42161/0x9ba666165867e916ee7ed3a3ae6c19415c2fbddd/) | ✅ Audited |
| ZyberRouter | adapter | arbitrum | n/a | [`0x16e71b...ad32ad`](./contracts/arbitrum-42161/0x16e71b13fe6079b4312063f7e81f76d165ad32ad/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProfitShare | unknown | arbitrum | n/a | [`0xc35294...b3e586`](./contracts/arbitrum-42161/0xc352940f6cadd1b38d60c353e44402258fb3e586/) | ⚠️ Unaudited |
| sZyberToken | token | arbitrum | n/a | [`0x3b7172...1e119f`](./contracts/arbitrum-42161/0x3b71729510cbea2f23a1b9fd6b9db002271e119f/) | ⚠️ Unaudited |
| V3Fees | unknown | arbitrum | n/a | [`0xfe6d3b...8b89cd`](./contracts/arbitrum-42161/0xfe6d3b431c852fff066a748237e9ae963c8b89cd/) | ⚠️ Unaudited |
| ZyberEarn | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc0c272...189b4d`](./contracts/arbitrum-42161/0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d/); arbitrum `0xeff77e...110c3b` | ⚠️ Unaudited |
| ZyberVault | core_logic | arbitrum | n/a | [`0x9cb8ed...6ce12a`](./contracts/arbitrum-42161/0x9cb8ed8102b6c65d8cae931394352d7a676ce12a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x9f9804...37d787` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_Zyberswap.pdf](https://github.com/solidproof/projects/blob/main/ZyberSwap/SmartContract_Audit_Solidproof_Zyberswap.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc35294...b3e586`](./contracts/arbitrum-42161/0xc352940f6cadd1b38d60c353e44402258fb3e586/) | ProfitShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b7172...1e119f`](./contracts/arbitrum-42161/0x3b71729510cbea2f23a1b9fd6b9db002271e119f/) | sZyberToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfe6d3b...8b89cd`](./contracts/arbitrum-42161/0xfe6d3b431c852fff066a748237e9ae963c8b89cd/) | V3Fees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0c272...189b4d`](./contracts/arbitrum-42161/0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d/) | ZyberEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9cb8ed...6ce12a`](./contracts/arbitrum-42161/0x9cb8ed8102b6c65d8cae931394352d7a676ce12a/) | ZyberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=26

Fork inheritance lineage and inherited audits are included when available.
