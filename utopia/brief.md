# Agentic Audit Brief: Utopia

## Project Overview

- Project: Utopia (`utopia`)
- Website: [https://www.utopiabnb.com](https://www.utopiabnb.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.193Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: bsc
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $14,190.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ponzi. Structurally: 7 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 12 (2 live, 10 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 2 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UtopiaMiner | unknown | bsc | n/a | [`0x61ea85a817344789d836fbc18b9099bb280b383d`](./contracts/bsc-56/0x61ea85a817344789d836fbc18b9099bb280b383d/) | ✅ Audited |
| UtopiaToken | token | bsc | n/a | [`0xd83c128e7498be555845a6dc331a99e1524c1777`](./contracts/bsc-56/0xd83c128e7498be555845a6dc331a99e1524c1777/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0fd4a2fb6f5a22a0a84f40864a3e8fc293c99505` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2608fe6c220b78f00f9a0db348cb286531178d72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366b94e25c0b1d9de947ca60eb94806b4d475dc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3af00b7e4ebaa148cf85aa91ab22a02b691a4b48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2b139275f81e2c2487d0ead12beb5a20cc41fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d6ec0fa0446c669d8c1ae3167f7a945d8a04838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x941314859aa53356b4f4097e696fcb5aa77a8d42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa14d1aa4cc7fc461677967a437540be5167dda06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafab9bc1765a5290241f6457873f956371a9b255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6b71d9a6f40fa96284fa2f8a4d4a27b980b3ab7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [miner.pdf](https://github.com/cyberscope-io/audits/blob/main/1-utopia/miner.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
