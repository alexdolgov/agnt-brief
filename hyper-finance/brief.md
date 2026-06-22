# Agentic Audit Brief: Hyper Finance

⚠️ Lifecycle status: DEAD - TVL dropped 1.6% over 90 days

## Project Overview

- Project: Hyper Finance (`hyper-finance`)
- Website: [https://hyfi.pro](https://hyfi.pro)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T02:12:42.969Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 5 unique implementations (15 raw deployments)
- DeFi Llama TVL: $34,927.09
- On-chain TVL (included contracts): $116,688.79
- TVL by chain: Bsc $116,688.79

## Project Description

Hyper Finance is a yield farming protocol on BSC that allows users to stake LP tokens to earn its native token, HYFI, as rewards. It is a fork of SushiSwap's MasterChef and SushiToken contracts.

### Architecture

The MasterChef contract distributes SushiToken (HYFI) as rewards to users who stake LP tokens. Both contracts are deployed by the same deployer and form the core of the protocol.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 22; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $116,688.79
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $116,688.79 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mVault | core_logic | bsc | n/a | 11 deployments: bsc [`0x01d5d7...d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/); bsc `0x11e083...2c38a8`; bsc `0x14c5cb...f59592`; bsc `0x5486a0...90d97b`; bsc `0x6c3a4e...35581e`; bsc `0x712c88...ff9de7`; bsc `0x8257d1...e47b6a`; bsc `0x99c7e5...00ddbf`; bsc `0xa1383d...a71879`; bsc `0xd6b72c...238a3f`; bsc `0xe5a08d...46ad51` | ⚠️ Unaudited |
| SushiToken | token | bsc | n/a | [`0x9a319b...585318`](./contracts/bsc-56/0x9a319b959e33369c5eaa494a770117ee3e585318/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x4b7a63...30d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | ⚠️ Unaudited |
| SimpleController | governance | bsc | n/a | [`0x7a4f3d...814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0xcc9e47...56eb92` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/hyperfinance) | CertiK | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x01d5d7...d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/) | mVault | core_logic | $106,379.63 | Verified native implementation with $106,379.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b7a63...30d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a4f3d...814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | SimpleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
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

- [13262] DL audit link

Fork inheritance lineage and inherited audits are included when available.
