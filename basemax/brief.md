# Agentic Audit Brief: Basemax

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Basemax (`basemax`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T11:24:25.929Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basemax is a derivatives protocol on Base that enables leveraged trading and yield generation. Users can deposit collateral into vaults to mint a synthetic stablecoin (BSM), which can be used for leveraged positions or staked in reward farms. The protocol manages liquidations, pricing, and reward distribution through a set of interconnected contracts.

### Architecture

The Vault contract mints BsmToken as a synthetic asset, which is then used across the protocol for trading and staking. BaseMaxChef and various rewarder contracts distribute incentives to stakers, while PriceManager and SettingsManager provide shared infrastructure for pricing and configuration. LiquidateVault, OrderExecutor, and PositionVault handle risk management and order execution, all relying on the core Vault and BsmToken.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 19 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 0/17 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLP | unknown | base | n/a | [`0x99e526...76183e`](./contracts/base-8453/0x99e526db61e1fe588acb27e17207105ace76183e/) | ⚠️ Unaudited |
| BsmToken | token | base | n/a | [`0xc5dc1b...440883`](./contracts/base-8453/0xc5dc1b9413c47089641d811b6336c0f2fe440883/) | ⚠️ Unaudited |
| esBSM | unknown | base | n/a | [`0x0e3445...5c99e2`](./contracts/base-8453/0x0e34454e8e0de27a37d45f5623636ee05d5c99e2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0xd2eb1d...c40a25`](./contracts/base-8453/0xd2eb1de935fe66501aece023b0437fa7b9c40a25/) | ⚠️ Unaudited |

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
| [Verichains Public Audit Report - BaseMax Smartcontracts - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20BaseMax%20Smartcontracts%20-%20v1.0.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x99e526...76183e`](./contracts/base-8453/0x99e526db61e1fe588acb27e17207105ace76183e/) | BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc5dc1b...440883`](./contracts/base-8453/0xc5dc1b9413c47089641d811b6336c0f2fe440883/) | BsmToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e3445...5c99e2`](./contracts/base-8453/0x0e34454e8e0de27a37d45f5623636ee05d5c99e2/) | esBSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [12740] Verichains Public Audit Report - BaseMax Smartcontracts - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
