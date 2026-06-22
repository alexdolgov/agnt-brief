# Agentic Audit Brief: Hodltree

⚠️ Lifecycle status: DECLINING - TVL dropped 91.6% over 90 days

## Project Overview

- Project: Hodltree (`hodltree`)
- Lifecycle: declining (Tier 0, 99.4% below peak)
- Generated: 2026-06-19T19:03:35.394Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum, polygon
- Contract surface: 8 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,840.42
- On-chain TVL (included contracts): $37,229,788.03
- TVL by chain: Ethereum $32,594,694.22 | Polygon $4,635,093.81

## Project Description

Hodltree is a lending protocol that enables users to supply assets into liquidity pools to earn yield and borrow against their deposits. It uses interest-bearing aTokens to represent supplied positions and supports multiple pool versions across Ethereum and Polygon.

### Architecture

The protocol uses proxy contracts (AdminUpgradeabilityProxy, InitializableImmutableAdminUpgradeabilityProxy, TransparentUpgradeableProxy) to manage upgradeable logic for liquidity pools and aTokens. Core lending operations are handled by LiquidityPoolV3_02, Borrow, and Borrower contracts, while ReservePool and VPStorage manage reserves and storage. Lender contracts likely facilitate interactions, and exchange contracts (ExchangeHUSDC, ExchangeSuperUSDC) may support stablecoin conversions. Balancer-related contracts (BPool, ElasticPool, BalancerGovernanceToken) suggest integration with Balancer for liquidity or governance.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 45 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 3/8 live.
- Detected codebases: none
- Dependencies extracted: 36; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $37,229,788.03
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $37,229,788.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | ethereum | unit-39860 | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AToken | token | ethereum | unit-39857 | [`0x028171...5b68a3`](./contracts/ethereum-1/0x028171bca77440897b824ca71d1c56cac55b68a3/) | ⚠️ Unaudited |
| AToken | token | polygon | unit-39861 (2 proxies) | 2 deployments: polygon [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/); polygon `0x27f8d0...830a6e` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| ElasticPool | core_logic | ethereum | n/a | [`0x951428...0ce6bf`](./contracts/ethereum-1/0x95142849d31eaa20b5b9ab746dff27ff400ce6bf/) | ⚠️ Unaudited |
| ExchangeHUSDC | unknown | ethereum | n/a | [`0x87b46e...079033`](./contracts/ethereum-1/0x87b46e49681e08e3addf8a90f6a1fb5183079033/) | ⚠️ Unaudited |
| ReservePool | core_logic | ethereum | n/a | [`0xce596b...b67859`](./contracts/ethereum-1/0xce596bf99d21e46fa91143c03d7a356682b67859/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xf4775c...d9b810` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik.pdf](https://github.com/HodlTreeProtocol/stableFlashloan/blob/master/audits/Certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x87b46e...079033`](./contracts/ethereum-1/0x87b46e49681e08e3addf8a90f6a1fb5183079033/) | ExchangeHUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce596b...b67859`](./contracts/ethereum-1/0xce596bf99d21e46fa91143c03d7a356682b67859/) | ReservePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13226] Certik.pdf

Fork inheritance lineage and inherited audits are included when available.
