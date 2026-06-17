# Agentic Audit Brief: Harmonix Finance

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi](https://app.harmonix.fi)
- Lifecycle: active (Tier 0, 73.5% below peak)
- Generated: 2026-06-17T23:36:13.371Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 24 unique implementations (24 raw deployments)
- DeFi Llama TVL: $4,258,435.82
- On-chain TVL (included contracts): $302.21
- TVL by chain: Hyperliquid $302.21

## Project Description

Harmonix Finance is a yield optimization protocol focused on vault-based strategies, including restaking and delta-neutral or hedged yield products. The observed contract surface includes vaults, factories, HAR/staking contracts, and proxy infrastructure.

### Architecture

All product families share the same upgradeable proxy infrastructure (TransparentUpgradeableProxy and ERC1967Proxy) and are deployed by a common set of deployer clusters. The PoolFactory registries manage vault instances, while HAR token and staking contracts provide incentives across the protocol.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 86 inactive, 82 singleton, 0 uninitialized.
- Deployment units: 7/55 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $302.21
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetVault | core_logic | hyperliquid | unit-33507 | [`0x31aaa5...3d77e1`](./contracts/hyperliquid-999/0x31aaa50a6096547b300a5f5af6ecc00d2f3d77e1/) | ⚠️ Unaudited |
| AccessManager | unknown | hyperliquid | unit-33506 | [`0x28257c...7d3808`](./contracts/hyperliquid-999/0x28257cd6b21519a281a90637462bf7956c7d3808/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | hyperliquid | unit-33505 | [`0x1368ee...eebc42`](./contracts/hyperliquid-999/0x1368ee9d1212ae5b26ff166049220051a9eebc42/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | hyperliquid | unit-33514 | [`0xfde5b0...8d725c`](./contracts/hyperliquid-999/0xfde5b0626fc80e36885e2fa9cd5ad9d7768d725c/) | ⚠️ Unaudited |
| MultiVestingDistributorMock | operational_periphery | hyperliquid | n/a | [`0x30c9fc...a2111f`](./contracts/hyperliquid-999/0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | [`0x7c95d4...706ada`](./contracts/hyperliquid-999/0x7c95d4c96c410a6e7dedf4bc78eb93b916706ada/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-33550 | [`0xc71ba0...bc590b`](./contracts/arbitrum-42161/0xc71ba0e3c1fb9cbcb15fbc677e78c99ac1bc590b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-33554 | [`0xf12f87...9b00e3`](./contracts/arbitrum-42161/0xf12f8753c25f8005311a24bbba1f7209249b00e3/) | ⚠️ Unaudited |
| VaultManager | unknown | hyperliquid | unit-33512 | [`0xd1c8dc...23ebcb`](./contracts/hyperliquid-999/0xd1c8dc811d6254e6565b2a6024d57cc08123ebcb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1bcf1f...ffbc44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x143a2d...2d7c66` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3b76ba...3a0621` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4d312e...a06df5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x650ea9...c98cc5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x75c80a...1efe4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7b5e2d...ff2f82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d05a1...97df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x884a7e...ac7338` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x92ae81...9f62e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3af27...c22086` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb869de...8573b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6fbb0...d5468e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88c66b...e994c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x30c9fc...a2111f`](./contracts/hyperliquid-999/0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f/) | MultiVestingDistributorMock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=7

Zero-match audit list:

- [14729] Harmonix Finance - Zenith Audit Report.pdf
- [14730] HarmonixFinance-Hyperliquid-Security-Review.pdf
- [14731] Verichains Public Report - HarmonixFinance.pdf
- [14732] Verichains Public Report - Kelp Delta.pdf

Fork inheritance lineage and inherited audits are included when available.
