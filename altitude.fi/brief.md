# Agentic Audit Brief: Altitude.Fi

⚠️ Lifecycle status: DECLINING - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 0, 69.8% below peak)
- Generated: 2026-06-17T07:00:53.602Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 8 unique implementations (12 raw deployments)
- DeFi Llama TVL: $7,607,623.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Altitude.Fi is an Ethereum DeFi borrowing and lending aggregator focused on self-repaying loans against BTC and ETH collateral. The protocol routes collateral and debt positions through integrations such as Aave, Morpho, and other venues to optimize rates, uses vault-based accounting with supply and debt tokens, and applies yield/rebalancing mechanics to help pay down USDC debt over time.

### Architecture

All product families share the core Altitude.Fi contracts (VaultERC20, SupplyToken, DebtToken) as their implementation logic. The v2 pools (cbBTC-USDC and wstETH-USDC) reuse the same FarmBufferDispatcher and VaultRegistryV1 infrastructure, while the v1 wstETH-USDC pool appears to be an earlier, less modular version.

## Contract Surface Quality

- Indexed contracts: 174; live-surface contracts included: 12 (10 live, 2 unknown).
- Excluded by liveness: 128 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 0/15 live.
- Detected codebases: aave-v2
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 8
- Raw deployments: 12
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 2 | 40.0% | 2025-05 |
| Team Omega | Tier 2 | 2 | 40.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebalanceIncentivesController | governance | ethereum | n/a | 4 deployments: ethereum [`0x052f21...5c6f16`](./contracts/ethereum-1/0x052f21dce83f8f9e5a0396a79500d875c05c6f16/); ethereum `0x560357...ae768d`; ethereum `0x5e55df...fc5f04`; ethereum `0x8f18b3...dc4d52` | ✅ Audited |
| VaultERC20 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x57192e...af1536`](./contracts/ethereum-1/0x57192ec32e649cf51380b8b314b26e73aaaf1536/); ethereum `0xe59247...7d4cec` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlashloanHelper | periphery | ethereum | n/a | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | ⚠️ Unaudited |
| RebalanceAutomation | unknown | ethereum | n/a | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | ethereum | n/a | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x840449...a0c928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd130a9...6ab29b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 6 | high |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | contract_name | 6 | high |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | 6 | high |
| [**report 1**](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [**report 2**](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | RebalanceAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | UserLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=157

Zero-match audit list:

- [1990] **report**
- [1991] **report**
- [1994] **report 2**

Fork inheritance lineage and inherited audits are included when available.
