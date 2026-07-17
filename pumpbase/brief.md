# Agentic Audit Brief: PumpBase

## Project Overview

- Project: PumpBase (`pumpbase`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.250Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: base
- Contract surface: 14 unique implementations (17 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 1 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol forms a single structural family (Registries) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (4 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 14
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LaunchpadTokenFactory | registry | base | n/a | 4 deployments: base [`0x19798e390e69a36814b25bbbc7e75530e8a0a101`](./contracts/base-8453/0x19798e390e69a36814b25bbbc7e75530e8a0a101/); base `0x198cb4ccea8cb6a3d700aee12ddcf5e8a38d833c`; base `0x3b49c6aa89740eea73b463402a6c4e49847600c9`; base `0xbf4114d783d96d2205cf5bd71b3cfbfd53e8ff00` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x057cb3eeca76ed0e711c9f31ac162362eeb5f9c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x553e158844e8c935cf81250ab2194a2ce62c6344` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa58f88451e3c6ed7ca482a0d7181a16296b30357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf8b3280a5888dad1abb375cae5842060a80177f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc24149fcc42e40f714656ef96f7625a73fc5cbe1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc79ccd982d889ad66f224a81ffaf64b179d057ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc755f9dd5f16c833ba7740af95052fcce6769af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6138a6c67ca420f21ea5ac436c105d08558f432` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3399d69cc591021c872cf225c123a30d6acc455` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7525051d838913b19c0ad1d0090e9ae424cae30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb3cd30a30114f60827b426714121e4145941e3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfafc3325fe9f25c7a4b1161a7238c1de0d635a18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdbaa0e8590c1256e593e3d0c1dbc3614f452cad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pumpbase_0x19798E390E69a36814B25BbBC7e75530E8a0A101.pdf](https://spywolf.co/audits/Pumpbase_0x19798E390E69a36814B25BbBC7e75530E8a0A101.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
