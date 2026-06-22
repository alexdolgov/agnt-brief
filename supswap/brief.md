# Agentic Audit Brief: SupSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 16.5% over 90 days

## Project Overview

- Project: SupSwap (`supswap`)
- Website: [https://supswap.xyz](https://supswap.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T00:20:41.437Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: mode
- Contract surface: 57 unique implementations (58 raw deployments)
- DeFi Llama TVL: $19,249.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SupSwap is a decentralized exchange (DEX) protocol on the Mode chain that enables trustless token swaps and concentrated liquidity provision. It uses a Uniswap V3-style architecture with multiple fee tiers and a non-fungible position manager for liquidity providers.

### Architecture

The SupV3Factory and SupV3PoolDeployer create and register liquidity pools, while the NonfungiblePositionManager mints LP positions as NFTs. Routers (SmartRouter, SupRouter) and QuoterV2 use these pools for trade execution and pricing, with TickLens providing on-chain tick data and TokenValidator ensuring token compatibility.

## Contract Surface Quality

- Indexed contracts: 314; live-surface contracts included: 58 (4 live, 54 unknown).
- Excluded by liveness: 256 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/12 (8.3%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 57
- Raw deployments: 58
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 8.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SupRouter | adapter | mode | n/a | [`0x082c1e...e61ae6`](./contracts/mode-34443/0x082c1e810b6518a65ae61d9c07dc25d9ffe61ae6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Multicall3 | periphery | mode | n/a | 2 deployments: mode [`0xf0a7f1...c66fc8`](./contracts/mode-34443/0xf0a7f16f7a903fe53d6729581918760e90c66fc8/); mode `0xf92b1f...fc75df` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | mode | n/a | [`0x118918...883b29`](./contracts/mode-34443/0x1189180050ce260451d802a7b648134d85883b29/) | ⚠️ Unaudited |
| PancakeInterfaceMulticallV2 | periphery | mode | n/a | [`0xec6e3a...0e8267`](./contracts/mode-34443/0xec6e3a07810b79746638ab5a74499c10700e8267/) | ⚠️ Unaudited |
| ReferralHandlerV2 | unknown | mode | n/a | [`0xf0c5de...e7078c`](./contracts/mode-34443/0xf0c5de2c2b54cb665650982d0edd285e86e7078c/) | ⚠️ Unaudited |
| ReferralRouter | adapter | mode | n/a | [`0xe8a9d7...4b21f4`](./contracts/mode-34443/0xe8a9d7a48db1b7a7b6e73b568d2a257bed4b21f4/) | ⚠️ Unaudited |
| SmartRouter | adapter | mode | n/a | [`0x016e13...9bd415`](./contracts/mode-34443/0x016e131c05fb007b5ab286a6d614a5dab99bd415/) | ⚠️ Unaudited |
| SupV3PoolDeployer | core_logic | mode | n/a | [`0xdd0b32...a25dd7`](./contracts/mode-34443/0xdd0b32bc487ae1487b0f4e5c8c44fc9d30a25dd7/) | ⚠️ Unaudited |
| SwapRouter | adapter | mode | n/a | [`0xc9adff...19ee25`](./contracts/mode-34443/0xc9adff795f46105e53be9bbf14221b1c9919ee25/) | ⚠️ Unaudited |
| TokenManager | governance | mode | n/a | [`0xe06cf7...365fce`](./contracts/mode-34443/0xe06cf722c25a20d39d886104743d8e51e0365fce/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | [`0xfd4fcd...34f5ce`](./contracts/mode-34443/0xfd4fcd2cfa1448ab5060cc98ecab36bda834f5ce/) | ⚠️ Unaudited |
| V3Migrator | periphery | mode | n/a | [`0xe9739f...e7cd15`](./contracts/mode-34443/0xe9739fb9b26018eafe530af7f935790bdfe7cd15/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0xcebc59...1f7c13` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd0de0b...5dff39` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd13440...08f670` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd162a6...d81db7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd26cf0...7e6b2c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd3cd8b...f60861` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd3ff6f...6d15c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd6be9c...3ba7da` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb1011...bbf9ea` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb5634...04d6e9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb7bfe...c17c03` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xddf76d...5d2700` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xde17c8...856253` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe01db7...cd911e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe0ca68...59dc4e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe0e767...be2a49` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe3631b...e4d7e4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe52a46...276125` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe54006...7875e8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe55b77...72194b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6899f...99d7b9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6bc88...6c2923` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6dc42...62363d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe73d6a...4b2204` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe8147d...ef51c3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe874ae...aa4d8c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe87542...e628e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xea51ec...31eab9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xeabed9...48c501` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xed0902...597cad` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf1ac10...163e04` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf38722...4489a6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf46b4e...bf4106` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4c6c4...027b00` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf5da78...3d87be` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf6dbb4...14137f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf8a519...a665b8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf8d9ca...89c6d2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfa964b...26eeb4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfb1d2e...8b345a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfba9b8...732993` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfc66aa...53a26a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfe2acd...7d82e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xff1517...b970ec` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xffb5c5...e47407` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SupSwap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/SupSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x118918...883b29`](./contracts/mode-34443/0x1189180050ce260451d802a7b648134d85883b29/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf0c5de...e7078c`](./contracts/mode-34443/0xf0c5de2c2b54cb665650982d0edd285e86e7078c/) | ReferralHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xe8a9d7...4b21f4`](./contracts/mode-34443/0xe8a9d7a48db1b7a7b6e73b568d2a257bed4b21f4/) | ReferralRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x016e13...9bd415`](./contracts/mode-34443/0x016e131c05fb007b5ab286a6d614a5dab99bd415/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xdd0b32...a25dd7`](./contracts/mode-34443/0xdd0b32bc487ae1487b0f4e5c8c44fc9d30a25dd7/) | SupV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc9adff...19ee25`](./contracts/mode-34443/0xc9adff795f46105e53be9bbf14221b1c9919ee25/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xe06cf7...365fce`](./contracts/mode-34443/0xe06cf722c25a20d39d886104743d8e51e0365fce/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xe9739f...e7cd15`](./contracts/mode-34443/0xe9739fb9b26018eafe530af7f935790bdfe7cd15/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
