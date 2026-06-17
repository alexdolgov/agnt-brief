# Agentic Audit Brief: Shape Bridge

## Project Overview

- Project: Shape Bridge (`shape-bridge`)
- Website: [https://shape.network/bridge](https://shape.network/bridge)
- Lifecycle: active (Tier 0, 57.7% below peak)
- Generated: 2026-06-17T07:01:00.671Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $760,428.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Shape Bridge refers to Shape Network's OP Stack canonical bridge infrastructure for asset transfers between Ethereum L1 and Shape Mainnet. The public Shape bridge page currently routes users to independent third-party bridge providers such as Relay and Superbridge and disclaims responsibility for their operation, so those providers should be distinguished from Shape-operated canonical bridge contracts.

### Architecture

The L1 family provides the canonical bridge infrastructure that secures and relays messages to the L2 family. Shared governance contracts like SuperchainConfig and SystemConfig configure both layers, while the L2 family relies on L1 for finality and dispute resolution.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 15 (10 live, 5 unknown).
- Excluded by liveness: 15 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/18 live.
- Detected codebases: none
- Unverified dependencies: 11/12.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchorStateRegistry | unknown | ethereum | unit-32509 | [`0xc55f72...f3ed9b`](./contracts/ethereum-1/0xc55f722cf6e14907b844a8b8d3cfd0c04cf3ed9b/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | unit-32502 | [`0x36b4f7...2bd706`](./contracts/ethereum-1/0x36b4f78990619fdd8f7e9cc7965326336f2bd706/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-32500 | [`0x2c03e8...4a5952`](./contracts/ethereum-1/0x2c03e8bf8b16af89079852be87f0e9ec674a5952/) | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | n/a | [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-32504 | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | unit-32512 | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xdf6a16...448a5b` | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | unit-32506 | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | unit-32514 | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-09-shapenetwork-buybackcontract-securityreview.pdf) | Trail of Bits | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-05-shapenetwork-token-securityreview.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc55f72...f3ed9b`](./contracts/ethereum-1/0xc55f722cf6e14907b844a8b8d3cfd0c04cf3ed9b/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36b4f7...2bd706`](./contracts/ethereum-1/0x36b4f78990619fdd8f7e9cc7965326336f2bd706/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c03e8...4a5952`](./contracts/ethereum-1/0x2c03e8bf8b16af89079852be87f0e9ec674a5952/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11660] Rendered PDF capture
- [11661] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
