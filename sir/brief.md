# Agentic Audit Brief: SIR

⚠️ Lifecycle status: UNKNOWN - TVL changed 18.6% over 90 days

## Project Overview

- Project: SIR (`sir`)
- Website: [https://www.sir.trading](https://www.sir.trading)
- Lifecycle: unknown (Tier 0, 76.6% below peak)
- Generated: 2026-06-21T07:56:13.901Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, hyperliquid
- Contract surface: 38 unique implementations (44 raw deployments)
- DeFi Llama TVL: $85,163.44
- On-chain TVL (included contracts): $45,848.41
- TVL by chain: Ethereum $24,987.87 | Hyperliquid $20,860.54

## Project Description

SIR is a decentralized derivatives protocol that enables users to trade synthetic assets and manage risk through vaults and oracles. It operates across Ethereum and HyperEVM, leveraging Uniswap V3-style liquidity pools for efficient markets.

### Architecture

The SIR family relies on the Ethereum and HyperEVM families for liquidity pool creation and trading, using their factory contracts to deploy pools. Shared infrastructure includes oracles that feed prices into the SIR vault and system control contracts, while the vault on Ethereum may interact with the SIR vault for cross-chain asset management.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 44 (44 live, 0 unknown).
- Excluded by liveness: 53 inactive, 5 singleton, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 4/11 (36.4%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 38
- Raw deployments: 44
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 36.4% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | hyperliquid | n/a | 2 deployments: ethereum `0x7dad75...8b0309`; hyperliquid [`0x4a35e7...a0edf0`](./contracts/hyperliquid-999/0x4a35e7448dad9cac6b3e529050b5a6ee56a0edf0/) | ✅ Audited |
| Oracle | operational_periphery | hyperliquid | n/a | 3 deployments: ethereum `0xed89af...28497a`; hyperliquid [`0x2ab530...7542e0`](./contracts/hyperliquid-999/0x2ab530127a40a832b3e9ad2f0ec6cdfee17542e0/); hyperliquid `0x6241b1...f126aa` | ✅ Audited |
| SIR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1278b1...c3a834`](./contracts/ethereum-1/0x1278b112943abc025a0df081ee42369414c3a834/); ethereum `0x4da4fb...a8aba2` | ✅ Audited |
| SystemControl | unknown | hyperliquid | n/a | 2 deployments: ethereum `0xbbb9ba...5b52f4`; hyperliquid [`0x2ff5f8...7046f7`](./contracts/hyperliquid-999/0x2ff5f8100215ef44ec3ab83a8f42a6fe7f7046f7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Assistant | unknown | ethereum | n/a | [`0xff14f9...04c5ec`](./contracts/ethereum-1/0xff14f91285580aed3733c0b1f3c8b6d04804c5ec/) | ⚠️ Unaudited |
| Contributors | unknown | ethereum | n/a | [`0xca5d6c...572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | n/a | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | registry | hyperliquid | n/a | [`0xb1c0fa...2602e3`](./contracts/hyperliquid-999/0xb1c0fa0b789320044a6f623cfe5ebda9562602e3/) | ⚠️ Unaudited |
| SirProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb60492...0b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/); ethereum `0xc046c4...7f6d6c` | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x03a918...a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x093de4...b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x098370...11563f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6eda20...51fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x724412...ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77eb73...6d1209` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d987b...29656c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f26bc...889a83` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f3856...3fed5a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x810bbc...e1d191` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9aae3e...2df0a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa06d0c...e2b766` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa46f2a...0095fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaad7a7...301c93` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb58388...dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9076b...f572ac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3d887...b2ee26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd86d0f...7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdb4057...c1db39` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdcd0d8...078a94` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc8be...8ae5ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe57aff...9951df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe61f3b...1d5b96` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed4e95...11f49e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1017c...8c4152` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1db8f...cd362d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa84d1...2081f7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SIR-Trading.pdf](https://github.com/Egis-Security/audits/blob/main/reports/SIR-Trading.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xff14f9...04c5ec`](./contracts/ethereum-1/0xff14f91285580aed3733c0b1f3c8b6d04804c5ec/) | Assistant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca5d6c...572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/) | Contributors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb1c0fa...2602e3`](./contracts/hyperliquid-999/0xb1c0fa0b789320044a6f623cfe5ebda9562602e3/) | HyperswapV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb60492...0b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/) | SirProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
