# Agentic Audit Brief: Brickken

## Project Overview

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T14:13:37.879Z
- Pipeline run: v2-pipeline-2026-06-11-e34b49-faf8
- Chains: avalanche, base, ethereum, polygon
- Contract surface: 29 unique implementations (55 raw deployments)
- DeFi Llama TVL: $42,197,681.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Brickken is an institutional digital asset and real-world asset (RWA) tokenization platform. It provides infrastructure for no-code asset issuance, compliance workflows such as KYC/KYB, investor onboarding, token offerings, white-label token stores or portals, marketplace-style functionality, and lifecycle management across multiple asset classes.

### Architecture

The STOFactoryManagedUpgradeable acts as a central registry and factory, deploying and managing STOTokenManagedUpgradeable and STOEscrowManagedUpgradeable instances via proxy patterns. UpgradeableBeaconToken and UpgradeableBeaconEscrow serve as beacon proxies that point to the respective implementation contracts, enabling upgradeability across all deployed tokens and escrows.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 2
- Unverified implementations: 23
- Unique implementations: 29
- Raw deployments: 55
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| STOEscrowUpgradeableV1 | operational_periphery | ethereum | [`0x7bf9ad...16b6e8`](./contracts/ethereum-1/0x7bf9ad9b70d3ba1dc5fde62217d88c1cd716b6e8/) | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | registry | polygon | 8 deployments: ethereum `0x91af68...0969db`; polygon [`0x1bb57e...0c1956`](./contracts/polygon-137/0x1bb57e2abf2822c01ccaebccbc9d16c7fd0c1956/); polygon `0x26840f...1d40ff`; polygon `0xd515ca...0a0634`; base `0x278d7b...1d4d83`; base `0x816e88...984607`; base `0xbc2074...d3f074`; base `0xe19619...703fe2` | ⚠️ Unaudited |
| STOFactoryV1 | registry | ethereum | [`0xac798e...afb5be`](./contracts/ethereum-1/0xac798e0b0c6495dd53c3f373e513211a00afb5be/) | ⚠️ Unaudited |
| STOTokenUpgradeableV1 | token | ethereum | [`0x657030...74bd70`](./contracts/ethereum-1/0x6570305f8e7445a649ccecba16b13e772074bd70/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| STOEscrowManagedUpgradeable | operational_periphery | polygon | 12 deployments: ethereum `0x44cc05...e8f55f`; polygon [`0x27576e...476f14`](./contracts/polygon-137/0x27576e72f8cd047e4de23c683acfbf8576476f14/); polygon `0x409a37...9d86f7`; polygon `0xc6c230...bcde61`; polygon `0xd1ba50...76ea5c`; base `0x2c82a5...2aca94`; base `0x409a37...9d86f7`; base `0x6d0432...685e89`; base `0xd1ba50...76ea5c`; base `0xf6b623...079977`; avalanche `0xb409eb...03ab3e`; avalanche `0xff3624...4aeb07` | ⚠️ Unaudited (bytecode match) |
| STOTokenManagedUpgradeable | token | base | 9 deployments: ethereum `0xd5e853...69b665`; polygon `0x5e4e3a...d13666`; polygon `0xb409eb...03ab3e`; polygon `0xff3624...4aeb07`; base [`0x478dff...158477`](./contracts/base-8453/0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477/); base `0x8bedc6...01ad48`; base `0xb409eb...03ab3e`; base `0xbd3d7e...3b38aa`; avalanche [`0x478dff...158477`](./contracts/avalanche-43114/0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xa6e67aca8e04eb76394c2d3dcacfabee4b0a598a) | proxy | avalanche | `0xc6c230...bcde61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x471634...93e499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8d7ae...b6f64d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7a06b...9dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdecbcb...e06f5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11a0b5...c17713` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1bb57e...0c1956` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x278d7b...1d4d83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x409a37...9d86f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5e4e3a...d13666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7431b5...487360` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ed660...0c5800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fb48a...487a8e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9b8319...a7b8d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6e67a...0a598a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7a06b...9dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc2074...d3f074` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce4529...c685ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd887e2...8e9683` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdecbcb...e06f5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe70c86...ae7c6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4443f...943ce5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf63627...0de221` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x27576e...476f14`](./contracts/polygon-137/0x27576e72f8cd047e4de23c683acfbf8576476f14/) | STOEscrowManagedUpgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bf9ad...16b6e8`](./contracts/ethereum-1/0x7bf9ad9b70d3ba1dc5fde62217d88c1cd716b6e8/) | STOEscrowUpgradeableV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac798e...afb5be`](./contracts/ethereum-1/0xac798e0b0c6495dd53c3f373e513211a00afb5be/) | STOFactoryV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x478dff...158477`](./contracts/base-8453/0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477/) | STOTokenManagedUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657030...74bd70`](./contracts/ethereum-1/0x6570305f8e7445a649ccecba16b13e772074bd70/) | STOTokenUpgradeableV1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11550] skynet.certik.com/projects/brickken
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf

Fork inheritance lineage and inherited audits are included when available.
