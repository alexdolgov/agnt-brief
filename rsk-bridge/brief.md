# Agentic Audit Brief: RSK Bridge

⚠️ Lifecycle status: DEAD - TVL dropped 9.1% over 90 days

## Project Overview

- Project: RSK Bridge (`rsk-bridge`)
- Website: [https://rootstock.io/](https://rootstock.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-31T10:30:32.424Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 15 unique implementations (24 raw deployments)
- DeFi Llama TVL: $1,026,076.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The RSK Bridge is a canonical bridge that enables the transfer of assets between the Ethereum and RSK blockchains. It uses a federated model to lock tokens on one chain and mint equivalent tokens on the other, ensuring interoperability.

### Architecture

The Bridge contract is the core operational contract, upgraded via AdminUpgradeabilityProxy, and interacts with SideToken to represent bridged assets. The Federation and AllowTokens contracts (not in the family but present as proxies) likely provide access control and token whitelisting for the bridge.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 24
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AllowTokens | token | ethereum | 3 deployments: ethereum [`0x118522...cd697c`](./contracts/ethereum-1/0x118522603dc0b8490fec2b8db92e6f1c66cd697c/); ethereum `0xa3fc98...0a15f3`; ethereum `0xe4aa0f...786653` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x12ed69...6a7b5d`](./contracts/ethereum-1/0x12ed69359919fc775bc2674860e8fe2d2b6a7b5d/); ethereum `0x9f29f9...c363d8` | ⚠️ Unaudited |
| Bridge_v0 | operational_periphery | ethereum | [`0xe34f95...d1426a`](./contracts/ethereum-1/0xe34f957e42a3a2b5f8a64ee367851a088bd1426a/) | ⚠️ Unaudited |
| Bridge_v1 | operational_periphery | ethereum | 2 deployments: ethereum [`0x8582f5...5aa5f1`](./contracts/ethereum-1/0x8582f510817731be46e6a8380cf4eeffc05aa5f1/); ethereum `0xabf8b0...92e07e` | ⚠️ Unaudited |
| Federation | unknown | ethereum | 3 deployments: ethereum [`0x5631a6...9d76c5`](./contracts/ethereum-1/0x5631a6ac95b6bde690807085aaa70e3b2d9d76c5/); ethereum `0x5e29c2...3abe17`; ethereum `0x8c1901...3f4944` | ⚠️ Unaudited |
| Federation_v1 | unknown | ethereum | [`0x479f86...362a2b`](./contracts/ethereum-1/0x479f86ecbe766073d2712ef418aceb56d5362a2b/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | [`0x040007...0e4138`](./contracts/ethereum-1/0x040007b1804ad78a97f541bebed377dcb60e4138/) | ⚠️ Unaudited |
| Payroll | unknown | ethereum | 2 deployments: ethereum [`0xb005bb...6d11f0`](./contracts/ethereum-1/0xb005bb5e58878318d559561a49f0b67c616d11f0/); ethereum `0xb7ff2c...937492` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0xbc4a94...d0bcbf`](./contracts/ethereum-1/0xbc4a94b0e07a8a453d382747741d4652a0d0bcbf/); ethereum `0xe4d351...51e7e6` | ⚠️ Unaudited |
| SideToken | token | ethereum | [`0x73c084...7a498a`](./contracts/ethereum-1/0x73c08467e23f7dcb7ddbbc8d05041b74467a498a/) | ⚠️ Unaudited |
| SideTokenFactory | registry | ethereum | 2 deployments: ethereum [`0xb3d061...7db0fa`](./contracts/ethereum-1/0xb3d06103af1a68026615e673d46047fab77db0fa/); ethereum `0xf73c60...e713fb` | ⚠️ Unaudited |
| SideTokenFactory_v1 | registry | ethereum | [`0x578a80...bfb063`](./contracts/ethereum-1/0x578a80ad3f6d56f873da81b73b8d192ab6bfb063/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x5bce0a...145942`](./contracts/ethereum-1/0x5bce0ababa89e1d0e063978d87cff2f8f5145942/) | ⚠️ Unaudited |
| Utils | unknown | ethereum | [`0x5f989f...0b6120`](./contracts/ethereum-1/0x5f989f2f323a1732a565c9a3f694f2fa8f0b6120/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xe3848f...3873a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
