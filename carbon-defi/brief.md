# Agentic Audit Brief: Carbon Defi

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: active (Tier 0, 69.6% below peak)
- Generated: 2026-06-18T06:26:45.922Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: base, blast, celo, ethereum, sei
- Contract surface: 28 unique implementations (36 raw deployments)
- DeFi Llama TVL: $2,346,977.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Carbon DeFi is an on-chain automated trading protocol and DEX that lets users create custom limit orders, range orders, and recurring or grid-like trading strategies using programmable liquidity curves. Cross-chain Vortex bridge contracts, where present, should be treated as ancillary infrastructure rather than the core protocol value proposition.

### Architecture

The Carbon Defi family provides core trading logic and is extended by Blast contracts for cross-chain bridging via VortexAcrossBridge. Both families share CarbonVortex and proxy infrastructure, while Example tokens are used across all families as trading assets.

## Contract Surface Quality

- Indexed contracts: 352; live-surface contracts included: 36 (36 live, 0 unknown).
- Excluded by liveness: 223 inactive, 93 singleton, 0 uninitialized.
- Deployment units: 5/52 live.
- Detected codebases: none
- Unverified dependencies: 2/2.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 1
- Unverified implementations: 16
- Unique implementations: 28
- Raw deployments: 36
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CarbonVortex | unknown | base | unit-35554 | [`0xa4682a...eaf8d5`](./contracts/base-8453/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5/) | ⚠️ Unaudited |
| CarbonVortex | unknown | celo | n/a | [`0x4fe1b7...15b4c1`](./contracts/celo-42220/0x4fe1b742e484181255385a026653f8bc1115b4c1/) | ⚠️ Unaudited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-35537 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | [`0x85cbbb...9001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | sei | unit-35547 | [`0x57cf0c...87ea05`](./contracts/sei-1329/0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05/) | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | base | unit-35553 | [`0x773b75...b05119`](./contracts/base-8453/0x773b75cfb146bd5d1095fa9d6d45637f02b05119/) | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | celo | unit-35556 | [`0x0f9df7...0f68e1`](./contracts/celo-42220/0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | n/a | 8 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x642879...2f0034`; ethereum `0x8c05ea...ade636`; sei `0xfea28d...fc23b5`; celo `0x210760...abbe57`; celo `0xd0b82e...3bb921`; blast `0x759db9...5d2352`; blast `0x8c05ea...ade636` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b6631...e1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe19cb...b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17e078...f32376` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2063a1...fecfd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x27d59c...faf112` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x351b73...bf66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x45f7ea...ad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8ce318...6ab749` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ceb88...a52341` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb2a2f1...3c9d2a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdfc7f...f5662f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xee21c0...131d9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [July 31, 2024 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | aging | Direct | contract_name | 0 | n/a |
| [May 29, 2024 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | 0 | n/a |
| [April 10, 2023 audit report done by ChainSecurity team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 0 | n/a |
| [April 4, 2023 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x4fe1b7...15b4c1`](./contracts/celo-42220/0x4fe1b742e484181255385a026653f8bc1115b4c1/) | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=111

Zero-match audit list:

- [2737] July 31, 2024 audit report done by PeckShield team
- [2738] May 29, 2024 audit report done by PeckShield team
- [2739] April 10, 2023 audit report done by ChainSecurity team
- [2740] April 4, 2023 audit report done by PeckShield team

Fork inheritance lineage and inherited audits are included when available.
