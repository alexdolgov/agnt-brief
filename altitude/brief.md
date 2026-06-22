# Agentic Audit Brief: Altitude

⚠️ Lifecycle status: UNKNOWN - TVL dropped 13.6% over 90 days

## Project Overview

- Project: Altitude (`altitude`)
- Lifecycle: unknown (Tier 0, 92% below peak)
- Generated: 2026-06-20T01:59:19.497Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, mantle
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $32,963.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Altitude is a cross-chain bridge protocol enabling asset transfers between Mantle and Arbitrum One. It facilitates liquidity movement across chains, likely through farming or staking mechanisms.

### Architecture

The Altitude family consists of a core farming contract (AltitudeFarms) and three supporting unnamed contracts that likely handle bridging logic and infrastructure. These contracts share a common deployer cluster, indicating a unified development effort.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AltitudeFarms | unknown | arbitrum | n/a | [`0xa912cb...18db82`](./contracts/arbitrum-42161/0xa912cb42ef8a9e5898cae13f678d372b1a18db82/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x7a619e...672184`](./contracts/arbitrum-42161/0x7a619e22c3e4753bcd4c9e867946398a12672184/); arbitrum `0xcc0bda...943af6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | mantle | n/a | `0xf80e51...0a86bb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ContractWolf_Audit_AltitudeDEFI_Bridge.pdf](https://github.com/ContractWolf/smart-contract-audits/blob/main/ContractWolf_Audit_AltitudeDEFI_Bridge.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xa912cb...18db82`](./contracts/arbitrum-42161/0xa912cb42ef8a9e5898cae13f678d372b1a18db82/) | AltitudeFarms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12651] ContractWolf_Audit_AltitudeDEFI_Bridge.pdf

Fork inheritance lineage and inherited audits are included when available.
