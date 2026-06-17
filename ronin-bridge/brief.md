# Agentic Audit Brief: Ronin Bridge

⚠️ Lifecycle status: DEAD - TVL dropped 20.3% over 90 days

## Project Overview

- Project: Ronin Bridge (`ronin-bridge`)
- Website: [https://app.roninchain.com/bridge](https://app.roninchain.com/bridge)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:46.801Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,720,579.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The Ronin Bridge is a canonical bridge enabling asset transfers between the Ronin sidechain and Ethereum mainnet. It uses a gateway contract on Ethereum to lock and release tokens, secured by a validator set.

### Architecture

The Ronin Bridge family relies on the RoninValidator contract for validator set management and signature verification. The CREATE2 factory is a shared infrastructure component for deploying contracts deterministically.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 10 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Router | adapter | ethereum | n/a | [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenPoolFactory | registry | ethereum | n/a | [`0x17d8a4...28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | TokenAdminRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8a4...28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | TokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
