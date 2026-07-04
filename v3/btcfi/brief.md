# Agentic Audit Brief: BTCFi

## Project Overview

- Project: BTCFi (`btcfi`)
- Website: [https://btcfi.one](https://btcfi.one)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.256Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base
- Contract surface: 10 unique implementations (14 raw deployments)
- DeFi Llama TVL: $6,990,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 14 (0 live, 14 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 10
- Raw deployments: 14
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

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
| Proxy (impl: 0x5d964ec530f989de6128efa22837cfb26095cbfd) | unknown | base | n/a | 2 deployments: base `0x4f7ab5...e5e08b`; base `0x5d964e...95cbfd` | ❓ Unverified |
| Proxy (impl: 0x98e266bdb0eedd38bf45232b9316959ad0aad90c) | unknown | base | n/a | 2 deployments: base `0x4c7a44...105239`; base `0x98e266...aad90c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26fce5...8dddbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55506b...735060` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x872b34...f3a48c`; base `0xf549e4...527429` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x9ce202...ebd2f1`; base `0xae172d...c9bf3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa4ad5...db4200` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac1552...b46ddd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacf310...45eef5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeedab4...852326` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [theori-audit-rev-1.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-1.0.pdf) | Theori | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [theori-audit-rev-2.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [distribution-model-contract.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/distribution-model-contract.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [reward-distribution-model-ver-1.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/reward-distribution-model-ver-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20670] theori-audit-rev-1.0.pdf
- [20671] theori-audit-rev-2.0.pdf
- [20672] distribution-model-contract.pdf
- [20673] reward-distribution-model-ver-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
