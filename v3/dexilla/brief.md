# Agentic Audit Brief: Dexilla

## Project Overview

- Project: Dexilla (`dexilla`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.847Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum, optimism
- Contract surface: 6 unique implementations (11 raw deployments)
- DeFi Llama TVL: $114.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 11 (9 live, 2 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexillaExchangeV4 | unknown | optimism | n/a | 2 deployments: optimism [`0x44f1c3...25ce84`](./contracts/optimism-10/0x44f1c33ed3bf77a5883cbece1c1b34e71425ce84/); optimism `0xb0be48...57e959` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexillaExchangeV3 | unknown | optimism | n/a | 2 deployments: optimism [`0x68d054...ff2bd9`](./contracts/optimism-10/0x68d05405472c4f0c254a47922dba9dbc4cff2bd9/); optimism `0x8f1f67...3e6e50` | ⚠️ Unaudited |
| DexillaExchangeV5 | unknown | optimism | n/a | 2 deployments: optimism [`0x6f1d07...86884a`](./contracts/optimism-10/0x6f1d074bf170fcdde7712bb8da4c70c5be86884a/); arbitrum `0xb56f90...2d6600` | ⚠️ Unaudited |
| FeeCollector | unknown | optimism | n/a | 3 deployments: optimism [`0x50f3ba...d3ca6e`](./contracts/optimism-10/0x50f3ba8a9e0306e545b04186a60b722516d3ca6e/); optimism `0x6a5d7c...aa35e2`; optimism `0x982d56...45dce3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x231757...40ceef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe9e8aa...9cbd07` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [mythx_all.pdf](https://github.com/dexilla/protocol/blob/main/audits/mythx_all.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
