# Agentic Audit Brief: Mountain Protocol

## Project Overview

- Project: Mountain Protocol (`mountain-protocol`)
- Website: [https://mountainprotocol.com](https://mountainprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.963Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: arbitrum, base, ethereum, optimism, polygon, zksync-era
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,400,998.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 0 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Mountain Protocol) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/5 (100.0%)
- Deployed-live implementations: 5 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/5
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 5 | 100.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| USDM | unknown | ethereum | n/a | [`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`](./contracts/ethereum-1/0x59d9356e565ab3a36dd77763fc0d87feaf85508c/) | ✅ Audited |
| USDM | unknown | optimism | n/a | [`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`](./contracts/optimism-10/0x59d9356e565ab3a36dd77763fc0d87feaf85508c/) | ✅ Audited |
| USDM | unknown | polygon | n/a | [`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`](./contracts/polygon-137/0x59d9356e565ab3a36dd77763fc0d87feaf85508c/) | ✅ Audited |
| USDM | unknown | base | n/a | [`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`](./contracts/base-8453/0x59d9356e565ab3a36dd77763fc0d87feaf85508c/) | ✅ Audited |
| USDM | unknown | arbitrum | n/a | [`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`](./contracts/arbitrum-42161/0x59d9356e565ab3a36dd77763fc0d87feaf85508c/) | ✅ Audited |

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
| UnnamedContract | unknown | zksync-era | n/a | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20USDM%20-%20Audit%20Report%20Jun%202023.pdf) | OpenZeppelin | Audit | 2023-06 | stale | Direct | contract_name | 5 | high |
| [OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20wUSDM%20-%20Audit%20Report%20Oct%202023.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [13528] OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf

Fork inheritance lineage and inherited audits are included when available.
