# Agentic Audit Brief: toupee.tech

⚠️ Lifecycle status: DECLINING - TVL changed 3.6% over 90 days

## Project Overview

- Project: toupee.tech (`toupee.tech`)
- Website: [https://www.toupee.tech](https://www.toupee.tech)
- Lifecycle: declining (Tier 0, 74.5% below peak)
- Generated: 2026-06-10T20:59:17.532Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base
- Contract surface: 29 unique implementations (53 raw deployments)
- DeFi Llama TVL: $6,291,303.16
- On-chain TVL (included contracts): $24.29
- TVL by chain: Base $24.29

## Project Description

Toupee.tech is an incentive coordination protocol on Base centered on WIG, oWIG, and vWIG mechanics. The protocol combines farm emission voting, staking and farming rewards, voting rewards, WETH-backed bonding-curve/floor-price liquidity mechanics, and vWIG-backed borrowing. Gauge and plugin integrations with external protocols may be used as implementation details for directing incentives and rewards, but the primary product is incentive coordination rather than generic yield optimization.

### Architecture

The BASE Mainnet family contains all core and supporting contracts. The governance contracts (Controller, TOKENGovernor) manage the TOKEN and its emissions, while the Voter contract directs rewards to gauges created by GaugeFactory. Plugin factories (AeroGaugePluginFactory, VelociGaugePluginFactory, etc.) deploy plugin instances that integrate with external protocols, and these plugins are used by the core Pool and Voter to optimize yield. The testnet family only includes a Multicall contract for testing purposes.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 29
- Raw deployments: 53
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $24.29
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $24.29 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Pool | core_logic | base | [`0x9f6a5f...ad343c`](./contracts/base-8453/0x9f6a5f49e4d57a7de596c48181b65a0083ad343c/) | ⚠️ Unaudited |
| TOKENFees | token | base | [`0x8d05ef...ecd6c1`](./contracts/base-8453/0x8d05ef8093a746101cee1a0578edd277f3ecd6c1/) | ⚠️ Unaudited |
| AeroGaugePlugin | operational_periphery | base | 9 deployments: base [`0x0195ba...435479`](./contracts/base-8453/0x0195ba4c952c5aeefb3e57659a8b9a7a8b435479/); base `0x25a7e6...89f040`; base `0x6115b7...e338e5`; base `0x6d8471...5ecccd`; base `0x919d99...d9d6b4`; base `0x96c1e3...c4fd4a`; base `0xcdb6e9...8738c1`; base `0xdb55de...e2509f`; base `0xf139c9...1f7b6a` | ⚠️ Unaudited |
| AeroGaugePluginFactory | operational_periphery | base | [`0x9fc663...7ff6ed`](./contracts/base-8453/0x9fc66381ea664f6aea4bd516091ebbe1d27ff6ed/) | ⚠️ Unaudited |
| AeroPairPlugin | unknown | base | 5 deployments: base [`0x047078...043608`](./contracts/base-8453/0x047078e0ac22145a26c72e0fcac06cd82d043608/); base `0x508006...450f3d`; base `0x7ff9e6...455111`; base `0xd1ca9d...3ed715`; base `0xef0487...2755bd` | ⚠️ Unaudited |
| AeroPairPluginFactory | registry | base | [`0xeac050...eb0448`](./contracts/base-8453/0xeac05094887c6548f3054fc121c57844c2eb0448/) | ⚠️ Unaudited |
| BribeFactory | operational_periphery | base | [`0x971441...64c0fd`](./contracts/base-8453/0x9714412e8838337e60c8f7b4c2bc49247964c0fd/) | ⚠️ Unaudited |
| Controller | governance | base | [`0x1eeb34...d4904e`](./contracts/base-8453/0x1eeb34b653d396cdc60a9c434c09e1803dd4904e/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | [`0xe23e1a...36a5a5`](./contracts/base-8453/0xe23e1a116090a0829b7ab536a3af463a5a36a5a5/) | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | base | [`0x5d8218...a037e1`](./contracts/base-8453/0x5d82183db96e55a5f2caee691728584cd4a037e1/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | [`0xf49222...162576`](./contracts/base-8453/0xf49222fccba2c149b3ff3ae9d3a30edb1f162576/) | ⚠️ Unaudited |
| Multicall | periphery | base | 3 deployments: base [`0x3bb30c...f0947e`](./contracts/base-8453/0x3bb30ca0bf95d6a2fc8ad9087bac92711bf0947e/); base `0x752de9...facc71`; base `0xda81a3...aae82f` | ⚠️ Unaudited |
| OTOKEN | token | base | [`0xbe1053...9a2b79`](./contracts/base-8453/0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79/) | ⚠️ Unaudited |
| ScaleGaugePlugin | operational_periphery | base | 4 deployments: base [`0x6d4809...ec97aa`](./contracts/base-8453/0x6d4809cfbd7f4738d960a4d21cdd000b91ec97aa/); base `0x8e57da...b8c5c4`; base `0xf19a7b...5290b8`; base `0xf1f00a...fdec6b` | ⚠️ Unaudited |
| ScaleGaugePluginFactory | operational_periphery | base | [`0xece72a...71e22e`](./contracts/base-8453/0xece72a27bbd6e667672ac226a26eaf3e2f71e22e/) | ⚠️ Unaudited |
| StargateFarmPlugin | unknown | base | [`0x1667f3...4471a9`](./contracts/base-8453/0x1667f3687bd71ce260d4b12b337b9b066b4471a9/) | ⚠️ Unaudited |
| StargateFarmPluginFactory | registry | base | [`0x110093...228f68`](./contracts/base-8453/0x110093de578ca0a202c85240f1ace3529e228f68/) | ⚠️ Unaudited |
| TOKEN | token | base | [`0x58dd17...79e9b9`](./contracts/base-8453/0x58dd173f30ecffdfebcd242c71241fb2f179e9b9/) | ⚠️ Unaudited |
| TOKENGovernor | governance | base | [`0x46e77d...8c64b4`](./contracts/base-8453/0x46e77d8349ba8ae9137b89196a61ffee2c8c64b4/) | ⚠️ Unaudited |
| VelociGaugePlugin | operational_periphery | base | 8 deployments: base [`0x0d0127...bc144e`](./contracts/base-8453/0x0d0127125cac70400839b6bdc652f82d56bc144e/); base `0x227a7b...e74b19`; base `0x37ca92...1c833a`; base `0x3e017d...11372c`; base `0x60f241...91f524`; base `0x93fd98...137d61`; base `0xd01824...1552dd`; base `0xd0c41c...ea4e99` | ⚠️ Unaudited |
| VelociGaugePluginFactory | operational_periphery | base | [`0xc40215...fc8abf`](./contracts/base-8453/0xc40215fedcc1475b5d767c4ebc7085501ffc8abf/) | ⚠️ Unaudited |
| VelociGrapheneGaugePluginFactory | operational_periphery | base | [`0xed8b18...ef23a3`](./contracts/base-8453/0xed8b18cdef8a70227e01395c2571d72867ef23a3/) | ⚠️ Unaudited |
| Voter | unknown | base | [`0x756fc5...492452`](./contracts/base-8453/0x756fc5e6bdb26a85594346d7d0520e1c0e492452/) | ⚠️ Unaudited |
| VTOKEN | token | base | [`0x60c087...b11515`](./contracts/base-8453/0x60c08737877a5262bdb1c1cac8fb90b5e5b11515/) | ⚠️ Unaudited |
| VTOKENRewarder | token | base | [`0xdd3e79...1de558`](./contracts/base-8453/0xdd3e797522e15c3ede6ed468738cba754e1de558/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x1441cb...b07d27` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x56df15...329e01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5ed50f...ee106d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd54b64...36590c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x9f6a5f...ad343c`](./contracts/base-8453/0x9f6a5f49e4d57a7de596c48181b65a0083ad343c/) | Pool | core_logic | $23.79 | Verified native implementation with $23.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8d05ef...ecd6c1`](./contracts/base-8453/0x8d05ef8093a746101cee1a0578edd277f3ecd6c1/) | TOKENFees | token | $0.49 | Verified native implementation with $0.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0195ba...435479`](./contracts/base-8453/0x0195ba4c952c5aeefb3e57659a8b9a7a8b435479/) | AeroGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9fc663...7ff6ed`](./contracts/base-8453/0x9fc66381ea664f6aea4bd516091ebbe1d27ff6ed/) | AeroGaugePluginFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeac050...eb0448`](./contracts/base-8453/0xeac05094887c6548f3054fc121c57844c2eb0448/) | AeroPairPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x971441...64c0fd`](./contracts/base-8453/0x9714412e8838337e60c8f7b4c2bc49247964c0fd/) | BribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1eeb34...d4904e`](./contracts/base-8453/0x1eeb34b653d396cdc60a9c434c09e1803dd4904e/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe23e1a...36a5a5`](./contracts/base-8453/0xe23e1a116090a0829b7ab536a3af463a5a36a5a5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d8218...a037e1`](./contracts/base-8453/0x5d82183db96e55a5f2caee691728584cd4a037e1/) | MerkleClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf49222...162576`](./contracts/base-8453/0xf49222fccba2c149b3ff3ae9d3a30edb1f162576/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe1053...9a2b79`](./contracts/base-8453/0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79/) | OTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xece72a...71e22e`](./contracts/base-8453/0xece72a27bbd6e667672ac226a26eaf3e2f71e22e/) | ScaleGaugePluginFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x58dd17...79e9b9`](./contracts/base-8453/0x58dd173f30ecffdfebcd242c71241fb2f179e9b9/) | TOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46e77d...8c64b4`](./contracts/base-8453/0x46e77d8349ba8ae9137b89196a61ffee2c8c64b4/) | TOKENGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc40215...fc8abf`](./contracts/base-8453/0xc40215fedcc1475b5d767c4ebc7085501ffc8abf/) | VelociGaugePluginFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xed8b18...ef23a3`](./contracts/base-8453/0xed8b18cdef8a70227e01395c2571d72867ef23a3/) | VelociGrapheneGaugePluginFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756fc5...492452`](./contracts/base-8453/0x756fc5e6bdb26a85594346d7d0520e1c0e492452/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60c087...b11515`](./contracts/base-8453/0x60c08737877a5262bdb1c1cac8fb90b5e5b11515/) | VTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd3e79...1de558`](./contracts/base-8453/0xdd3e797522e15c3ede6ed468738cba754e1de558/) | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
