# Agentic Audit Brief: HorizonDEX

⚠️ Lifecycle status: DECLINING - TVL dropped 11.2% over 90 days

## Project Overview

- Project: HorizonDEX (`horizondex`)
- Website: [https://horizondex.io](https://horizondex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T07:29:03.258Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, linea
- Contract surface: 10 unique implementations (11 raw deployments)
- DeFi Llama TVL: $60,342.19
- On-chain TVL (included contracts): $0.00
- TVL by chain: Linea $0.00

## Project Description

HorizonDEX is a decentralized exchange and yield protocol that enables concentrated liquidity trading, portfolio management, and yield strategies. It provides automated market making, token swaps, and structured products like rebase tokens and hedging mechanisms.

### Architecture

The Factory and AlgebraFactory registries deploy and track liquidity pools, while the Exchange and Router handle swaps. Yield strategies (e.g., StrategyEts, StrategyMendiUsdc) and tokens (UsdPlusTokenV3, RebaseToken) interact with the PortfolioManager and Mark2Market for position management and valuation, with oracles (PoolOracle) providing price data.

## Contract Surface Quality

- Indexed contracts: 107; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 61 inactive, 35 singleton, 0 uninitialized.
- Deployment units: 3/21 live.
- Detected codebases: none
- Unverified dependencies: 1/9.

## Audit Coverage Summary

- Verified implementations audited: 5/10 (50.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 11
- Audits discovered: 9
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| DEFIMOON | Tier 2 | 5 | 50.0% | 2023-07 |
| Solidproof | Tier 2 | 5 | 50.0% | 2023-07 |
| unknown | Tier 2 | 5 | 50.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AntiSnipAttackPositionManager | governance | base | n/a | [`0xb3cc48...d84555`](./contracts/base-8453/0xb3cc484a60bc300719aaefbd158a4e8e59d84555/) | ✅ Audited |
| AntiSnipAttackPositionManager | governance | linea | unit-41648 | [`0x438670...60dbf4`](./contracts/linea-59144/0x438670d41d5118003b2f42cc0466fbadd760dbf4/) | ✅ Audited |
| Factory | registry | linea | n/a | [`0x9fe607...6cb2c5`](./contracts/linea-59144/0x9fe607e5dcd0ea318dbb4d8a7b04fa553d6cb2c5/) | ✅ Audited |
| Router | adapter | base | n/a | [`0x99aec5...363827`](./contracts/base-8453/0x99aec509174cbf06f8f7e15ddeeb7bcc32363827/) | ✅ Audited |
| Router | adapter | linea | unit-41645 | [`0x272e15...f926bb`](./contracts/linea-59144/0x272e156df8da513c69cb41cc7a99185d53f926bb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdPlusTokenV3 | token | linea | unit-41641 (2 proxies) | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| Horizon | unknown | linea | n/a | [`0x0b1a02...8a3ac1`](./contracts/linea-59144/0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1/) | ⚠️ Unaudited |
| LockedEpoch1HZN | unknown | linea | n/a | [`0x75d3aa...420a79`](./contracts/linea-59144/0x75d3aa57f7181bf4136438cc9cdddd86fd420a79/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x649d0b...3d6d5b`](./contracts/linea-59144/0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b/) | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0xc3454b...fc7a11`](./contracts/linea-59144/0xc3454bcb7164a83549022ffea307352d4afc7a11/) | ⚠️ Unaudited |

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
| [Logo.png](https://github.com/solidproof/projects/blob/main/2023/Horizon%20DEX/Logo.png) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HorizonDEX_SC Comparison Report_11.07.2023_SA-1644 (2).pdf (also discovered via alternate URL)](https://github.com/Horizon-Dex/Audits/blob/a1c7f31238a7b0d3390f37d178d855cf284cdcee/HorizonDEX_SC%20Comparison%20Report_11.07.2023_SA-1644%20(2).pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [Horizon-Dex.pdf](https://github.com/Defimoonorg/Audit-Report/blob/main/Horizon-Dex.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 5 | high |
| [DEFIMOON Token Sale Contract Audit: <> (also discovered via alternate URL)](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Sale_Reaudit.pdf) | DEFIMOON | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Horizon-Dex-Defimoon.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Dex-Defimoon.pdf) | Defimoon | Audit | 2023-07 | stale | Direct | contract_name | 5 | high |
| [SmartContract_Audit_Solidproof_HorizonDEX.pdf](https://github.com/Horizon-Dex/Audits/blob/main/SmartContract_Audit_Solidproof_HorizonDEX.pdf) | Solidproof | Audit | 2023-07 | stale | Direct | contract_name | 5 | high |
| [In addition, our code is built entirely on Kyberswap Elastic, which has undergone [numerous audits]() with impressive results.&#x20;](https://www.chainsecurity.com/security-audit/kyberswap-elastic) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SOLIDproof Audit Proof : <><br>](https://github.com/solidproof/projects/tree/main/2023/Horizon%20DEX) | SOLIDProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Arbalest Vault](https://github.com/solidproof/projects/blob/main/2023/%20Arbalest%20Vault) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x0b1a02...8a3ac1`](./contracts/linea-59144/0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1/) | Horizon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x75d3aa...420a79`](./contracts/linea-59144/0x75d3aa57f7181bf4136438cc9cdddd86fd420a79/) | LockedEpoch1HZN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x649d0b...3d6d5b`](./contracts/linea-59144/0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc3454b...fc7a11`](./contracts/linea-59144/0xc3454bcb7164a83549022ffea307352d4afc7a11/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=42

Zero-match audit list:

- [13240] Logo.png
- [13244] DEFIMOON Token Sale Contract Audit: <>
- [13248] In addition, our code is built entirely on Kyberswap Elastic, which has undergone [numerous audits]() with impressive results.&#x20;
- [16192] SOLIDproof Audit Proof : <><br>
- [16197] Arbalest Vault

Fork inheritance lineage and inherited audits are included when available.
