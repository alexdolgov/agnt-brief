# Agentic Audit Brief: Minu

## Project Overview

- Project: Minu (`minu`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:27.593Z
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
| MinuBones | unknown | bsc | n/a | [`0x075408...db4a15`](./contracts/bsc-56/0x0754088499311a3fc2a9d2b759dab2b6c0db4a15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MinuToken | token | bsc | n/a | [`0xf48f91...fdefd4`](./contracts/bsc-56/0xf48f91df403976060cc05dbbf8a0901b09fdefd4/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x0fd4a2...c99505` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2608fe...178d72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366b94...475dc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3af00b...1a4b48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2b13...cc41fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d6ec0...a04838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x941314...7a8d42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa14d1a...7dda06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafab9b...a9b255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6b71d...0b3ab7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/11-minu/audit.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
