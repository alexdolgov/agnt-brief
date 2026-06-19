# Agentic Audit Brief: Opyn

⚠️ Lifecycle status: DECLINING - TVL changed 3.7% over 90 days

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-19T06:14:32.507Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche, ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,601,821.00
- On-chain TVL (included contracts): $5.44
- TVL by chain: Avalanche $5.44 | Ethereum $0.00

## Project Description

Opyn includes legacy decentralized options infrastructure such as Gamma and Squeeth on Ethereum and Avalanche, with residual TVL and historical derivatives contracts. Its current public positioning has shifted toward Opyn Markets, described as a forthcoming Uniswap-like perpetuals ecosystem. Gamma and Squeeth should be treated as legacy or unresolved-current-status product lines unless current activity is independently verified.

### Architecture

Opyn Gamma and Squeeth share infrastructure through the Controller contract, which is used in Squeeth and may interact with Gamma's margin pools. The Convexity factory is a legacy component for deploying options, while Gamma and Squeeth represent the active product lines with distinct collateral and trading mechanisms.

## Contract Surface Quality

- Indexed contracts: 203; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 186 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 2/42.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $5.44
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $5.44 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-21097 | [`0x98d031...a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-21096 | [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/) | ⚠️ Unaudited |
| CrabStrategy | core_logic | ethereum | n/a | [`0xf205ad...aa437d`](./contracts/ethereum-1/0xf205ad80bb86ac92247638914265887a8baa437d/) | ⚠️ Unaudited |
| CrabStrategyV2 | core_logic | ethereum | n/a | [`0x3b960e...d713e8`](./contracts/ethereum-1/0x3b960e47784150f5a63777201ee2b15253d713e8/) | ⚠️ Unaudited |
| OptionsExchange | unknown | ethereum | n/a | [`0x5778f2...216017`](./contracts/ethereum-1/0x5778f2824a114f6115dc74d432685d3336216017/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-21099 | [`0x9dd6be...a3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ⚠️ Unaudited |
| WPowerPerp | unknown | ethereum | n/a | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ⚠️ Unaudited |

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
| ethereum | [`0xf205ad...aa437d`](./contracts/ethereum-1/0xf205ad80bb86ac92247638914265887a8baa437d/) | CrabStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b960e...d713e8`](./contracts/ethereum-1/0x3b960e47784150f5a63777201ee2b15253d713e8/) | CrabStrategyV2 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5778f2...216017`](./contracts/ethereum-1/0x5778f2824a114f6115dc74d432685d3336216017/) | OptionsExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | WPowerPerp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
