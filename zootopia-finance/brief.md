# Agentic Audit Brief: Zootopia Finance

## Project Overview

- Project: Zootopia Finance (`zootopia-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.985Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: bsc
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (ownerpausableupgradeable, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 10 (1 live, 9 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | n/a | [`0xc12d65...bcb5c6`](./contracts/bsc-56/0xc12d65dc248051d1afb25bced1942fcbf0bcb5c6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x154a3a...47c4c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aabfa...857afe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ad40b...12a7a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x841c34...15a42b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa25245...9edd16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5e3b...99556e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe176b6...57d6c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4ed69...3928c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf255d1...acd1d5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zootopia.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/September_2022/Zootopia.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
