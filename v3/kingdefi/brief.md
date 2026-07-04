# Agentic Audit Brief: KingDefi

## Project Overview

- Project: KingDefi (`kingdefi`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.943Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 36 unique implementations (36 raw deployments)
- DeFi Llama TVL: $35,204.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 36 (2 live, 34 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KROWN | unknown | bsc | n/a | [`0x1446f3...2a3aab`](./contracts/bsc-56/0x1446f3cedf4d86a9399e49f7937766e6de2a3aab/) | ⚠️ Unaudited |
| KrownAutoCompoundFarm | unknown | bsc | n/a | [`0x98f3b9...439876`](./contracts/bsc-56/0x98f3b99198e164f50272ea5ba44ea76b1a439876/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x113628...e335ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x189aad...7bac53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d54ed...730efb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1db4ad...d78962` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20d1ac...a074d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x211c08...d1f0ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30da60...98e983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36c83d...c0b48e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3f60...83113d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x597ead...b9e322` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x628315...425ac3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x645ad5...2d6d6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d469e...40fd71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e589d...24c656` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72548d...304a6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8157d7...bcca94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x841d8a...509139` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x857071...651b37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d4ea5...a94873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b01e4...06362b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9caf28...c9fa8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa26940...1e1d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadba2d...bc3dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd7929...9f2999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc0ef4...71fef6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccd341...4d096f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4cb17...a724c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5572a...c46768` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe19365...0b7576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea5d73...723965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb0fd8...7807ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb3337...8d5682` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdaccc...2053ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfddade...af93c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [meaoffice.nl](https://meaoffice.nl/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [raterpoint.com.co](https://raterpoint.com.co/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13344] meaoffice.nl
- [16120] raterpoint.com.co

Fork inheritance lineage and inherited audits are included when available.
