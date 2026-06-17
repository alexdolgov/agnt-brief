# Agentic Audit Brief: HashDAO Finance

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: HashDAO Finance (`hashdao-finance`)
- Website: [https://www.hashdao.finance](https://www.hashdao.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:38.398Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, optimism
- Contract surface: 6 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,295,570.87
- On-chain TVL (included contracts): $2,759,621.22
- TVL by chain: Arbitrum $2,759,621.22

## Project Description

HashDAO Finance is an Arbitrum-focused non-custodial perpetual DEX with liquidity pools and LP risk-management products.

### Architecture

All contracts are deployed under a single product family and share a common upgradeable proxy infrastructure (AdminUpgradeabilityProxy). Core trading logic in Pool and OrderManager relies on PriceReporter for oracle data, while EsToken and VeToken handle escrowed and vested token mechanics, and FeeVault collects protocol fees. The Bridge contract enables cross-chain asset movement, and external UniswapV2Pair/Pair contracts provide liquidity for the native Token.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 73 inactive, 40 singleton, 0 uninitialized.
- Deployment units: 2/23 live.
- Detected codebases: none
- Unverified dependencies: 4/5.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 9
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2023-04 |
| SolidProof | Tier 2 | 1 | 16.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | [`0x2e8025...61b93f`](./contracts/arbitrum-42161/0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f/) | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | optimism | unit-24197 (2 proxies) | 2 deployments: optimism [`0x5556af...771bce`](./contracts/optimism-10/0x5556af10c1966ebf0b131295a2af13deec771bce/); optimism `0x584a4f...07fca8` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | arbitrum | unit-24206 (2 proxies) | 2 deployments: arbitrum [`0x019622...e3a61f`](./contracts/arbitrum-42161/0x019622fb05dd0c80751798949e795ff5d5e3a61f/); arbitrum `0xcd7a1b...32dbc4` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x7d5332...cf021f`](./contracts/arbitrum-42161/0x7d5332df67aec9cb1df73ba8115e6a9211cf021f/); arbitrum `0x947af1...e551cd` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0xa01729...750f11`](./contracts/optimism-10/0xa0172947b886eedc8d8b2177d6213083fd750f11/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x8dc6ef...190703`](./contracts/arbitrum-42161/0x8dc6efd57a13b7ba3ff7824c9708db24d3190703/) | ⚠️ Unaudited |

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
| [HashDAO.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/April_2023/HashDAO.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 4 | medium |
| [DL audit link](https://app.solidproof.io/projects/hashdao) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [Audit No. 425](https://app.solidproof.io/projects/hashdao?audit=dc54b5c8-2954-4939-a653-7272083fe7b3) | SolidProof | Audit | n/a | unknown | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7d5332...cf021f`](./contracts/arbitrum-42161/0x7d5332df67aec9cb1df73ba8115e6a9211cf021f/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=2
- Match method counts: extraction_exact=35

Fork inheritance lineage and inherited audits are included when available.
