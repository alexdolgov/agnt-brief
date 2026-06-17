# Agentic Audit Brief: Orbit Bridge

## Project Overview

- Project: Orbit Bridge (`orbit-bridge`)
- Website: [https://bridge.orbitchain.io](https://bridge.orbitchain.io)
- Lifecycle: active (Tier 0, 94.4% below peak)
- Generated: 2026-06-17T07:00:35.591Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, heco, klaytn, polygon
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $15,310,376.14
- On-chain TVL (included contracts): $820,684.74
- TVL by chain: Ethereum $631,043.73 | Bsc $189,641.01

## Project Description

Orbit Bridge is an active interchain bridge supporting a broad set of EVM and non-EVM networks across 15+ chains. It enables cross-chain asset transfers using bridge/vault or equivalent custody contracts that lock, release, or otherwise custody assets on source and destination chains. The currently listed contracts represent only a partial EVM contract surface and should not be treated as complete coverage of all current TVL-bearing Orbit Bridge deployments.

### Architecture

The Orbit Bridge family consists of vault contracts deployed across multiple chains, all sharing the same core logic for asset locking and release. The ORCToken likely serves as the governance or utility token for the bridge ecosystem, while the unnamed contracts may provide supporting infrastructure such as access control or adapters.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 6 (4 live, 2 unknown).
- Excluded by liveness: 17 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 2/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $820,684.74
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ORCToken | token | ethereum | n/a | [`0x662b67...ef2f51`](./contracts/ethereum-1/0x662b67d00a13faf93254714dd601f5ed49ef2f51/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | unit-21367 | [`0x89c527...beb780`](./contracts/bsc-56/0x89c527764f03bcb7dc469707b23b79c1d7beb780/) | ⚠️ Unaudited |
| EthVaultImpl | core_logic | ethereum | unit-21366 | [`0x4f16a2...9ff81e`](./contracts/ethereum-1/0x4f16a20450d36bfb3e3926df357f1405d79ff81e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | heco | n/a | `0x38c92a...4d279f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98d729...a708b1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9abc3f...3f648d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Theori_OrbitBridge_2022_1Q.pdf](https://github.com/orbit-chain/bridge-contract/blob/master/audit/Theori_OrbitBridge_2022_1Q.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
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

- [1951] Theori_OrbitBridge_2022_1Q.pdf

Fork inheritance lineage and inherited audits are included when available.
