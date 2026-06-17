# Agentic Audit Brief: Steer Protocol

## Project Overview

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance](https://app.steer.finance)
- Lifecycle: active (Tier 0, 64.9% below peak)
- Generated: 2026-06-17T07:00:33.305Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base
- Contract surface: 5 unique implementations (15 raw deployments)
- DeFi Llama TVL: $17,072,743.74
- On-chain TVL (included contracts): $3,256,409.59
- TVL by chain: Arbitrum $3,256,409.59

## Project Description

Steer Protocol is a decentralized off-chain compute and automation protocol. Its DeFi use cases include automated liquidity management, smart vaults, and strategy execution for decentralized exchange liquidity positions.

### Architecture

The Orchestrator coordinates the core vault logic, while registries (Vault, Strategy, Bundle, Keeper) manage the components and permissions. The SteerPeriphery provides user-facing interactions, and the GasVault handles transaction fee management, all sharing the STEER token for governance and incentives.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 45 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 15
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,256,409.59
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | [`0x1c43d0...6cd04e`](./contracts/arbitrum-42161/0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e/) | ⚠️ Unaudited |
| ERC1155MaxSupplyMintable | token | arbitrum | n/a | [`0x792e36...44cf18`](./contracts/arbitrum-42161/0x792e36c772f6da6280fa43159792f89e7444cf18/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | 11 deployments: base `0x07536e...e45b97`; arbitrum [`0x004a73...ce4922`](./contracts/arbitrum-42161/0x004a733aa20ea2caddba6af62bb56aa96dce4922/); arbitrum `0x0635b7...bf5ca8`; arbitrum `0x0b6194...1c43e0`; arbitrum `0x1e6a35...6e863b`; arbitrum `0x3338b8...8475bb`; arbitrum `0x3dc572...bd7f38`; arbitrum `0x6519a9...bf36cf`; arbitrum `0x78fe84...eadd52`; arbitrum `0xb10ab1...0b37f1`; arbitrum `0xff46e1...8576a4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | arbitrum | n/a | `0x122126...4c06c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1b49b...bce0ee` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit report by Hashlock](https://hashlock.com/wp-content/uploads/2025/04/Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit report by Omniscia](https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit report by Omniscia](https://omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit report by Omniscia](https://omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit report by Omniscia](https://omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11688] Audit report by Hashlock
- [11689] Audit report by Omniscia
- [11690] Audit report by Omniscia
- [11691] Audit report by Omniscia
- [11692] Audit report by Omniscia

Fork inheritance lineage and inherited audits are included when available.
