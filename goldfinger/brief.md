# Agentic Audit Brief: GoldFinger

## Project Overview

- Project: GoldFinger (`goldfinger`)
- Website: [https://goldfinger.finance/en](https://goldfinger.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.867Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 8 unique implementations (19 raw deployments)
- DeFi Llama TVL: $23,884,814.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 7 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (18 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/7 (100.0%)
- Deployed-live implementations: 7 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/7
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 19
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 9 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidProof | Tier 2 | 7 | 100.0% | 2025-11 |
| unknown | Tier 2 | 1 | 14.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ARTToken | token | bsc | n/a | 2 deployments: bsc [`0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424`](./contracts/bsc-56/0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424/); bsc `0xb8a1ed561c914f22bd69b0bb4558ad5a89feaae1` | ✅ Audited |
| ARTVault | unknown | bsc | n/a | 2 deployments: bsc [`0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef`](./contracts/bsc-56/0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef/); bsc `0xaa8cd8244843bf3e34dc5a978c29854f6c234643` | ✅ Audited |
| GFDistributor | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x92558bda86a95cdbff7bdebfe5c2ba7723154079`](./contracts/bsc-56/0x92558bda86a95cdbff7bdebfe5c2ba7723154079/); bsc `0xcee77c30cce9bbcd35c0e2b05a414d4941d8572b`; bsc `0xeae164782f775a30451080a21a968a8b2618e32c`; bsc `0xf9e11ea441bc7eccf57f0ac3193d6b1799efaa62` | ✅ Audited |
| GFPriceOracle | operational_periphery | bsc | n/a | [`0x2c1bd629a23322bd54d403c9139743795903b4f4`](./contracts/bsc-56/0x2c1bd629a23322bd54d403c9139743795903b4f4/) | ✅ Audited |
| GFRegistry | registry | bsc | n/a | [`0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a`](./contracts/bsc-56/0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a/) | ✅ Audited |
| GFStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x65e580a52a91cb8519b0e9cd8029da6612c7ddb6`](./contracts/bsc-56/0x65e580a52a91cb8519b0e9cd8029da6612c7ddb6/); bsc `0x93639cc0b46b1f640a10efb6be1d634c7c867e1e`; bsc `0x96e4519b0c0cfc3edac80bcef5c5d0361b1a77f8`; bsc `0xb047828fd90d0807759604de833d46c56622e87d` | ✅ Audited |
| GFToken | unknown | bsc | n/a | 4 deployments: bsc [`0x6db461da03b8ad06319ff2af985e1c8dfcc004e0`](./contracts/bsc-56/0x6db461da03b8ad06319ff2af985e1c8dfcc004e0/); bsc `0xbad7118c5b445d44dee72e186d594d315ac7792b`; bsc `0xdb399e1d142d82dfcb8a583a4f904dc733551dcc`; bsc `0xdb3fb41167dd5318af04da5aae43e56d6ddd77a3` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | bsc | n/a | `0x2232a55e13cfba87e29dabe684aff292ad06859a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [goldfinger-zerodrift-report.pdf](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/goldfinger-zerodrift-report.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=b14fbb55-1679-47fd-92de-2b5780e48cac) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=56927176-71cc-496e-8b59-e46b4dcdbdc9) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=812d8642-0312-4d0c-a5de-f7d13e850273) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=bcdbd3a6-0ca2-4d05-9183-601437701a8d) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=a5a2744f-aeb6-4ed4-abf3-85ae5c160b43) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=00cd8637-f69d-4a1d-b6dd-8a7a34315d1c) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 5 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=e2da520d-75a2-4461-b5c0-53fb5858ff8d) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | 5 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=14, extraction_exact=6

Zero-match audit list:

- [9641] goldfinger-zerodrift-report.pdf

Fork inheritance lineage and inherited audits are included when available.
