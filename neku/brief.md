# Agentic Audit Brief: Neku

## Project Overview

- Project: Neku (`neku`)
- Lifecycle: active (Tier 0, 86.4% below peak)
- Generated: 2026-06-17T07:00:47.552Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, moonriver
- Contract surface: 17 unique implementations (54 raw deployments)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): $8,382,810.27
- TVL by chain: Arbitrum $8,382,810.27

## Project Description

Neku is a decentralized multi-chain lending protocol that enables users to supply and borrow crypto assets through a Compound-based architecture. The listed contracts represent the Arbitrum deployment subset, including a Unitroller/Comptroller control plane and CErc20Delegator market contracts. Governance or incentive-token claims should be treated as unverified unless supported by contract, documentation, or audit evidence.

### Architecture

The Unitroller proxy delegates to the ComptrollerG7 implementation, which governs the lending markets and interacts with the Comp token for reward distribution. All contracts are deployed by a single deployer, indicating a unified protocol structure.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 54 (1 live, 53 unknown).
- Excluded by liveness: 1 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 17
- Raw deployments: 54
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $8,382,810.27
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegator | token | arbitrum | n/a | 38 deployments: arbitrum [`0x19714e...50ab5f`](./contracts/arbitrum-42161/0x19714ee460f9d030e310bf1730b5172f5b50ab5f/); arbitrum `0x1ea643...dbb2fe`; arbitrum `0x2907c3...a9b43b`; arbitrum `0x2fda3a...209bce`; arbitrum `0x3631de...e93ea8`; arbitrum `0x374aed...b2799a`; arbitrum `0x3823d2...31f28b`; arbitrum `0x38a069...83cd1c`; arbitrum `0x3ae83a...0ed251`; arbitrum `0x3d2c13...d50d5b`; arbitrum `0x655773...c01912`; arbitrum `0x660474...44396f`; arbitrum `0x679818...bbe205`; arbitrum `0x70d279...c814a3`; arbitrum `0x70faf3...6af0db`; arbitrum `0x71ad16...32e920`; arbitrum `0x7fd875...f52163`; arbitrum `0x815330...5a4c4a`; arbitrum `0x82015c...33eb20`; arbitrum `0x874a86...d41554`; arbitrum `0x8e9027...151b07`; arbitrum `0x9ac8f7...f50caf`; arbitrum `0xa7ad08...1acd48`; arbitrum `0xa9958d...cae784`; arbitrum `0xb5dc00...9bfeea`; arbitrum `0xba7dab...30e6b3`; arbitrum `0xbd1bf6...8f3296`; arbitrum `0xbd65ae...c96915`; arbitrum `0xc7dec2...7494ea`; arbitrum `0xcb2b0b...daf95a`; arbitrum `0xccb8da...98aa15`; arbitrum `0xd73ed2...37bdd1`; arbitrum `0xdac3b1...070a29`; arbitrum `0xdbfd9c...c11a26`; arbitrum `0xdee7e9...79c68c`; arbitrum `0xdf19d7...e17bae`; arbitrum `0xee2a89...f6e07f`; arbitrum `0xfd4224...2f0553` | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0xbc4a19...eccb8b`](./contracts/arbitrum-42161/0xbc4a19345c598d73939b62371cf9891128eccb8b/) | ⚠️ Unaudited |
| Comp | unknown | arbitrum | n/a | [`0x3bf088...4be840`](./contracts/arbitrum-42161/0x3bf0880fd26e49c46d1a1e69adb268889b4be840/) | ⚠️ Unaudited |
| MasterChef | unknown | moonriver | n/a | [`0x1e930c...a9641e`](./contracts/moonriver-1285/0x1e930c6a1ec0e098617a2c202939ed0345a9641e/) | ⚠️ Unaudited |
| OracleObserver | operational_periphery | arbitrum | n/a | [`0xf8e3c6...d57c98`](./contracts/arbitrum-42161/0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98/) | ⚠️ Unaudited |
| StableMint | unknown | arbitrum | n/a | [`0xb57524...6a4229`](./contracts/arbitrum-42161/0xb575244296c27e7897382e6c140708c44a6a4229/) | ⚠️ Unaudited |
| TVL | unknown | arbitrum | n/a | [`0x4c02f3...d3691f`](./contracts/arbitrum-42161/0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f/) | ⚠️ Unaudited |
| WrappedToken | token | arbitrum | n/a | [`0xa4cc4a...997ce3`](./contracts/arbitrum-42161/0xa4cc4a18a44595d8c7dc34431a99994545997ce3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x0140d4...57a814` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bddee...b4d250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2703e4...6774b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ba34d...730629` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87746c...6f0d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893c6f...759ba5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae2218...44f9e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbb52d...0bd0a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4a982...462b6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x19714e...50ab5f`](./contracts/arbitrum-42161/0x19714ee460f9d030e310bf1730b5172f5b50ab5f/) | CErc20Delegator | token | $8,382,810.27 | Verified native implementation with $8,382,810.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbc4a19...eccb8b`](./contracts/arbitrum-42161/0xbc4a19345c598d73939b62371cf9891128eccb8b/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf8e3c6...d57c98`](./contracts/arbitrum-42161/0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98/) | OracleObserver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb57524...6a4229`](./contracts/arbitrum-42161/0xb575244296c27e7897382e6c140708c44a6a4229/) | StableMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c02f3...d3691f`](./contracts/arbitrum-42161/0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f/) | TVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa4cc4a...997ce3`](./contracts/arbitrum-42161/0xa4cc4a18a44595d8c7dc34431a99994545997ce3/) | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3021] DL audit link

Fork inheritance lineage and inherited audits are included when available.
