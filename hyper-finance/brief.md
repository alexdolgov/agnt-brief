# Agentic Audit Brief: Hyper Finance

## Project Overview

- Project: Hyper Finance (`hyper-finance`)
- Website: [https://hyfi.pro](https://hyfi.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.696Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 42 unique implementations (52 raw deployments)
- DeFi Llama TVL: $34,170.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 52 (14 live, 38 unknown).
- Excluded by liveness: 36 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 42
- Raw deployments: 52
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | bsc | n/a | [`0x4b7a63...30d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | ⚠️ Unaudited |
| mVault | core_logic | bsc | n/a | 11 deployments: bsc [`0x01d5d7...d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/); bsc `0x11e083...2c38a8`; bsc `0x14c5cb...f59592`; bsc `0x5486a0...90d97b`; bsc `0x6c3a4e...35581e`; bsc `0x712c88...ff9de7`; bsc `0x8257d1...e47b6a`; bsc `0x99c7e5...00ddbf`; bsc `0xa1383d...a71879`; bsc `0xd6b72c...238a3f`; bsc `0xe5a08d...46ad51` | ⚠️ Unaudited |
| SimpleController | governance | bsc | n/a | [`0x7a4f3d...814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | ⚠️ Unaudited |
| SushiToken | token | bsc | n/a | [`0x9a319b...585318`](./contracts/bsc-56/0x9a319b959e33369c5eaa494a770117ee3e585318/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x024153...589eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a72a1...c875d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12c90b...b5e536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x154849...55e20c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a0d5a...2c197b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce4f3...4991ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cf708...565f60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26989c...3e8fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27c392...716d97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x384c50...c664b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x430f8b...6785d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x436e2b...533f9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49af81...cfb7d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f61d9...cace54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58f2a5...a4c2fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c9650...7a5804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68e961...12244f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x699c1e...d3ad77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6aefb6...dbae60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7465ed...a34b1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x872214...f1dcf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a7ba6...c4ef13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x911445...72aacd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b27b6...37b9ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa34128...dee938` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa99774...bbf57d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa4dbd...0fc0c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0a0b1...d26fa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4f38e...30f556` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc94bdb...fc10e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb49af...53dcbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc9e47...56eb92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd295c4...a08c31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9c4ca...0c5021` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeff8e...21fb75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3ace6...2409ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3f16d...be0c5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedc136...c416de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/hyperfinance](https://skynet.certik.com/projects/hyperfinance) | CertiK | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4b7a63...30d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d5d7...d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/) | mVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a4f3d...814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | SimpleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13262] skynet.certik.com/projects/hyperfinance

Fork inheritance lineage and inherited audits are included when available.
