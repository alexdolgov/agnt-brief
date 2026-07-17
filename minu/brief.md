# Agentic Audit Brief: Minu

## Project Overview

- Project: Minu (`minu`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.166Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: bsc
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $0.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 7 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 12 (2 live, 10 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MinuBones | unknown | bsc | n/a | [`0x0754088499311a3fc2a9d2b759dab2b6c0db4a15`](./contracts/bsc-56/0x0754088499311a3fc2a9d2b759dab2b6c0db4a15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MinuToken | token | bsc | n/a | [`0xf48f91df403976060cc05dbbf8a0901b09fdefd4`](./contracts/bsc-56/0xf48f91df403976060cc05dbbf8a0901b09fdefd4/) | ⚠️ Unaudited |

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
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/11-minu/audit.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xf48f91df403976060cc05dbbf8a0901b09fdefd4`](./contracts/bsc-56/0xf48f91df403976060cc05dbbf8a0901b09fdefd4/) | MinuToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
