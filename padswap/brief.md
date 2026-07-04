# Agentic Audit Brief: PadSwap

## Project Overview

- Project: PadSwap (`padswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.385Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc
- Contract surface: 24 unique implementations (26 raw deployments)
- DeFi Llama TVL: $115,354.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 27 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 26 (10 live, 16 unknown).
- Excluded by liveness: 61 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 24
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x816ed1...15dc76`](./contracts/bsc-56/0x816ed1589b7783d7dd820ba4ebdef5899515dc76/); bsc `0xc1b3bf...f84101` | ⚠️ Unaudited |
| Pad | unknown | bsc | n/a | [`0xc0888d...deb6d5`](./contracts/bsc-56/0xc0888d80ee0abf84563168b3182650c0addeb6d5/) | ⚠️ Unaudited |
| PadFarmsV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x392051...9db7ea`](./contracts/bsc-56/0x39205195afb9c79a5eb1d9575091b5a6a19db7ea/); bsc `0x4992df...4ed08b` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | bsc | n/a | [`0xb87b83...f55e82`](./contracts/bsc-56/0xb87b836083617f61b9c35ddd934c7bc03ff55e82/) | ⚠️ Unaudited |
| PadOnlyFarm | unknown | bsc | n/a | [`0x300244...664ed1`](./contracts/bsc-56/0x30024473efd45ef9bfd7781db5438e1a58664ed1/) | ⚠️ Unaudited |
| PadRouter | adapter | bsc | n/a | [`0x764372...138c24`](./contracts/bsc-56/0x76437234d29f84d9a12820a137c6c6a719138c24/) | ⚠️ Unaudited |
| SonofDogeV2 | unknown | bsc | n/a | [`0xcdb943...307e60`](./contracts/bsc-56/0xcdb943908de5ee37998a53f23467017d1a307e60/) | ⚠️ Unaudited |
| Toad | unknown | bsc | n/a | [`0x463e73...d539e9`](./contracts/bsc-56/0x463e737d8f740395abf44f7aac2d9531d8d539e9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x167cef...2f3f4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a7fdf...a6aeb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eaf76...c5af17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5346d5...af265f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e42f4...76cde5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ebab3...4d0752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x994a66...febf60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ebb25...dea9ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba1ced...cafc86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc97c28...99cba5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xceb4e3...e4d84c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb76db...60a36a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4fa0d...49c315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe80e9f...7d0d84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2d2c...e7b329` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4cd67...f062ec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [solanaleveling.com](https://solanaleveling.com/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x816ed1...15dc76`](./contracts/bsc-56/0x816ed1589b7783d7dd820ba4ebdef5899515dc76/) | LPFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0888d...deb6d5`](./contracts/bsc-56/0xc0888d80ee0abf84563168b3182650c0addeb6d5/) | Pad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x392051...9db7ea`](./contracts/bsc-56/0x39205195afb9c79a5eb1d9575091b5a6a19db7ea/) | PadFarmsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb87b83...f55e82`](./contracts/bsc-56/0xb87b836083617f61b9c35ddd934c7bc03ff55e82/) | PadFarmsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x300244...664ed1`](./contracts/bsc-56/0x30024473efd45ef9bfd7781db5438e1a58664ed1/) | PadOnlyFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x764372...138c24`](./contracts/bsc-56/0x76437234d29f84d9a12820a137c6c6a719138c24/) | PadRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcdb943...307e60`](./contracts/bsc-56/0xcdb943908de5ee37998a53f23467017d1a307e60/) | SonofDogeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x463e73...d539e9`](./contracts/bsc-56/0x463e737d8f740395abf44f7aac2d9531d8d539e9/) | Toad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13641] solanaleveling.com

Fork inheritance lineage and inherited audits are included when available.
