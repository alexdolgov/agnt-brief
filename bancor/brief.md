# Agentic Audit Brief: Bancor

⚠️ Lifecycle status: DECLINING - TVL changed 5.5% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:40.339Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 13 unique implementations (18 raw deployments)
- DeFi Llama TVL: $24,315,271.00
- On-chain TVL (included contracts): $43,207,745.90
- TVL by chain: Ethereum $43,207,745.90

## Project Description

Bancor is a decentralized exchange protocol historically associated with automated token swaps and single-sided liquidity provision using BNT as an intermediary across Bancor V2.1 and Bancor V3. Current public access to the Bancor homepage/app should be treated as restricted or not independently verified; claims about current impermanent loss protection or liquidity provider rewards should be made only when supported by current documentation or data sources such as DefiLlama.

### Architecture

The Bancor V2.1 family relies on the Tokens family for BNT and pool tokens, while the Bancor V3 family upgrades the core infrastructure with a new MasterVault and BancorNetwork. Both V2.1 and V3 share governance and reward mechanisms, with V3 contracts proxied through TransparentUpgradeableProxyImmutable instances.

## Contract Surface Quality

- Indexed contracts: 403; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 359 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 4/20 live.
- Detected codebases: none
- Unverified dependencies: 35/82.

## Audit Coverage Summary

- Verified implementations audited: 2/13 (15.4%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 18
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $43,207,745.90
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 15.4% (ChainSecurity, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $43,207,745.90 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 15.4% | 2022-09 |
| OpenZeppelin | Tier 1 | 2 | 15.4% | 2022-08 |
| PeckShield | Tier 2 | 1 | 7.7% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BancorNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f9ec3...23ccb0`](./contracts/ethereum-1/0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0/); ethereum `0x8dfeb8...fea9f7` | ✅ Audited |
| PoolToken | core_logic | ethereum | n/a | [`0xab05cf...68e344`](./contracts/ethereum-1/0xab05cf7c6c3a288cd36326e4f7b8600e7268e344/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartToken | token | ethereum | n/a | 2 deployments: ethereum [`0x1f573d...a7ff1c`](./contracts/ethereum-1/0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c/); ethereum `0xb1cd6e...4a5533` | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | [`0x48fb25...387f94`](./contracts/ethereum-1/0x48fb253446873234f2febbf9bdeaa72d9d387f94/) | ⚠️ Unaudited |
| BancorGovernance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/); ethereum `0xebfafc...f82eb2` | ⚠️ Unaudited |
| CarbonBatcher | periphery | ethereum | unit-19493 | [`0x0199f3...4b7d4e`](./contracts/ethereum-1/0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e/) | ⚠️ Unaudited |
| CarbonController | governance | ethereum | unit-19508 | [`0xc537e8...ea45e1`](./contracts/ethereum-1/0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1/) | ⚠️ Unaudited |
| CarbonVortex | unknown | ethereum | unit-19509 | [`0xd053dc...d79801`](./contracts/ethereum-1/0xd053dcd7037af7204cece544ea9f227824d79801/) | ⚠️ Unaudited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | [`0x85cbbb...9001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x642879...2f0034` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| Voucher | unknown | ethereum | unit-19497 | [`0x3660f0...8f554e`](./contracts/ethereum-1/0x3660f04b79751e31128f6378eac70807e38f554e/) | ⚠️ Unaudited |

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
| [Peckshield](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [OpenZeppelin](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | 3 | high |
| [OpenZepplin (Auto Compounding Rewards)](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1f573d...a7ff1c`](./contracts/ethereum-1/0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c/) | SmartToken | token | $41,027,184.34 | Verified native implementation with $41,027,184.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/) | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/) | EtherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85cbbb...9001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | LiquidityProtection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=207

Zero-match audit list:

- [4266] OpenZepplin (Auto Compounding Rewards)

Fork inheritance lineage and inherited audits are included when available.
