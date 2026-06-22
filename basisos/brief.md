# Agentic Audit Brief: BasisOS

⚠️ Lifecycle status: DECLINING - TVL dropped 45.7% over 90 days

## Project Overview

- Project: BasisOS (`basisos`)
- Website: [https://basisos.org/](https://basisos.org/)
- Lifecycle: declining (Tier 0, 99.5% below peak)
- Generated: 2026-06-20T01:26:11.909Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, base
- Contract surface: 14 unique implementations (17 raw deployments)
- DeFi Llama TVL: $24,207.77
- On-chain TVL (included contracts): $41,180.00
- TVL by chain: Base $41,180.00

## Project Description

BasisOS is a decentralized trading platform that enables automated basis trading strategies across spot and derivatives markets. It provides vaults, oracles, and position managers to execute and manage these strategies on Arbitrum One and Base.

### Architecture

The BasisOS family uses a single deployer cluster and shared proxy infrastructure (UpgradeableBeacon, BeaconProxy, ERC1967Proxy) to manage all contracts. Vaults (LogarithmVault) rely on SpotManager/XSpotManager for spot execution, OffChainPositionManager for derivatives, and LogarithmOracle for pricing, while StrategyConfig and OffChainConfig provide parameters, and GasStation handles gas management.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 143 inactive, 165 singleton, 0 uninitialized.
- Deployment units: 2/68 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 17
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $41,180.00
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $41,180.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | [`0x73cb47...37240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | ⚠️ Unaudited |
| BasisStrategy | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xab9f15...aaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/); arbitrum `0xd19daa...e44bee` | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | unit-40864 | [`0x4dcbaa...946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0xdc4ec1...ab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | unit-40900 | [`0xeb1685...9091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | ⚠️ Unaudited |
| LlamaTvlAdapter | adapter | arbitrum | n/a | [`0xdd5c8a...24df97`](./contracts/arbitrum-42161/0xdd5c8ab2e9f113b397ff2b8528c649baef24df97/) | ⚠️ Unaudited |
| LogarithmVault | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x27261c...09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/); arbitrum `0x4e8ba8...6dc22b`; arbitrum `0xa71fcf...2df968` | ⚠️ Unaudited |
| OffChainPositionManager | governance | arbitrum | n/a | [`0x23050c...01b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | ⚠️ Unaudited |
| SpotManager | governance | arbitrum | n/a | [`0x5834ce...a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x2e739e...1ebfff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c2906...535a0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dec31...95ab5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940628...3e8ae8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba6ea5...3aa122` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BasisOS-nov-24(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/BasisOS-nov-24(Final).pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x73cb47...37240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | AgentToken | token | $41,180.00 | Verified native implementation with $41,180.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xab9f15...aaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/) | BasisStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4dcbaa...946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc4ec1...ab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb1685...9091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27261c...09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/) | LogarithmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23050c...01b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | OffChainPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5834ce...a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | SpotManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12743] BasisOS-nov-24(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
