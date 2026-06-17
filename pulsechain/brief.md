# Agentic Audit Brief: Pulsechain

## Project Overview

- Project: Pulsechain (`pulsechain`)
- Website: [https://pulsechain.com/](https://pulsechain.com/)
- Lifecycle: active (Tier 0, 70.3% below peak)
- Generated: 2026-06-17T07:00:47.049Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $48,050,402.68
- On-chain TVL (included contracts): $475,395.57
- TVL by chain: Ethereum $475,395.57

## Project Description

PulseChain is an Ethereum-fork Layer 1 blockchain. The covered Ethereum-side contracts appear to be bridge/Omnibridge infrastructure used for asset transfers and message passing between Ethereum and PulseChain, rather than representing the full scope of the PulseChain network.

### Architecture

The EternalStorageProxy contracts serve as upgradeable proxies for the core bridge contracts (ForeignOmnibridge, ForeignAMB, BridgeValidators), sharing a common upgradeability pattern and deployer cluster.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 1 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $475,395.57
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermittableToken | token | ethereum | n/a | 2 deployments: ethereum [`0xa1077a...0f9a27`](./contracts/ethereum-1/0xa1077a294dde1b09bb078844df40758a5d0f9a27/); ethereum `0xa88260...e6d68a` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | n/a | [`0x8ac4ae...350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xf868da...a28499` | ❓ Unverified |

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
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
